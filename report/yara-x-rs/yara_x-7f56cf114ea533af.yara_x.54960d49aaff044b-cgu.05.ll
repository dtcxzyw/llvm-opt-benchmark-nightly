Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1B_EEB14_IBJ_IBJ_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2o_6Dotnet5index0NcNtB2o_11StringIndex0ENCNvB2k_15parse_param_row0EENCB3U_s_0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB59_NtBL_9StreamingEEB2u_:bb.a

._crit_edge:                                      ; preds = %bb.w, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEB16_IBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet5index0NcNtB2q_11StringIndex0ENCNvB2m_15parse_param_row0EENCB3W_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5b_NtBN_9StreamingEE0B2w_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEB16_IBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet5index0NcNtB2q_11StringIndex0ENCNvB2m_15parse_param_row0EENCB3W_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5b_NtBN_9StreamingEE0B2w_.exit ], [ %.sroa.435.sroa.0.0.copyload.i, %bb.w ]
  %.sroa.046.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEB16_IBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet5index0NcNtB2q_11StringIndex0ENCNvB2m_15parse_param_row0EENCB3W_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5b_NtBN_9StreamingEE0B2w_.exit ], [ %i.ct, %bb.w ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.046.0.lcssa, ptr %i.al, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamEEB1g_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.s, %bb.r, %bb.n, %bb.l, %bb.g
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.012.0235 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.w ]
  %.sroa.046.0234 = phi ptr [ %2, %.lr.ph ], [ %i.ct, %bb.w ] ; 4 uses
  %.sroa.6.0233 = phi i64 [ %3, %.lr.ph ], [ %.sroa.435.sroa.0.0.copyload.i, %bb.w ] ; 4 uses
  %i.am = add nuw i64 %.sroa.012.0235, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1553
  store ptr %.sroa.046.0234, ptr %i.f, align 8, !noalias !1563
  store i64 %.sroa.6.0233, ptr %i.w, align 8, !noalias !1563
  %i.an = icmp samesign ult i64 %.sroa.6.0233, 2
  br i1 %i.an, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.046.0234, i64 %.sroa.6.0233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1553
  store ptr %.sroa.046.0234, ptr %i.e, align 8, !noalias !1553
  store ptr %i.ao, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1553
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1553
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ap = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 2, %bb.e ]
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1568, !noalias !1573
  %i.ar = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.as = extractvalue { i1, i8 } %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc24
  %i.at = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1575, !noalias !1573, !noundef !17
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1575, !noalias !1573
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1568, !noalias !1573 ; 2 uses
  %i.av = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.av, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1553
  %i.aw = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i64 noundef 2)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1553
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread

bb.i:                                             ; preds = %bb.g
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 5 uses
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1553
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1576
  store ptr %i.ax, ptr %i.d, align 8, !noalias !1586
  store i64 %i.ay, ptr %i.x, align 8, !noalias !1586
  %i.az = icmp samesign ult i64 %i.ay, 2
  br i1 %i.az, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1576
  store ptr %i.ax, ptr %i.c, align 8, !noalias !1576
  store ptr %i.ba, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i26, align 8, !noalias !1576
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i28, align 8, !noalias !1576
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i29

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i29: ; preds = %bb.k, %bb.j
  %i.bb = phi i64 [ %.pr.i.i.i.i34, %bb.k ], [ 2, %bb.j ]
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i27, align 8, !alias.scope !1591, !noalias !1596
  %i.bd = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i29
  %i.be = extractvalue { i1, i8 } %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc38
  %i.bf = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i28, align 8, !alias.scope !1598, !noalias !1596, !noundef !17
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %.sroa.2.0..sroa_idx.i.i.i.i28, align 8, !alias.scope !1598, !noalias !1596
  %.pr.i.i.i.i34 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i27, align 8, !alias.scope !1591, !noalias !1596 ; 2 uses
  %i.bh = icmp eq i64 %.pr.i.i.i.i34, 0
  br i1 %i.bh, label %bb.l, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i29

bb.l:                                             ; preds = %bb.k, %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1576
  %i.bi = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1576
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread

bb.n:                                             ; preds = %bb.l
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1576
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1599
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b, i8 %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef range(i64 0, -9223372036854775808) %i.bk) #32
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.n
  %i.bl = load i64, ptr %i.b, align 8, !range !123, !noalias !1599, !noundef !17 ; 3 uses
  %.not.i = icmp eq i64 %i.bl, -1
  %.sroa.034.0.copyload.i = load i64, ptr %i.z, align 8, !noalias !1599 ; 4 uses
  %.sroa.435.sroa.0.0.copyload.i = load i64, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !1599 ; 3 uses
  %.sroa.435.sroa.4.0.copyload.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !1599 ; 3 uses
  br i1 %.not.i, label %bb.o, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread

