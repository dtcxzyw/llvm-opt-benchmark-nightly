Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.02?download=true
inline.NumInlined: 249
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr poison, !1369, !DIExpression(), !7120)
    #dbg_value(ptr %i.cm, !1366, !DIExpression(), !7118)
    #dbg_value(ptr %i.cm, !1372, !DIExpression(), !7120)
    #dbg_value(ptr %i.cm, !1375, !DIExpression(), !7122)
    #dbg_value(ptr %i.cm, !1381, !DIExpression(), !7124)
    #dbg_value(i64 8, !1367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7118)
    #dbg_value(i64 8, !1373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7120)
    #dbg_value(i64 8, !1379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7122)
    #dbg_value(i64 8, !1382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7124)
    #dbg_value(i64 1168, !1367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7118)
    #dbg_value(i64 1168, !1373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7120)
    #dbg_value(i64 1168, !1379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7122)
    #dbg_value(i64 1168, !1382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7124)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 1168, i64 noundef 8) #21, !dbg !8895, !noalias !8439
  br label %.body.i.i, !dbg !8896

bb.ae:                                            ; preds = %bb.aa
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i, !dbg !8897

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
    #dbg_value(ptr poison, !1385, !DIExpression(), !7126)
    #dbg_value(ptr poison, !1391, !DIExpression(), !7128)
  tail call void @llvm.trap(), !dbg !8898
  unreachable, !dbg !8898

bb.af:                                            ; preds = %.noexc.i.i
    #dbg_declare(ptr poison, !2349, !DIExpression(DW_OP_LLVM_fragment, 136, 56), !7132)
    #dbg_value(ptr %i.cm, !2374, !DIExpression(), !7133)
    #dbg_value(i64 %i.cp, !2375, !DIExpression(), !7133)
    #dbg_declare(ptr poison, !2377, !DIExpression(), !7134)
    #dbg_value(ptr %i.cm, !2376, !DIExpression(), !7135)
    #dbg_value(ptr %i.cm, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7136)
    #dbg_value(i64 %i.cp, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7136)
    #dbg_value(ptr undef, !2368, !DIExpression(), !7137)
    #dbg_value(i64 0, !2369, !DIExpression(), !7138)
    #dbg_value(i64 0, !2349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7139)
    #dbg_value(i64 0, !2349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7139)
    #dbg_value(i8 0, !2349, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7139)
    #dbg_value(ptr poison, !2361, !DIExpression(), !7140)
    #dbg_value(i64 0, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7141)
    #dbg_value(i64 0, !2362, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7141)
    #dbg_value(i8 0, !2362, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7141)
    #dbg_value(i64 0, !2363, !DIExpression(), !7142)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7144)
    #dbg_value(ptr %i.cm, !2391, !DIExpression(), !7145)
    #dbg_value(ptr %i.cm, !2400, !DIExpression(), !7147)
    #dbg_value(i64 0, !2392, !DIExpression(), !7148)
    #dbg_value(i64 0, !2406, !DIExpression(), !7147)
    #dbg_value(ptr %i.cj, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7149)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7149)
    #dbg_value(ptr poison, !2405, !DIExpression(), !7150)
  store ptr %i.cm, ptr %i.cj, align 8, !dbg !8899, !noalias !8440
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 1064, !dbg !8900
  store i16 0, ptr %i.cs, align 8, !dbg !8900, !noalias !8441
    #dbg_value(i64 poison, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7141)
    #dbg_value(i8 poison, !2362, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7141)
    #dbg_value(ptr %i.cm, !8411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7156)
    #dbg_value(ptr %i.cm, !8424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7081)
    #dbg_value(i64 %i.cp, !8411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7156)
    #dbg_value(i64 %i.cp, !8424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7081)
  store ptr %i.cm, ptr %.val, align 8, !dbg !8901, !alias.scope !8401, !noalias !8394
  store i64 %i.cp, ptr %i.ck, align 8, !dbg !8901, !alias.scope !8401, !noalias !8394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8902, !noalias !8394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 24, i1 false), !dbg !8902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8903, !noalias !8394
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.7293, i64 16, !dbg !8903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !8903
    #dbg_value(ptr undef, !2540, !DIExpression(), !7038)
    #dbg_value(ptr undef, !2555, !DIExpression(), !7037)
    #dbg_value(ptr undef, !2548, !DIExpression(), !7035)
    #dbg_value(ptr undef, !2529, !DIExpression(), !7033)
    #dbg_declare(ptr %i.e, !2541, !DIExpression(), !7157)
    #dbg_declare(ptr %i.d, !2542, !DIExpression(), !7158)
    #dbg_value(ptr %.lcssa178, !2543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7038)
    #dbg_value(i64 %.lcssa186, !2543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7038)
  %i.cu = icmp eq i64 %.lcssa186, %i.cl, !dbg !8904
  br i1 %i.cu, label %bb.ag, label %.invoke.i.i, !dbg !8904, !prof !1473

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cv = phi ptr [ @33, %bb.af ], [ @31, %bb.ag ]
  %i.cw = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cx = phi ptr [ @34, %bb.af ], [ @35, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #20
          to label %.cont.i.i unwind label %bb.ah, !dbg !8905, !noalias !8442

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.cm, !2544, !DIExpression(DW_OP_plus_uconst, 1066, DW_OP_stack_value), !7163)
  %i.cy = load i16, ptr %i.cn, align 2, !dbg !8906, !noalias !8442, !noundef !763 ; 3 uses
    #dbg_value(i16 %i.cy, !2563, !DIExpression(), !7165)
    #dbg_value(i16 %i.cy, !2545, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7166)
    #dbg_value(i16 %i.cy, !2560, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7037)
    #dbg_value(i16 %i.cy, !2565, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7168)
    #dbg_value(i16 %i.cy, !2568, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7170)
    #dbg_value(i16 %i.cy, !2553, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7035)
    #dbg_value(i16 %i.cy, !2571, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7172)
    #dbg_value(i16 %i.cy, !2574, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7174)
  %i.cz = icmp ult i16 %i.cy, 11, !dbg !8907
  br i1 %i.cz, label %bb.by, label %.invoke.i.i, !dbg !8907, !prof !1473

bb.ah:                                            ; preds = %.invoke.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.d) #22
          to label %bb.aj unwind label %bb.ai, !dbg !8908, !noalias !8443

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !8909, !noalias !8444
  unreachable, !dbg !8909

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %.critedge37 unwind label %bb.ai, !dbg !8908, !noalias !8444

bb.ak:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.j) #22
          to label %bb.am unwind label %bb.al, !dbg !8910

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !8911
  unreachable, !dbg !8911

bb.am:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !8910
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.de) #22
          to label %.critedge37 unwind label %bb.al, !dbg !8910

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.074.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ], !dbg !7946
  %i.df = phi ptr [ %i.ce, %.lr.ph ], [ %i.ks, %bb.bw ] ; 24 uses
  %i.dg = phi ptr [ %i.o, %.lr.ph ], [ %i.df, %bb.bw ]
  %i.dh = phi i64 [ %i.ak, %.lr.ph ], [ %i.dk, %bb.bw ]
  %i.di = phi ptr [ %i.al, %.lr.ph ], [ %i.gd, %bb.bw ] ; 2 uses
  %i.dj = phi i1 [ %i.cg, %.lr.ph ], [ true, %bb.bw ]
    #dbg_value(i64 %.sroa.0.1, !7782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8287)
    #dbg_value(ptr %i.dg, !8315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7175)
    #dbg_value(i64 %i.dh, !8315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7175)
    #dbg_value(ptr undef, !8325, !DIExpression(), !7023)
    #dbg_value(ptr poison, !8346, !DIExpression(DW_OP_deref), !7026)
    #dbg_value(ptr undef, !8350, !DIExpression(DW_OP_deref), !7026)
    #dbg_value(ptr poison, !8343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7023)
    #dbg_value(ptr undef, !8343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7023)
    #dbg_value(ptr undef, !8344, !DIExpression(), !7176)
    #dbg_value(ptr undef, !8349, !DIExpression(), !7026)
  %i.dk = add i64 %i.dh, 1, !dbg !8912            ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1064, !dbg !8913
  %i.dm = load i16, ptr %i.dl, align 8, !dbg !8913, !noalias !8299 ; 4 uses
  %i.dn = zext i16 %i.dm to i64, !dbg !8914       ; 12 uses
    #dbg_value(ptr %i.df, !7787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8445)
    #dbg_value(ptr %i.df, !7835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8446)
    #dbg_value(i64 %i.dk, !7787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8445)
    #dbg_value(i64 %i.dk, !7835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8446)
    #dbg_value(i64 %i.dn, !7787, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8445)
    #dbg_value(i64 %i.dn, !7835, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8446)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767), !dbg !8915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !8916
  store i64 %.sroa.0.1, ptr %i.l, align 8, !dbg !8916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7293.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7293, i64 16, i1 false), !dbg !8916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !8917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7293.24..sroa_idx, i64 72, i1 false), !dbg !8917
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4), !dbg !8918
    #dbg_value(ptr poison, !7897, !DIExpression(), !7181)
    #dbg_value(ptr poison, !7916, !DIExpression(), !7183)
    #dbg_value(ptr poison, !7925, !DIExpression(), !7185)
    #dbg_value(ptr poison, !7934, !DIExpression(), !7187)
    #dbg_value(ptr poison, !7910, !DIExpression(), !7188)
    #dbg_value(ptr poison, !8447, !DIExpression(), !7199)
    #dbg_value(ptr poison, !8466, !DIExpression(), !7202)
    #dbg_declare(ptr %i.l, !7836, !DIExpression(), !7203)
    #dbg_declare(ptr %i.k, !7837, !DIExpression(), !7204)
    #dbg_value(ptr %i.di, !7838, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7205)
    #dbg_value(i64 poison, !7838, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7205)
    #dbg_declare(ptr poison, !7839, !DIExpression(), !7206)
  br i1 %i.dj, label %bb.ap, label %bb.ao, !dbg !8876, !prof !1473

