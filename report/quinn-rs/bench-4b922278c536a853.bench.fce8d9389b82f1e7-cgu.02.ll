Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.02?download=true
inline.NumInlined: 184
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECslIemzedAtQF_5bench:bb.a
    #dbg_value(i64 %i.ad, !1647, !DIExpression(), !1653)
    #dbg_value(ptr poison, !1655, !DIExpression(), !1679)
    #dbg_value(ptr poison, !1681, !DIExpression(), !1689)
    #dbg_value(i64 16, !1678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1679)
    #dbg_value(i64 16, !1687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1689)
    #dbg_value(i64 %i.af, !1678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1679)
    #dbg_value(i64 %i.af, !1687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1689)
    #dbg_value(i8 0, !1688, !DIExpression(), !1689)
    #dbg_value(i64 16, !1691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1721)
    #dbg_value(i64 16, !1723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1728)
    #dbg_value(i64 %i.af, !1691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1721)
    #dbg_value(i64 %i.af, !1723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1728)
    #dbg_value(i1 false, !1697, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1721)
    #dbg_value(i64 %i.af, !1698, !DIExpression(), !1730)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !dbg !1731, !noalias !1732
  %i.ai = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #14, !dbg !1737, !noalias !1732 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !1738
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit, !dbg !1739

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !1740, !noalias !1732
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread, !dbg !1741

bb.i:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !dbg !1742, !noalias !1732
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread, !dbg !1743

bb.j:                                             ; preds = %bb.e
    #dbg_value(i64 0, !1421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1452)
    #dbg_value(i64 poison, !1421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1452)
    #dbg_value(ptr poison, !1449, !DIExpression(), !1454)
    #dbg_value(ptr poison, !1455, !DIExpression(), !1460)
  %i.am = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !1744, !noalias !1745
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread, !dbg !1746

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph7.i, !1463, !DIExpression(), !1510)
    #dbg_value(i64 %i.ad, !1647, !DIExpression(), !1653)
    #dbg_value(i64 %i.ad, !1472, !DIExpression(), !1646)
    #dbg_value(ptr %i.ai, !1473, !DIExpression(), !1749)
    #dbg_value(ptr %i.ai, !1652, !DIExpression(), !1653)
    #dbg_value(!DIArgList(ptr %i.ai, i64 %i.ad), !1508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1750)
    #dbg_value(i64 poison, !1751, !DIExpression(), !1754)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad, !dbg !1756 ; 9 uses
    #dbg_value(ptr %i.an, !1508, !DIExpression(), !1750)
    #dbg_value(ptr %i.an, !1216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1757)
    #dbg_value(i64 %.sroa.4.0.i.ph7.i, !1216, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1757)
    #dbg_value(i64 poison, !1216, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1757)
    #dbg_value(i64 0, !1216, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1757)
    #dbg_value(i64 %i.ae, !1295, !DIExpression(), !1298)
    #dbg_value(i64 %i.ae, !1307, !DIExpression(), !1308)
    #dbg_value(ptr %i.an, !1261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1758)
    #dbg_value(ptr %i.an, !1253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1254)
    #dbg_value(i64 %i.ae, !1261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1758)
    #dbg_value(i64 %i.ae, !1253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1254)
    #dbg_value(ptr %i.an, !1294, !DIExpression(), !1298)
    #dbg_value(ptr %i.an, !1306, !DIExpression(), !1308)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !dbg !1759, !noalias !1745
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9, !dbg !1760
  %i.ap = add nsw i64 %.sroa.4.0.i.ph7.i, -1, !dbg !1761 ; 6 uses
    #dbg_value(i64 %i.ap, !1751, !DIExpression(), !1754)
    #dbg_value(i64 %i.ap, !1216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1757)
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3, !dbg !1760
  %i.ar = mul nuw nsw i64 %i.aq, 7, !dbg !1760
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar, !dbg !1760 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !1751, !DIExpression(), !1754)
    #dbg_value(i64 %.sroa.07.0.i.i, !1216, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1757)
    #dbg_value(ptr %i.c, !948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1762)
    #dbg_value(i64 16, !948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1762)
    #dbg_value(i64 16, !948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1762)
    #dbg_value(ptr %i.an, !948, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1762)
    #dbg_value(i64 %i.ap, !948, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1762)
    #dbg_value(i64 %.sroa.07.0.i.i, !948, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1762)
    #dbg_value(i64 0, !948, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1762)
  store ptr %i.c, ptr %i.b, align 8, !dbg !1763, !noalias !1184
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1763 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1763, !noalias !1184
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1763 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1763, !noalias !1184
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1763 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1763, !noalias !1184
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1763 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1763, !noalias !1184
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1763 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1763, !noalias !1184
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1763 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1763, !noalias !1184
    #dbg_value(ptr poison, !1135, !DIExpression(), !1764)
    #dbg_value(ptr poison, !1765, !DIExpression(), !1791)
    #dbg_value(<2 x i64> poison, !1793, !DIExpression(), !1799)
    #dbg_value(ptr poison, !1807, !DIExpression(), !1809)
    #dbg_declare(ptr poison, !1810, !DIExpression(), !1832)
    #dbg_value(<16 x i8> poison, !1818, !DIExpression(), !1834)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1835)
  %i.as = load i64, ptr %i.d, align 8, !dbg !1836, !alias.scope !1837, !noalias !1838, !noundef !157 ; 2 uses
    #dbg_value(ptr poison, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(i64 0, !890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1839)
    #dbg_value(i64 %i.as, !890, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1839)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !1839)
    #dbg_value(ptr undef, !1021, !DIExpression(), !1026)
  %i.at = icmp eq i64 %i.as, 0, !dbg !1840
  br i1 %i.at, label %._crit_edge57, label %.preheader.lr.ph, !dbg !1840

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit
  %i.au = load ptr, ptr %0, align 8, !dbg !1841, !alias.scope !1837, !noalias !1838, !nonnull !157, !noundef !157 ; 2 uses
    #dbg_value(ptr %i.au, !1135, !DIExpression(), !1764)
    #dbg_value(ptr %i.au, !1765, !DIExpression(), !1791)
    #dbg_value(ptr %i.au, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
  %.val640 = load <16 x i8>, ptr %i.au, align 16, !dbg !1842
    #dbg_value(!DIArgList(<16 x i8> %.val640, <16 x i8> splat (i8 7)), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1835)
    #dbg_value(!DIArgList(<16 x i8> %.val640, <16 x i8> splat (i8 -1)), !890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !1839)
  %i.av = icmp sgt <16 x i8> %.val640, splat (i8 -1), !dbg !1843
    #dbg_value(<16 x i1> %i.av, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !1844
    #dbg_value(i16 %i.aw, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
  br label %.preheader, !dbg !1840

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.036 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !1222
  %.sroa.7.037 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1845, !noalias !1184
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit, !dbg !1846

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #15, !dbg !1845
  br label %common.resume, !dbg !1847

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.022.056 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.022.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.055 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.054 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.053 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.054, !890, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1839)
    #dbg_value(ptr %.sroa.022.056, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(i64 %.sroa.5.055, !890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1839)
    #dbg_value(i16 %.sroa.13.053, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
    #dbg_value(ptr undef, !1848, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !1862)
    #dbg_value(i16 %.sroa.13.053, !1864, !DIExpression(), !1880)
  %.not.i448 = icmp eq i16 %.sroa.13.053, 0, !dbg !1882
  br i1 %.not.i448, label %.noexc5, label %._crit_edge, !dbg !1883

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.022.150 = phi ptr [ %i.ay, %.noexc5 ], [ %.sroa.022.056, %.preheader ] ; 2 uses
  %.sroa.5.149 = phi i64 [ %i.bb, %.noexc5 ], [ %.sroa.5.055, %.preheader ]
    #dbg_value(ptr %.sroa.022.150, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(i64 %.sroa.5.149, !890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1839)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.150) ]
    #dbg_value(ptr %.sroa.022.150, !1884, !DIExpression(), !1888)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.022.150, i64 16, !dbg !1890 ; 3 uses
    #dbg_value(ptr %i.ay, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(ptr %i.ay, !1891, !DIExpression(), !1901)
  %.val41 = load <16 x i8>, ptr %i.ay, align 16, !dbg !1903
    #dbg_value(<2 x i64> poison, !1904, !DIExpression(), !1907)
    #dbg_value(ptr poison, !1911, !DIExpression(), !1913)
    #dbg_declare(ptr poison, !1810, !DIExpression(), !1914)
    #dbg_value(<16 x i8> poison, !1818, !DIExpression(), !1916)
    #dbg_value(!DIArgList(<16 x i8> %.val41, <16 x i8> splat (i8 7)), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1917)
  %i.az = icmp sgt <16 x i8> %.val41, splat (i8 -1), !dbg !1918
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !1919 ; 2 uses
    #dbg_value(i16 %i.ba, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
  %i.bb = add i64 %.sroa.5.149, 16, !dbg !1920    ; 2 uses
    #dbg_value(ptr %i.ay, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(i64 %i.bb, !890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1839)
    #dbg_value(i16 %i.ba, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
    #dbg_value(ptr undef, !1848, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !1862)
    #dbg_value(i16 %i.ba, !1864, !DIExpression(), !1880)
  %.not.i4 = icmp eq i16 %i.ba, 0, !dbg !1882
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !1883