bb.o:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1599
  %i.bm = icmp ne i64 %.sroa.034.0.copyload.i, 0
  call void @llvm.assume(i1 %i.bm)
  %i.bn = load i64, ptr %.val23, align 8, !range !122, !noundef !17
  %i.bo = trunc nuw i64 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bp = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.bq = load i64, ptr %i.ab, align 8, !noundef !17
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.q, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !noundef !17
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = load i64, ptr %i.ad, align 8, !noundef !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !noundef !17 ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, %i.bw
  %.not.i.i.i.i = icmp ugt i64 %i.cb, %i.bx
  %i.cc = icmp ult i32 %i.bz, %.sroa.435.sroa.4.0.copyload.i
  %or.cond.i.i.i = or i1 %i.cc, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = zext i32 %.sroa.435.sroa.4.0.copyload.i to i64 ; 2 uses
  %i.ce = load ptr, ptr %i.ae, align 8, !nonnull !17, !noundef !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = sub nuw nsw i64 %i.ca, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  %i.ci = invoke { ptr, i64 } @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr20from_bytes_until_nul(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cg)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %bb.r
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0      ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc42
  %i.cl = extractvalue { ptr, i64 } %i.ci, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.cl)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.s
  %i.cm = load i64, ptr %i.a, align 8, !range !122, !noundef !17
  %i.cn = trunc nuw i64 %i.cm to i1               ; 2 uses
  %i.co = load ptr, ptr %i.af, align 8, !nonnull !17
  %i.cp = load i64, ptr %i.ag, align 8
  %.sroa.7.2.i.i.i = select i1 %i.cn, i64 undef, i64 %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %4 = ptrtoint ptr %i.co to i64
  %5 = select i1 %i.cn, i64 0, i64 %4
  %6 = inttoptr i64 %5 to ptr
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread: ; preds = %.noexc41
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.723.sroa.6.0.copyload.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i, align 4, !noalias !1599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1599
  %.sroa.8132.24.insert.ext = zext i32 %.sroa.435.sroa.4.0.copyload.i to i64
  %.sroa.8132.28.insert.ext = zext i32 %.sroa.723.sroa.6.0.copyload.i to i64
  %.sroa.8132.28.insert.shift = shl nuw i64 %.sroa.8132.28.insert.ext, 32
  %.sroa.8132.28.insert.insert = or disjoint i64 %.sroa.8132.28.insert.shift, %.sroa.8132.24.insert.ext ; 2 uses
  %i.cq = inttoptr i64 %.sroa.435.sroa.0.0.copyload.i to ptr ; 2 uses
  %i.cr = icmp eq i64 %i.bl, 1
  br i1 %i.cr, label %bb.x, label %bb.y

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread: ; preds = %bb.h, %bb.m
  %.sroa.13.0187.ph.in = phi ptr [ %i.ax, %bb.m ], [ %.sroa.046.0234, %bb.h ]
  %.sroa.18.0186.ph = phi i64 [ %i.ay, %bb.m ], [ %.sroa.6.0233, %bb.h ]
  %.sroa.13.0187.ph = ptrtoint ptr %.sroa.13.0187.ph.in to i64
  %i.cs = inttoptr i64 %.sroa.18.0186.ph to ptr
  br label %bb.x

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i: ; preds = %bb.o, %bb.p, %bb.q, %.noexc42, %.noexc43
  %.sroa.7.4.i.i.i = phi i64 [ undef, %bb.q ], [ undef, %.noexc42 ], [ undef, %bb.o ], [ %.sroa.7.2.i.i.i, %.noexc43 ], [ undef, %bb.p ] ; 2 uses
  %.sroa.0.4.i.i.i = phi ptr [ null, %bb.q ], [ null, %.noexc42 ], [ null, %bb.o ], [ %6, %.noexc43 ], [ null, %bb.p ] ; 2 uses
  %i.ct = inttoptr i64 %.sroa.034.0.copyload.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store ptr %.sroa.0.4.i.i.i, ptr %i.ah, align 8, !noalias !1604
  store i64 %.sroa.7.4.i.i.i, ptr %i.ai, align 8, !noalias !1604
  %i.cu = load i64, ptr %i.aj, align 8, !alias.scope !1609, !noalias !1614, !noundef !17 ; 3 uses
  %i.cv = load i64, ptr %i.h, align 8, !range !498, !alias.scope !1609, !noalias !1614, !noundef !17
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #30
          to label %bb.w unwind label %bb.u, !noalias !1618