bb.ao:                                            ; preds = %bb.an
    #dbg_value(ptr poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !8287)
    #dbg_value(i64 poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8287)
    #dbg_value(ptr poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8287)
    #dbg_value(i64 poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8287)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %bb.aq unwind label %.loopexit.split-lp, !dbg !8919, !noalias !8468

bb.ap:                                            ; preds = %bb.an
    #dbg_value(ptr undef, !7939, !DIExpression(), !6664)
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 1066, !dbg !8920 ; 4 uses
  %i.dp = load i16, ptr %i.do, align 2, !dbg !8920, !noalias !8468, !noundef !763 ; 5 uses
  %i.dq = icmp ult i16 %i.dp, 11, !dbg !8921
  br i1 %i.dq, label %bb.as, label %bb.ar, !dbg !8921

.loopexit.split-lp:                               ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
    #dbg_value(i64 %i.dn, !8469, !DIExpression(), !7214)
  %i.dr = icmp ult i16 %i.dm, 5, !dbg !8922
  br i1 %i.dr, label %bb.az, label %bb.aw, !dbg !8922

bb.as:                                            ; preds = %bb.ap
    #dbg_value(ptr poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !8287)
    #dbg_value(i64 poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8287)
    #dbg_value(ptr %i.di, !7782, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8287)
    #dbg_value(i64 poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8287)
    #dbg_value(ptr undef, !7910, !DIExpression(), !6661)
    #dbg_declare(ptr poison, !7911, !DIExpression(), !7215)
    #dbg_declare(ptr poison, !7912, !DIExpression(), !7216)
    #dbg_value(ptr %i.di, !7913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6661)
    #dbg_value(i64 poison, !7913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6661)
    #dbg_value(ptr undef, !7934, !DIExpression(), !6660)
  %i.ds = zext nneg i16 %i.dp to i64, !dbg !8923  ; 5 uses
  %i.dt = add nuw nsw i16 %i.dp, 1, !dbg !8924
    #dbg_value(i64 %i.ds, !7914, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7219)
    #dbg_value(i64 %i.ds, !7932, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7220)
    #dbg_value(i64 %i.ds, !7923, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7221)
    #dbg_value(ptr undef, !7925, !DIExpression(), !6657)
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !8925 ; 2 uses
    #dbg_value(ptr %i.du, !7990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7223)
    #dbg_value(i64 %i.ds, !7990, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7223)
    #dbg_value(i64 %i.dn, !7993, !DIExpression(), !7223)
    #dbg_value(i64 %i.dn, !7998, !DIExpression(), !7225)
    #dbg_value(i64 %i.dn, !7998, !DIExpression(), !7227)
    #dbg_declare(ptr poison, !7994, !DIExpression(), !7228)
    #dbg_declare(ptr poison, !8003, !DIExpression(), !7230)
    #dbg_value(i64 %i.ds, !7995, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7231)
    #dbg_value(ptr %i.du, !7996, !DIExpression(), !7232)
    #dbg_value(ptr %i.du, !8001, !DIExpression(), !7225)
    #dbg_value(ptr %i.du, !8001, !DIExpression(), !7234)
    #dbg_value(ptr %i.du, !8001, !DIExpression(), !7227)
  %i.dv = add nuw nsw i64 %i.dn, 1, !dbg !8926    ; 7 uses
    #dbg_value(i64 %i.dv, !7998, !DIExpression(), !7234)
  %.not.i.i49.not = icmp ult i16 %i.dm, %i.dp, !dbg !8927
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dn, !dbg !8928 ; 3 uses
  br i1 %.not.i.i49.not, label %bb.au, label %bb.at, !dbg !8927

bb.at:                                            ; preds = %bb.as
    #dbg_value(ptr %i.dw, !8004, !DIExpression(), !7236)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !8929, !noalias !8472
    #dbg_value(ptr undef, !7916, !DIExpression(), !6654)
    #dbg_value(ptr %i.df, !8008, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7238)
    #dbg_value(i64 %i.ds, !8008, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7238)
    #dbg_value(i64 %i.dn, !8011, !DIExpression(), !7238)
    #dbg_value(i64 %i.dn, !8016, !DIExpression(), !7240)
    #dbg_value(i64 %i.dn, !8016, !DIExpression(), !7242)
    #dbg_declare(ptr poison, !8012, !DIExpression(), !7243)
    #dbg_declare(ptr poison, !8021, !DIExpression(), !7245)
    #dbg_value(i64 %i.ds, !8013, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7246)
    #dbg_value(ptr %i.df, !8014, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value), !7247)
    #dbg_value(ptr %i.df, !8019, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value), !7240)
    #dbg_value(ptr %i.df, !8019, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value), !7249)
    #dbg_value(ptr %i.df, !8019, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value), !7242)
    #dbg_value(i64 %i.dv, !8016, !DIExpression(), !7249)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 272, !dbg !8930
  %i.dy = getelementptr inbounds nuw [72 x i8], ptr %i.dx, i64 %i.dn, !dbg !8931
    #dbg_value(ptr %i.dy, !8022, !DIExpression(), !7250)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dy, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7293.24..sroa_idx, i64 72, i1 false), !dbg !8932
    #dbg_value(ptr undef, !7897, !DIExpression(), !6651)
    #dbg_value(i64 %i.ds, !7904, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !7251)
    #dbg_value(ptr %i.df, !8473, !DIExpression(DW_OP_plus_uconst, 1072, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7256)
    #dbg_value(i64 %i.ds, !8473, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7256)
    #dbg_value(i64 %i.dv, !8476, !DIExpression(), !7256)
    #dbg_value(i64 %i.dv, !8482, !DIExpression(), !7259)
    #dbg_value(i64 %i.dv, !8482, !DIExpression(), !7261)
    #dbg_value(ptr %i.di, !8477, !DIExpression(), !7256)
    #dbg_value(ptr %i.di, !8487, !DIExpression(), !7264)
    #dbg_value(i64 %i.ds, !8478, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !7265)
    #dbg_value(ptr %i.df, !8479, !DIExpression(DW_OP_plus_uconst, 1072, DW_OP_stack_value), !7266)
    #dbg_value(ptr %i.df, !8485, !DIExpression(DW_OP_plus_uconst, 1072, DW_OP_stack_value), !7259)
    #dbg_value(ptr %i.df, !8485, !DIExpression(DW_OP_plus_uconst, 1072, DW_OP_stack_value), !7268)
    #dbg_value(ptr %i.df, !8485, !DIExpression(DW_OP_plus_uconst, 1072, DW_OP_stack_value), !7261)
    #dbg_value(i64 %i.dn, !8482, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !7268)
  br label %bb.av, !dbg !8933