._crit_edge57.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre70 = load i64, ptr %i.d, align 8, !dbg !1921, !alias.scope !1837, !noalias !1838
  br label %._crit_edge57, !dbg !1921

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit
  %i.bc = phi i64 [ %.pre70, %._crit_edge57.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit ], !dbg !1921 ; 2 uses
    #dbg_value(i64 poison, !1022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1922)
    #dbg_value(i64 poison, !1022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1922)
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc, !dbg !1923
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1923, !noalias !1184
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1924, !noalias !1184
    #dbg_value(ptr %i.b, !1178, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !1925)
    #dbg_value(ptr %0, !1926, !DIExpression(), !1933)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !1932, !DIExpression(), !1933)
    #dbg_value(ptr %0, !1935, !DIExpression(), !1942)
    #dbg_value(ptr %0, !1944, !DIExpression(), !1969)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !1940, !DIExpression(), !1942)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !1950, !DIExpression(), !1969)
    #dbg_value(i64 1, !1941, !DIExpression(), !1942)
    #dbg_value(i64 1, !1951, !DIExpression(), !1969)
    #dbg_value(ptr %0, !1952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1972)
    #dbg_value(i64 1, !1952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1972)
    #dbg_value(i64 32, !1959, !DIExpression(), !1973)
    #dbg_value(i64 32, !1961, !DIExpression(), !1974)
    #dbg_value(ptr %0, !1975, !DIExpression(), !1994)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !1980, !DIExpression(), !1994)
    #dbg_value(i64 32, !1981, !DIExpression(), !1994)
    #dbg_value(i64 32, !1982, !DIExpression(), !1996)
    #dbg_value(i64 32, !1986, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !1997)
    #dbg_value(i64 4, !1984, !DIExpression(), !1998)
    #dbg_value(i64 4, !1988, !DIExpression(), !1999)
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslIemzedAtQF_5bench(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECslIemzedAtQF_5bench.exit unwind label %bb.l, !dbg !2000

bb.l:                                             ; preds = %._crit_edge57
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !dbg !2001
  unreachable, !dbg !2001

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECslIemzedAtQF_5bench.exit: ; preds = %._crit_edge57
  call void @llvm.experimental.noalias.scope.decl(metadata !2002), !dbg !1845
    #dbg_value(ptr %i.b, !2005, !DIExpression(), !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014), !dbg !2017
    #dbg_value(ptr %i.b, !2018, !DIExpression(), !2023)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2025, !alias.scope !2026 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2025, !alias.scope !2026 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2025, !alias.scope !2026, !noundef !157 ; 3 uses
    #dbg_value(ptr poison, !2027, !DIExpression(DW_OP_deref), !2035)
    #dbg_value(ptr poison, !2034, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !2035)
    #dbg_value(ptr poison, !2033, !DIExpression(), !2035)
    #dbg_value(ptr poison, !2037, !DIExpression(), !2043)
    #dbg_value(ptr poison, !2045, !DIExpression(), !2056)
    #dbg_value(ptr poison, !2058, !DIExpression(), !2074)
    #dbg_value(ptr poison, !2076, !DIExpression(), !2082)
  %i.bf = icmp eq i64 %.val3.i.i, 0, !dbg !2084
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2085

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECslIemzedAtQF_5bench.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2025, !alias.scope !2026
    #dbg_value(ptr poison, !2051, !DIExpression(), !2056)
    #dbg_value(i64 %.val.i.i, !2052, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2056)
    #dbg_value(i64 %.val.i.i, !2068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2074)
    #dbg_value(i64 %.val1.i.i, !2052, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2056)
    #dbg_value(i64 %.val1.i.i, !2068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2074)
  %i.bg = add i64 %.val3.i.i, 1, !dbg !2086
    #dbg_value(i64 %.val.i.i, !1541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2087)
    #dbg_value(i64 %.val1.i.i, !1541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2087)
    #dbg_value(i64 %i.bg, !1547, !DIExpression(), !2087)
    #dbg_value(i64 %i.bg, !1569, !DIExpression(), !2089)
    #dbg_value(i64 %i.bg, !1578, !DIExpression(), !2091)
    #dbg_value(i64 %.val.i.i, !1548, !DIExpression(), !2093)
    #dbg_value(i64 %.val.i.i, !1572, !DIExpression(), !2089)
    #dbg_value(i64 %.val.i.i, !1581, !DIExpression(), !2091)
    #dbg_value(i64 %.val1.i.i, !1550, !DIExpression(), !2093)
  %i.bh = mul nuw i64 %.val.i.i, %i.bg, !dbg !2094 ; 2 uses
    #dbg_value(i1 false, !1586, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2095)
    #dbg_value(i64 %i.bh, !1628, !DIExpression(), !2097)
  %i.bi = add i64 %.val1.i.i, -1, !dbg !2099
    #dbg_value(i64 %i.bi, !1631, !DIExpression(), !2097)
  %i.bj = add i64 %i.bi, %i.bh, !dbg !2100        ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh, !dbg !2100
    #dbg_value(i1 true, !1586, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2101)
  call void @llvm.assume(i1 %i.bk), !dbg !2103
  %i.bl = sub i64 0, %.val1.i.i, !dbg !2104
  %i.bm = and i64 %i.bj, %i.bl, !dbg !2105        ; 3 uses
    #dbg_value(i64 %i.bm, !1551, !DIExpression(), !2106)
    #dbg_value(i64 %i.bm, !1628, !DIExpression(), !2107)
  %i.bn = add i64 %.val3.i.i, 17, !dbg !2109
    #dbg_value(i64 %i.bn, !1631, !DIExpression(), !2107)
  %i.bo = add i64 %i.bn, %i.bm, !dbg !2110        ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm, !dbg !2110
    #dbg_value(i1 %i.bp, !1586, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2111)
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !dbg !2113
  call void @llvm.assume(i1 %i.br), !dbg !2113
    #dbg_value(i64 %.val1.i.i, !2114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2122)
    #dbg_value(i64 %.val1.i.i, !2072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2124)
    #dbg_value(i64 %i.bo, !2114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2122)
    #dbg_value(i64 %i.bo, !2072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2124)
    #dbg_value(i64 %i.bm, !2114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2122)
    #dbg_value(i64 %i.bm, !2072, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2124)
  %i.bs = icmp ne i64 %.val1.i.i, 0, !dbg !2125
  call void @llvm.assume(i1 %i.bs), !dbg !2126
    #dbg_value(i64 %.val1.i.i, !2055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2127)
    #dbg_value(i64 %.val1.i.i, !2069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2128)
    #dbg_value(i64 %i.bo, !2055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2127)
    #dbg_value(i64 %i.bo, !2069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2128)
    #dbg_value(i64 %i.bm, !2071, !DIExpression(), !2128)
    #dbg_value(i64 %i.bm, !2129, !DIExpression(), !2133)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
    #dbg_value(ptr %.val2.i.i, !2132, !DIExpression(), !2133)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2127)
    #dbg_value(ptr poison, !2135, !DIExpression(), !2142)
    #dbg_value(ptr poison, !2144, !DIExpression(), !2151)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2142)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2151)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2153, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2160)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2166)
    #dbg_value(i64 %.val1.i.i, !2141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2142)
    #dbg_value(i64 %.val1.i.i, !2150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2151)
    #dbg_value(i64 %.val1.i.i, !2159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2160)
    #dbg_value(i64 %.val1.i.i, !2165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2166)
    #dbg_value(i64 %i.bo, !2141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2142)
    #dbg_value(i64 %i.bo, !2150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2151)
    #dbg_value(i64 %i.bo, !2159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2160)
    #dbg_value(i64 %i.bo, !2165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2166)
  %i.bt = icmp eq i64 %i.bo, 0, !dbg !2168
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit, label %bb.m, !dbg !2168

bb.m:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm, !dbg !2169
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2166)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2153, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2160)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2151)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2142)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2127)
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu, !dbg !2170
    #dbg_value(ptr %i.bv, !2053, !DIExpression(), !2127)
    #dbg_value(ptr %i.bv, !2140, !DIExpression(), !2142)
    #dbg_value(ptr %i.bv, !2149, !DIExpression(), !2151)
    #dbg_value(ptr %i.bv, !2153, !DIExpression(), !2160)
    #dbg_value(ptr %i.bv, !2162, !DIExpression(), !2166)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #14, !dbg !2171, !noalias !2026
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit, !dbg !2172

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECslIemzedAtQF_5bench.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1845, !noalias !1184
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit, !dbg !1846

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.053, %.preheader ], [ %i.ba, %.noexc5 ], !dbg !2173 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.055, %.preheader ], [ %i.bb, %.noexc5 ], !dbg !2173 ; 2 uses
  %.sroa.022.1.lcssa = phi ptr [ %.sroa.022.056, %.preheader ], [ %i.ay, %.noexc5 ], !dbg !2173
    #dbg_value(i16 %.sroa.13.1.lcssa, !1870, !DIExpression(), !2174)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2175, !DIExpression(), !2183)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2185, !DIExpression(), !2192)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2194, !DIExpression(), !2201)
  %i.bw = add i16 %.sroa.13.1.lcssa, -1, !dbg !2203
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2204
  %i.by = zext nneg i16 %i.bx to i64, !dbg !2205
    #dbg_value(i64 %i.by, !1856, !DIExpression(), !2206)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2207, !DIExpression(), !2213)
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa, !dbg !2215
    #dbg_value(i16 %i.bz, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
    #dbg_value(i64 %i.by, !1014, !DIExpression(), !2216)
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by, !dbg !2217 ; 2 uses
    #dbg_value(i64 1, !1022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1922)
    #dbg_value(i64 %i.ca, !1022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1922)
  %i.cb = add i64 %.sroa.9.054, -1, !dbg !2218    ; 2 uses
    #dbg_value(i64 %i.cb, !890, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1839)
    #dbg_value(i64 %i.ca, !950, !DIExpression(), !2219)
    #dbg_value(i64 %i.ca, !1160, !DIExpression(), !1162)
    #dbg_value(ptr poison, !2220, !DIExpression(DW_OP_deref, DW_OP_deref), !2228)
    #dbg_value(ptr %0, !2226, !DIExpression(), !2228)
    #dbg_value(ptr %0, !2230, !DIExpression(), !2251)
    #dbg_value(ptr %0, !2253, !DIExpression(), !2259)
    #dbg_value(i64 %i.ca, !2227, !DIExpression(), !2228)
    #dbg_value(i64 %i.ca, !2243, !DIExpression(), !2251)
    #dbg_value(i64 %i.ca, !2261, !DIExpression(), !2271)
    #dbg_value(i64 %i.ca, !2273, !DIExpression(), !2280)
    #dbg_value(i64 1, !2279, !DIExpression(), !2282)
  %i.cc = load ptr, ptr %0, align 8, !dbg !2300, !alias.scope !2301, !noalias !2304, !nonnull !157, !noundef !157
    #dbg_value(ptr %i.cc, !2267, !DIExpression(), !2271)
    #dbg_value(ptr %i.cc, !2278, !DIExpression(), !2280)
  %i.cd = sub nsw i64 0, %i.ca, !dbg !2306
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd, !dbg !2307
    #dbg_value(ptr poison, !2298, !DIExpression(), !2308)
    #dbg_value(ptr poison, !2290, !DIExpression(), !2309)
    #dbg_value(ptr %i.ce, !2278, !DIExpression(), !2282)
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16, !dbg !2310
    #dbg_value(ptr poison, !2311, !DIExpression(DW_OP_deref), !2322)
    #dbg_value(ptr %i.cf, !2317, !DIExpression(), !2322)
    #dbg_value(ptr %2, !2324, !DIExpression(), !2332)
    #dbg_value(ptr %i.cf, !2330, !DIExpression(), !2332)
  %i.cg = invoke noundef i64 @_RINvYNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCshovLROGBtMy_11quinn_proto8StreamIdECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit unwind label %bb.k, !dbg !2334 ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.cg, !952, !DIExpression(), !2335)
    #dbg_value(i64 %i.cg, !2336, !DIExpression(), !2351)
    #dbg_value(i64 %i.cg, !2353, !DIExpression(), !2361)
    #dbg_value(ptr %i.b, !2346, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2363)
    #dbg_value(ptr %i.b, !1139, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2364)
    #dbg_value(ptr %i.b, !2359, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2366)
    #dbg_value(ptr %i.b, !2367, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2373)
    #dbg_value(ptr %i.b, !1139, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2375)
    #dbg_value(ptr %i.b, !1139, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2377)
    #dbg_value(ptr poison, !2379, !DIExpression(), !2391)
    #dbg_value(ptr poison, !2402, !DIExpression(), !2408)
    #dbg_value(ptr poison, !2409, !DIExpression(), !2413)
    #dbg_value(i64 %i.cg, !2403, !DIExpression(), !2408)
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.ap), !2404, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2415)
    #dbg_value(i64 0, !2404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2415)
  %.sroa.0.07.i = and i64 %i.ap, %i.cg, !dbg !2408 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i, !dbg !2416
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !2419, !noalias !2442
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2445
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !2445 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0, !dbg !2464
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2471, !prof !2472

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !2408
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit ], [ %i.da, %.lr.ph.i ], !dbg !2445
    #dbg_value(i16 %.lcssa.i, !2468, !DIExpression(), !2473)
    #dbg_value(i16 %.lcssa.i, !2469, !DIExpression(), !2474)
    #dbg_value(i16 %.lcssa.i, !2475, !DIExpression(), !2480)
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECslIemzedAtQF_5bench:bb.a
  %i.cs = bitcast <16 x i1> %i.cr to i16, !dbg !2557 ; 2 uses
    #dbg_value(i16 %i.cs, !2558, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2563)
  %.not.i13.i = icmp ne i16 %i.cs, 0, !dbg !2565
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true), !dbg !2566
  %i.cu = zext nneg i16 %i.ct to i64, !dbg !2566
    #dbg_value(i64 poison, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2575)
    #dbg_value(i64 %i.cu, !2567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2575)
  tail call void @llvm.assume(i1 %.not.i13.i), !dbg !2577
    #dbg_value(i64 %i.cu, !2492, !DIExpression(), !2500)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2578

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit ]
    #dbg_value(i64 0, !2406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2491)
    #dbg_value(i64 poison, !2406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2491)
    #dbg_value(ptr undef, !2379, !DIExpression(), !2391)
    #dbg_value(i64 %i.ap, !2390, !DIExpression(), !2579)
  %i.cw = add i64 %i.cv, 16, !dbg !2580           ; 2 uses
    #dbg_value(i64 %i.cw, !2404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2415)
  %i.cx = add i64 %i.cw, %.sroa.0.010.i, !dbg !2581
    #dbg_value(!DIArgList(i64 %i.cx, i64 %i.ap), !2404, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2415)
  %.sroa.0.0.i13 = and i64 %i.cx, %i.ap, !dbg !2408 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !2404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2415)
    #dbg_value(i64 %.sroa.0.0.i13, !2412, !DIExpression(), !2413)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i13, !dbg !2416
    #dbg_value(ptr %i.cy, !2440, !DIExpression(), !2582)
    #dbg_value(ptr %i.cy, !2434, !DIExpression(), !2583)
    #dbg_value(<2 x i64> zeroinitializer, !2435, !DIExpression(), !2584)
    #dbg_value(ptr %i.cy, !2424, !DIExpression(), !2585)
    #dbg_value(ptr undef, !2425, !DIExpression(), !2585)
    #dbg_value(i64 16, !2426, !DIExpression(), !2585)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !dbg !2419, !noalias !2442
    #dbg_value(<2 x i64> poison, !2435, !DIExpression(), !2584)
    #dbg_value(<2 x i64> poison, !2405, !DIExpression(), !2586)
    #dbg_value(ptr poison, !2458, !DIExpression(), !2587)
    #dbg_value(ptr poison, !2459, !DIExpression(), !2587)
    #dbg_value(ptr poison, !2460, !DIExpression(), !2587)
    #dbg_value(<2 x i64> poison, !2449, !DIExpression(), !2588)
    #dbg_declare(ptr poison, !1810, !DIExpression(), !2589)
    #dbg_value(<16 x i8> poison, !1818, !DIExpression(), !2590)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2591)
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2445
  %i.da = bitcast <16 x i1> %i.cz to i16, !dbg !2445 ; 2 uses
    #dbg_value(i16 %i.da, !2468, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2473)
  %.not.i.i = icmp eq i16 %i.da, 0, !dbg !2464
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2471, !prof !2592

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !2492, !DIExpression(), !2500)
    #dbg_value(i64 %.sroa.0.0.i12.i, !954, !DIExpression(), !2593)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2347, !DIExpression(), !2594)
    #dbg_value(i64 %.sroa.0.0.i12.i, !1151, !DIExpression(), !2595)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2360, !DIExpression(), !2361)
    #dbg_value(i64 %.sroa.0.0.i12.i, !1160, !DIExpression(), !2596)
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i12.i, !dbg !2598
    #dbg_value(i8 poison, !2349, !DIExpression(), !2602)
  %i.dc = lshr i64 %i.cg, 57, !dbg !2603
  %i.dd = trunc nuw nsw i64 %i.dc to i8, !dbg !2609 ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i12.i, -16, !dbg !2610
  %i.df = and i64 %i.de, %i.ap, !dbg !2613
  store i8 %i.dd, ptr %i.db, align 1, !dbg !2614
  %i.dg = getelementptr i8, ptr %i.an, i64 %i.df, !dbg !2615
  %i.dh = getelementptr i8, ptr %i.dg, i64 16, !dbg !2615
  store i8 %i.dd, ptr %i.dh, align 1, !dbg !2618
    #dbg_value(i64 16, !1161, !DIExpression(), !1162)
    #dbg_value(i64 16, !1161, !DIExpression(), !2596)
    #dbg_value(i64 16, !2619, !DIExpression(), !2624)
  %i.di = load ptr, ptr %0, align 8, !dbg !2626, !alias.scope !1837, !noalias !1838, !nonnull !157, !noundef !157
  %i.dj = shl i64 %i.ca, 4, !dbg !2627
  %i.dk = sub nuw nsw i64 -16, %i.dj, !dbg !2628
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk, !dbg !2631
    #dbg_value(ptr %i.dl, !2622, !DIExpression(), !2624)
    #dbg_value(ptr %i.b, !1154, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2632)
    #dbg_value(ptr %i.b, !1164, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2633)
  %i.dm = shl i64 %.sroa.0.0.i12.i, 4, !dbg !2636
  %i.dn = sub nuw nsw i64 -16, %i.dm, !dbg !2637
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn, !dbg !2639
    #dbg_value(ptr %i.do, !2623, !DIExpression(), !2624)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(16) %i.dl, i64 16, i1 false), !dbg !2640
    #dbg_value(ptr %.sroa.022.1.lcssa, !890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(i64 %.sroa.5.1.lcssa, !890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1839)
    #dbg_value(i64 %i.cb, !890, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1839)
    #dbg_value(i16 %i.bz, !890, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !1839)
    #dbg_value(ptr undef, !1021, !DIExpression(), !1026)
  %i.dp = icmp eq i64 %i.cb, 0, !dbg !1840
  br i1 %i.dp, label %._crit_edge57.loopexit, label %.preheader, !dbg !1840

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !1062

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641), !dbg !2644
    #dbg_value(ptr poison, !2645, !DIExpression(), !2653)
    #dbg_value(ptr poison, !2672, !DIExpression(), !2731)
    #dbg_value(ptr poison, !2679, !DIExpression(), !2732)
    #dbg_value(ptr %0, !2692, !DIExpression(), !2733)
    #dbg_value(ptr %0, !2734, !DIExpression(), !2740)
    #dbg_value(ptr poison, !2693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2733)
    #dbg_value(ptr poison, !2693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2733)
    #dbg_value(i64 16, !2694, !DIExpression(), !2733)
    #dbg_value(i64 16, !2742, !DIExpression(), !2747)
    #dbg_value(i64 16, !2742, !DIExpression(), !2749)
    #dbg_value(i64 16, !2751, !DIExpression(), !2756)
    #dbg_value(i64 16, !2758, !DIExpression(), !2765)
    #dbg_value(i64 16, !2767, !DIExpression(), !2784)
    #dbg_value(ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCslIemzedAtQF_5bench, !2695, !DIExpression(), !2733)
    #dbg_declare(ptr %i.a, !2696, !DIExpression(), !2788)
    #dbg_value(i64 1, !2789, !DIExpression(), !2794)
    #dbg_value(i64 1, !2796, !DIExpression(), !2802)
    #dbg_value(ptr poison, !2804, !DIExpression(), !2814)
    #dbg_value(ptr poison, !2816, !DIExpression(), !2822)
    #dbg_value(ptr poison, !2816, !DIExpression(), !2824)
    #dbg_value(i8 -1, !2826, !DIExpression(), !2831)
  %.val52.i = load ptr, ptr %0, align 8, !dbg !2833, !alias.scope !2641 ; 7 uses
    #dbg_value(ptr poison, !2834, !DIExpression(), !2858)
    #dbg_value(ptr poison, !2860, !DIExpression(), !2865)
    #dbg_value(ptr poison, !2860, !DIExpression(), !2867)
    #dbg_value(ptr poison, !2860, !DIExpression(), !2869)
    #dbg_value(ptr poison, !2860, !DIExpression(), !2871)
    #dbg_value(ptr poison, !2860, !DIExpression(), !2873)
    #dbg_value(ptr poison, !2860, !DIExpression(), !2875)
    #dbg_value(i64 16, !2877, !DIExpression(), !2889)
    #dbg_value(i64 0, !2864, !DIExpression(), !2869)
    #dbg_value(i64 16, !2864, !DIExpression(), !2871)
    #dbg_value(i64 0, !2864, !DIExpression(), !2873)
    #dbg_value(i64 16, !2891, !DIExpression(), !2899)
    #dbg_value(i64 16, !2901, !DIExpression(), !2909)
    #dbg_value(i64 0, !2886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2889)
    #dbg_value(i64 %i.k, !2886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2889)
    #dbg_value(i64 0, !2912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2920)
    #dbg_value(i64 %i.k, !2912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2920)
    #dbg_value(i64 16, !2917, !DIExpression(), !2920)
    #dbg_value(i64 0, !2922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
    #dbg_value(i64 16, !2929, !DIExpression(), !2934)
    #dbg_value(i64 16, !2936, !DIExpression(), !2944)
    #dbg_value(i64 %i.k, !2939, !DIExpression(), !2944)
    #dbg_value(i64 %i.k, !2930, !DIExpression(), !2946)
    #dbg_value(i64 %i.k, !2940, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !2947)
    #dbg_value(i64 %i.k, !2942, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !2948)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.k), !2922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2934)
    #dbg_value(i64 0, !2841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.k), !2841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(i64 15, !2841, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2949)
    #dbg_value(i8 1, !2841, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !2949)
    #dbg_value(ptr undef, !2950, !DIExpression(), !2957)
    #dbg_value(ptr undef, !2960, !DIExpression(), !2972)
    #dbg_value(i64 15, !2964, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2974)
    #dbg_value(i64 15, !2975, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2979)
    #dbg_value(ptr undef, !2966, !DIExpression(), !2981)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.k), !2968, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2982)
  %.not6.i.i = icmp eq i64 %i.k, 0, !dbg !2983
  br i1 %.not6.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i, !dbg !2983

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
    #dbg_value(ptr %.val52.i, !2896, !DIExpression(), !2984)
    #dbg_value(ptr poison, !2897, !DIExpression(), !2984)
    #dbg_value(ptr poison, !2907, !DIExpression(), !2986)
    #dbg_value(i64 %i.k, !2898, !DIExpression(), !2984)
    #dbg_value(i64 %i.k, !2908, !DIExpression(), !2986)
    #dbg_value(ptr %.val52.i, !2906, !DIExpression(), !2986)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2988, !noalias !2641
    #dbg_value(ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCslIemzedAtQF_5bench, !2739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2740)
    #dbg_value(i64 16, !2739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2740)
    #dbg_value(i64 0, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2989)
    #dbg_value(i64 %i.k, !2709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2989)
    #dbg_value(ptr undef, !2679, !DIExpression(), !2732)
    #dbg_value(ptr undef, !2672, !DIExpression(), !2731)
    #dbg_value(ptr undef, !2645, !DIExpression(), !2653)
    #dbg_value(ptr undef, !2652, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2990)
    #dbg_value(i64 -1, !2991, !DIExpression(), !2994)
  br label %bb.z, !dbg !2996

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4, !dbg !2997
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.k), !2922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2934)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.k), !2841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.k), !2968, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2982)
    #dbg_value(i64 %i.dq, !2940, !DIExpression(), !2947)
  %i.dr = and i64 %i.k, 15, !dbg !2998
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.dr), !2968, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2982)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.dr), !2841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.dr), !2922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2934)
    #dbg_value(i64 %i.dr, !2942, !DIExpression(), !2948)
  %.not13.i.i.i.i = icmp ne i64 %i.dr, 0, !dbg !2999
    #dbg_value(!DIArgList(i64 %i.dq, i1 %.not13.i.i.i.i), !2922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2934)
    #dbg_value(!DIArgList(i64 %i.dq, i1 %.not13.i.i.i.i), !2841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(!DIArgList(i64 %i.dq, i1 %.not13.i.i.i.i), !2968, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2982)
  %i.ds = zext i1 %.not13.i.i.i.i to i64, !dbg !2999
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.ds), !2968, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2982)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.ds), !2841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.ds), !2922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2934)
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds, !dbg !2999 ; 4 uses
    #dbg_value(i64 %.sroa.05.0.i.i.i.i, !2922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2934)
    #dbg_value(i64 %.sroa.05.0.i.i.i.i, !2841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(i64 %.sroa.05.0.i.i.i.i, !2968, !DIExpression(), !2982)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i) ]
  %i.dt = icmp eq i64 %.sroa.05.0.i.i.i.i, 1, !dbg !2983
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !2983

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950, !dbg !2983
  br label %bb.p, !dbg !2983

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !2983
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i.i, !dbg !2983

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod111 = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !2983
  tail call void @llvm.assume(i1 %lcmp.mod111), !dbg !2983
    #dbg_value(i64 16, !2964, !DIExpression(), !2974)
    #dbg_value(i64 16, !2975, !DIExpression(), !2979)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2970, !DIExpression(), !3000)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2978, !DIExpression(), !2979)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2841, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(i64 poison, !2841, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2852, !DIExpression(), !3001)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2863, !DIExpression(), !2865)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2863, !DIExpression(), !2867)
  %i.du = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %.sroa.0.08.i.i.epil.init, !dbg !3002 ; 2 uses
    #dbg_value(ptr %i.du, !3005, !DIExpression(), !3015)
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !dbg !3017, !noalias !2641
    #dbg_value(<2 x i64> poison, !2854, !DIExpression(), !3018)
    #dbg_declare(ptr poison, !3019, !DIExpression(), !3030)
    #dbg_value(<2 x i64> zeroinitializer, !3026, !DIExpression(), !3032)
    #dbg_declare(ptr poison, !3033, !DIExpression(), !3039)
    #dbg_declare(ptr poison, !3038, !DIExpression(), !3041)
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7), !dbg !3042
    #dbg_value(<16 x i8> %.lobit.i.i.i.epil, !3028, !DIExpression(), !3043)
    #dbg_declare(ptr poison, !3044, !DIExpression(), !3048)
    #dbg_declare(ptr poison, !3047, !DIExpression(), !3050)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>, !dbg !3051
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472), !dbg !3051
    #dbg_value(<2 x i64> %i.dw, !2856, !DIExpression(), !3052)
    #dbg_value(<2 x i64> %i.dw, !3053, !DIExpression(), !3067)
    #dbg_value(ptr %i.du, !3059, !DIExpression(), !3067)
    #dbg_value(ptr %i.du, !3069, !DIExpression(), !3076)
    #dbg_declare(ptr poison, !3075, !DIExpression(), !3078)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !dbg !3079, !noalias !2641
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !2841, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(i64 poison, !2841, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(ptr undef, !2950, !DIExpression(), !2957)
    #dbg_value(ptr undef, !2960, !DIExpression(), !2972)
    #dbg_value(i64 15, !2964, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2974)
    #dbg_value(i64 15, !2975, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2979)
    #dbg_value(ptr undef, !2966, !DIExpression(), !2981)
    #dbg_value(i64 poison, !2968, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2982)
  br label %._crit_edge.i.i, !dbg !3080

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
    #dbg_value(ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCslIemzedAtQF_5bench, !2739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2740)
    #dbg_value(i64 16, !2739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2740)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3080
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3080
    #dbg_value(i64 0, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2989)
    #dbg_value(i64 %i.k, !2709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2989)
    #dbg_value(ptr undef, !2679, !DIExpression(), !2732)
    #dbg_value(ptr undef, !2672, !DIExpression(), !2731)
    #dbg_value(ptr undef, !2645, !DIExpression(), !2653)
    #dbg_value(ptr undef, !2652, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2990)
  %..i15 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !3081
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !3081
  %i.dz = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %..i15, !dbg !3082
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val52.i, i64 %.27.i, i1 false), !dbg !3085, !noalias !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2988, !noalias !2641
  store ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCslIemzedAtQF_5bench, ptr %i.dx, align 8, !dbg !3080, !noalias !2641
  store i64 16, ptr %i.dy, align 8, !dbg !3080, !noalias !2641
  store ptr %0, ptr %i.a, align 8, !dbg !3080, !noalias !2641
  br label %.lr.ph.i16, !dbg !3087

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
    #dbg_value(i64 16, !2964, !DIExpression(), !2974)
    #dbg_value(i64 16, !2975, !DIExpression(), !2979)
    #dbg_value(i64 %.sroa.0.08.i.i, !2970, !DIExpression(), !3000)
    #dbg_value(i64 %.sroa.0.08.i.i, !2978, !DIExpression(), !2979)
    #dbg_value(i64 %.sroa.0.08.i.i, !2841, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(i64 poison, !2841, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(i64 %.sroa.0.08.i.i, !2852, !DIExpression(), !3001)
    #dbg_value(i64 %.sroa.0.08.i.i, !2863, !DIExpression(), !2865)
    #dbg_value(i64 %.sroa.0.08.i.i, !2863, !DIExpression(), !2867)
  %i.ea = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %.sroa.0.08.i.i, !dbg !3002 ; 2 uses
    #dbg_value(ptr %i.ea, !3005, !DIExpression(), !3015)
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !dbg !3017, !noalias !2641
    #dbg_value(<2 x i64> poison, !2854, !DIExpression(), !3018)
    #dbg_declare(ptr poison, !3019, !DIExpression(), !3030)
    #dbg_value(<2 x i64> zeroinitializer, !3026, !DIExpression(), !3032)
    #dbg_declare(ptr poison, !3033, !DIExpression(), !3039)
    #dbg_declare(ptr poison, !3038, !DIExpression(), !3041)
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7), !dbg !3042
    #dbg_value(<16 x i8> %.lobit.i.i.i, !3028, !DIExpression(), !3043)
    #dbg_declare(ptr poison, !3044, !DIExpression(), !3048)
    #dbg_declare(ptr poison, !3047, !DIExpression(), !3050)
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>, !dbg !3051
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472), !dbg !3051
    #dbg_value(<2 x i64> %i.ec, !2856, !DIExpression(), !3052)
    #dbg_value(<2 x i64> %i.ec, !3053, !DIExpression(), !3067)
    #dbg_value(ptr %i.ea, !3059, !DIExpression(), !3067)
    #dbg_value(ptr %i.ea, !3069, !DIExpression(), !3076)
    #dbg_declare(ptr poison, !3075, !DIExpression(), !3078)
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !dbg !3079, !noalias !2641
    #dbg_value(i64 %.sroa.0.08.i.i, !2841, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(i64 poison, !2841, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(ptr undef, !2950, !DIExpression(), !2957)
    #dbg_value(ptr undef, !2960, !DIExpression(), !2972)
    #dbg_value(i64 15, !2964, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2974)
    #dbg_value(i64 15, !2975, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2979)
    #dbg_value(ptr undef, !2966, !DIExpression(), !2981)
    #dbg_value(i64 poison, !2968, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2982)
    #dbg_value(i64 16, !2964, !DIExpression(), !2974)
    #dbg_value(i64 16, !2975, !DIExpression(), !2979)
    #dbg_value(i64 %.sroa.0.08.i.i, !2970, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3000)
    #dbg_value(i64 %.sroa.0.08.i.i, !2978, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !2979)
  %i.ed = add i64 %.sroa.0.08.i.i, 32, !dbg !3088 ; 2 uses
    #dbg_value(i64 %i.ed, !2841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(i64 poison, !2841, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(i64 %.sroa.0.08.i.i, !2852, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3001)
    #dbg_value(i64 %.sroa.0.08.i.i, !2863, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !2865)
    #dbg_value(i64 %.sroa.0.08.i.i, !2863, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !2867)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %.sroa.0.08.i.i, !dbg !3002
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !3002 ; 2 uses
    #dbg_value(ptr %i.ef, !3005, !DIExpression(), !3015)
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !dbg !3017, !noalias !2641
    #dbg_declare(ptr poison, !3019, !DIExpression(), !3030)
    #dbg_declare(ptr poison, !3033, !DIExpression(), !3039)
    #dbg_declare(ptr poison, !3038, !DIExpression(), !3041)
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7), !dbg !3042
    #dbg_value(<16 x i8> %.lobit.i.i.i.1, !3028, !DIExpression(), !3043)
    #dbg_declare(ptr poison, !3044, !DIExpression(), !3048)
    #dbg_declare(ptr poison, !3047, !DIExpression(), !3050)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>, !dbg !3051
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472), !dbg !3051
    #dbg_value(<2 x i64> %i.eh, !2856, !DIExpression(), !3052)
    #dbg_value(<2 x i64> %i.eh, !3053, !DIExpression(), !3067)
    #dbg_value(ptr %i.ef, !3059, !DIExpression(), !3067)
    #dbg_value(ptr %i.ef, !3069, !DIExpression(), !3076)
    #dbg_declare(ptr poison, !3075, !DIExpression(), !3078)
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !dbg !3079, !noalias !2641
    #dbg_value(i64 %i.ed, !2841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2949)
    #dbg_value(i64 poison, !2841, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2949)
    #dbg_value(i64 15, !2964, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2974)
    #dbg_value(i64 15, !2975, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2979)
    #dbg_value(i64 poison, !2968, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2982)
  %niter.next.1 = add i64 %niter, 2, !dbg !2983   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2983
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p, !dbg !2983