bb.u:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.v, !noalias !1618

bb.v:                                             ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !1618
  unreachable

bb.w:                                             ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i, %bb.t
  %i.cz = load ptr, ptr %i.ak, align 8, !alias.scope !1609, !noalias !1614, !nonnull !17, !noundef !17
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cu ; 2 uses
  store ptr %.sroa.0.4.i.i.i, ptr %i.da, align 8, !noalias !1614
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.7.4.i.i.i, ptr %i.db, align 8, !noalias !1619
  %i.dc = add i64 %i.cu, 1
  store i64 %i.dc, ptr %i.aj, align 8, !alias.scope !1609, !noalias !1614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1604
  %exitcond.not = icmp eq i64 %i.am, %.val
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.x:                                             ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread
  %i.dd = phi ptr [ %i.cs, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread ], [ %i.cq, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread ]
  %.sroa.21.0185203 = phi i64 [ 24, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread ], [ %.sroa.8132.28.insert.insert, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread ]
  %.sroa.13.0187202 = phi i64 [ %.sroa.13.0187.ph, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread.thread ], [ %.sroa.034.0.copyload.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1620
  store i64 %.sroa.13.0187202, ptr %i.i, align 8, !noalias !1625
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.dd, ptr %.sroa.459.0..sroa_idx, align 8, !noalias !1625
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.21.0185203, ptr %.sroa.560.0..sroa_idx, align 8, !noalias !1625
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEBA_INtB6_3MapIB1E_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB20_6Dotnet5index0NcNtB20_11StringIndex0ENCNvB1W_15parse_param_row0EEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB4A_NtB6_9StreamingEEB26_.exit.i.thread
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.de, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.034.0.copyload.i, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cq, ptr %.sroa.563.0..sroa_idx, align 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1620
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.sink344 = phi i64 [ 8, %bb.aa ], [ 32, %bb.y ]
  %.sink = phi i64 [ 1, %bb.aa ], [ %.sroa.8132.28.insert.insert, %bb.y ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink344
  store i64 %.sink, ptr %i.dg, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamEEB1g_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.u, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.cx, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamEEB1g_.exit: ; preds = %bb.ab
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.z
  %.pn.ph = phi { ptr, i32 } [ %i.df, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit204, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp205, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #28
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1B_EEB14_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2g_6Dotnet11coded_indexs_0IBJ_IBJ_NCNvB2c_5index0NcNtB2g_11StringIndex0ENCNvB2c_23parse_generic_param_row0EENCB4i_s_0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB5F_NtBL_9StreamingEEB2m_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 13 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.val = load i64, ptr %1, align 8, !noundef !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val, i64 2048) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1626
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1626
  %i.n = load i64, ptr %i.i, align 8, !range !122, !noalias !1626, !noundef !17
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !477, !noalias !1626, !noundef !17 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.o, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEB16_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2i_6Dotnet11coded_indexs_0IBL_IBL_NCNvB2e_5index0NcNtB2i_11StringIndex0ENCNvB2e_23parse_generic_param_row0EENCB4k_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5H_NtBN_9StreamingEE0B2o_.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.r, align 8, !noalias !1626
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #31, !noalias !1626
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEB16_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2i_6Dotnet11coded_indexs_0IBL_IBL_NCNvB2e_5index0NcNtB2i_11StringIndex0ENCNvB2e_23parse_generic_param_row0EENCB4k_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5H_NtBN_9StreamingEE0B2o_.exit: ; preds = %bb.a
  %i.t = load ptr, ptr %i.r, align 8, !noalias !1626, !nonnull !17, !noundef !17
  %i.u = icmp ule i64 %..i.i, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1626
  store i64 %i.q, ptr %i.m, align 8, !alias.scope !1626
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !1626
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.w, align 8, !alias.scope !1626
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEB16_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2i_6Dotnet11coded_indexs_0IBL_IBL_NCNvB2e_5index0NcNtB2i_11StringIndex0ENCNvB2e_23parse_generic_param_row0EENCB4k_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5H_NtBN_9StreamingEE0B2o_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !1257
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !17
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load i8, ptr %i.aj, align 8, !range !1257
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val22 = load ptr, ptr %i.x, align 8, !nonnull !17, !align !255 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.val22, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %.val22, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %.val22, i64 560
  %i.ap = getelementptr inbounds nuw i8, ptr %.val22, i64 552
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet18parse_tilde_stream:bb.a
  unreachable

bb.au:                                            ; preds = %bb.at
  %.val799 = load ptr, ptr %.sroa.537.0..sroa_idx38, align 8, !nonnull !17, !noundef !17
  %i.mk = load i64, ptr %.val799, align 8, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8770
  call void @llvm.experimental.noalias.scope.decl(metadata !8775)
  %..i.i.i860 = call noundef i64 @llvm.umin.i64(i64 %i.mk, i64 4096) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8778
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef %..i.i.i860, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc880 unwind label %.loopexit.split-lp

.noexc880:                                        ; preds = %bb.au
  %i.ml = load i64, ptr %i.aj, align 8, !range !122, !noalias !8778, !noundef !17
  %i.mm = trunc nuw i64 %i.ml to i1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !range !477, !noalias !8778, !noundef !17 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br i1 %i.mm, label %bb.av, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEIBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet5index0NcNtB2m_11StringIndex0ENCNvB2i_16parse_module_row0EIBL_B2e_NcNtB2m_9GuidIndex0EB4i_B4i_ENCB3S_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5I_NtBN_9StreamingEE0B2s_.exit.i, !prof !87

bb.av:                                            ; preds = %.noexc880
  %i.mq = load i64, ptr %i.mp, align 8, !noalias !8778
  br label %.invoke

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEIBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet5index0NcNtB2m_11StringIndex0ENCNvB2i_16parse_module_row0EIBL_B2e_NcNtB2m_9GuidIndex0EB4i_B4i_ENCB3S_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5I_NtBN_9StreamingEE0B2s_.exit.i: ; preds = %.noexc880
  %i.mr = load ptr, ptr %i.mp, align 8, !noalias !8778, !nonnull !17, !noundef !17 ; 2 uses
  %i.ms = icmp ule i64 %..i.i.i860, %i.mo
  call void @llvm.assume(i1 %i.ms)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8778
  store i64 %i.mo, ptr %i.an, align 8, !alias.scope !8775, !noalias !8770
  %i.mt = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.mr, ptr %i.mt, align 8, !alias.scope !8775, !noalias !8770
  %i.mu = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 0, ptr %i.mu, align 8, !alias.scope !8775, !noalias !8770
  %.not.i861 = icmp eq i64 %i.mk, 0
  %i.mv = inttoptr i64 %i.mo to ptr
  %i.mw = ptrtoint ptr %i.mr to i64
  br i1 %.not.i861, label %.loopexit1535, label %.lr.ph.i862

.lr.ph.i862:                                      ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEIBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet5index0NcNtB2m_11StringIndex0ENCNvB2i_16parse_module_row0EIBL_B2e_NcNtB2m_9GuidIndex0EB4i_B4i_ENCB3S_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5I_NtBN_9StreamingEE0B2s_.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i863 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i864 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i865 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ne = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.435.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.435.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.435.0..sroa_idx.i63.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.aw

.loopexit.i867:                                   ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i866
  %lpad.loopexit.i868 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp.i872:                          ; preds = %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.be, %bb.ba, %bb.az
  %lpad.loopexit.split-lp.i873 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.aw:                                            ; preds = %bb.bq, %.lr.ph.i862
  %.sroa.012.0369.i = phi i64 [ 0, %.lr.ph.i862 ], [ %i.nn, %bb.bq ]
  %.sroa.075.0368.i = phi ptr [ %.sroa.01.0.lcssa.i, %.lr.ph.i862 ], [ %i.pn, %bb.bq ] ; 4 uses
  %.sroa.6.0367.i = phi i64 [ %.sroa.6.0.lcssa.i, %.lr.ph.i862 ], [ %.sroa.435.sroa.0.0.copyload.i64.i, %bb.bq ] ; 4 uses
  %i.nn = add nuw i64 %.sroa.012.0369.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8779
  store ptr %.sroa.075.0368.i, ptr %i.ai, align 8, !noalias !8789
  store i64 %.sroa.6.0367.i, ptr %i.mx, align 8, !noalias !8789
  %i.no = icmp samesign ult i64 %.sroa.6.0367.i, 2
  br i1 %i.no, label %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.075.0368.i, i64 %.sroa.6.0367.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8779
  store ptr %.sroa.075.0368.i, ptr %i.ah, align 8, !noalias !8779
  store ptr %i.np, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i863, align 8, !noalias !8779
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i865, align 8, !noalias !8779
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i866

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i866: ; preds = %bb.ay, %bb.ax
  %i.nq = phi i64 [ %.pr.i.i.i.i.i879, %bb.ay ], [ 2, %bb.ax ]
  %i.nr = add i64 %i.nq, -1
  store i64 %i.nr, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i864, align 8, !alias.scope !8794, !noalias !8799
  %i.ns = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.noexc29.i unwind label %.loopexit.i867, !noalias !8801

.noexc29.i:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i866
  %i.nt = extractvalue { i1, i8 } %i.ns, 0
  br i1 %i.nt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc29.i
  %i.nu = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i865, align 8, !alias.scope !8802, !noalias !8799, !noundef !17
  %i.nv = add i64 %i.nu, 1
  store i64 %i.nv, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i865, align 8, !alias.scope !8802, !noalias !8799
  %.pr.i.i.i.i.i879 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i864, align 8, !alias.scope !8794, !noalias !8799 ; 2 uses
  %i.nw = icmp eq i64 %.pr.i.i.i.i.i879, 0
  br i1 %i.nw, label %bb.az, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i866

bb.az:                                            ; preds = %bb.ay, %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8779
  %i.nx = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, i64 noundef 2)
          to label %bb.ba unwind label %.loopexit.split-lp.i872, !noalias !8801 ; 2 uses

_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.thread.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8779
  %i.ny = ptrtoint ptr %.sroa.075.0368.i to i64
  %i.nz = inttoptr i64 %.sroa.6.0367.i to ptr
  br label %bb.br

bb.ba:                                            ; preds = %bb.az
  %i.oa = extractvalue { ptr, i64 } %i.nx, 0      ; 2 uses
  %i.ob = extractvalue { ptr, i64 } %i.nx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8779
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oa) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !8803
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ag, i8 %., ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oa, i64 noundef range(i64 0, -9223372036854775808) %i.ob) #32
          to label %.noexc31.i unwind label %.loopexit.split-lp.i872, !noalias !8801