bb.au:                                            ; preds = %bb.as
    #dbg_value(ptr %i.dw, !8025, !DIExpression(), !7270)
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dv, !dbg !8934
    #dbg_value(ptr %i.dz, !8028, !DIExpression(), !7270)
  %i.ea = sub nuw nsw i64 %i.ds, %i.dn, !dbg !8935 ; 2 uses
    #dbg_value(i64 %i.ea, !8029, !DIExpression(), !7270)
  %i.eb = mul nuw nsw i64 %i.ea, 24, !dbg !8936
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dw, i64 %i.eb, i1 false), !dbg !8936, !alias.scope !8491, !noalias !8492
    #dbg_value(ptr %i.dw, !8004, !DIExpression(), !7236)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !8929, !noalias !8472
    #dbg_value(ptr undef, !7916, !DIExpression(), !6654)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 272, !dbg !8930 ; 2 uses
    #dbg_value(ptr %i.ec, !8008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7238)
    #dbg_value(i64 %i.ds, !8008, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7238)
    #dbg_value(i64 %i.dn, !8011, !DIExpression(), !7238)
    #dbg_value(i64 %i.dn, !8016, !DIExpression(), !7240)
    #dbg_value(i64 %i.dn, !8016, !DIExpression(), !7242)
    #dbg_declare(ptr poison, !8012, !DIExpression(), !7243)
    #dbg_declare(ptr poison, !8021, !DIExpression(), !7245)
    #dbg_value(i64 %i.ds, !8013, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7246)
    #dbg_value(ptr %i.ec, !8014, !DIExpression(), !7247)
    #dbg_value(ptr %i.ec, !8019, !DIExpression(), !7240)
    #dbg_value(ptr %i.ec, !8019, !DIExpression(), !7249)
    #dbg_value(ptr %i.ec, !8019, !DIExpression(), !7242)
    #dbg_value(i64 %i.dv, !8016, !DIExpression(), !7249)
  %i.ed = getelementptr inbounds nuw [72 x i8], ptr %i.ec, i64 %i.dn, !dbg !8937
    #dbg_value(ptr %i.ed, !8033, !DIExpression(), !7278)
  %i.ee = getelementptr inbounds nuw [72 x i8], ptr %i.ec, i64 %i.dv, !dbg !8938
    #dbg_value(ptr %i.ee, !8036, !DIExpression(), !7278)
    #dbg_value(i64 %i.ea, !8037, !DIExpression(), !7278)
  %i.ef = mul nuw nsw i64 %i.ea, 72, !dbg !8939
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ed, i64 %i.ef, i1 false), !dbg !8939, !alias.scope !8493, !noalias !8492
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 272, !dbg !8930
  %i.eh = getelementptr inbounds nuw [72 x i8], ptr %i.eg, i64 %i.dn, !dbg !8931
    #dbg_value(ptr %i.eh, !8022, !DIExpression(), !7250)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7293.24..sroa_idx, i64 72, i1 false), !dbg !8932
    #dbg_value(ptr undef, !7897, !DIExpression(), !6651)
    #dbg_value(i64 %i.ds, !7904, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !7251)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 1072, !dbg !8940 ; 2 uses
    #dbg_value(ptr %i.ei, !8473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7256)
    #dbg_value(i64 %i.ds, !8473, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7256)
    #dbg_value(i64 %i.dv, !8476, !DIExpression(), !7256)
    #dbg_value(i64 %i.dv, !8482, !DIExpression(), !7259)
    #dbg_value(i64 %i.dv, !8482, !DIExpression(), !7261)
    #dbg_value(ptr %i.di, !8477, !DIExpression(), !7256)
    #dbg_value(ptr %i.di, !8487, !DIExpression(), !7264)
    #dbg_value(i64 %i.ds, !8478, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !7265)
    #dbg_value(ptr %i.ei, !8479, !DIExpression(), !7266)
    #dbg_value(ptr %i.ei, !8485, !DIExpression(), !7259)
    #dbg_value(ptr %i.ei, !8485, !DIExpression(), !7268)
    #dbg_value(ptr %i.ei, !8485, !DIExpression(), !7261)
    #dbg_value(i64 %i.dn, !8482, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !7268)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dv, !dbg !8941
    #dbg_value(ptr %i.ej, !8494, !DIExpression(), !7283)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dn, !dbg !8942
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16, !dbg !8942
    #dbg_value(ptr %i.el, !8497, !DIExpression(), !7283)
  %i.em = sub nuw nsw i64 %i.ds, %i.dn, !dbg !8943
    #dbg_value(i64 %i.em, !8498, !DIExpression(), !7283)
  %i.en = shl nuw nsw i64 %i.em, 3, !dbg !8944
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.ej, i64 %i.en, i1 false), !dbg !8944, !alias.scope !8500, !noalias !8492
  br label %bb.av, !dbg !8945

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %i.df, i64 1072, !dbg !8940
  %i.ep = add nuw nsw i64 %i.ds, 2, !dbg !8946    ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dv, !dbg !8947
    #dbg_value(ptr %i.eq, !8488, !DIExpression(), !7264)
  store ptr %i.di, ptr %i.eq, align 8, !dbg !8948, !alias.scope !8500, !noalias !8492
  store i16 %i.dt, ptr %i.do, align 2, !dbg !8949, !noalias !8492
    #dbg_value(ptr poison, !8501, !DIExpression(), !7290)
    #dbg_value(i64 %i.dv, !8507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7290)
    #dbg_value(i64 %i.ep, !8507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7290)
    #dbg_value(i64 %i.dv, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %i.ep, !8508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7291)
    #dbg_value(ptr undef, !2025, !DIExpression(), !7293)
    #dbg_value(ptr undef, !2027, !DIExpression(), !7295)
    #dbg_value(ptr undef, !2030, !DIExpression(), !7297)
    #dbg_value(ptr undef, !2031, !DIExpression(), !7297)
  %i.er = icmp samesign ult i64 %i.dv, %i.ep, !dbg !8950
  br i1 %i.er, label %.lr.ph.i.i.i.preheader, label %.thread90, !dbg !8951

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.es = add nuw nsw i64 %i.ds, 1, !dbg !8951
  %i.et = sub nsw i64 %i.es, %i.dn, !dbg !8951
  %i.eu = sub nsw i64 %i.ds, %i.dn, !dbg !8951
  %xtraiter534 = and i64 %i.et, 3, !dbg !8951     ; 2 uses
  %lcmp.mod535.not = icmp eq i64 %xtraiter534, 0, !dbg !8951
  br i1 %lcmp.mod535.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader, !dbg !8951

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %i.df, i64 1072
  br label %.lr.ph.i.i.i.prol, !dbg !8951

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ew, %.lr.ph.i.i.i.prol ], [ %i.dv, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter536 = phi i64 [ %prol.iter536.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !2028, !DIExpression(), !7298)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !2033, !DIExpression(), !7300)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !2036, !DIExpression(), !7302)
    #dbg_value(i64 1, !2034, !DIExpression(), !7300)
    #dbg_value(i64 1, !2037, !DIExpression(), !7302)
  %i.ew = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1, !dbg !8952 ; 2 uses
    #dbg_value(i64 %i.ew, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !8509, !DIExpression(), !7303)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7305)
    #dbg_value(ptr %i.df, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7310)
    #dbg_value(ptr %i.df, !8512, !DIExpression(), !7311)
    #dbg_value(ptr %i.df, !2391, !DIExpression(), !7312)
    #dbg_value(ptr %i.df, !2400, !DIExpression(), !7314)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !2392, !DIExpression(), !7315)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7310)
    #dbg_value(i64 %.sroa.0.06.i.i.i.prol, !8515, !DIExpression(), !7318)
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr poison, !2405, !DIExpression(), !7332)
  store ptr %i.df, ptr %i.ez, align 8, !dbg !8957, !noalias !8492
  %i.fa = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16, !dbg !8958
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1064, !dbg !8959
  store i16 %i.fa, ptr %i.fb, align 8, !dbg !8959, !noalias !8492
    #dbg_value(ptr undef, !2025, !DIExpression(), !7293)
    #dbg_value(ptr undef, !2027, !DIExpression(), !7295)
    #dbg_value(ptr undef, !2030, !DIExpression(), !7297)
    #dbg_value(ptr undef, !2031, !DIExpression(), !7297)
  %prol.iter536.next = add i64 %prol.iter536, 1, !dbg !8951 ; 2 uses
  %prol.iter536.cmp.not = icmp eq i64 %prol.iter536.next, %xtraiter534, !dbg !8951
  br i1 %prol.iter536.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !dbg !8951, !llvm.loop !7334

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dv, %.lr.ph.i.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.i.prol ]
  %i.fc = icmp ult i64 %i.eu, 3, !dbg !8951
  br i1 %i.fc, label %.thread90, label %.lr.ph.i.i.i.preheader.new, !dbg !8951

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.df, i64 1072
  %i.fe = getelementptr inbounds nuw i8, ptr %i.df, i64 1072
  %i.ff = getelementptr inbounds nuw i8, ptr %i.df, i64 1072
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 1072
  br label %.lr.ph.i.i.i, !dbg !8951

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fw, %.lr.ph.i.i.i ] ; 7 uses
    #dbg_value(i64 %.sroa.0.06.i.i.i, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !2028, !DIExpression(), !7298)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !2033, !DIExpression(), !7300)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !2036, !DIExpression(), !7302)
    #dbg_value(i64 1, !2034, !DIExpression(), !7300)
    #dbg_value(i64 1, !2037, !DIExpression(), !7302)
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 1, !dbg !8952 ; 2 uses
    #dbg_value(i64 %i.fh, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !8509, !DIExpression(), !7303)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7305)
    #dbg_value(ptr %i.df, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7310)
    #dbg_value(ptr %i.df, !8512, !DIExpression(), !7311)
    #dbg_value(ptr %i.df, !2391, !DIExpression(), !7312)
    #dbg_value(ptr %i.df, !2400, !DIExpression(), !7314)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !2392, !DIExpression(), !7315)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7310)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !8515, !DIExpression(), !7318)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !8518, !DIExpression(), !7321)
    #dbg_value(i64 %.sroa.0.06.i.i.i, !2406, !DIExpression(), !7314)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7310)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.sroa.0.06.i.i.i, !dbg !8955
    #dbg_value(ptr %i.fi, !8521, !DIExpression(), !7324)
    #dbg_value(ptr %i.fi, !8523, !DIExpression(), !7327)
    #dbg_value(ptr %i.fi, !8525, !DIExpression(), !7330)
  %i.fj = load ptr, ptr %i.fi, align 8, !dbg !8956, !noalias !8492, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.fj, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7331)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7331)
    #dbg_value(ptr poison, !2405, !DIExpression(), !7332)
  store ptr %i.df, ptr %i.fj, align 8, !dbg !8957, !noalias !8492
  %i.fk = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16, !dbg !8958
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1064, !dbg !8959
  store i16 %i.fk, ptr %i.fl, align 8, !dbg !8959, !noalias !8492
    #dbg_value(ptr undef, !2025, !DIExpression(), !7293)
    #dbg_value(ptr undef, !2027, !DIExpression(), !7295)
    #dbg_value(ptr undef, !2030, !DIExpression(), !7297)
    #dbg_value(ptr undef, !2031, !DIExpression(), !7297)
    #dbg_value(i64 %i.fh, !2028, !DIExpression(), !7298)
    #dbg_value(i64 %i.fh, !2033, !DIExpression(), !7300)
    #dbg_value(i64 %i.fh, !2036, !DIExpression(), !7302)
  %i.fm = add nuw nsw i64 %.sroa.0.06.i.i.i, 2, !dbg !8952 ; 2 uses
    #dbg_value(i64 %i.fm, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %i.fh, !8509, !DIExpression(), !7303)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7305)
    #dbg_value(ptr %i.df, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7310)
    #dbg_value(i64 %i.fh, !2392, !DIExpression(), !7315)
    #dbg_value(i64 %i.fh, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7310)
    #dbg_value(i64 %i.fh, !8515, !DIExpression(), !7318)
    #dbg_value(i64 %i.fh, !8518, !DIExpression(), !7321)
    #dbg_value(i64 %i.fh, !2406, !DIExpression(), !7314)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7310)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fh, !dbg !8955
    #dbg_value(ptr %i.fn, !8521, !DIExpression(), !7324)
    #dbg_value(ptr %i.fn, !8523, !DIExpression(), !7327)
    #dbg_value(ptr %i.fn, !8525, !DIExpression(), !7330)
  %i.fo = load ptr, ptr %i.fn, align 8, !dbg !8956, !noalias !8492, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.fo, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7331)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7331)
  store ptr %i.df, ptr %i.fo, align 8, !dbg !8957, !noalias !8492
  %i.fp = trunc nuw nsw i64 %i.fh to i16, !dbg !8958
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1064, !dbg !8959
  store i16 %i.fp, ptr %i.fq, align 8, !dbg !8959, !noalias !8492
    #dbg_value(i64 %i.fm, !2028, !DIExpression(), !7298)
    #dbg_value(i64 %i.fm, !2033, !DIExpression(), !7300)
    #dbg_value(i64 %i.fm, !2036, !DIExpression(), !7302)
  %i.fr = add nuw nsw i64 %.sroa.0.06.i.i.i, 3, !dbg !8952 ; 2 uses
    #dbg_value(i64 %i.fr, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %i.fm, !8509, !DIExpression(), !7303)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7305)
    #dbg_value(ptr %i.df, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7310)
    #dbg_value(i64 %i.fm, !2392, !DIExpression(), !7315)
    #dbg_value(i64 %i.fm, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7310)
    #dbg_value(i64 %i.fm, !8515, !DIExpression(), !7318)
    #dbg_value(i64 %i.fm, !8518, !DIExpression(), !7321)
    #dbg_value(i64 %i.fm, !2406, !DIExpression(), !7314)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7310)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fm, !dbg !8955
    #dbg_value(ptr %i.fs, !8521, !DIExpression(), !7324)
    #dbg_value(ptr %i.fs, !8523, !DIExpression(), !7327)
    #dbg_value(ptr %i.fs, !8525, !DIExpression(), !7330)
  %i.ft = load ptr, ptr %i.fs, align 8, !dbg !8956, !noalias !8492, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.ft, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7331)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7331)
  store ptr %i.df, ptr %i.ft, align 8, !dbg !8957, !noalias !8492
  %i.fu = trunc nuw nsw i64 %i.fm to i16, !dbg !8958
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1064, !dbg !8959
  store i16 %i.fu, ptr %i.fv, align 8, !dbg !8959, !noalias !8492
    #dbg_value(i64 %i.fr, !2028, !DIExpression(), !7298)
    #dbg_value(i64 %i.fr, !2033, !DIExpression(), !7300)
    #dbg_value(i64 %i.fr, !2036, !DIExpression(), !7302)
  %i.fw = add nuw nsw i64 %.sroa.0.06.i.i.i, 4, !dbg !8952 ; 2 uses
    #dbg_value(i64 %i.fw, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(i64 %i.fr, !8509, !DIExpression(), !7303)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7305)
    #dbg_value(ptr %i.df, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7310)
    #dbg_value(i64 %i.fr, !2392, !DIExpression(), !7315)
    #dbg_value(i64 %i.fr, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7310)
    #dbg_value(i64 %i.fr, !8515, !DIExpression(), !7318)
    #dbg_value(i64 %i.fr, !8518, !DIExpression(), !7321)
    #dbg_value(i64 %i.fr, !2406, !DIExpression(), !7314)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7310)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
  %i.fx = icmp ult i64 %.sroa.0.06.i.i.i, 9, !dbg !8953
  tail call void @llvm.assume(i1 %i.fx), !dbg !8954
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fr, !dbg !8955
    #dbg_value(ptr %i.fy, !8521, !DIExpression(), !7324)
    #dbg_value(ptr %i.fy, !8523, !DIExpression(), !7327)
    #dbg_value(ptr %i.fy, !8525, !DIExpression(), !7330)
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !8956, !noalias !8492, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.fz, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7331)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7331)
  store ptr %i.df, ptr %i.fz, align 8, !dbg !8957, !noalias !8492
  %i.ga = trunc nuw nsw i64 %i.fr to i16, !dbg !8958
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1064, !dbg !8959
  store i16 %i.ga, ptr %i.gb, align 8, !dbg !8959, !noalias !8492
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fw, %i.ep, !dbg !8950
  br i1 %exitcond.not.i.i.i.3, label %.thread90, label %.lr.ph.i.i.i, !dbg !8951

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.dm, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ], !dbg !8960

