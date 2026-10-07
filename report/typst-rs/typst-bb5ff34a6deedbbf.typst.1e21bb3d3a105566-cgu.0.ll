Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst-bb5ff34a6deedbbf.typst.1e21bb3d3a105566-cgu.0?download=true
inline.NumInlined: 451
inline.NumDeleted: 242
begin_hunk_0_@_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 7 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 7 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ab, label %bb.d, label %bb.dd

bb.d:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.al = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.e unwind label %.thread126

.thread126:                                       ; preds = %bb.z, %bb.e, %bb.ak, %bb.ct, %bb.cs, %bb.cn, %bb.ai, %bb.n, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread105

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = invoke { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9extension(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.f unwind label %.thread126 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 4 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %bb.o, label %bb.p

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !639
  store ptr inttoptr (i64 16 to ptr), ptr %i.n, align 8, !noalias !639
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !noalias !639
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef range(i64 54, 56) 55)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i unwind label %bb.i, !noalias !639

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !639, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i) #28
          to label %.thread105 unwind label %bb.j, !noalias !639

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !639
  unreachable

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.sroa.482.15.extract.shift = lshr i64 %i.aw, 56
  %.sroa.482.15.extract.trunc = trunc nuw i64 %.sroa.482.15.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr nonnull %i.av, i8 %.sroa.482.15.extract.trunc) #28
          to label %.thread105 unwind label %bb.l, !noalias !641, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.n, align 8, !alias.scope !640, !noalias !642, !nonnull !6, !noundef !6 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !640, !noalias !642 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.av, i64 %.promoted.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %scevgep.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(55) @14, i64 range(i64 54, 56) 55, i1 false), !noalias !643
  %i.aw = add i64 %.promoted.i.i.i, 55            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !639
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 1)
          to label %bb.m unwind label %bb.k, !inline_history !0

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !641, !inline_history !0
  unreachable

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ay = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.az = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.az ; 4 uses
  store i64 1, ptr %i.ba, align 8, !noalias !644
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !644
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.av, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !644
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %i.aw, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !644
  %i.bb = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bb, ptr %i.ak, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %bb.m
  %.val.i66 = phi ptr [ %i.bt, %bb.v ], [ %i.ay, %bb.m ] ; 2 uses
  %i.bc = phi i64 [ %i.bw, %bb.v ], [ %i.bb, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bd = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.w unwind label %.thread126 ; 9 uses

bb.o:                                             ; preds = %bb.g
  %i.be = load i16, ptr %i.ao, align 1
  %i.bf = xor i16 %i.be, 31092
  %i.bg = getelementptr i8, ptr %i.ao, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = xor i16 %i.bi, 112
  %i.bk = or i16 %i.bf, %i.bj
  %i.bl = icmp ne i16 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.dd, label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ao, ptr %i.t, align 8, !captures !645
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ap, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, i8 0, i64 15, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.410.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs2AodJlUx5rK_5typst, ptr %.sroa.414.0..sroa_idx, align 8
  %i.bp = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @15, ptr noundef nonnull %i.r)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #28
          to label %.thread105 unwind label %bb.de

bb.r:                                             ; preds = %bb.p
  br i1 %i.bp, label %bb.s, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38, !prof !9

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.088.0.copyload, i8 %.sroa.590.0.copyload) #28
          to label %.thread105 unwind label %bb.u, !noalias !646, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.088.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.489.0..sroa_idx, i64 7, i1 false)
  %.sroa.590.0.copyload = load i8, ptr %.sroa.410.0..sroa_idx, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 1)
          to label %bb.v unwind label %bb.t, !inline_history !0

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !646, !inline_history !0
  unreachable

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38
  %i.bt = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bu = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bu ; 5 uses
  store i64 1, ptr %i.bv, align 8, !noalias !647
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !647
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %.sroa.088.0.copyload, ptr %.sroa.585.0..sroa_idx, align 8, !noalias !647
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx86, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, i64 7, i1 false), !noalias !647
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 31
  store i8 %.sroa.590.0.copyload, ptr %.sroa.787.0..sroa_idx, align 1, !noalias !647
  %i.bw = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bw, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