.noexc31.i:                                       ; preds = %bb.ba
  %i.oc = load i64, ptr %i.ag, align 8, !range !123, !noalias !8803, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq i64 %i.oc, -1
  %.sroa.034.0.copyload.i.i = load i64, ptr %i.my, align 8, !noalias !8803 ; 3 uses
  %.sroa.435.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !8803 ; 2 uses
  %.sroa.435.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !8803 ; 3 uses
  br i1 %.not.i.i, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8803
  %i.od = icmp ne i64 %.sroa.034.0.copyload.i.i, 0
  call void @llvm.assume(i1 %i.od)
  %.sink74.i248.i = inttoptr i64 %.sroa.034.0.copyload.i.i to ptr
  %i.oe = load i64, ptr %1, align 8, !range !122, !noalias !8801, !noundef !17
  %i.of = trunc nuw i64 %i.oe to i1
  br i1 %i.of, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.og = load i64, ptr %i.mz, align 8, !noalias !8801 ; 2 uses
  %i.oh = load i64, ptr %i.na, align 8, !noalias !8801, !noundef !17
  %i.oi = icmp ult i64 %i.og, %i.oh
  br i1 %i.oi, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.oj = load ptr, ptr %i.nb, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %i.og ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load i32, ptr %i.ol, align 8, !noalias !8801, !noundef !17
  %i.on = zext i32 %i.om to i64                   ; 2 uses
  %i.oo = load i64, ptr %i.nc, align 8, !noalias !8801, !noundef !17
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  %i.oq = load i32, ptr %i.op, align 4, !noalias !8801, !noundef !17 ; 2 uses
  %i.or = zext i32 %i.oq to i64                   ; 2 uses
  %i.os = add nuw nsw i64 %i.or, %i.on
  %.not.i.i.i.i.i = icmp ugt i64 %i.os, %i.oo
  %i.ot = icmp ult i32 %i.oq, %.sroa.435.sroa.4.0.copyload.i.i
  %or.cond.i.i.i.i = or i1 %i.ot, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ou = zext i32 %.sroa.435.sroa.4.0.copyload.i.i to i64 ; 2 uses
  %i.ov = load ptr, ptr %i.nd, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.on
  %i.ox = sub nuw nsw i64 %i.or, %i.ou
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ou
  %i.oz = invoke { ptr, i64 } @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr20from_bytes_until_nul(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oy, i64 noundef %i.ox)
          to label %.noexc32.i unwind label %.loopexit.split-lp.i872, !noalias !8801 ; 2 uses

