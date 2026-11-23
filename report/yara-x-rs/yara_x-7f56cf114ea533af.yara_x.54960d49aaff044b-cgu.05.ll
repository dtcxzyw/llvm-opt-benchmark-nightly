Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet18parse_tilde_stream:bb.a

.noexc29.i917:                                    ; preds = %bb.co
  %i.sw = extractvalue { ptr, i64 } %i.sv, 0      ; 2 uses
  %i.sx = icmp eq ptr %i.sw, null
  br i1 %i.sx, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %.noexc29.i917
  %i.sy = extractvalue { ptr, i64 } %i.sv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8567
  invoke void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sw, i64 noundef %i.sy)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8571

.noexc30.i:                                       ; preds = %bb.cp
  %i.sz = load i64, ptr %i.s, align 8, !range !11, !noalias !8567, !noundef !5
  %i.ta = trunc nuw i64 %i.sz to i1               ; 2 uses
  %i.tb = load ptr, ptr %i.rk, align 8, !noalias !8567, !nonnull !5
  %i.tc = load i64, ptr %i.rl, align 8, !noalias !8567
  %.sroa.7.2.i.i.i.i918 = select i1 %i.ta, i64 undef, i64 %i.tc
  %.sroa.0.2.i.i.i.i = select i1 %i.ta, ptr null, ptr %i.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8567
  br label %bb.cr

bb.cq:                                            ; preds = %.noexc28.i
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i.i905 = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.sroa.723.sroa.6.0.copyload.i.i906 = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i.i905, align 4, !noalias !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8573
  %.sroa.8160.24.insert.ext.i = zext i32 %.sroa.435.sroa.4.0.copyload.i.i904 to i64
  %.sroa.8160.28.insert.ext.i = zext i32 %.sroa.723.sroa.6.0.copyload.i.i906 to i64
  %.sroa.8160.28.insert.shift.i = shl nuw i64 %.sroa.8160.28.insert.ext.i, 32
  %.sroa.8160.28.insert.insert.i = or disjoint i64 %.sroa.8160.28.insert.shift.i, %.sroa.8160.24.insert.ext.i
  %i.td = inttoptr i64 %i.ry to ptr
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i

bb.cr:                                            ; preds = %.noexc30.i, %.noexc29.i917, %bb.cn, %bb.cm, %bb.cl
  %.sroa.7.4.i.i.i.i908 = phi i64 [ undef, %bb.cn ], [ undef, %.noexc29.i917 ], [ undef, %bb.cl ], [ %.sroa.7.2.i.i.i.i918, %.noexc30.i ], [ undef, %bb.cm ] ; 2 uses
  %.sroa.0.4.i.i.i.i909 = phi ptr [ null, %bb.cn ], [ null, %.noexc29.i917 ], [ null, %bb.cl ], [ %.sroa.0.2.i.i.i.i, %.noexc30.i ], [ null, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8574
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.r, i8 %i.qm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink74.i216.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.435.sroa.0.0.copyload.i.i903) #32
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8571