.lr.ph.i16:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
    #dbg_value(i64 %.sroa.0.06.i, !2673, !DIExpression(), !3089)
    #dbg_value(i64 %.sroa.0.06.i, !2793, !DIExpression(), !2794)
    #dbg_value(i64 %.sroa.0.06.i, !2801, !DIExpression(), !2802)
  %i.ei = add nuw i64 %.sroa.0.06.i, 1, !dbg !3090
    #dbg_value(i64 %i.ei, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2989)
    #dbg_value(i64 %.sroa.0.06.i, !2710, !DIExpression(), !3091)
    #dbg_value(i64 %.sroa.0.06.i, !3092, !DIExpression(), !3096)
    #dbg_value(i64 %.sroa.0.06.i, !2746, !DIExpression(), !2747)
    #dbg_value(i64 %.sroa.0.06.i, !3098, !DIExpression(), !3107)
    #dbg_value(i64 %.sroa.0.06.i, !3109, !DIExpression(), !3114)
    #dbg_value(i64 %.sroa.0.06.i, !2830, !DIExpression(), !2831)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3096)
  %i.ej = load ptr, ptr %0, align 8, !dbg !3116, !alias.scope !2641, !nonnull !157, !noundef !157 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i, !dbg !3117
    #dbg_value(ptr %i.ek, !2810, !DIExpression(), !2814)
    #dbg_value(ptr %i.ek, !2820, !DIExpression(), !2822)
  %i.el = load i8, ptr %i.ek, align 1, !dbg !3120, !noundef !157
  %.not.i17 = icmp eq i8 %i.el, -128, !dbg !3120
  br i1 %.not.i17, label %bb.q, label %bb.x, !dbg !3087