.noexc32.i:                                       ; preds = %bb.be
  %i.pa = extractvalue { ptr, i64 } %i.oz, 0      ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.noexc32.i
  %i.pc = extractvalue { ptr, i64 } %i.oz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8770
  invoke void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pa, i64 noundef %i.pc)
          to label %.noexc33.i unwind label %.loopexit.split-lp.i872, !noalias !8801

.noexc33.i:                                       ; preds = %bb.bf
  %i.pd = load i64, ptr %i.af, align 8, !range !122, !noalias !8770, !noundef !17
  %i.pe = trunc nuw i64 %i.pd to i1               ; 2 uses
  %i.pf = load ptr, ptr %i.ne, align 8, !noalias !8770, !nonnull !17
  %i.pg = load i64, ptr %i.nf, align 8, !noalias !8770
  %.sroa.7.2.i.i.i.i = select i1 %i.pe, i64 undef, i64 %i.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8770
  %4 = ptrtoint ptr %i.pf to i64
  %5 = select i1 %i.pe, i64 0, i64 %4
  %6 = inttoptr i64 %5 to ptr
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc31.i
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %.sroa.723.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !8803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8803
  br label %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i

bb.bh:                                            ; preds = %.noexc33.i, %.noexc32.i, %bb.bd, %bb.bc, %bb.bb
  %.sroa.7.4.i.i.i.i = phi i64 [ undef, %bb.bd ], [ undef, %.noexc32.i ], [ undef, %bb.bb ], [ %.sroa.7.2.i.i.i.i, %.noexc33.i ], [ undef, %bb.bc ] ; 2 uses
  %.sroa.0.4.i.i.i.i = phi ptr [ null, %bb.bd ], [ null, %.noexc32.i ], [ null, %bb.bb ], [ %6, %.noexc33.i ], [ null, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8808
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ae, i8 %.lobit, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink74.i248.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.435.sroa.0.0.copyload.i.i) #32
          to label %.noexc45.i unwind label %.loopexit.split-lp.i872, !noalias !8801