.noexc42.i:                                       ; preds = %bb.cr
  %i.te = load i64, ptr %i.r, align 8, !range !12, !noalias !8574, !noundef !5 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.te, -1
  %.sroa.034.0.copyload.i33.i = load i64, ptr %i.rm, align 8, !noalias !8574 ; 3 uses
  %.sroa.435.sroa.0.0.copyload.i35.i = load i64, ptr %.sroa.435.0..sroa_idx.i34.i, align 8, !noalias !8574 ; 3 uses
  %.sroa.435.sroa.4.0.copyload.i37.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i36.i, align 8, !noalias !8574 ; 3 uses
  br i1 %.not.i32.i, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %.noexc42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8574
  %i.tf = icmp ne i64 %.sroa.034.0.copyload.i33.i, 0
  call void @llvm.assume(i1 %i.tf)
  %.sink74.i41234.i = inttoptr i64 %.sroa.034.0.copyload.i33.i to ptr ; 2 uses
  %i.tg = load i64, ptr %1, align 8, !range !11, !noalias !8571, !noundef !5
  %i.th = trunc nuw i64 %i.tg to i1
  br i1 %i.th, label %bb.ct, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.ti = load i64, ptr %i.rf, align 8, !noalias !8571 ; 2 uses
  %i.tj = load i64, ptr %i.rg, align 8, !noalias !8571, !noundef !5
  %i.tk = icmp ult i64 %i.ti, %i.tj
  br i1 %i.tk, label %bb.cu, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.tl = load ptr, ptr %i.rh, align 8, !noalias !8571, !nonnull !5, !noundef !5
  %i.tm = getelementptr inbounds nuw [24 x i8], ptr %i.tl, i64 %i.ti ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load i32, ptr %i.tn, align 8, !noalias !8571, !noundef !5
  %i.tp = zext i32 %i.to to i64                   ; 2 uses
  %i.tq = load i64, ptr %i.ri, align 8, !noalias !8571, !noundef !5
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 20
  %i.ts = load i32, ptr %i.tr, align 4, !noalias !8571, !noundef !5 ; 2 uses
  %i.tt = zext i32 %i.ts to i64                   ; 2 uses
  %i.tu = add nuw nsw i64 %i.tt, %i.tp
  %.not.i.i.i.i46.i = icmp ugt i64 %i.tu, %i.tq
  %i.tv = icmp ult i32 %i.ts, %.sroa.435.sroa.4.0.copyload.i37.i
  %or.cond.i.i.i47.i = or i1 %i.tv, %.not.i.i.i.i46.i
  br i1 %or.cond.i.i.i47.i, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tw = zext i32 %.sroa.435.sroa.4.0.copyload.i37.i to i64 ; 2 uses
  %i.tx = load ptr, ptr %i.rj, align 8, !noalias !8571, !nonnull !5, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tp
  %i.tz = sub nuw nsw i64 %i.tt, %i.tw
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tw
  %i.ub = invoke { ptr, i64 } @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr20from_bytes_until_nul(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ua, i64 noundef %i.tz)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8571 ; 2 uses

.noexc50.i:                                       ; preds = %bb.cv
  %i.uc = extractvalue { ptr, i64 } %i.ub, 0      ; 2 uses
  %i.ud = icmp eq ptr %i.uc, null
  br i1 %i.ud, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc50.i
  %i.ue = extractvalue { ptr, i64 } %i.ub, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8567
  invoke void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uc, i64 noundef %i.ue)
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8571

.noexc51.i:                                       ; preds = %bb.cw
  %i.uf = load i64, ptr %i.q, align 8, !range !11, !noalias !8567, !noundef !5
  %i.ug = trunc nuw i64 %i.uf to i1               ; 2 uses
  %i.uh = load ptr, ptr %i.rn, align 8, !noalias !8567, !nonnull !5
  %i.ui = load i64, ptr %i.ro, align 8, !noalias !8567
  %.sroa.7.2.i.i.i48.i = select i1 %i.ug, i64 undef, i64 %i.ui
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8567
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = select i1 %i.ug, i64 0, i64 %i.uj
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i

bb.cx:                                            ; preds = %.noexc42.i
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %.sroa.723.sroa.6.0.copyload.i39.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i38.i, align 4, !noalias !8574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8574
  %.sroa.8178.24.insert.ext.i = zext i32 %.sroa.435.sroa.4.0.copyload.i37.i to i64
  %.sroa.8178.28.insert.ext.i = zext i32 %.sroa.723.sroa.6.0.copyload.i39.i to i64
  %.sroa.8178.28.insert.shift.i = shl nuw i64 %.sroa.8178.28.insert.ext.i, 32
  %.sroa.8178.28.insert.insert.i = or disjoint i64 %.sroa.8178.28.insert.shift.i, %.sroa.8178.24.insert.ext.i
  %i.ul = inttoptr i64 %i.te to ptr
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i

_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i: ; preds = %.noexc51.i, %.noexc50.i, %bb.cu, %bb.ct, %bb.cs
  %.sroa.7.4.i.i.i44.i = phi i64 [ undef, %bb.cu ], [ undef, %.noexc50.i ], [ undef, %bb.cs ], [ %.sroa.7.2.i.i.i48.i, %.noexc51.i ], [ undef, %bb.ct ] ; 2 uses
  %.sroa.0.4.i.i.i45.i = phi i64 [ 0, %bb.cu ], [ 0, %.noexc50.i ], [ 0, %bb.cs ], [ %i.uk, %.noexc51.i ], [ 0, %bb.ct ] ; 2 uses
  %i.um = icmp eq i8 %.sroa.546.sroa.4.0.copyload.i.i, -2
  br i1 %i.um, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i, label %bb.cy