bb.ax:                                            ; preds = %bb.aw
  %i.gc = add nsw i64 %i.dn, -7, !dbg !8961
    #dbg_value(i64 %i.gc, !7841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7335)
    #dbg_value(i64 1, !7841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7335)
    #dbg_value(i64 6, !7840, !DIExpression(), !7335)
  br label %bb.az, !dbg !8962

bb.ay:                                            ; preds = %bb.aw
    #dbg_value(i64 5, !7840, !DIExpression(), !7335)
    #dbg_value(i64 1, !7841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7335)
    #dbg_value(i64 0, !7841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7335)
  br label %bb.az, !dbg !8963

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ], !dbg !8964 ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.gc, %bb.ax ], [ %i.dn, %bb.ar ], [ 5, %bb.aw ], !dbg !8964 ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ], !dbg !8964
    #dbg_value(i64 poison, !7841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7335)
    #dbg_value(i64 %.sroa.5.0.i, !7841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7335)
    #dbg_value(i64 %.sroa.06.0.i, !7840, !DIExpression(), !7335)
    #dbg_value(ptr %i.df, !7842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7336)
    #dbg_value(ptr %i.df, !8457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7337)
    #dbg_value(i64 %i.dk, !7842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7336)
    #dbg_value(i64 %i.dk, !8457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7337)
    #dbg_value(i64 %.sroa.06.0.i, !7842, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7336)
    #dbg_value(i64 %.sroa.06.0.i, !8457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7337)
    #dbg_declare(ptr poison, !8458, !DIExpression(), !7338)
    #dbg_declare(ptr poison, !8527, !DIExpression(), !7342)
    #dbg_declare(ptr %i.c, !8461, !DIExpression(), !7343)
    #dbg_value(i64 0, !8530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7352)
    #dbg_value(i64 0, !8553, !DIExpression(), !7355)
    #dbg_value(i64 0, !8556, !DIExpression(), !7358)
    #dbg_value(ptr undef, !8466, !DIExpression(), !7202)
    #dbg_value(i16 %i.dp, !8459, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7359)
  %i.gd = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEE13new_uninit_inCsjfnSKV9Rz3v_3h3i()
          to label %.noexc.i46 unwind label %.loopexit.split-lp, !dbg !8965, !noalias !8468 ; 14 uses