.noexc45.i:                                       ; preds = %bb.bh
  %i.ph = load i64, ptr %i.ae, align 8, !range !123, !noalias !8808, !noundef !17 ; 2 uses
  %.not.i35.i = icmp eq i64 %i.ph, -1
  %.sroa.034.0.copyload.i36.i = load i64, ptr %i.ng, align 8, !noalias !8808 ; 3 uses
  %.sroa.435.sroa.0.0.copyload.i38.i = load i64, ptr %.sroa.435.0..sroa_idx.i37.i, align 8, !noalias !8808 ; 2 uses
  br i1 %.not.i35.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.noexc45.i
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.435.sroa.4.0.copyload.i40.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i39.i, align 8, !noalias !8808
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %.sroa.723.sroa.6.0.copyload.i42.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i41.i, align 4, !noalias !8808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8808
  br label %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i

bb.bj:                                            ; preds = %.noexc45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8808
  %i.pi = icmp ne i64 %.sroa.034.0.copyload.i36.i, 0
  call void @llvm.assume(i1 %i.pi)
  %.sink74.i44266.i = inttoptr i64 %.sroa.034.0.copyload.i36.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8813
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ad, i8 %.lobit, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink74.i44266.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.435.sroa.0.0.copyload.i38.i) #32
          to label %.noexc58.i unwind label %.loopexit.split-lp.i872, !noalias !8801

.noexc58.i:                                       ; preds = %bb.bj
  %i.pj = load i64, ptr %i.ad, align 8, !range !123, !noalias !8813, !noundef !17 ; 2 uses
  %.not.i48.i = icmp eq i64 %i.pj, -1
  %.sroa.034.0.copyload.i49.i = load i64, ptr %i.nh, align 8, !noalias !8813 ; 3 uses
  %.sroa.435.sroa.0.0.copyload.i51.i = load i64, ptr %.sroa.435.0..sroa_idx.i50.i, align 8, !noalias !8813 ; 2 uses
  br i1 %.not.i48.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc58.i
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.435.sroa.4.0.copyload.i53.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i52.i, align 8, !noalias !8813
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.723.sroa.6.0.copyload.i55.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i54.i, align 4, !noalias !8813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8813
  br label %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i

bb.bl:                                            ; preds = %.noexc58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8813
  %i.pk = icmp ne i64 %.sroa.034.0.copyload.i49.i, 0
  call void @llvm.assume(i1 %i.pk)
  %.sink74.i57275.i = inttoptr i64 %.sroa.034.0.copyload.i49.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8818
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ac, i8 %.lobit, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink74.i57275.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.435.sroa.0.0.copyload.i51.i) #32
          to label %.noexc71.i unwind label %.loopexit.split-lp.i872, !noalias !8801