bb.q:                                             ; preds = %.lr.ph.i16
  %.neg.i = xor i64 %.sroa.0.06.i, -1, !dbg !3090
    #dbg_value(ptr %0, !2745, !DIExpression(), !2747)
  %.neg50.i = shl i64 %.neg.i, 4, !dbg !3121
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg50.i, !dbg !3122 ; 2 uses
    #dbg_value(ptr %i.em, !2712, !DIExpression(), !3125)
    #dbg_value(ptr %i.em, !2763, !DIExpression(), !2765)
    #dbg_value(ptr %i.em, !2772, !DIExpression(), !2784)
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i, !dbg !3126

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
    #dbg_value(ptr poison, !2220, !DIExpression(DW_OP_deref, DW_OP_deref), !3127)
    #dbg_value(ptr %0, !2226, !DIExpression(), !3127)
    #dbg_value(ptr %0, !2230, !DIExpression(), !3129)
    #dbg_value(ptr %0, !2253, !DIExpression(), !3131)
    #dbg_value(i64 %.sroa.0.06.i, !2227, !DIExpression(), !3127)
    #dbg_value(i64 %.sroa.0.06.i, !2243, !DIExpression(), !3129)
    #dbg_value(i64 %.sroa.0.06.i, !2261, !DIExpression(), !3133)
    #dbg_value(i64 %.sroa.0.06.i, !2273, !DIExpression(), !3135)
    #dbg_value(i64 1, !2279, !DIExpression(), !3137)
  %i.eo = load ptr, ptr %0, align 8, !dbg !3141, !alias.scope !3142, !noalias !3145, !nonnull !157, !noundef !157
    #dbg_value(ptr %i.eo, !2267, !DIExpression(), !3133)
    #dbg_value(ptr %i.eo, !2278, !DIExpression(), !3135)
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.en, !dbg !3147
    #dbg_value(ptr poison, !2298, !DIExpression(), !3148)
    #dbg_value(ptr poison, !2290, !DIExpression(), !3149)
    #dbg_value(ptr %i.ep, !2278, !DIExpression(), !3137)
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -16, !dbg !3150
    #dbg_value(ptr poison, !2311, !DIExpression(DW_OP_deref), !3151)
    #dbg_value(ptr %i.eq, !2317, !DIExpression(), !3151)
    #dbg_value(ptr %2, !2324, !DIExpression(), !3153)
    #dbg_value(ptr %i.eq, !2330, !DIExpression(), !3153)
  %i.er = invoke noundef i64 @_RINvYNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCshovLROGBtMy_11quinn_proto8StreamIdECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eq)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i unwind label %bb.r, !dbg !3155 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECslIemzedAtQF_5bench:bb.a
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #15
          to label %common.resume unwind label %bb.y, !dbg !3156

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
    #dbg_value(i64 %i.er, !2714, !DIExpression(), !3157)
    #dbg_value(i64 %i.er, !3106, !DIExpression(), !3107)
    #dbg_value(i64 %i.er, !3113, !DIExpression(), !3114)
    #dbg_value(i64 %i.er, !3158, !DIExpression(), !3166)
  %.val.i20 = load ptr, ptr %0, align 8, !dbg !3168, !alias.scope !2641, !nonnull !157, !noundef !157 ; 7 uses
  %.val51.i = load i64, ptr %i.h, align 8, !dbg !3168, !alias.scope !2641, !noundef !157 ; 6 uses
    #dbg_value(ptr poison, !2379, !DIExpression(), !3169)
    #dbg_value(ptr poison, !2402, !DIExpression(), !3172)
    #dbg_value(ptr poison, !2409, !DIExpression(), !3173)
    #dbg_value(i64 %i.er, !2403, !DIExpression(), !3172)
    #dbg_value(!DIArgList(i64 %i.er, i64 %.val51.i), !2404, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3175)
    #dbg_value(i64 0, !2404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3175)
  %.sroa.0.07.i.i = and i64 %.val51.i, %i.er, !dbg !3172 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.07.i.i, !dbg !3176
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !dbg !3178, !noalias !3182
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer, !dbg !3185
  %i.ev = bitcast <16 x i1> %i.eu to i16, !dbg !3185 ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0, !dbg !3189
  br i1 %.not.i9.i.i, label %.lr.ph.i55.i, label %._crit_edge.i54.i, !dbg !3191, !prof !2472