.noexc.i46:                                       ; preds = %bb.az
    #dbg_value(ptr %i.gd, !8528, !DIExpression(), !7360)
    #dbg_value(ptr %i.gd, !8563, !DIExpression(), !7363)
  store ptr null, ptr %i.gd, align 8, !dbg !8966, !noalias !8565
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1066, !dbg !8967 ; 3 uses
  store i16 0, ptr %i.ge, align 2, !dbg !8967, !noalias !8565
    #dbg_value(ptr %i.gd, !8460, !DIExpression(), !7375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8968, !noalias !8565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8567), !dbg !8969
    #dbg_value(ptr poison, !8569, !DIExpression(), !7384)
    #dbg_value(ptr %i.gd, !8574, !DIExpression(), !7384)
    #dbg_declare(ptr %i.b, !8577, !DIExpression(), !7385)
    #dbg_declare(ptr %i.a, !8578, !DIExpression(), !7386)
    #dbg_value(i64 0, !8580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7395)
    #dbg_value(i64 0, !8593, !DIExpression(), !7398)
    #dbg_value(i64 0, !8596, !DIExpression(), !7401)
    #dbg_value(i64 0, !8593, !DIExpression(), !7411)
    #dbg_value(i64 0, !8618, !DIExpression(), !7414)
    #dbg_value(ptr poison, !8623, !DIExpression(), !7417)
  %i.gf = load i16, ptr %i.do, align 2, !dbg !8970, !noalias !8625, !noundef !763
  %i.gg = zext i16 %i.gf to i64, !dbg !8971
    #dbg_value(i64 %i.gg, !8575, !DIExpression(), !7421)
    #dbg_value(i64 %i.gg, !8627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7424)
    #dbg_value(i64 %i.gg, !8634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7427)
    #dbg_value(i64 %i.gg, !8638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7431)
    #dbg_value(i64 %i.gg, !8643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7434)
    #dbg_value(i64 %i.gg, !8650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7437)
    #dbg_value(i64 %i.gg, !8654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7441)
  %i.gh = xor i64 %.sroa.06.0.i, -1, !dbg !8972
  %i.gi = add nsw i64 %i.gg, %i.gh, !dbg !8972    ; 5 uses
    #dbg_value(i64 %i.gi, !8576, !DIExpression(), !7442)
    #dbg_value(i64 %i.gi, !8591, !DIExpression(), !7443)
    #dbg_value(i64 %i.gi, !8588, !DIExpression(), !7444)
    #dbg_value(i64 %i.gi, !8584, !DIExpression(), !7445)
    #dbg_value(i64 %i.gi, !8580, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7395)
    #dbg_value(i64 %i.gi, !8582, !DIExpression(), !7395)
    #dbg_value(i64 %i.gi, !8594, !DIExpression(), !7398)
    #dbg_value(i64 %i.gi, !8599, !DIExpression(), !7401)
    #dbg_value(i64 %i.gi, !8594, !DIExpression(), !7411)
    #dbg_value(i64 %i.gi, !8621, !DIExpression(), !7414)
  %i.gj = trunc i64 %i.gi to i16, !dbg !8973
  store i16 %i.gj, ptr %i.ge, align 2, !dbg !8973, !alias.scope !8567, !noalias !8565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8974, !noalias !8625
    #dbg_value(ptr poison, !8659, !DIExpression(), !7448)
    #dbg_value(i64 %.sroa.06.0.i, !8660, !DIExpression(), !7449)
    #dbg_value(i64 %.sroa.06.0.i, !8662, !DIExpression(), !7452)
    #dbg_value(i64 %.sroa.06.0.i, !8665, !DIExpression(), !7455)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !8975 ; 2 uses
    #dbg_value(ptr %i.gk, !8663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7452)
    #dbg_value(i64 11, !8663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7452)
    #dbg_value(ptr %i.gk, !8666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7455)
    #dbg_value(i64 11, !8666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7455)
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %.sroa.06.0.i, !dbg !8976
    #dbg_value(ptr %i.gl, !8668, !DIExpression(), !7458)
    #dbg_value(ptr %i.gl, !8670, !DIExpression(), !7461)
    #dbg_value(ptr %i.gl, !8672, !DIExpression(), !7464)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 24, i1 false), !dbg !8977, !noalias !8625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8978, !noalias !8625
    #dbg_value(ptr poison, !8674, !DIExpression(), !7467)
    #dbg_value(i64 %.sroa.06.0.i, !8675, !DIExpression(), !7468)
    #dbg_value(i64 %.sroa.06.0.i, !8677, !DIExpression(), !7471)
    #dbg_value(i64 %.sroa.06.0.i, !8680, !DIExpression(), !7474)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.df, i64 272, !dbg !8979 ; 2 uses
    #dbg_value(ptr %i.gm, !8678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7471)
    #dbg_value(i64 11, !8678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7471)
    #dbg_value(ptr %i.gm, !8681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7474)
    #dbg_value(i64 11, !8681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7474)
  %i.gn = getelementptr inbounds nuw [72 x i8], ptr %i.gm, i64 %.sroa.06.0.i, !dbg !8980
    #dbg_value(ptr %i.gn, !8684, !DIExpression(), !7477)
    #dbg_value(ptr %i.gn, !8686, !DIExpression(), !7480)
    #dbg_value(ptr %i.gn, !8689, !DIExpression(), !7483)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.gn, i64 72, i1 false), !dbg !8981, !noalias !8625
    #dbg_value(ptr poison, !8632, !DIExpression(), !7484)
    #dbg_value(i64 poison, !8627, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7424)
    #dbg_value(i64 poison, !8634, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7427)
    #dbg_value(i64 poison, !8638, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7431)
    #dbg_value(i64 poison, !8598, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7486)
    #dbg_value(ptr poison, !8635, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7427)
    #dbg_value(i64 11, !8635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7427)
    #dbg_value(ptr poison, !8639, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7431)
    #dbg_value(ptr poison, !8597, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7486)
    #dbg_value(i64 11, !8639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7431)
    #dbg_value(i64 11, !8597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7486)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !8640, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_minus, DW_OP_stack_value), !7487)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !8599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_minus, DW_OP_stack_value), !7486)
    #dbg_value(ptr %i.gd, !8590, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7443)
    #dbg_value(ptr %i.gd, !8587, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7444)
    #dbg_value(ptr %i.gd, !8585, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7445)
    #dbg_value(ptr %i.gd, !8581, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7395)
    #dbg_value(i64 11, !8587, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7444)
    #dbg_value(i64 11, !8585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7445)
    #dbg_value(i64 11, !8581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7395)
  %i.go = icmp ult i64 %i.gi, 12
  br i1 %i.go, label %bb.bf, label %bb.ba, !dbg !8982, !prof !8230

bb.ba:                                            ; preds = %.noexc.i46
    #dbg_value(ptr poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !8287)
    #dbg_value(i64 poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8287)
    #dbg_value(ptr poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8287)
    #dbg_value(i64 poison, !7782, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8287)
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gi, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
          to label %bb.bc unwind label %bb.bb, !dbg !8983, !noalias !8625

bb.bb:                                            ; preds = %bb.ba
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #22
          to label %bb.be unwind label %bb.bd, !dbg !8984, !noalias !8625

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !8985, !noalias !8625
  unreachable, !dbg !8985

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.bo unwind label %bb.bd, !dbg !8986, !noalias !8625

bb.bf:                                            ; preds = %.noexc.i46
    #dbg_value(ptr %i.gd, !8587, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7444)
    #dbg_value(ptr %i.gd, !8585, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7445)
    #dbg_value(ptr %i.gd, !8581, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7395)
    #dbg_value(ptr %i.gd, !8590, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7443)
    #dbg_value(ptr %i.gk, !8639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7431)
    #dbg_value(ptr %i.gk, !8597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7486)
    #dbg_value(ptr %i.gk, !8635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7427)
    #dbg_value(i64 %.sroa.06.0.i, !8627, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7424)
    #dbg_value(i64 %.sroa.06.0.i, !8634, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7427)
    #dbg_value(i64 %.sroa.06.0.i, !8638, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7431)
    #dbg_value(i64 %.sroa.06.0.i, !8598, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7486)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %.sroa.06.0.i), !8640, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_minus, DW_OP_stack_value), !7487)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %.sroa.06.0.i), !8599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_minus, DW_OP_stack_value), !7486)
    #dbg_value(ptr %i.gd, !8597, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7401)
    #dbg_value(i64 11, !8597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7401)
    #dbg_value(!DIArgList(ptr %i.gk, i64 %.sroa.06.0.i), !8247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7489)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %.sroa.06.0.i), !8247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7489)
    #dbg_value(ptr %i.gd, !8250, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7489)
    #dbg_value(i64 %i.gi, !8250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7489)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %.sroa.06.0.i), !8253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_minus, DW_OP_stack_value), !7491)
  %i.gr = add nuw nsw i64 %.sroa.06.0.i, 1, !dbg !8987 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.gk, i64 %i.gr), !8247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7489)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7491)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7489)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8640, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7487)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7486)
    #dbg_value(i64 %i.gr, !8598, !DIExpression(), !7486)
    #dbg_value(i64 %i.gr, !8638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7431)
    #dbg_value(i64 %i.gr, !8634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7427)
    #dbg_value(i64 %i.gr, !8627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7424)
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.gr, !dbg !8988
    #dbg_value(ptr %i.gs, !8247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7489)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 8, !dbg !8989
    #dbg_value(ptr %i.gt, !8590, !DIExpression(), !7443)
    #dbg_value(ptr %i.gt, !8581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7395)
    #dbg_value(ptr %i.gt, !8585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7445)
    #dbg_value(ptr %i.gt, !8587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7444)
    #dbg_value(ptr %i.gt, !8597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7401)
    #dbg_value(ptr %i.gt, !8250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7489)
    #dbg_value(ptr %i.gs, !8254, !DIExpression(), !7491)
    #dbg_value(ptr %i.gt, !8255, !DIExpression(), !7491)
  %i.gu = mul nuw nsw i64 %i.gi, 24, !dbg !8990
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr nonnull readonly align 8 %i.gs, i64 %i.gu, i1 false), !dbg !8990, !alias.scope !8692, !noalias !8693
    #dbg_value(ptr poison, !8648, !DIExpression(), !7495)
    #dbg_value(i64 %i.gr, !8643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7434)
    #dbg_value(i64 %i.gr, !8650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7437)
    #dbg_value(i64 %i.gr, !8654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7441)
    #dbg_value(i64 %i.gr, !8620, !DIExpression(), !7497)
    #dbg_value(ptr %i.gm, !8651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7437)
    #dbg_value(i64 11, !8651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7437)
    #dbg_value(ptr %i.gm, !8655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7441)
    #dbg_value(ptr %i.gm, !8619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7497)
    #dbg_value(i64 11, !8655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7441)
    #dbg_value(i64 11, !8619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7497)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8656, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7498)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7497)
  %i.gv = getelementptr inbounds nuw [72 x i8], ptr %i.gm, i64 %i.gr, !dbg !8991
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gd, i64 272, !dbg !8992
    #dbg_value(ptr %i.gw, !8619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7414)
    #dbg_value(i64 11, !8619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7414)
    #dbg_value(ptr %i.gv, !8261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7500)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8261, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7500)
    #dbg_value(ptr %i.gw, !8264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7500)
    #dbg_value(i64 %i.gi, !8264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7500)
    #dbg_value(!DIArgList(i64 %i.gg, i64 %i.gr), !8266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7502)
    #dbg_value(ptr %i.gv, !8267, !DIExpression(), !7502)
    #dbg_value(ptr %i.gw, !8268, !DIExpression(), !7502)
  %i.gx = mul nuw nsw i64 %i.gi, 72, !dbg !8993
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull readonly align 8 %i.gv, i64 %i.gx, i1 false), !dbg !8993, !alias.scope !8695, !noalias !8693
  %i.gy = trunc nuw nsw i64 %.sroa.06.0.i to i16, !dbg !8994
  store i16 %i.gy, ptr %i.do, align 2, !dbg !8994, !noalias !8625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !8995, !noalias !8696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cf, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !8996, !noalias !8696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8984, !noalias !8625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8986, !noalias !8625
    #dbg_value(i16 %i.dp, !8459, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7359)