bb.w:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !649
  %i.bx = load i64, ptr %i.bd, align 8, !range !7, !alias.scope !648, !noalias !650, !noundef !6
  %i.by = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.by, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !652
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 23
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !653, !noalias !654, !noundef !6
  %.not.i.i46 = icmp sle i8 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val46.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !653, !noalias !654 ; 4 uses
  %.val47.i.i = load i64, ptr %i.cc, align 8, !alias.scope !653, !noalias !654
  %.not.i.i.i.i = icmp eq ptr %.val46.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i46, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds i8, ptr %.val46.i.i, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !652
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.z, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, !prof !9

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val46.i.i) #25
          to label %.noexc48 unwind label %.thread126

.noexc48:                                         ; preds = %bb.z
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.x, %bb.y
  store ptr %.val46.i.i, ptr %i.k, align 8, !noalias !652
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val47.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !652
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 39
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !653, !noalias !654, !noundef !6
  %.not44.i.i = icmp sle i8 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.val.i.i47 = load ptr, ptr %i.cg, align 8, !alias.scope !653, !noalias !654 ; 4 uses
  %.val45.i.i = load i64, ptr %i.cj, align 8, !alias.scope !653, !noalias !654
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i47, inttoptr (i64 16 to ptr)
  %or.cond146 = select i1 %.not44.i.i, i1 true, i1 %.not.i.i48.i.i
  br i1 %or.cond146, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i47, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !652
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ab, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !9

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val.i.i47) #25
          to label %.noexc.i.i unwind label %bb.ac

.noexc.i.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %.thread105 unwind label %bb.ad, !noalias !652

bb.ad:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !652
  unreachable

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.cp, i64 12, i1 false), !noalias !650
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !652
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.val.i.i47, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !649
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.val45.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !649
  br label %bb.ae

bb.ae:                                            ; preds = %bb.w, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %storemerge.i = phi i64 [ 1, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %bb.w ]
  store i64 %storemerge.i, ptr %i.m, align 8, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !649
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  invoke void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.ai unwind label %bb.af, !noalias !650

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.by, label %bb.ag, label %.thread105

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ct)
          to label %.thread105 unwind label %bb.ah, !noalias !650

bb.ah:                                            ; preds = %bb.ag
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !650
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !648
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !649
  %i.cw = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.aj unwind label %.thread126 ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.cx = load ptr, ptr %0, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !noundef !6 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !655, !noalias !656, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !655, !noalias !656 ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.cn, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !657
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !6, !noalias !657, !nonnull !6
  invoke void %i.df(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %i.cx, i16 noundef range(i16 1, 0) %i.cw) #30
          to label %.noexc53 unwind label %.thread126, !inline_history !452

.noexc53:                                         ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !657
  store i16 %i.cw, ptr %i.i, align 8, !noalias !657
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 4, ptr %.sroa.41.0..sroa_idx.i, align 4, !noalias !657
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !659
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 25 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 25 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 25 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 21 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 26 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !659
  %i.dg = load i32, ptr %i.j, align 8, !range !5, !alias.scope !662, !noalias !663, !noundef !6 ; 6 uses
  %i.dh = icmp ne i32 %i.dg, -1                   ; 3 uses
  %i.di = zext i1 %i.dh to i64                    ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !664, !noalias !665
  %i.dj = xor i64 %i.di, 110374107243891
  %i.dk = select i1 %i.dh, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.dl = call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 8387220255154660722, i64 16)
  %i.dm = xor i64 %i.dl, %i.dk                    ; 2 uses
  %i.dn = add i64 %i.dm, -2389206912058073146     ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 -8882027881020349520, i64 21)
  %i.dp = xor i64 %i.do, %i.dn                    ; 2 uses
  store i64 %i.dp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.dq = add nsw i64 %i.dk, 4148644332920354933  ; 2 uses
  %i.dr = xor i64 %i.dq, -2011800273400728795     ; 3 uses
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.ds, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.dt = xor i64 %i.dn, %i.di                    ; 2 uses
  store i64 %i.dt, ptr %i.h, align 8, !alias.scope !664, !noalias !665
  br i1 %i.dh, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, label %bb.cl

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %.noexc53
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.du = icmp ne i32 %i.dg, 11
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nsw i32 %i.dg, -5
  %i.dw = icmp samesign ugt i32 %i.dg, 4
  %narrow.i.i.i.i = select i1 %i.dw, i32 %i.dv, i32 6 ; 2 uses
  %i.dx = zext nneg i32 %narrow.i.i.i.i to i64    ; 2 uses
  store i64 16, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !669, !noalias !670
  %i.dy = xor i64 %i.dp, %i.dx                    ; 3 uses
  %i.dz = add nsw i64 %i.dt, %i.dr                ; 3 uses
  %i.ea = call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 -115655853030513824, i64 13)
  %i.eb = xor i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.ed = add i64 %i.dy, %i.ds                    ; 2 uses
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 16)
  %i.ef = xor i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 21)
  %i.ei = xor i64 %i.eh, %i.eg                    ; 3 uses
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.ej = add i64 %i.ed, %i.eb                    ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 17)
  %i.el = xor i64 %i.ej, %i.ek                    ; 7 uses
  store i64 %i.el, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32) ; 3 uses
  store i64 %i.em, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.en = xor i64 %i.eg, %i.dx                    ; 3 uses
  store i64 %i.en, ptr %i.h, align 8, !alias.scope !669, !noalias !670
  switch i32 %narrow.i.i.i.i, label %bb.cp [
    i32 0, label %bb.al
    i32 5, label %bb.bo
    i32 6, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
    i32 7, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i
  ]