._crit_edge.i54.i:                                ; preds = %.lr.ph.i55.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i ], [ %.sroa.0.0.i.i21, %.lr.ph.i55.i ], !dbg !3172
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i ], [ %i.fm, %.lr.ph.i55.i ], !dbg !3185
    #dbg_value(i16 %.lcssa.i.i, !2468, !DIExpression(), !3192)
    #dbg_value(i16 %.lcssa.i.i, !2469, !DIExpression(), !3193)
    #dbg_value(i16 %.lcssa.i.i, !2475, !DIExpression(), !3194)
    #dbg_value(i16 %.lcssa.i.i, !2482, !DIExpression(), !3196)
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !3198
  %i.ex = zext nneg i16 %i.ew to i64, !dbg !3199
    #dbg_value(i64 %i.ex, !2461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3200)
    #dbg_value(i64 1, !2461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3200)
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex, !dbg !3201
  %i.ez = and i64 %i.ey, %.val51.i, !dbg !3201    ; 2 uses
    #dbg_value(i64 1, !2406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3202)
    #dbg_value(i64 %i.ez, !2406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3202)
    #dbg_value(i64 %i.ez, !2492, !DIExpression(), !3203)
    #dbg_value(ptr poison, !2499, !DIExpression(), !3203)
    #dbg_value(ptr poison, !2502, !DIExpression(), !3205)
    #dbg_value(ptr poison, !2511, !DIExpression(), !3207)
    #dbg_value(ptr poison, !2511, !DIExpression(), !3209)
    #dbg_value(i64 0, !2514, !DIExpression(), !3209)
    #dbg_value(i64 %i.ez, !2508, !DIExpression(), !3205)
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %i.ez, !dbg !3211
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !3213, !noundef !157
  %i.fc = icmp sgt i8 %i.fb, -1, !dbg !3214
    #dbg_value(i1 %i.fc, !2529, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3216)
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !3218, !prof !1059