_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i: ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i, %bb.cx, %bb.cq, %bb.cj
  %.sroa.1269.0261.i = phi ptr [ %i.rv, %bb.cj ], [ %i.ul, %bb.cx ], [ %i.td, %bb.cq ], [ %.sroa.0.4.i.i.i.i909, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i ] ; 2 uses
  %.sroa.16.0260.i = phi i64 [ %.sroa.427.0.copyload.i.i, %bb.cj ], [ %.sroa.034.0.copyload.i33.i, %bb.cx ], [ %.sroa.034.0.copyload.i.i902, %bb.cq ], [ %.sroa.7.4.i.i.i.i908, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i ] ; 2 uses
  %.sroa.19.0259.i = phi i64 [ %.sroa.934.sroa.0.0.i.i, %bb.cj ], [ %.sroa.435.sroa.0.0.copyload.i35.i, %bb.cx ], [ %.sroa.435.sroa.0.0.copyload.i.i903, %bb.cq ], [ %.sroa.0.4.i.i.i45.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i ] ; 2 uses
  %.sroa.22.0258.i = phi i64 [ %.sroa.22.57.insert.insert.i, %bb.cj ], [ %.sroa.8178.28.insert.insert.i, %bb.cx ], [ %.sroa.8160.28.insert.insert.i, %bb.cq ], [ %.sroa.7.4.i.i.i44.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i ] ; 2 uses
  %i.un = icmp eq ptr %.sroa.1269.0261.i, inttoptr (i64 1 to ptr)
  br i1 %i.un, label %bb.dd, label %bb.df

bb.cy:                                            ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.i
  %i.uo = ptrtoint ptr %.sroa.0.4.i.i.i.i909 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !8567
  store i64 %i.uo, ptr %i.rp, align 8, !noalias !8576
  store i64 %.sroa.7.4.i.i.i.i908, ptr %.sroa.493.0..sroa_idx.i, align 8, !noalias !8576
  store i64 %.sroa.0.4.i.i.i45.i, ptr %.sroa.594.0..sroa_idx.i, align 8, !noalias !8576
  store i64 %.sroa.7.4.i.i.i44.i, ptr %.sroa.695.0..sroa_idx.i, align 8, !noalias !8576
  %i.up = load i64, ptr %i.rq, align 8, !alias.scope !8577, !noalias !8567, !noundef !5 ; 3 uses
  %i.uq = load i64, ptr %i.x, align 8, !range !19, !alias.scope !8577, !noalias !8567, !noundef !5
  %i.ur = icmp eq i64 %i.up, %i.uq
  br i1 %i.ur, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #30
          to label %bb.dc unwind label %bb.da, !noalias !8578

bb.da:                                            ; preds = %bb.cz
  %i.us = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #28
          to label %.body878 unwind label %bb.db, !noalias !8578

bb.db:                                            ; preds = %bb.da
  %i.ut = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !8578
  unreachable

bb.dc:                                            ; preds = %bb.cz, %bb.cy
  %i.uu = load ptr, ptr %i.rr, align 8, !alias.scope !8577, !noalias !8567, !nonnull !5, !noundef !5
  %i.uv = getelementptr inbounds nuw [32 x i8], ptr %i.uu, i64 %i.up
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uv, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.rp, i64 32, i1 false), !noalias !8579
  %i.uw = add i64 %i.up, 1
  store i64 %i.uw, ptr %i.rq, align 8, !alias.scope !8577, !noalias !8567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !8567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8575
  %exitcond.not.i910 = icmp eq i64 %i.rs, %i.qp
  br i1 %exitcond.not.i910, label %.loopexit1531.loopexit, label %bb.ce

bb.dd:                                            ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8580
  store i64 %.sroa.16.0260.i, ptr %i.y, align 8, !noalias !8581
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sroa.19.0259.i, ptr %.sroa.490.0..sroa_idx.i, align 8, !noalias !8581
  %.sroa.591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.22.0258.i, ptr %.sroa.591.0..sroa_idx.i, align 8, !noalias !8581
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.075.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.lcssa.i873, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8571

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8580
  %.sroa.111221.16.copyload = load i64, ptr %i.z, align 8, !noalias !8582
  %.sroa.161222.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.161222.16.copyload = load i64, ptr %.sroa.161222.16..sroa_idx, align 8, !noalias !8582
  %.sroa.201225.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.201225.16.copyload = load i64, ptr %.sroa.201225.16..sroa_idx, align 8, !noalias !8582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8567
  br label %bb.df