end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsjfnSKV9Rz3v_3h3i:bb.a
  %i.jn = sub nsw i64 %i.jm, %.sroa.5.0.i, !dbg !9052
  %i.jo = sub nsw i64 %i.ip, %.sroa.5.0.i, !dbg !9052
  %xtraiter532 = and i64 %i.jn, 3, !dbg !9052     ; 2 uses
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0, !dbg !9052
  br i1 %lcmp.mod533.not, label %.lr.ph.i.i21.i.prol.loopexit, label %.lr.ph.i.i21.i.prol, !dbg !9052

.lr.ph.i.i21.i.prol:                              ; preds = %.lr.ph.i.i21.i.preheader, %.lr.ph.i.i21.i.prol
  %.sroa.0.06.i.i22.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i21.i.prol ], [ %i.is, %.lr.ph.i.i21.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i21.i.prol ], [ 0, %.lr.ph.i.i21.i.preheader ]
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !2028, !DIExpression(), !7683)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !2033, !DIExpression(), !7685)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !2036, !DIExpression(), !7687)
    #dbg_value(i64 1, !2034, !DIExpression(), !7685)
    #dbg_value(i64 1, !2037, !DIExpression(), !7687)
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i22.i.prol, 1, !dbg !9053 ; 2 uses
    #dbg_value(i64 %i.jp, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !8509, !DIExpression(), !7688)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7690)
    #dbg_value(ptr %spec.select.i48, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7692)
    #dbg_value(ptr %spec.select.i48, !8512, !DIExpression(), !7693)
    #dbg_value(ptr %spec.select.i48, !2391, !DIExpression(), !7694)
    #dbg_value(ptr %spec.select.i48, !2400, !DIExpression(), !7696)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !2392, !DIExpression(), !7697)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7692)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !8515, !DIExpression(), !7699)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !8518, !DIExpression(), !7701)
    #dbg_value(i64 %.sroa.0.06.i.i22.i.prol, !2406, !DIExpression(), !7696)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7692)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7699)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7699)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7701)
  %i.jq = icmp samesign ult i64 %.sroa.0.06.i.i22.i.prol, 12, !dbg !9054
  tail call void @llvm.assume(i1 %i.jq), !dbg !9055
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i22.i.prol, !dbg !9056
    #dbg_value(ptr %i.jr, !8521, !DIExpression(), !7703)
    #dbg_value(ptr %i.jr, !8523, !DIExpression(), !7705)
    #dbg_value(ptr %i.jr, !8525, !DIExpression(), !7707)
  %i.js = load ptr, ptr %i.jr, align 8, !dbg !9057, !noalias !8758, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.js, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7708)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7708)
    #dbg_value(ptr poison, !2405, !DIExpression(), !7709)
  store ptr %spec.select.i48, ptr %i.js, align 8, !dbg !9058, !noalias !8758
  %i.jt = trunc nuw nsw i64 %.sroa.0.06.i.i22.i.prol to i16, !dbg !9059
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 1064, !dbg !9060
  store i16 %i.jt, ptr %i.ju, align 8, !dbg !9060, !noalias !8758
    #dbg_value(ptr undef, !2025, !DIExpression(), !7678)
    #dbg_value(ptr undef, !2027, !DIExpression(), !7680)
    #dbg_value(ptr undef, !2030, !DIExpression(), !7682)
    #dbg_value(ptr undef, !2031, !DIExpression(), !7682)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !9052 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter532, !dbg !9052
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i21.i.prol.loopexit, label %.lr.ph.i.i21.i.prol, !dbg !9052, !llvm.loop !7711

.lr.ph.i.i21.i.prol.loopexit:                     ; preds = %.lr.ph.i.i21.i.prol, %.lr.ph.i.i21.i.preheader
  %.sroa.0.06.i.i22.i.unr = phi i64 [ %i.is, %.lr.ph.i.i21.i.preheader ], [ %i.jp, %.lr.ph.i.i21.i.prol ]
  %i.jv = icmp ult i64 %i.jo, 3, !dbg !9052
  br i1 %i.jv, label %.loopexit, label %.lr.ph.i.i21.i, !dbg !9052