bb.s:                                             ; preds = %._crit_edge.i54.i
    #dbg_value(ptr %.val.i20, !2535, !DIExpression(), !3219)
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i20, align 16, !dbg !3221
    #dbg_value(<2 x i64> poison, !2548, !DIExpression(), !3222)
    #dbg_declare(ptr poison, !1810, !DIExpression(), !3224)
    #dbg_value(<16 x i8> poison, !1818, !DIExpression(), !3226)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i.i, <16 x i8> splat (i8 7)), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3227)
  %i.fd = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer, !dbg !3228
  %i.fe = bitcast <16 x i1> %i.fd to i16, !dbg !3228 ; 2 uses
    #dbg_value(i16 %i.fe, !2558, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3229)
  %.not.i13.i.i = icmp ne i16 %i.fe, 0, !dbg !3231
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true), !dbg !3232
  %i.fg = zext nneg i16 %i.ff to i64, !dbg !3232
    #dbg_value(i64 poison, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3233)
    #dbg_value(i64 %i.fg, !2567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3233)
  tail call void @llvm.assume(i1 %.not.i13.i.i), !dbg !3235
    #dbg_value(i64 %i.fg, !2492, !DIExpression(), !3203)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !3236

.lr.ph.i55.i:                                     ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i, %.lr.ph.i55.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i21, %.lr.ph.i55.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i55.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0CslIemzedAtQF_5bench.exit.i ]
    #dbg_value(i64 0, !2406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3202)
    #dbg_value(i64 poison, !2406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3202)
    #dbg_value(ptr undef, !2379, !DIExpression(), !3169)
    #dbg_value(i64 %.val51.i, !2390, !DIExpression(), !3237)
  %i.fi = add i64 %i.fh, 16, !dbg !3238           ; 2 uses
    #dbg_value(i64 %i.fi, !2404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3175)
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i, !dbg !3239
    #dbg_value(!DIArgList(i64 %i.fj, i64 %.val51.i), !2404, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3175)
  %.sroa.0.0.i.i21 = and i64 %i.fj, %.val51.i, !dbg !3172 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i.i21, !2404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3175)
    #dbg_value(i64 %.sroa.0.0.i.i21, !2412, !DIExpression(), !3173)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.0.i.i21, !dbg !3176
    #dbg_value(ptr %i.fk, !2440, !DIExpression(), !3240)
    #dbg_value(ptr %i.fk, !2434, !DIExpression(), !3241)
    #dbg_value(<2 x i64> zeroinitializer, !2435, !DIExpression(), !3242)
    #dbg_value(ptr %i.fk, !2424, !DIExpression(), !3243)
    #dbg_value(ptr undef, !2425, !DIExpression(), !3243)
    #dbg_value(i64 16, !2426, !DIExpression(), !3243)
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !dbg !3178, !noalias !3182
    #dbg_value(<2 x i64> poison, !2435, !DIExpression(), !3242)
    #dbg_value(<2 x i64> poison, !2405, !DIExpression(), !3244)
    #dbg_value(ptr poison, !2458, !DIExpression(), !3245)
    #dbg_value(ptr poison, !2459, !DIExpression(), !3245)
    #dbg_value(ptr poison, !2460, !DIExpression(), !3245)
    #dbg_value(<2 x i64> poison, !2449, !DIExpression(), !3246)
    #dbg_declare(ptr poison, !1810, !DIExpression(), !3247)
    #dbg_value(<16 x i8> poison, !1818, !DIExpression(), !3248)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i.i, <16 x i8> splat (i8 7)), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3249)
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer, !dbg !3185
  %i.fm = bitcast <16 x i1> %i.fl to i16, !dbg !3185 ; 2 uses
    #dbg_value(i16 %i.fm, !2468, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3192)
  %.not.i.i.i = icmp eq i16 %i.fm, 0, !dbg !3189
  br i1 %.not.i.i.i, label %.lr.ph.i55.i, label %._crit_edge.i54.i, !dbg !3191, !prof !2592

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i54.i
  %.sroa.0.0.i12.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i54.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !2492, !DIExpression(), !3203)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !2716, !DIExpression(), !3250)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !3105, !DIExpression(), !3107)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !2746, !DIExpression(), !2749)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !3165, !DIExpression(), !3166)
    #dbg_value(ptr %0, !3104, !DIExpression(), !3107)
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i, !dbg !3251
  %i.fo = sub i64 %.sroa.0.0.i12.i.i, %.sroa.0.07.i.i, !dbg !3264
  %i.fp = xor i64 %i.fo, %i.fn, !dbg !3268
  %.unshifted.i = and i64 %i.fp, %.val51.i, !dbg !3268
  %i.fq = icmp ult i64 %.unshifted.i, 16, !dbg !3268
    #dbg_value(i1 %i.fq, !3269, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3272)
  br i1 %i.fq, label %bb.u, label %bb.t, !dbg !3274, !prof !3275