bb.df:                                            ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i, %bb.de
  %.sroa.201225.0 = phi i64 [ %.sroa.201225.16.copyload, %bb.de ], [ %.sroa.22.0258.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i ]
  %.sroa.161222.0 = phi i64 [ %.sroa.161222.16.copyload, %bb.de ], [ %.sroa.19.0259.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i ]
  %.sroa.111221.0 = phi i64 [ %.sroa.111221.16.copyload, %bb.de ], [ %.sroa.16.0260.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBI_6Dotnet11coded_indexs_0INtB6_3MapIB1Y_NCNvBE_5index0NcNtBI_11StringIndex0ENCNvBE_18parse_type_ref_row0EIB1Y_B27_NCB2O_s_0EEINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB4c_NtB6_9StreamingEEBO_.exit.i.thread.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit.i unwind label %bb.dg, !noalias !8571

bb.dg:                                            ; preds = %bb.df
  %i.ux = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body878 unwind label %bb.dh, !noalias !8571

bb.dh:                                            ; preds = %bb.dg
  %i.uy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !8571
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit.i: ; preds = %bb.df
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cw, %bb.cv, %bb.cr, %bb.cp, %bb.co, %bb.ck, %bb.ce, %bb.dd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #28
          to label %.body878 unwind label %bb.di, !noalias !8571

bb.di:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.uz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !8571
  unreachable

bb.dj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8567
  store ptr %.sroa.1269.0261.i, ptr %0, align 8
  %.sroa.4431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.111221.0, ptr %.sroa.4431.0..sroa_idx, align 8
  %.sroa.5432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.161222.0, ptr %.sroa.5432.0..sroa_idx, align 8
  %.sroa.5432.sroa.4.0..sroa.5432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.201225.0, ptr %.sroa.5432.sroa.4.0..sroa.5432.0..sroa_idx.sroa_idx, align 8
  br label %bb.ot

.loopexit1531.loopexit:                           ; preds = %bb.dc
  %.sroa.161222.24.copyload1223.pre = load i64, ptr %i.aa, align 8, !noalias !8582
  %.sroa.201225.24.copyload1226.pre = load i64, ptr %i.qy, align 8, !noalias !8582
  %.sroa.211228.24.copyload1229.pre = load i64, ptr %i.qz, align 8, !noalias !8582
  br label %.loopexit1531

.loopexit1531:                                    ; preds = %.loopexit1531.loopexit, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0IBL_IBL_NCNvB1a_5index0NcNtB1e_11StringIndex0ENCNvB1a_18parse_type_ref_row0EIBL_B2y_NCB3g_s_0EENCB3g_s0_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B1k_.exit.i
  %.sroa.211228.24.copyload1229 = phi i64 [ 0, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0IBL_IBL_NCNvB1a_5index0NcNtB1e_11StringIndex0ENCNvB1a_18parse_type_ref_row0EIBL_B2y_NCB3g_s_0EENCB3g_s0_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B1k_.exit.i ], [ %.sroa.211228.24.copyload1229.pre, %.loopexit1531.loopexit ] ; 2 uses
  %.sroa.201225.24.copyload1226 = phi i64 [ %i.ra, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0IBL_IBL_NCNvB1a_5index0NcNtB1e_11StringIndex0ENCNvB1a_18parse_type_ref_row0EIBL_B2y_NCB3g_s_0EENCB3g_s0_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B1k_.exit.i ], [ %.sroa.201225.24.copyload1226.pre, %.loopexit1531.loopexit ] ; 2 uses
  %.sroa.161222.24.copyload1223 = phi i64 [ %i.qt, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0IBL_IBL_NCNvB1a_5index0NcNtB1e_11StringIndex0ENCNvB1a_18parse_type_ref_row0EIBL_B2y_NCB3g_s_0EENCB3g_s0_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B1k_.exit.i ], [ %.sroa.161222.24.copyload1223.pre, %.loopexit1531.loopexit ] ; 2 uses
  %.sroa.6.0.lcssa.i912 = phi i64 [ %.sroa.6.0.lcssa.i873, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0IBL_IBL_NCNvB1a_5index0NcNtB1e_11StringIndex0ENCNvB1a_18parse_type_ref_row0EIBL_B2y_NCB3g_s_0EENCB3g_s0_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B1k_.exit.i ], [ %.sroa.435.sroa.0.0.copyload.i35.i, %.loopexit1531.loopexit ] ; 3 uses
  %.sroa.055.0.lcssa.i = phi ptr [ %.sroa.075.0.lcssa.i, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0IBL_IBL_NCNvB1a_5index0NcNtB1e_11StringIndex0ENCNvB1a_18parse_type_ref_row0EIBL_B2y_NCB3g_s_0EENCB3g_s0_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B1k_.exit.i ], [ %.sink74.i41234.i, %.loopexit1531.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8567
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.va)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %.loopexit1531
  %i.vb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.va)
          to label %.body925 unwind label %bb.dm