bb.al:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !672, !noalias !673, !nonnull !6, !noundef !6 ; 12 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !672, !noalias !673, !noundef !6 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  switch i64 %i.er, label %.lr.ph.preheader.split.i.split.i.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i:           ; preds = %bb.al
  %i.es = add i64 %i.er, -3                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i: ; preds = %bb.bf
  %i.et = add i64 %i.er, -1                       ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gr
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.ew = icmp eq i8 %i.ev, 47
  br i1 %i.ew, label %bb.am, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i: ; preds = %bb.al
  %i.ex = load i8, ptr %i.ep, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.ey = icmp eq i8 %i.ex, 47
  br i1 %i.ey, label %.thread.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %i.ez = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %i.et, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ] ; 2 uses
  %i.fa = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %i.gr, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %i.fb = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %i.fc = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ez
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !674, !noalias !676
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %.not.i.i.i.i52 = icmp ult i64 %i.es, %.sroa.0.1.i.i.i.i.i
  br i1 %.not.i.i.i.i52, label %.thread.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fd = sub nuw i64 %i.gr, %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.1.i.i.i.i.i
  %i.ff = add i64 %i.fd, %.sroa.012.2.i.i.i.i.i   ; 2 uses
  %i.fg = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fd) #30, !noalias !670
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.an, %bb.am, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i
  %i.fh = phi i64 [ %i.gr, %bb.an ], [ %i.gr, %bb.am ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ]
  %i.fi = phi i64 [ %i.et, %bb.an ], [ %i.et, %bb.am ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i.i = phi i64 [ %i.fg, %bb.an ], [ %.sroa.012.2.i.i.i.i.i, %bb.am ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ]
  %i.fj = sub nuw i64 %i.er, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fi ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 1
  %i.fm = load i8, ptr %i.fk, align 1, !alias.scope !674, !noalias !676, !noundef !6 ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 46                    ; 2 uses
  br i1 %i.fl, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.thread.i.i.i.i
  br i1 %i.fn, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !674, !noalias !676, !noundef !6
end_hunk_0
begin_hunk_1_@_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs2AodJlUx5rK_5typst:bb.a
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ar = xor i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.an, %i.ap                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = add i64 %i.ax, %i.as                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.au, %i.ay                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21) ; 2 uses
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bb, %i.bd                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32) ; 2 uses
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = xor i64 %i.bl, 221                      ; 3 uses
  %i.bq = add i64 %i.bp, %i.bg                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bu = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.bz = xor i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bs, %i.bu                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = add i64 %i.cc, %i.bx                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 13)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = add i64 %i.bz, %i.cd                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cs = add i64 %i.cq, %i.cl
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 13)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = add i64 %i.cn, %i.cr                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 21)
  %i.cz = add i64 %i.cu, %i.cv                    ; 3 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dc = xor i64 %i.cy, %i.da
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = insertvalue { i64, i64 } poison, i64 %i.bo, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %i.de, 1
  ret { i64, i64 } %i.dg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.i)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre4.i = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %.val3.i = load i64, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i22, i64 %.val3.i) #28
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.r, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.ar, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.q = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not.i24 = icmp eq i64 %i.u, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit
  %.pre = load ptr, ptr %i.b, align 8
  %.pre62 = load i64, ptr %i.s, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.u)
          to label %.lr.ph unwind label %bb.s, !inline_history !816