bb.t:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
    #dbg_value(ptr %0, !2745, !DIExpression(), !2749)
  %i.fr = shl i64 %.sroa.0.0.i12.i.i, 4, !dbg !3276
  %i.fs = sub nuw nsw i64 -16, %i.fr, !dbg !3277
  %i.ft = getelementptr inbounds i8, ptr %.val.i20, i64 %i.fs, !dbg !3280 ; 2 uses
    #dbg_value(ptr %i.ft, !2718, !DIExpression(), !3281)
    #dbg_value(ptr %i.ft, !2755, !DIExpression(), !2756)
    #dbg_value(ptr %i.ft, !2764, !DIExpression(), !2765)
    #dbg_value(ptr %i.ft, !2773, !DIExpression(), !2784)
    #dbg_value(ptr %0, !3164, !DIExpression(), !3166)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3282)
    #dbg_value(ptr %0, !3112, !DIExpression(), !3284)
    #dbg_value(ptr %0, !2829, !DIExpression(), !3286)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3289)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3292)
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.0.i12.i.i, !dbg !3294 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !3297, !noundef !157
    #dbg_value(i8 %i.fv, !2720, !DIExpression(), !3298)
  %i.fw = lshr i64 %i.er, 57, !dbg !3299
  %i.fx = trunc nuw nsw i64 %i.fw to i8, !dbg !3302 ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i12.i.i, -16, !dbg !3303
  %i.fz = and i64 %i.fy, %.val51.i, !dbg !3305
  store i8 %i.fx, ptr %i.fu, align 1, !dbg !3306
  %i.ga = load ptr, ptr %0, align 8, !dbg !3307, !alias.scope !2641, !nonnull !157, !noundef !157
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz, !dbg !3308
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !3308
  store i8 %i.fx, ptr %i.gc, align 1, !dbg !3311
    #dbg_value(ptr poison, !2820, !DIExpression(), !3312)
  %i.gd = icmp eq i8 %i.fv, -1, !dbg !3312
  br i1 %i.gd, label %bb.v, label %bb.w, !dbg !3313

bb.u:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
    #dbg_value(ptr %0, !3112, !DIExpression(), !3114)
    #dbg_value(ptr %0, !2829, !DIExpression(), !3314)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3316)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3318)
  %i.ge = lshr i64 %i.er, 57, !dbg !3320
  %i.gf = trunc nuw nsw i64 %i.ge to i8, !dbg !3322 ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16, !dbg !3323
  %i.gh = and i64 %.val51.i, %i.gg, !dbg !3325
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.06.i, !dbg !3326
  store i8 %i.gf, ptr %i.gi, align 1, !dbg !3329
  %i.gj = load ptr, ptr %0, align 8, !dbg !3330, !alias.scope !2641, !nonnull !157, !noundef !157
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh, !dbg !3331
  %i.gl = getelementptr i8, ptr %i.gk, i64 16, !dbg !3331
  store i8 %i.gf, ptr %i.gl, align 1, !dbg !3334
  br label %bb.x, !dbg !3335

bb.v:                                             ; preds = %bb.t
    #dbg_value(ptr %0, !2829, !DIExpression(), !2831)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3337)
    #dbg_value(ptr %0, !3095, !DIExpression(), !3340)
  %i.gm = add i64 %.sroa.0.06.i, -16, !dbg !3342
  %i.gn = load i64, ptr %i.h, align 8, !dbg !3344, !alias.scope !2641, !noundef !157
  %i.go = and i64 %i.gn, %i.gm, !dbg !3345
  %i.gp = load ptr, ptr %0, align 8, !dbg !3346, !alias.scope !2641, !nonnull !157, !noundef !157
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i, !dbg !3347
  store i8 -1, ptr %i.gq, align 1, !dbg !3350
  %i.gr = load ptr, ptr %0, align 8, !dbg !3351, !alias.scope !2641, !nonnull !157, !noundef !157
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go, !dbg !3352
  %i.gt = getelementptr i8, ptr %i.gs, i64 16, !dbg !3352
  store i8 -1, ptr %i.gt, align 1, !dbg !3355
    #dbg_value(ptr %i.em, !2754, !DIExpression(), !2756)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ft, ptr noundef nonnull align 1 dereferenceable(16) %i.em, i64 16, i1 false), !dbg !3356
  br label %bb.x, !dbg !3335

bb.w:                                             ; preds = %bb.t
    #dbg_value(ptr %i.em, !2774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3357)
    #dbg_value(i64 16, !2774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3357)
    #dbg_value(i64 16, !2780, !DIExpression(), !3358)
    #dbg_value(i64 16, !2782, !DIExpression(), !3359)
    #dbg_value(ptr %i.em, !1975, !DIExpression(), !3360)
    #dbg_value(ptr %i.ft, !1980, !DIExpression(), !3360)
    #dbg_value(i64 16, !1981, !DIExpression(), !3360)
    #dbg_value(i64 16, !1982, !DIExpression(), !3362)
    #dbg_value(i64 16, !1986, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !3363)
    #dbg_value(i64 2, !1984, !DIExpression(), !3364)
    #dbg_value(i64 2, !1988, !DIExpression(), !3365)
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslIemzedAtQF_5bench(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 2)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r, !dbg !3366

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i16
    #dbg_value(i64 %i.ei, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2989)
    #dbg_value(ptr undef, !2679, !DIExpression(), !2732)
    #dbg_value(ptr undef, !2672, !DIExpression(), !2731)
    #dbg_value(ptr undef, !2645, !DIExpression(), !2653)
    #dbg_value(ptr undef, !2652, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2990)
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i, !dbg !3367
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i16, !dbg !3081

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !3368
  unreachable, !dbg !3368

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !3369, !alias.scope !2641
  %.pre.i.fr = freeze i64 %.pre.i, !dbg !2996     ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1, !dbg !2996
  %i.gv = lshr i64 %.pre13.i, 3, !dbg !2996
  %i.gw = mul nuw i64 %i.gv, 7, !dbg !2996
    #dbg_value(i64 %.pre.i, !2991, !DIExpression(), !2994)
  %i.gx = icmp ult i64 %.pre.i.fr, 8, !dbg !2996
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw, !dbg !2996
  %.pre = load i64, ptr %i.d, align 8, !dbg !3370, !alias.scope !2641
  br label %bb.z, !dbg !2996