.noexc71.i:                                       ; preds = %bb.bl
  %i.pl = load i64, ptr %i.ac, align 8, !range !123, !noalias !8818, !noundef !17 ; 2 uses
  %.not.i61.i = icmp eq i64 %i.pl, -1
  %.sroa.034.0.copyload.i62.i = load i64, ptr %i.ni, align 8, !noalias !8818 ; 3 uses
  %.sroa.435.sroa.0.0.copyload.i64.i = load i64, ptr %.sroa.435.0..sroa_idx.i63.i, align 8, !noalias !8818 ; 3 uses
  br i1 %.not.i61.i, label %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc71.i
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.435.sroa.4.0.copyload.i66.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i65.i, align 8, !noalias !8818
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.sroa.723.sroa.6.0.copyload.i68.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i67.i, align 4, !noalias !8818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8818
  br label %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i

_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.i: ; preds = %.noexc71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8818
  %i.pm = icmp ne i64 %.sroa.034.0.copyload.i62.i, 0
  call void @llvm.assume(i1 %i.pm)
  %i.pn = inttoptr i64 %.sroa.034.0.copyload.i62.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !8770
  store ptr %.sroa.0.4.i.i.i.i, ptr %i.nj, align 8, !noalias !8823
  store i64 %.sroa.7.4.i.i.i.i, ptr %i.nk, align 8, !noalias !8823
  %i.po = load i64, ptr %i.nl, align 8, !alias.scope !8828, !noalias !8833, !noundef !17 ; 3 uses
  %i.pp = load i64, ptr %i.ak, align 8, !range !498, !alias.scope !8828, !noalias !8833, !noundef !17
  %i.pq = icmp eq i64 %i.po, %i.pp
  br i1 %i.pq, label %bb.bn, label %bb.bq

_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i: ; preds = %bb.bm, %bb.bk, %bb.bi, %bb.bg
  %.sroa.435.sroa.4.0.copyload.i40.sink.i = phi i32 [ %.sroa.435.sroa.4.0.copyload.i40.i, %bb.bi ], [ %.sroa.435.sroa.4.0.copyload.i53.i, %bb.bk ], [ %.sroa.435.sroa.4.0.copyload.i66.i, %bb.bm ], [ %.sroa.435.sroa.4.0.copyload.i.i, %bb.bg ]
  %.sroa.9.0304.i = phi i64 [ %i.ph, %bb.bi ], [ %i.pj, %bb.bk ], [ %i.pl, %bb.bm ], [ %i.oc, %bb.bg ] ; 2 uses
  %.sroa.17.0303.i = phi i64 [ %.sroa.034.0.copyload.i36.i, %bb.bi ], [ %.sroa.034.0.copyload.i49.i, %bb.bk ], [ %.sroa.034.0.copyload.i62.i, %bb.bm ], [ %.sroa.034.0.copyload.i.i, %bb.bg ] ; 2 uses
  %.sroa.24.0302.i = phi i64 [ %.sroa.435.sroa.0.0.copyload.i38.i, %bb.bi ], [ %.sroa.435.sroa.0.0.copyload.i51.i, %bb.bk ], [ %.sroa.435.sroa.0.0.copyload.i64.i, %bb.bm ], [ %.sroa.435.sroa.0.0.copyload.i.i, %bb.bg ]
  %.sroa.29.sroa.11.0301.i = phi i32 [ %.sroa.723.sroa.6.0.copyload.i42.i, %bb.bi ], [ %.sroa.723.sroa.6.0.copyload.i55.i, %bb.bk ], [ %.sroa.723.sroa.6.0.copyload.i68.i, %bb.bm ], [ %.sroa.723.sroa.6.0.copyload.i.i, %bb.bg ]
  %.sroa.29.sroa.11.0.insert.ext.i = zext i32 %.sroa.29.sroa.11.0301.i to i64
  %.sroa.29.sroa.11.0.insert.shift.i = shl nuw i64 %.sroa.29.sroa.11.0.insert.ext.i, 32
  %.sroa.29.sroa.0.0.insert.ext.i = zext i32 %.sroa.435.sroa.4.0.copyload.i40.sink.i to i64
  %.sroa.29.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.29.sroa.11.0.insert.shift.i, %.sroa.29.sroa.0.0.insert.ext.i ; 2 uses
  %i.pr = inttoptr i64 %.sroa.24.0302.i to ptr    ; 2 uses
  %i.ps = icmp eq i64 %.sroa.9.0304.i, 1
  br i1 %i.ps, label %bb.br, label %bb.bu