bb.dl:                                            ; preds = %.loopexit1531
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.va)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %.body925

.body925:                                         ; preds = %bb.dk, %bb.dn
  %eh.lpad-body926 = phi { ptr, i32 } [ %i.vd, %bb.dn ], [ %i.vb, %bb.dk ]
  store i64 %.sroa.161222.24.copyload1223, ptr %i.va, align 8
  %.sroa.31373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %.sroa.201225.24.copyload1226, ptr %.sroa.31373.0..sroa_idx, align 8
  %.sroa.41376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %.sroa.211228.24.copyload1229, ptr %.sroa.41376.0..sroa_idx, align 8
  br label %.body878

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit: ; preds = %bb.dl
  store i64 %.sroa.161222.24.copyload1223, ptr %i.va, align 8
  %.sroa.31373.0..sroa_idx1374 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %.sroa.201225.24.copyload1226, ptr %.sroa.31373.0..sroa_idx1374, align 8
  %.sroa.41376.0..sroa_idx1377 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %.sroa.211228.24.copyload1229, ptr %.sroa.41376.0..sroa_idx1377, align 8
  %i.ve = load i8, ptr %i.ma, align 8, !range !22, !noalias !8583, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8584
  %i.vf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @452, i64 3), ptr %i.vf, align 8, !noalias !8584
  %i.vg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %1, ptr %i.vg, align 8, !noalias !8584
  call void @llvm.experimental.noalias.scope.decl(metadata !8585)
  call void @llvm.experimental.noalias.scope.decl(metadata !8586)
  store ptr getelementptr inbounds nuw (i8, ptr @452, i64 1), ptr %i.p, align 8, !alias.scope !8587, !noalias !8584
  %i.vh = load i64, ptr %.sroa.640.0..sroa_idx41, align 8, !noalias !8588, !noundef !5
  %i.vi = icmp ugt i64 %i.vh, 2
  br i1 %i.vi, label %bb.do, label %_RNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet11coded_index.exit.i927

bb.do:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit
  %i.vj = load ptr, ptr %.sroa.537.0..sroa_idx38, align 8, !noalias !8588, !nonnull !5, !noundef !5
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load i64, ptr %i.vk, align 8, !noalias !8589, !noundef !5
  br label %_RNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet11coded_index.exit.i927

_RNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet11coded_index.exit.i927: ; preds = %bb.do, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit
  %.sroa.3.0.i.ph.i.i.i928 = phi i64 [ %i.vl, %bb.do ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefEEB1g_.exit ]
  %i.vm = invoke noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5TableENCNvMs2_B1p_NtB1p_6Dotnet11coded_index0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %.sroa.3.0.i.ph.i.i.i928)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %_RNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet11coded_index.exit.i927
  %.not.i.i929 = icmp ugt i64 %i.vm, 16384
  %..i.i930 = zext i1 %.not.i.i929 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8584
  %.val796 = load i64, ptr %.sroa.640.0..sroa_idx41, align 8, !noundef !5 ; 2 uses
  %i.vn = icmp ugt i64 %.val796, 2
  br i1 %i.vn, label %bb.dq, label %.invoke

bb.dq:                                            ; preds = %bb.dp
  %.val795 = load ptr, ptr %.sroa.537.0..sroa_idx38, align 8, !nonnull !5, !noundef !5
  %i.vo = getelementptr inbounds nuw i8, ptr %.val795, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8590
  call void @llvm.experimental.noalias.scope.decl(metadata !8591)
  %..i.i.i938 = call noundef i64 @llvm.umin.i64(i64 %i.vp, i64 1024) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8592
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %..i.i.i938, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
          to label %.noexc986 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc986:                                        ; preds = %bb.dq
  %i.vq = load i64, ptr %i.k, align 8, !range !11, !noalias !8592, !noundef !5
  %i.vr = trunc nuw i64 %i.vq to i1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.vt = load i64, ptr %i.vs, align 8, !range !18, !noalias !8592, !noundef !5 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.vr, label %bb.dr, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEIBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet5index0NcNtB2m_11StringIndex0ENCNvB2i_18parse_type_def_row0EIBL_B2a_NCB3S_s_0ENCNvB2i_11coded_indexs_0NCNvB2i_11table_index0B50_ENCB3S_s0_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB6h_NtBN_9StreamingEE0B2s_.exit.i, !prof !6