.lr.ph:                                           ; preds = %bb.k, %.noexc26
  %.sroa.033.056 = phi ptr [ %i.w, %.noexc26 ], [ %i.t, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !837, !noalias !838, !noundef !6
  %.not.i.i.i.i = icmp slt i8 %i.z, 0
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !839, !noalias !840 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 24
  %.val10.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !839, !noalias !840 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !841
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val.i.i.i.i) #25
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l, %.lr.ph
  %i.ae = load <2 x i64>, ptr %.sroa.033.056, align 8, !alias.scope !833, !noalias !842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !843, !noalias !844, !noundef !6
  %.val.i27 = load ptr, ptr %i.b, align 8, !alias.scope !843, !noalias !844, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.sroa.739.31.extract.shift = lshr i64 %.val10.i.i.i.i, 56
  %.sroa.739.31.extract.trunc = trunc nuw i64 %.sroa.739.31.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.val.i.i.i.i, i8 %.sroa.739.31.extract.trunc) #28
          to label %.thread unwind label %bb.q, !noalias !844, !inline_history !832

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !845, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.p, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.p ], [ 0, %bb.n ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.o, !noalias !844, !inline_history !832

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !844, !inline_history !832
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !843, !noalias !844, !nonnull !6, !noundef !6 ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !843, !noalias !844, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store <2 x i64> %i.ae, ptr %i.an, align 8, !noalias !844
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.val.i.i.i.i, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !844
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.val10.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !844
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !843, !noalias !844
  %i.ap = icmp eq ptr %i.w, %i.v
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.w, label %bb.u

bb.r:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge
  %i.at = phi i64 [ %.pre62, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %i.t, i64 %i.u)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, %bb.t
  ret void

.thread:                                          ; preds = %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.ag, %bb.o ]
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %.val12 = load i64, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %.val11, i64 %.val12) #28
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre4.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %.val3.i = load i64, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i22, i64 %.val3.i) #28
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.an, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !6 ; 5 uses
  %.idx = mul nuw nsw i64 %i.v, 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not.i24 = icmp eq i64 %i.v, 0
  br i1 %.not.i24, label %.noexc, label %bb.k

.noexc:                                           ; preds = %bb.k, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %.noexc25.thread, label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !846

.lr.ph:                                           ; preds = %.noexc, %.noexc26
  %.sroa.031.044 = phi ptr [ %i.z, %.noexc26 ], [ %i.u, %.noexc ] ; 2 uses
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.031.044) #30
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 72 ; 2 uses
  %.pre = load i8, ptr %i.x, align 8, !range !851
  %i.aa = icmp eq i8 %.pre, 2
  br i1 %i.aa, label %.noexc25.thread, label %bb.l

bb.l:                                             ; preds = %.noexc25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.ab = load i64, ptr %i.t, align 8, !alias.scope !852, !noalias !853, !noundef !6
  %.val.i27 = load ptr, ptr %i.c, align 8, !alias.scope !852, !noalias !853, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #28
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ad, align 8, !noalias !854, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.n, %bb.l
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.n ], [ 0, %bb.l ]
  %i.ae = icmp eq i64 %i.ab, %.sroa.02.0.i.i
  %i.af = zext i1 %i.ae to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.af)
          to label %.noexc26 unwind label %bb.m, !noalias !853, !inline_history !850