bb.z:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gy = phi i64 [ %i.e, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !3370
  %i.gz = phi i64 [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !2996
    #dbg_value(i64 %i.gz, !2991, !DIExpression(), !2994)
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3371
  %i.hb = sub i64 %i.gz, %i.gy, !dbg !3371
  store i64 %i.hb, ptr %i.ha, align 8, !dbg !3371, !alias.scope !2641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3156, !noalias !2641
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit, !dbg !3372

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.036, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit ], !dbg !1028
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.037, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslIemzedAtQF_5bench.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECslIemzedAtQF_5bench.exit ], !dbg !1028
  %i.hc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !3373
  %i.hd = insertvalue { i64, i64 } %i.hc, i64 %.sroa.4.0.i, 1, !dbg !3373
  ret { i64, i64 } %i.hd, !dbg !3374
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3375 {
bb.a:
    #dbg_value(ptr %0, !3380, !DIExpression(), !3385)
    #dbg_value(i64 %1, !3381, !DIExpression(), !3385)
    #dbg_value(ptr %2, !3382, !DIExpression(), !3385)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3386
  %i.b = load i64, ptr %i.a, align 8, !dbg !3386, !noundef !157
  %i.c = icmp ugt i64 %1, %i.b, !dbg !3387
    #dbg_value(i1 %i.c, !3388, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3391)
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3393, !prof !1059

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #17, !dbg !3394 ; 0 uses
    #dbg_value(i64 poison, !3383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3395)
    #dbg_value(i64 poison, !3396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3407)
    #dbg_value(i64 poison, !3383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3395)
    #dbg_value(i64 poison, !3396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3407)
  br label %bb.c, !dbg !3409

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !3410
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3411 {
bb.a:
    #dbg_value(ptr %0, !3435, !DIExpression(), !3440)
    #dbg_value(i64 %1, !3436, !DIExpression(), !3440)
    #dbg_value(ptr %2, !3437, !DIExpression(), !3440)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3441
  %i.b = load i64, ptr %i.a, align 8, !dbg !3441, !noundef !157
  %i.c = icmp ugt i64 %1, %i.b, !dbg !3442
    #dbg_value(i1 %i.c, !3443, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3446)
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3448, !prof !1059

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #17, !dbg !3449 ; 0 uses
    #dbg_value(i64 poison, !3438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3450)
    #dbg_value(i64 poison, !3451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3458)
    #dbg_value(i64 poison, !3438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3450)
    #dbg_value(i64 poison, !3451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3458)
  br label %bb.c, !dbg !3460

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !3461
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3462 {
bb.a:
    #dbg_value(ptr %1, !3481, !DIExpression(), !3493)
    #dbg_value(i64 %2, !3482, !DIExpression(), !3493)
    #dbg_value(ptr %3, !3483, !DIExpression(), !3493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3494), !dbg !3497
    #dbg_value(ptr poison, !3498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3528)
    #dbg_value(ptr %3, !3550, !DIExpression(), !3556)
    #dbg_value(ptr %1, !3548, !DIExpression(), !3556)
    #dbg_value(i64 %2, !3549, !DIExpression(), !3556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557), !dbg !3560
    #dbg_value(ptr poison, !3561, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3570)
    #dbg_value(ptr poison, !3573, !DIExpression(), !3577)
    #dbg_value(ptr %1, !3514, !DIExpression(), !3528)
    #dbg_value(ptr %1, !3579, !DIExpression(), !3586)
    #dbg_value(ptr %1, !3588, !DIExpression(), !3592)
    #dbg_value(i64 %2, !3515, !DIExpression(), !3528)
    #dbg_value(i64 %2, !3594, !DIExpression(), !3597)
    #dbg_value(i64 %2, !3585, !DIExpression(), !3586)
    #dbg_value(ptr undef, !3498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3528)
    #dbg_value(ptr poison, !3498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3528)
    #dbg_value(i8 -1, !3599, !DIExpression(), !3610)
  %i.a = lshr i64 %2, 57, !dbg !3617
  %i.b = trunc nuw nsw i64 %i.a to i8, !dbg !3618
    #dbg_value(i8 %i.b, !3516, !DIExpression(), !3619)
    #dbg_value(i8 %i.b, !3599, !DIExpression(), !3620)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3622
  %i.d = load i64, ptr %i.c, align 8, !dbg !3622, !alias.scope !3623, !noalias !3624, !noundef !157 ; 3 uses
    #dbg_value(!DIArgList(i64 %2, i64 %i.d), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3626)
    #dbg_value(i64 0, !3518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3626)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !3623, !noalias !3624, !nonnull !157, !noundef !157 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !3627

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ], !dbg !3619
  %.pn.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.d, !dbg !3619 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !3518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3626)
    #dbg_value(i64 %.sroa.9.0.i.i, !3518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3626)
    #dbg_value(i64 %.sroa.01.0.i.i, !3591, !DIExpression(), !3592)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i, !dbg !3628
    #dbg_value(ptr %i.h, !3631, !DIExpression(), !3634)
    #dbg_value(ptr %i.h, !2434, !DIExpression(), !3636)
    #dbg_value(<2 x i64> zeroinitializer, !2435, !DIExpression(), !3638)
    #dbg_value(ptr %i.h, !2424, !DIExpression(), !3639)
    #dbg_value(ptr undef, !2425, !DIExpression(), !3639)
    #dbg_value(i64 16, !2426, !DIExpression(), !3639)
  %.sroa.0.0.copyload.i29.i = load <16 x i8>, ptr %i.h, align 1, !dbg !3641, !noalias !3642 ; 2 uses
    #dbg_value(<2 x i64> poison, !2435, !DIExpression(), !3638)
    #dbg_value(<2 x i64> poison, !3520, !DIExpression(), !3645)
    #dbg_value(<2 x i64> poison, !3605, !DIExpression(), !3620)
    #dbg_value(<2 x i64> poison, !3615, !DIExpression(), !3646)
    #dbg_value(<2 x i64> poison, !3605, !DIExpression(), !3610)
    #dbg_declare(ptr poison, !3647, !DIExpression(), !3651)
    #dbg_declare(ptr poison, !3650, !DIExpression(), !3653)
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i, %i.g, !dbg !3654
    #dbg_value(<16 x i8> poison, !3606, !DIExpression(), !3655)
    #dbg_declare(ptr poison, !1810, !DIExpression(), !3656)
    #dbg_value(<16 x i8> poison, !1818, !DIExpression(), !3658)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3659)
  %i.j = bitcast <16 x i1> %i.i to i16, !dbg !3660 ; 2 uses
    #dbg_value(i16 %i.j, !3522, !DIExpression(), !3661)
    #dbg_value(ptr undef, !3561, !DIExpression(), !3570)
    #dbg_value(i16 %i.j, !3662, !DIExpression(), !3667)
  %.not.i.not35.i = icmp eq i16 %i.j, 0, !dbg !3669
  br i1 %.not.i.not35.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !3670

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i36.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i, !3522, !DIExpression(), !3661)
    #dbg_value(i16 %.sroa.06.0.i36.i, !3665, !DIExpression(), !3671)
    #dbg_value(i16 %.sroa.06.0.i36.i, !3672, !DIExpression(), !3677)
    #dbg_value(i16 %.sroa.06.0.i36.i, !3679, !DIExpression(), !3682)
    #dbg_value(i16 %.sroa.06.0.i36.i, !3684, !DIExpression(), !3688)
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i, i1 true), !dbg !3690
  %i.l = zext nneg i16 %i.k to i64, !dbg !3691
    #dbg_value(i64 %i.l, !3564, !DIExpression(), !3692)
    #dbg_value(i16 %.sroa.06.0.i36.i, !3693, !DIExpression(), !3696)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i, i16 %.sroa.06.0.i36.i), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !3661)
    #dbg_value(i64 %i.l, !3524, !DIExpression(), !3698)
  %i.m = add i64 %.sroa.01.0.i.i, %i.l, !dbg !3699
  %i.n = and i64 %i.m, %i.d, !dbg !3699           ; 2 uses
    #dbg_value(i64 %i.n, !3526, !DIExpression(), !3700)
    #dbg_value(ptr poison, !3701, !DIExpression(DW_OP_deref, DW_OP_deref), !3709)
    #dbg_value(ptr poison, !3708, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !3709)
    #dbg_value(i64 %i.n, !3707, !DIExpression(), !3709)
    #dbg_value(i64 %i.n, !3711, !DIExpression(), !3725)
    #dbg_value(i64 %i.n, !3727, !DIExpression(), !3737)
    #dbg_value(i64 %i.n, !3739, !DIExpression(), !3746)
    #dbg_value(i64 1, !3745, !DIExpression(), !3748)
    #dbg_value(ptr %1, !3717, !DIExpression(), !3725)
    #dbg_value(ptr %i.e, !3733, !DIExpression(), !3737)
    #dbg_value(ptr %i.e, !3744, !DIExpression(), !3746)
  %i.o = sub nsw i64 0, %i.n, !dbg !3766
  %i.p = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.o, !dbg !3767
    #dbg_value(ptr poison, !3764, !DIExpression(), !3768)
    #dbg_value(ptr poison, !3756, !DIExpression(), !3769)
    #dbg_value(ptr %i.p, !3744, !DIExpression(), !3748)
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -40, !dbg !3770 ; 2 uses
end_hunk_2