bb.dr:                                            ; preds = %.noexc986
  %i.vv = load i64, ptr %i.vu, align 8, !noalias !8592
  br label %.invoke2500

.invoke2500:                                      ; preds = %bb.ak, %bb.at, %bb.cd, %bb.dr
  %i.vw = phi i64 [ %i.vt, %bb.dr ], [ %i.qt, %bb.cd ], [ %i.mj, %bb.at ], [ %i.ln, %bb.ak ]
  %i.vx = phi i64 [ %i.vv, %bb.dr ], [ %i.qv, %bb.cd ], [ %i.ml, %bb.at ], [ %i.lp, %bb.ak ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.vw, i64 %i.vx) #31
          to label %.cont2501 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2501:                                        ; preds = %.invoke2500
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEIBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet5index0NcNtB2m_11StringIndex0ENCNvB2i_18parse_type_def_row0EIBL_B2a_NCB3S_s_0ENCNvB2i_11coded_indexs_0NCNvB2i_11table_index0B50_ENCB3S_s0_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB6h_NtBN_9StreamingEE0B2s_.exit.i: ; preds = %.noexc986
  %i.vy = load ptr, ptr %i.vu, align 8, !noalias !8592, !nonnull !5, !noundef !5 ; 2 uses
  %i.vz = icmp ule i64 %..i.i.i938, %i.vt
  call void @llvm.assume(i1 %i.vz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8592
  store i64 %i.vt, ptr %i.o, align 8, !alias.scope !8591, !noalias !8590
  %i.wa = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.vy, ptr %i.wa, align 8, !alias.scope !8591, !noalias !8590
  %i.wb = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.wb, align 8, !alias.scope !8591, !noalias !8590
  %.not.i939 = icmp eq i64 %i.vp, 0
  %i.wc = ptrtoint ptr %i.vy to i64
  br i1 %.not.i939, label %.loopexit, label %.lr.ph.i940

.lr.ph.i940:                                      ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEIBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet5index0NcNtB2m_11StringIndex0ENCNvB2i_18parse_type_def_row0EIBL_B2a_NCB3S_s_0ENCNvB2i_11coded_indexs_0NCNvB2i_11table_index0B50_ENCB3S_s0_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB6h_NtBN_9StreamingEE0B2s_.exit.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i941 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i942 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i943 = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.435.0..sroa_idx.i.i945 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i946 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.435.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.wn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.wp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.445.0..sroa_idx.i.i948 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx.i.i949 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.wt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i.i68.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.518.0..sroa_idx.i.i70.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.wu = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.697.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.798.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.798.sroa.4.0..sroa.798.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.798.sroa.5.0..sroa.798.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.8.0..sroa_idx.i950 = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.wv = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.fa, %.lr.ph.i940
  %.sroa.012.0566.i = phi i64 [ 0, %.lr.ph.i940 ], [ %i.wx, %bb.fa ]
  %.sroa.084.0565.i = phi ptr [ %.sroa.055.0.lcssa.i, %.lr.ph.i940 ], [ %.sroa.016.0.copyload.i.i67.i, %bb.fa ] ; 4 uses
  %.sroa.6.0564.i = phi i64 [ %.sroa.6.0.lcssa.i912, %.lr.ph.i940 ], [ %.sroa.417.0.copyload.i.i69.i, %bb.fa ] ; 4 uses
  %i.wx = add nuw i64 %.sroa.012.0566.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8593
  store ptr %.sroa.084.0565.i, ptr %i.j, align 8, !noalias !8594
  store i64 %.sroa.6.0564.i, ptr %i.wd, align 8, !noalias !8594
  %i.wy = icmp samesign ult i64 %.sroa.6.0564.i, 4
  br i1 %i.wy, label %_RINvXsF_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EEINtB6_3MapIB1B_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet5index0NcNtB1X_11StringIndex0ENCNvB1T_18parse_type_def_row0EIB1B_B1K_NCB3t_s_0ENCNvB1T_11coded_indexs_0NCNvB1T_11table_index0B4C_EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB5H_NtB6_9StreamingEEB23_.exit.i.thread.thread.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.084.0565.i, i64 %.sroa.6.0564.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8593
  store ptr %.sroa.084.0565.i, ptr %i.i, align 8, !noalias !8593
  store ptr %i.wz, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i941, align 8, !noalias !8593
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i943, align 8, !noalias !8593
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i951
end_hunk_0