.lr.ph.i.i21.i:                                   ; preds = %.lr.ph.i.i21.i.prol.loopexit, %.lr.ph.i.i21.i
  %.sroa.0.06.i.i22.i = phi i64 [ %i.kl, %.lr.ph.i.i21.i ], [ %.sroa.0.06.i.i22.i.unr, %.lr.ph.i.i21.i.prol.loopexit ] ; 7 uses
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !2028, !DIExpression(), !7683)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !2033, !DIExpression(), !7685)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !2036, !DIExpression(), !7687)
    #dbg_value(i64 1, !2034, !DIExpression(), !7685)
    #dbg_value(i64 1, !2037, !DIExpression(), !7687)
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i22.i, 1, !dbg !9053 ; 2 uses
    #dbg_value(i64 %i.jw, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !8509, !DIExpression(), !7688)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7690)
    #dbg_value(ptr %spec.select.i48, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7692)
    #dbg_value(ptr %spec.select.i48, !8512, !DIExpression(), !7693)
    #dbg_value(ptr %spec.select.i48, !2391, !DIExpression(), !7694)
    #dbg_value(ptr %spec.select.i48, !2400, !DIExpression(), !7696)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !2392, !DIExpression(), !7697)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7692)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !8515, !DIExpression(), !7699)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !8518, !DIExpression(), !7701)
    #dbg_value(i64 %.sroa.0.06.i.i22.i, !2406, !DIExpression(), !7696)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7692)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7699)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7699)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7701)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i22.i, !dbg !9056
    #dbg_value(ptr %i.jx, !8521, !DIExpression(), !7703)
    #dbg_value(ptr %i.jx, !8523, !DIExpression(), !7705)
    #dbg_value(ptr %i.jx, !8525, !DIExpression(), !7707)
  %i.jy = load ptr, ptr %i.jx, align 8, !dbg !9057, !noalias !8758, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.jy, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7708)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7708)
    #dbg_value(ptr poison, !2405, !DIExpression(), !7709)
  store ptr %spec.select.i48, ptr %i.jy, align 8, !dbg !9058, !noalias !8758
  %i.jz = trunc nuw nsw i64 %.sroa.0.06.i.i22.i to i16, !dbg !9059
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 1064, !dbg !9060
  store i16 %i.jz, ptr %i.ka, align 8, !dbg !9060, !noalias !8758
    #dbg_value(ptr undef, !2025, !DIExpression(), !7678)
    #dbg_value(ptr undef, !2027, !DIExpression(), !7680)
    #dbg_value(ptr undef, !2030, !DIExpression(), !7682)
    #dbg_value(ptr undef, !2031, !DIExpression(), !7682)
    #dbg_value(i64 %i.jw, !2028, !DIExpression(), !7683)
    #dbg_value(i64 %i.jw, !2033, !DIExpression(), !7685)
    #dbg_value(i64 %i.jw, !2036, !DIExpression(), !7687)
  %i.kb = add nuw nsw i64 %.sroa.0.06.i.i22.i, 2, !dbg !9053 ; 2 uses
    #dbg_value(i64 %i.kb, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %i.jw, !8509, !DIExpression(), !7688)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7690)
    #dbg_value(ptr %spec.select.i48, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7692)
    #dbg_value(i64 %i.jw, !2392, !DIExpression(), !7697)
    #dbg_value(i64 %i.jw, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7692)
    #dbg_value(i64 %i.jw, !8515, !DIExpression(), !7699)
    #dbg_value(i64 %i.jw, !8518, !DIExpression(), !7701)
    #dbg_value(i64 %i.jw, !2406, !DIExpression(), !7696)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7692)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7699)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7699)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7701)
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jw, !dbg !9056
    #dbg_value(ptr %i.kc, !8521, !DIExpression(), !7703)
    #dbg_value(ptr %i.kc, !8523, !DIExpression(), !7705)
    #dbg_value(ptr %i.kc, !8525, !DIExpression(), !7707)
  %i.kd = load ptr, ptr %i.kc, align 8, !dbg !9057, !noalias !8758, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.kd, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7708)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7708)
  store ptr %spec.select.i48, ptr %i.kd, align 8, !dbg !9058, !noalias !8758
  %i.ke = trunc nuw nsw i64 %i.jw to i16, !dbg !9059
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 1064, !dbg !9060
  store i16 %i.ke, ptr %i.kf, align 8, !dbg !9060, !noalias !8758
    #dbg_value(i64 %i.kb, !2028, !DIExpression(), !7683)
    #dbg_value(i64 %i.kb, !2033, !DIExpression(), !7685)
    #dbg_value(i64 %i.kb, !2036, !DIExpression(), !7687)
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i22.i, 3, !dbg !9053 ; 2 uses
    #dbg_value(i64 %i.kg, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %i.kb, !8509, !DIExpression(), !7688)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7690)
    #dbg_value(ptr %spec.select.i48, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7692)
    #dbg_value(i64 %i.kb, !2392, !DIExpression(), !7697)
    #dbg_value(i64 %i.kb, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7692)
    #dbg_value(i64 %i.kb, !8515, !DIExpression(), !7699)
    #dbg_value(i64 %i.kb, !8518, !DIExpression(), !7701)
    #dbg_value(i64 %i.kb, !2406, !DIExpression(), !7696)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7692)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7699)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7699)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7701)
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kb, !dbg !9056
    #dbg_value(ptr %i.kh, !8521, !DIExpression(), !7703)
    #dbg_value(ptr %i.kh, !8523, !DIExpression(), !7705)
    #dbg_value(ptr %i.kh, !8525, !DIExpression(), !7707)
  %i.ki = load ptr, ptr %i.kh, align 8, !dbg !9057, !noalias !8758, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.ki, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7708)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7708)
  store ptr %spec.select.i48, ptr %i.ki, align 8, !dbg !9058, !noalias !8758
  %i.kj = trunc nuw nsw i64 %i.kb to i16, !dbg !9059
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 1064, !dbg !9060
  store i16 %i.kj, ptr %i.kk, align 8, !dbg !9060, !noalias !8758
    #dbg_value(i64 %i.kg, !2028, !DIExpression(), !7683)
    #dbg_value(i64 %i.kg, !2033, !DIExpression(), !7685)
    #dbg_value(i64 %i.kg, !2036, !DIExpression(), !7687)
  %i.kl = add nuw nsw i64 %.sroa.0.06.i.i22.i, 4, !dbg !9053 ; 2 uses
    #dbg_value(i64 %i.kl, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
    #dbg_value(i64 %i.kg, !8509, !DIExpression(), !7688)
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7690)
    #dbg_value(ptr %spec.select.i48, !8511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7692)
    #dbg_value(i64 %i.kg, !2392, !DIExpression(), !7697)
    #dbg_value(i64 %i.kg, !8511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7692)
    #dbg_value(i64 %i.kg, !8515, !DIExpression(), !7699)
    #dbg_value(i64 %i.kg, !8518, !DIExpression(), !7701)
    #dbg_value(i64 %i.kg, !2406, !DIExpression(), !7696)
    #dbg_value(i64 poison, !8511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7692)
    #dbg_value(ptr poison, !8516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7699)
    #dbg_value(ptr poison, !8519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(i64 12, !8516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7699)
    #dbg_value(i64 12, !8519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7701)
  %i.km = icmp ult i64 %.sroa.0.06.i.i22.i, 9, !dbg !9054
  tail call void @llvm.assume(i1 %i.km), !dbg !9055
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kg, !dbg !9056
    #dbg_value(ptr %i.kn, !8521, !DIExpression(), !7703)
    #dbg_value(ptr %i.kn, !8523, !DIExpression(), !7705)
    #dbg_value(ptr %i.kn, !8525, !DIExpression(), !7707)
  %i.ko = load ptr, ptr %i.kn, align 8, !dbg !9057, !noalias !8758, !nonnull !763, !noundef !763 ; 2 uses
    #dbg_value(ptr %i.ko, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7708)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7708)
  store ptr %spec.select.i48, ptr %i.ko, align 8, !dbg !9058, !noalias !8758
  %i.kp = trunc nuw nsw i64 %i.kg to i16, !dbg !9059
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 1064, !dbg !9060
  store i16 %i.kp, ptr %i.kq, align 8, !dbg !9060, !noalias !8758
  %exitcond.not.i.i23.i.3 = icmp eq i64 %i.kl, %i.jj, !dbg !9051
  br i1 %exitcond.not.i.i23.i.3, label %.loopexit, label %.lr.ph.i.i21.i, !dbg !9052

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !9061, !noalias !8762
  unreachable, !dbg !9061

bb.bu:                                            ; preds = %.loopexit.split-lp, %bb.bo
  %.pn.ph.i44 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k) #22
          to label %bb.bv unwind label %bb.bt, !dbg !9062, !noalias !8763

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22
          to label %.critedge37 unwind label %bb.bt, !dbg !9062, !noalias !8762

.thread90:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4), !dbg !9063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9064
  br label %.loopexit95, !dbg !9065

.loopexit:                                        ; preds = %.lr.ph.i.i21.i.prol.loopexit, %.lr.ph.i.i21.i, %bb.bs
    #dbg_value(i64 poison, !8508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7676)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.767, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.sroa.4, i64 88, i1 false), !dbg !9066, !noalias !8764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4), !dbg !9063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9064
  %.not33 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1, !dbg !8915
  br i1 %.not33, label %.loopexit95, label %bb.bw, !dbg !9065

bb.bw:                                            ; preds = %.loopexit
    #dbg_value(i64 %i.dk, !7788, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8765)
    #dbg_value(i64 %i.dk, !7881, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8766)
    #dbg_value(ptr %i.df, !7788, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !8765)
    #dbg_value(ptr %i.df, !7881, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !8766)
    #dbg_value(i64 %.sroa.0.i.sroa.0.0.copyload, !7788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8765)
    #dbg_value(i64 %.sroa.0.i.sroa.0.0.copyload, !7881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8766)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7293, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.767, i64 88, i1 false), !dbg !9067
    #dbg_value(i64 %i.dk, !7788, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8765)
    #dbg_value(i64 %i.dk, !7881, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8766)
    #dbg_value(ptr %i.gd, !7788, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8765)
    #dbg_value(ptr %i.gd, !7881, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8766)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.767), !dbg !9068
    #dbg_value(i64 %.sroa.0.i.sroa.0.0.copyload, !7782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8287)
    #dbg_value(ptr poison, !8349, !DIExpression(), !7026)
    #dbg_value(ptr poison, !8344, !DIExpression(), !7176)
    #dbg_value(ptr poison, !8325, !DIExpression(), !7023)
    #dbg_value(ptr poison, !8318, !DIExpression(), !7712)
    #dbg_value(ptr poison, !8343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7023)
    #dbg_value(ptr %i.df, !8315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7175)
    #dbg_value(i64 %i.dk, !8315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7175)
    #dbg_value(ptr %i.df, !8316, !DIExpression(), !7713)
  %i.ks = load ptr, ptr %i.df, align 8, !dbg !8873, !noalias !8299, !noundef !763 ; 2 uses
    #dbg_value(ptr undef, !8318, !DIExpression(), !7712)
  %.not.i = icmp eq ptr %i.ks, null, !dbg !8874
  br i1 %.not.i, label %._crit_edge, label %bb.an, !dbg !8875

.loopexit95:                                      ; preds = %.loopexit, %.thread90
  store ptr %spec.select39.i, ptr %0, align 8, !dbg !9069
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9069
  store i64 %spec.select.i, ptr %i.kt, align 8, !dbg !9069
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9069
  store i64 %.sroa.510.0.i, ptr %i.ku, align 8, !dbg !9069
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.767), !dbg !9068
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7293), !dbg !9070
  br label %bb.bx, !dbg !9070

bb.bx:                                            ; preds = %.loopexit95, %bb.x, %bb.by
  ret void, !dbg !9071