bb.bn:                                            ; preds = %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionReEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #30
          to label %bb.bq unwind label %bb.bo, !noalias !8837

bb.bo:                                            ; preds = %bb.bn
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionReEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #28
          to label %.body882 unwind label %bb.bp, !noalias !8837

bb.bp:                                            ; preds = %bb.bo
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !8837
  unreachable

bb.bq:                                            ; preds = %bb.bn, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.i
  %i.pv = load ptr, ptr %i.nm, align 8, !alias.scope !8828, !noalias !8833, !nonnull !17, !noundef !17
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.po ; 2 uses
  store ptr %.sroa.0.4.i.i.i.i, ptr %i.pw, align 8, !noalias !8838
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store i64 %.sroa.7.4.i.i.i.i, ptr %i.px, align 8, !noalias !8839
  %i.py = add i64 %i.po, 1
  store i64 %i.py, ptr %i.nl, align 8, !alias.scope !8828, !noalias !8833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !8770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8823
  %exitcond.not.i875 = icmp eq i64 %i.nn, %i.mk
  br i1 %exitcond.not.i875, label %.loopexit1535.loopexit, label %bb.aw

bb.br:                                            ; preds = %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.thread.i
  %i.pz = phi ptr [ %i.nz, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.thread.i ], [ %i.pr, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  %.sroa.29.sroa.0.0.insert.insert458.i = phi i64 [ 24, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.thread.i ], [ %.sroa.29.sroa.0.0.insert.insert.i, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  %.sroa.17.0303457.i = phi i64 [ %i.ny, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.thread.i ], [ %.sroa.17.0303.i, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8840
  store i64 %.sroa.17.0303457.i, ptr %i.al, align 8, !noalias !8845
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.pz, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !8845
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.sroa.29.sroa.0.0.insert.insert458.i, ptr %.sroa.589.0..sroa_idx.i, align 8, !noalias !8845
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.lcssa.i, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al)
          to label %bb.bt unwind label %bb.bs, !noalias !8801

bb.bs:                                            ; preds = %bb.br
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8840
  %.sroa.11.16.copyload = load i64, ptr %i.am, align 8, !noalias !8846
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.16.16.copyload = load ptr, ptr %.sroa.16.16..sroa_idx, align 8, !noalias !8846
  %.sroa.20.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.20.16.copyload = load i64, ptr %.sroa.20.16..sroa_idx, align 8, !noalias !8846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8770
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i, %bb.bt
  %.sroa.20.0 = phi i64 [ %.sroa.20.16.copyload, %bb.bt ], [ %.sroa.29.sroa.0.0.insert.insert.i, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  %.sroa.16.0 = phi ptr [ %.sroa.16.16.copyload, %bb.bt ], [ %i.pr, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.16.copyload, %bb.bt ], [ %.sroa.17.0303.i, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  %.sroa.61212.0 = phi i64 [ 1, %bb.bt ], [ %.sroa.9.0304.i, %_RINvXsE_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_16parse_module_row0EIB1B_B1P_NcNtB1X_9GuidIndex0EB3T_B3T_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB59_NtB6_9StreamingEEB23_.exit.i.thread.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionReEENtNtNtBK_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionReEEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.bv, !noalias !8801

bb.bv:                                            ; preds = %bb.bu
  %i.qb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionReEENtNtNtBR_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body882 unwind label %bb.bw, !noalias !8801

bb.bw:                                            ; preds = %bb.bv
  %i.qc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !8801
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionReEEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionReEENtNtNtBR_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.bz unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bs, %.loopexit.split-lp.i872, %.loopexit.i867
  %.pn.ph.i869 = phi { ptr, i32 } [ %i.qa, %bb.bs ], [ %lpad.loopexit.i868, %.loopexit.i867 ], [ %lpad.loopexit.split-lp.i873, %.loopexit.split-lp.i872 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionReEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #28
          to label %.body882 unwind label %bb.by, !noalias !8801

bb.by:                                            ; preds = %bb.bx
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !8801
  unreachable

bb.bz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionReEEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8770
  %i.qe = inttoptr i64 %.sroa.61212.0 to ptr
  store ptr %i.qe, ptr %0, align 8
  %.sroa.4419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.4419.0..sroa_idx, align 8
  %.sroa.5420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.16.0, ptr %.sroa.5420.0..sroa_idx, align 8
  %.sroa.5420.sroa.4.0..sroa.5420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.20.0, ptr %.sroa.5420.sroa.4.0..sroa.5420.0..sroa_idx.sroa_idx, align 8
  br label %bb.pb

end_hunk_1