bb.o:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write:bb.a
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !882, !noalias !880
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !882, !noalias !880, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !880, !noalias !881, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !880, !noalias !881
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !880, !noalias !881
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !880, !noalias !881
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !883, !noalias !881
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !883, !noalias !881
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !880, !noalias !881, !noundef !6
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !884, !noalias !881, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !884, !noalias !881, !noundef !6 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !884, !noalias !881, !noundef !6
  %i.ay = add i64 %i.ax, %i.ao                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %i.ba, %i.av                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bd = xor i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.am, align 8, !alias.scope !884, !noalias !881
  %i.be = add i64 %i.ay, %i.au                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.aq, align 8, !alias.scope !884, !noalias !881
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  store i64 %i.bh, ptr %i.aw, align 8, !alias.scope !884, !noalias !881
  %i.bi = xor i64 %i.bb, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !880, !noalias !881
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !880, !noalias !881
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !883, !noalias !881
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !883, !noalias !881
  store i64 %i.da, ptr %0, align 8, !alias.scope !880, !noalias !881
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !885, !noalias !880
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !885, !noalias !880
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !885, !noalias !880, !noundef !6
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !880, !noalias !881
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cv, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !881, !noalias !880 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.co = xor i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.cq = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cs = xor i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = add i64 %i.cs, %i.cp                    ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cv = xor i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = add i64 %i.cq, %i.co                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cy = xor i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32) ; 2 uses
  %i.da = xor i64 %i.ct, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit: ; preds = %bb.j, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !880, !noalias !881
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !6
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !6
  %.not = icmp sle i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val22 = load ptr, ptr %i.e, align 8           ; 4 uses
  %.val23 = load i64, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %.val22, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %.val22, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val22) #25
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  store ptr %.val22, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val23, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.h, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val24, i64 noundef %.val25) #25
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.q, %bb.g ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l, !prof !9

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val26, i64 noundef %.val27) #25
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr nonnull %.val24, i64 %.val25) #28
          to label %bb.f unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.x, align 8
  store <2 x i64> %i.d, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val26, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val27, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.d = icmp samesign ult i32 %1, 128
  %.sink2.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.sink2.i.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink2.i.i.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !901
  store i32 0, ptr %i.c, align 4, !noalias !901
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = or disjoint i8 %i.g, -64
  store i8 %i.q, ptr %i.c, align 4, !alias.scope !902, !noalias !901
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i32 %1, 65536
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = or disjoint i8 %i.k, -32
  store i8 %i.s, ptr %i.c, align 4, !alias.scope !902, !noalias !901
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !902, !noalias !901
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.f:                                             ; preds = %bb.d
  store i8 %i.p, ptr %i.c, align 4, !alias.scope !902, !noalias !901
  store i8 %i.m, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !902, !noalias !901
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep1.i, align 2, !alias.scope !902, !noalias !901
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  %.sink2.i.i.sroa.phi.i = phi ptr [ %.sink2.i.i.sroa.gep.i, %bb.c ], [ %.sink2.i.i.sroa.gep1.i, %bb.e ], [ %.sink2.i.i.sroa.gep2.i, %bb.f ]
  %i.t = trunc i32 %1 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  store i8 %i.v, ptr %.sink2.i.i.sroa.phi.i, align 1, !alias.scope !902, !noalias !901
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !901
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.g:                                             ; preds = %bb.a
  %i.w = trunc nuw nsw i32 %1 to i8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !904, !noundef !6 ; 3 uses
  %.not.i.i = icmp sgt i8 %i.y, -1
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !906, !noundef !6
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !906, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !906, !noundef !6
  br label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %i.ac = icmp eq i64 %i.aa, %.sroa.02.0.i.i.i.i
  %i.ad = zext i1 %i.ac to i64
  tail call fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ad), !inline_history !894
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !906, !nonnull !6, !noundef !6
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !906, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 %i.w, ptr %i.ag, align 1, !noalias !906
  %i.ah = add i64 %i.af, 1
  store i64 %i.ah, ptr %i.z, align 8, !alias.scope !906
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.j:                                             ; preds = %bb.g
  %i.ai = and i8 %i.y, 127                        ; 3 uses
  %i.aj = icmp samesign ult i8 %i.ai, 15
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !904
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !907
  %i.ak = tail call noundef align 8 dereferenceable_or_null(46) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 46, i64 noundef 8) #26, !noalias !907 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.noexc33.i.i, label %bb.p, !prof !9
end_hunk_2