bb.by:                                            ; preds = %bb.ag
  %i.kv = zext nneg i16 %i.cy to i64, !dbg !9072  ; 3 uses
    #dbg_value(i64 %i.kv, !2545, !DIExpression(), !7166)
    #dbg_value(i64 %i.kv, !2560, !DIExpression(), !7037)
    #dbg_value(i64 %i.kv, !2565, !DIExpression(), !7168)
    #dbg_value(i64 %i.kv, !2568, !DIExpression(), !7170)
    #dbg_value(i64 %i.kv, !2553, !DIExpression(), !7035)
    #dbg_value(i64 %i.kv, !2571, !DIExpression(), !7172)
    #dbg_value(i64 %i.kv, !2574, !DIExpression(), !7174)
  %i.kw = add nuw nsw i16 %i.cy, 1, !dbg !9073
  store i16 %i.kw, ptr %i.cn, align 2, !dbg !9073, !noalias !8442
  %i.kx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !9074
    #dbg_value(ptr %i.kx, !2566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7168)
    #dbg_value(i64 11, !2566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7168)
    #dbg_value(ptr %i.kx, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7170)
    #dbg_value(i64 11, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7170)
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.kv, !dbg !9075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 24, i1 false), !dbg !9076
  %i.kz = getelementptr inbounds nuw i8, ptr %i.cm, i64 272, !dbg !9077
    #dbg_value(ptr %i.kz, !2572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7172)
    #dbg_value(i64 11, !2572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7172)
    #dbg_value(ptr %i.kz, !2575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7174)
    #dbg_value(i64 11, !2575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7174)
  %i.la = getelementptr inbounds nuw [72 x i8], ptr %i.kz, i64 %i.kv, !dbg !9078
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.7293, i64 16, !dbg !9079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.la, ptr noundef nonnull align 8 dereferenceable(72) %i.lb, i64 72, i1 false), !dbg !9079
  %i.lc = add nuw nsw i64 %i.kv, 1, !dbg !9080    ; 2 uses
    #dbg_value(i64 %i.lc, !2535, !DIExpression(), !7033)
    #dbg_value(i64 %i.lc, !2610, !DIExpression(), !7715)
    #dbg_value(i64 %i.lc, !2615, !DIExpression(), !7717)
    #dbg_value(ptr %i.co, !2613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7715)
    #dbg_value(i64 12, !2613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7715)
    #dbg_value(ptr %i.co, !2618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7717)
    #dbg_value(i64 12, !2618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7717)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.lc, !dbg !9081
    #dbg_value(ptr %i.ld, !2621, !DIExpression(), !7719)
    #dbg_value(ptr %.lcssa178, !2622, !DIExpression(), !7719)
  store ptr %.lcssa178, ptr %i.ld, align 8, !dbg !9082, !noalias !8442
    #dbg_declare(ptr poison, !2380, !DIExpression(), !7721)
    #dbg_value(ptr %i.cm, !2391, !DIExpression(), !7722)
    #dbg_value(ptr %i.cm, !2400, !DIExpression(), !7724)
    #dbg_value(i64 %i.lc, !2392, !DIExpression(), !7725)
    #dbg_value(i64 %i.lc, !2406, !DIExpression(), !7724)
    #dbg_value(ptr %.lcssa178, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7726)
    #dbg_value(i64 poison, !2393, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7726)
    #dbg_value(ptr poison, !2405, !DIExpression(), !7727)
  store ptr %i.cm, ptr %.lcssa178, align 8, !dbg !9083, !noalias !8442
  %i.le = trunc nuw nsw i64 %i.lc to i16, !dbg !9084
  %i.lf = getelementptr inbounds nuw i8, ptr %.lcssa178, i64 1064, !dbg !9085
  store i16 %i.le, ptr %i.lf, align 8, !dbg !9085, !noalias !8442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9086, !noalias !8394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9086, !noalias !8394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9087
  store ptr %spec.select39.i, ptr %0, align 8, !dbg !9088
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9088
  store i64 %spec.select.i, ptr %i.lg, align 8, !dbg !9088
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9088
  store i64 %.sroa.510.0.i, ptr %i.lh, align 8, !dbg !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7293), !dbg !9070
  br label %bb.bx, !dbg !9070

.critedge37:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i44, %bb.bv ], [ %i.dc, %bb.am ], [ %i.da, %bb.aj ]
  resume { ptr, i32 } %.pn.pn, !dbg !9089
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3e_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9098 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 16 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
    #dbg_declare(ptr %1, !9792, !DIExpression(), !9805)
    #dbg_value(ptr %2, !9793, !DIExpression(), !9806)
    #dbg_declare(ptr poison, !9794, !DIExpression(), !9807)
    #dbg_declare(ptr %i.g, !9795, !DIExpression(), !9808)
    #dbg_declare(ptr %i.f, !9799, !DIExpression(), !9809)
    #dbg_declare(ptr %i.e, !9800, !DIExpression(), !9810)
    #dbg_declare(ptr %i.d, !9801, !DIExpression(), !9811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9812), !dbg !10333
    #dbg_declare(ptr %1, !9813, !DIExpression(), !9106)
    #dbg_declare(ptr poison, !9819, !DIExpression(), !9107)
    #dbg_value(ptr %1, !9821, !DIExpression(), !9110)
    #dbg_value(ptr %1, !9823, !DIExpression(), !9113)
  %i.h = load ptr, ptr %1, align 8, !dbg !10334, !alias.scope !9812, !nonnull !763, !noundef !763 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714, !dbg !10335 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !dbg !10335, !noalias !9828, !noundef !763 ; 3 uses
  %i.k = zext i16 %i.j to i64, !dbg !10336
    #dbg_value(i64 %i.k, !9817, !DIExpression(), !9117)
    #dbg_value(i64 %i.k, !9829, !DIExpression(), !9120)
    #dbg_value(i64 %i.k, !9837, !DIExpression(), !9123)
    #dbg_value(ptr %1, !9835, !DIExpression(), !9124)
    #dbg_value(ptr %1, !9823, !DIExpression(), !9128)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10337
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10338
  %i.n = load i64, ptr %i.m, align 8, !dbg !10338, !alias.scope !9812, !noundef !763 ; 9 uses
    #dbg_value(ptr %i.l, !1932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9130)
    #dbg_value(i64 %i.k, !1932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9130)
    #dbg_value(i64 %i.n, !1935, !DIExpression(), !9130)
    #dbg_value(i64 %i.n, !1940, !DIExpression(), !9132)
    #dbg_value(i64 %i.n, !1940, !DIExpression(), !9134)
    #dbg_value(i64 %i.k, !1936, !DIExpression(), !9135)
    #dbg_value(ptr %i.l, !1937, !DIExpression(), !9136)
    #dbg_value(ptr %i.l, !1941, !DIExpression(), !9132)
    #dbg_value(ptr %i.l, !1941, !DIExpression(), !9138)
    #dbg_value(ptr %i.l, !1941, !DIExpression(), !9134)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n, !dbg !10339 ; 3 uses
    #dbg_value(ptr %i.o, !1943, !DIExpression(), !9140)
    #dbg_value(ptr %i.o, !1945, !DIExpression(), !9142)
    #dbg_value(ptr %i.o, !1949, !DIExpression(), !9144)
    #dbg_value(ptr %i.o, !1951, !DIExpression(), !9146)
  %i.p = load i64, ptr %i.o, align 8, !dbg !10340, !alias.scope !9850, !noalias !9828, !noundef !763
    #dbg_value(i64 %i.p, !1938, !DIExpression(), !9149)
    #dbg_value(i64 %i.n, !1940, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9138)
  %i.q = getelementptr i8, ptr %i.o, i64 8, !dbg !10341
    #dbg_value(ptr %i.q, !1946, !DIExpression(), !9142)
  %i.r = xor i64 %i.n, -1, !dbg !10342
  %i.s = add i64 %i.k, %i.r, !dbg !10342          ; 2 uses
    #dbg_value(i64 %i.s, !1947, !DIExpression(), !9142)
  %i.t = shl nuw nsw i64 %i.s, 3, !dbg !10343
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.q, i64 %i.t, i1 false), !dbg !10343, !alias.scope !9850, !noalias !9828
    #dbg_value(i64 %i.p, !9818, !DIExpression(), !9150)
    #dbg_value(ptr %1, !9842, !DIExpression(), !9151)
    #dbg_value(ptr %1, !9823, !DIExpression(), !9154)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 96, !dbg !10344
    #dbg_declare(ptr poison, !1953, !DIExpression(), !9156)
    #dbg_value(ptr %i.u, !1956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9157)
    #dbg_value(i64 %i.k, !1956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9157)
    #dbg_value(i64 %i.n, !1957, !DIExpression(), !9157)
    #dbg_value(i64 %i.n, !1961, !DIExpression(), !9159)
    #dbg_value(i64 %i.n, !1961, !DIExpression(), !9161)
    #dbg_value(i64 %i.k, !1958, !DIExpression(), !9162)
    #dbg_value(ptr %i.u, !1959, !DIExpression(), !9163)
    #dbg_value(ptr %i.u, !1964, !DIExpression(), !9159)
end_hunk_2
