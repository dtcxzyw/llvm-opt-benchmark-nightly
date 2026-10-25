Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonCastOperator?download=true
inline.NumInlined: 36259
inline.NumDeleted: 7692
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 380
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE5EEEvRKNS0_10BaseVectorERS4_RKS1_RS9_EUlT_E0_ZNKS7_ILS8_5EEEvSB_SC_SE_SF_EUliE_EEvSE_SG_T0_EUlSG_E_EEvSG_:bb.a

.loopexit30:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE5EEEvRKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS7_EUlT_E0_ZNKS5_ILS6_5EEEvS9_SA_SD_SE_EUliE_EEvSD_SF_T0_ENKUlSF_E_clIiEEDaSF_.exit, %bb.h, %bb.ad
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE5EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE(ptr noundef nonnull byval(%"class.simdjson::padded_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1084 x i8], align 16             ; 9 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"struct.simdjson::simdjson_result", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN8facebook5velox13simdjsonParseERKN8simdjson18padded_string_viewE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2415 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !471 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !815 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2416 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2417 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2418 ; 7 uses
  store ptr null, ptr %i.d, align 8, !tbaa !2416
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !334
  %i.l = load i32, ptr %i.i, align 4, !tbaa !334  ; 4 uses
  %i.m = sub i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !334
  %i.p = sub i32 %i.o, %i.l
  %..i = call i32 @llvm.umin.i32(i32 %i.m, i32 %i.p) ; 7 uses
  %i.q = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.q, label %bb.c, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !334
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit: ; preds = %bb.b, %bb.c
  %.pn.in = phi i32 [ %i.r, %bb.c ], [ %i.l, %bb.b ]
  %.pn = zext i32 %.pn.in to i64
  %.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.pn ; 3 uses
  %i.s = icmp ugt i32 %..i, 3                     ; 2 uses
  br i1 %i.s, label %bb.d, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit
  %.pre = load i8, ptr %.0.i, align 1, !tbaa !333
  br label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit

bb.d:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit
  %.0.copyload.i = load i32, ptr %.0.i, align 1   ; 2 uses
  %.not.i = icmp eq i32 %.0.copyload.i, 1819047278
  %i.t = trunc i32 %.0.copyload.i to i8
  br i1 %.not.i, label %bb.e, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %..i, 4
  br i1 %i.u, label %.critedge7.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !333
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !418, !range !401, !noundef !402
  %.not80 = icmp eq i8 %i.z, 0
  br i1 %.not80, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111, label %.critedge7.i

.critedge7.i:                                     ; preds = %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2420
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2428
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit: ; preds = %bb.d, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge
  %i.af = phi i8 [ %.pre, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge ], [ %i.t, %bb.d ]
  %.not131 = icmp eq i8 %i.af, 110                ; 2 uses
  %i.ag = select i1 %.not131, i32 17, i32 0
  br i1 %.not131, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111: ; preds = %bb.f, %.critedge7.i, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit
  %.sroa.413.0.extract.shift117 = phi i32 [ 31, %.critedge7.i ], [ %i.ag, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit ], [ 17, %bb.f ]
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #38 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8simdjson14simdjson_errorE, i64 16), ptr %i.ah, align 8, !tbaa !323
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %.sroa.413.0.extract.shift117, ptr %i.ai, align 8, !tbaa !2430
  call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN8simdjson14simdjson_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #46
  unreachable

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread: ; preds = %.critedge7.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !315
  %.not.i12 = icmp eq ptr %i.ak, null
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !323
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.am, i1 noundef zeroext false), !inline_history !1427
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.h:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1119 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1118
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !323
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(94) %i.ar, i32 noundef %i.at, i1 noundef zeroext true), !inline_history !1427
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit
  %i.ax = zext i32 %i.l to i64                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ax ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !333
  switch i8 %i.az, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit [
    i8 57, label %bb.i
    i8 56, label %bb.i
    i8 34, label %bb.ay
    i8 55, label %bb.i
    i8 116, label %bb.ar
    i8 102, label %bb.ar
    i8 45, label %bb.i
    i8 48, label %bb.i
    i8 49, label %bb.i
    i8 50, label %bb.i
    i8 51, label %bb.i
    i8 52, label %bb.i
    i8 53, label %bb.i
    i8 54, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.ba = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.ba, label %bb.j, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i40.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !334
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bc
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i40.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i40.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i41.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.ay, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1083
  store i8 0, ptr %i.be, align 1, !tbaa !333
  %i.bf = zext i32 %..i to i64                    ; 3 uses
  %i.bg = icmp ult i32 %..i, 1084
  br i1 %i.bg, label %bb.k, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i40.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.0.i.i41.i.i.i, i64 %i.bf, i1 false)
  %.not.i.i.i = icmp eq i32 %..i, 1083
  br i1 %.not.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bi = sub nuw nsw i64 1083, %i.bf
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bh, i8 32, i64 %i.bi, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !333
  %i.bk = icmp eq i8 %i.bj, 45                    ; 8 uses
  %.neg79.i.i.i.i = sext i1 %i.bk to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.bk to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.bl = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !333
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 10                   ; 3 uses
  %narrow.i.i.i = select i1 %i.bn, i8 %i.bm, i8 0 ; 2 uses
  %spec.select.i.i.i = zext i8 %narrow.i.i.i to i64 ; 2 uses
  %i.bo = zext i1 %i.bn to i64                    ; 2 uses
  %i.bp = icmp eq i8 %narrow.i.i.i, 0             ; 2 uses
  %.067.ptr.i323.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bo
  %i.bq = load i8, ptr %.067.ptr.i323.i.i.i, align 1, !tbaa !333 ; 2 uses
  %i.br = add i8 %i.bq, -48                       ; 2 uses
  %i.bs = icmp ult i8 %i.br, 10
  br i1 %i.bs, label %.lr.ph.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i, %.lr.ph.i.i.i
  %i.bt = phi i8 [ %i.by, %.lr.ph.i.i.i ], [ %i.br, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i ]
  %.067.idx.i325.i.i.i = phi i64 [ %.067.add.i.i.i.i, %.lr.ph.i.i.i ], [ %i.bo, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i ] ; 2 uses
  %.1237324.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i ]
  %i.bu = mul i64 %.1237324.i.i.i, 10
  %i.bv = zext nneg i8 %i.bt to i64
  %i.bw = add i64 %i.bu, %i.bv                    ; 2 uses
  %.067.add.i.i.i.i = add nuw nsw i64 %.067.idx.i325.i.i.i, 1 ; 4 uses
  %.067.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i.i
  %i.bx = load i8, ptr %.067.ptr.i.i.i.i, align 1, !tbaa !333 ; 2 uses
  %i.by = add i8 %i.bx, -48                       ; 2 uses
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.lr.ph.i.i.i, label %bb.m, !llvm.loop !250

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i
  br i1 %i.bn, label %.thread.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not.i52.i.i.i = icmp ne i64 %.067.idx.i325.i.i.i, 0
  %or.cond.i.not.i.i.i = and i1 %i.bp, %.not.i52.i.i.i
  br i1 %or.cond.i.not.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.m, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i
  %.067.idx.i.lcssa322364377.i.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.m ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.1237.lcssa365376.i.i.i = phi i64 [ %i.bw, %bb.m ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.lcssa366375.i.i.i = phi i8 [ %i.bx, %bb.m ], [ %i.bq, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.067.add.i.pn.i.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.m ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.067.ptr.i.le367374.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.pn.i.i.i ; 3 uses
  %i.ca = icmp eq i8 %.lcssa366375.i.i.i, 46
  br i1 %i.ca, label %bb.n, label %bb.s, !prof !403

bb.n:                                             ; preds = %.thread.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le367374.i.i.i, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !333
  %i.cd = add i8 %i.cc, -48                       ; 2 uses
  %i.ce = icmp ult i8 %i.cd, 10
  br i1 %i.ce, label %bb.o, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cf = mul i64 %.1237.lcssa365376.i.i.i, 10
  %i.cg = zext nneg i8 %i.cd to i64
  %i.ch = add i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le367374.i.i.i, i64 2 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !333 ; 2 uses
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %.lr.ph331.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i

.lr.ph331.i.i.i:                                  ; preds = %bb.o, %.lr.ph331.i.i.i
  %i.cm = phi i8 [ %i.cs, %.lr.ph331.i.i.i ], [ %i.ck, %bb.o ]
  %.168.i330.i.i.i = phi ptr [ %i.cq, %.lr.ph331.i.i.i ], [ %i.ci, %bb.o ]
  %.6329.i.i.i = phi i64 [ %i.cp, %.lr.ph331.i.i.i ], [ %i.ch, %bb.o ]
  %i.cn = mul i64 %.6329.i.i.i, 10
  %i.co = zext nneg i8 %i.cm to i64
  %i.cp = add i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.168.i330.i.i.i, i64 1 ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !333 ; 2 uses
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 10
  br i1 %i.ct, label %.lr.ph331.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i, !llvm.loop !251

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i: ; preds = %.lr.ph331.i.i.i, %bb.o
  %i.cu = phi i8 [ %i.cj, %bb.o ], [ %i.cr, %.lr.ph331.i.i.i ] ; 2 uses
  %.6.lcssa.i.i.i = phi i64 [ %i.ch, %bb.o ], [ %i.cp, %.lr.ph331.i.i.i ] ; 2 uses
  %.168.i.lcssa.i.i.i = phi ptr [ %i.ci, %bb.o ], [ %i.cq, %.lr.ph331.i.i.i ] ; 3 uses
  %i.cv = ptrtoint ptr %.168.i.lcssa.i.i.i to i64 ; 3 uses
  %i.cw = ptrtoint ptr %i.cb to i64
  %.neg.i.i.i.i = sub i64 %i.cw, %i.cv            ; 2 uses
  %i.cx = ptrtoint ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.cy = sub i64 %i.cx, %i.cv
  %i.cz = icmp slt i64 %i.cy, -20                 ; 2 uses
  %i.da = and i1 %i.bp, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, !prof !335

bb.p:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i59.i.i.i = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.p ], [ %i.dd, %bb.q ] ; 3 uses
  %i.db = load i8, ptr %.0.i59.i.i.i, align 1, !tbaa !333
  %i.dc = icmp eq i8 %i.db, 48
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i59.i.i.i, i64 1
  br i1 %i.dc, label %bb.q, label %bb.r, !llvm.loop !252

bb.r:                                             ; preds = %bb.q
  %i.de = ptrtoint ptr %.0.i59.i.i.i to i64
  %i.df = sub i64 %i.cv, %i.de
  %i.dg = icmp sgt i64 %i.df, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

bb.s:                                             ; preds = %.thread.i.i.i
  %i.dh = icmp samesign ugt i64 %.067.idx.i.lcssa322364377.i.i.i, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %i.di = phi i8 [ %.lcssa366375.i.i.i, %bb.s ], [ %i.cu, %bb.r ], [ %i.cu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.3239.i.i.i = phi i64 [ %.1237.lcssa365376.i.i.i, %bb.s ], [ %.6.lcssa.i.i.i, %bb.r ], [ %.6.lcssa.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 5 uses
  %.370.i.i.i.i = phi ptr [ %.067.ptr.i.le367374.i.i.i, %bb.s ], [ %.168.i.lcssa.i.i.i, %bb.r ], [ %.168.i.lcssa.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.163.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.neg.i.i.i.i, %bb.r ], [ %.neg.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i1 [ %i.dh, %bb.s ], [ %i.dg, %bb.r ], [ %i.cz, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ]
  switch i8 %i.di, label %bb.v [
    i8 101, label %bb.t
    i8 69, label %bb.t
  ]

bb.t:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.370.i.i.i.i, i64 1 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !333 ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 45                    ; 2 uses
  %i.dm = icmp eq i8 %i.dk, 43
  %narrow319.i.i.i = or i1 %i.dl, %i.dm
  %.sroa.gep347.i.i.i = getelementptr inbounds nuw i8, ptr %.370.i.i.i.i, i64 2
  %.sroa.sel.i.i.i = select i1 %narrow319.i.i.i, ptr %.sroa.gep347.i.i.i, ptr %i.dj ; 3 uses
  %i.dn = load i8, ptr %.sroa.sel.i.i.i, align 1, !tbaa !333
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph336.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

.lr.ph336.i.i.i:                                  ; preds = %bb.t, %.lr.ph336.i.i.i
  %i.dq = phi i8 [ %i.dw, %.lr.ph336.i.i.i ], [ %i.do, %bb.t ]
  %.4.i335.i.i.i = phi ptr [ %i.du, %.lr.ph336.i.i.i ], [ %.sroa.sel.i.i.i, %bb.t ]
  %.0241334.i.i.i = phi i64 [ %i.dt, %.lr.ph336.i.i.i ], [ 0, %bb.t ]
  %i.dr = mul i64 %.0241334.i.i.i, 10
  %i.ds = zext nneg i8 %i.dq to i64
  %i.dt = add i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.4.i335.i.i.i, i64 1 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !333 ; 2 uses
  %i.dw = add i8 %i.dv, -48                       ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 10
  br i1 %i.dx, label %.lr.ph336.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i, !llvm.loop !253

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i: ; preds = %.lr.ph336.i.i.i
  %i.dy = ptrtoint ptr %.sroa.sel.i.i.i to i64
  %i.dz = ptrtoint ptr %i.du to i64
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = icmp sgt i64 %i.ea, 19
  br i1 %i.eb, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i
  %i.ec = sub i64 0, %i.dt
  %i.ed = select i1 %i.dl, i64 %i.ec, i64 %i.dt
  %i.ee = add i64 %i.ed, %.163.i.i.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.ef = phi i8 [ %i.dv, %bb.u ], [ %i.di, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ]
  %.3.i.i.i.i = phi i64 [ %i.ee, %bb.u ], [ %.163.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ] ; 8 uses
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !418, !range !401, !noundef !402
  %.not76.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not76.i.i.i.i, label %bb.w, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ej = add i64 %.3.i.i.i.i, -309
  %i.ek = icmp ult i64 %i.ej, -651
  %.not78.i.i.i.i = select i1 %.2.i.i.i.i, i1 true, i1 %i.ek
  br i1 %.not78.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i.i, label %bb.x, !prof !335

bb.x:                                             ; preds = %bb.w
  %i.el = add nsw i64 %.3.i.i.i.i, 22
  %or.cond.i.i58.i.i.i = icmp ult i64 %i.el, 45
  %i.em = icmp ult i64 %.3239.i.i.i, 9007199254740992
  %or.cond3.i.i.i.i.i = and i1 %i.em, %or.cond.i.i58.i.i.i
  br i1 %or.cond3.i.i.i.i.i, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.en = uitofp nneg i64 %.3239.i.i.i to double  ; 2 uses
  %i.eo = icmp slt i64 %.3.i.i.i.i, 0
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ep = sub nsw i64 0, %.3.i.i.i.i
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !886
  %i.es = fdiv double %i.en, %i.er
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.3.i.i.i.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !886
  %i.ev = fmul double %i.eu, %i.en
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %storemerge.i.i.i.i.i = phi double [ %i.ev, %bb.aa ], [ %i.es, %bb.z ] ; 2 uses
  %i.ew = fneg double %storemerge.i.i.i.i.i
  %spec.select315.i.i.i = select i1 %i.bk, double %i.ew, double %storemerge.i.i.i.i.i
  br label %bb.ao

bb.ac:                                            ; preds = %bb.x
  %i.ex = icmp eq i64 %.3239.i.i.i, 0
  br i1 %i.ex, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ey = select i1 %i.bk, double -0.000000e+00, double 0.000000e+00
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  %i.ez = mul nsw i64 %.3.i.i.i.i, 217706
  %i.fa = ashr i64 %i.ez, 16
  %i.fb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3239.i.i.i, i1 true) ; 2 uses
  %i.fc = shl i64 %.3239.i.i.i, %i.fb             ; 2 uses
  %i.fd = trunc nsw i64 %.3.i.i.i.i to i32
  %i.fe = shl nsw i32 %i.fd, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 5472
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !434
  %i.fj = zext i64 %i.fc to i128
  %i.fk = zext i64 %i.fi to i128
  %i.fl = mul nuw i128 %i.fk, %i.fj               ; 2 uses
  %i.fm = trunc i128 %i.fl to i64                 ; 2 uses
  %i.fn = lshr i128 %i.fl, 64
  %i.fo = trunc nuw i128 %i.fn to i64             ; 3 uses
  %i.fp = and i64 %i.fo, 511
  %i.fq = icmp eq i64 %i.fp, 511
  br i1 %i.fq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr i8, ptr %i.fg, i64 5480
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !434
  %i.ft = call i64 @llvm.umulh.i64(i64 %i.fc, i64 %i.fs) ; 2 uses
  %i.fu = add i64 %i.ft, %i.fm                    ; 2 uses
  %i.fv = icmp ugt i64 %i.ft, %i.fu
  %i.fw = zext i1 %i.fv to i64
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE6EEEvRKNS0_10BaseVectorERS4_RKS1_RS9_EUlT_E0_ZNKS7_ILS8_6EEEvSB_SC_SE_SF_EUliE_EEvSE_SG_T0_EUlSG_E_EEvSG_:bb.a

.loopexit30:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE6EEEvRKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS7_EUlT_E0_ZNKS5_ILS6_6EEEvS9_SA_SD_SE_EUliE_EEvSD_SF_T0_ENKUlSF_E_clIiEEDaSF_.exit, %bb.h, %bb.ad
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE6EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE(ptr noundef nonnull byval(%"class.simdjson::padded_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1084 x i8], align 16             ; 9 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"struct.simdjson::simdjson_result", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN8facebook5velox13simdjsonParseERKN8simdjson18padded_string_viewE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2415 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !471 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !815 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2416 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2417 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2418 ; 7 uses
  store ptr null, ptr %i.d, align 8, !tbaa !2416
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !334
  %i.l = load i32, ptr %i.i, align 4, !tbaa !334  ; 4 uses
  %i.m = sub i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !334
  %i.p = sub i32 %i.o, %i.l
  %..i = call i32 @llvm.umin.i32(i32 %i.m, i32 %i.p) ; 7 uses
  %i.q = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.q, label %bb.c, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !334
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit: ; preds = %bb.b, %bb.c
  %.pn.in = phi i32 [ %i.r, %bb.c ], [ %i.l, %bb.b ]
  %.pn = zext i32 %.pn.in to i64
  %.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.pn ; 3 uses
  %i.s = icmp ugt i32 %..i, 3                     ; 2 uses
  br i1 %i.s, label %bb.d, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit
  %.pre = load i8, ptr %.0.i, align 1, !tbaa !333
  br label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit

bb.d:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit
  %.0.copyload.i = load i32, ptr %.0.i, align 1   ; 2 uses
  %.not.i = icmp eq i32 %.0.copyload.i, 1819047278
  %i.t = trunc i32 %.0.copyload.i to i8
  br i1 %.not.i, label %bb.e, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %..i, 4
  br i1 %i.u, label %.critedge7.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !333
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !418, !range !401, !noundef !402
  %.not80 = icmp eq i8 %i.z, 0
  br i1 %.not80, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111, label %.critedge7.i

.critedge7.i:                                     ; preds = %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2420
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2428
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit: ; preds = %bb.d, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge
  %i.af = phi i8 [ %.pre, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge ], [ %i.t, %bb.d ]
  %.not131 = icmp eq i8 %i.af, 110                ; 2 uses
  %i.ag = select i1 %.not131, i32 17, i32 0
  br i1 %.not131, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread111: ; preds = %bb.f, %.critedge7.i, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit
  %.sroa.413.0.extract.shift117 = phi i32 [ 31, %.critedge7.i ], [ %i.ag, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit ], [ 17, %bb.f ]
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #38 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8simdjson14simdjson_errorE, i64 16), ptr %i.ah, align 8, !tbaa !323
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %.sroa.413.0.extract.shift117, ptr %i.ai, align 8, !tbaa !2430
  call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN8simdjson14simdjson_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #46
  unreachable

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread: ; preds = %.critedge7.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !315
  %.not.i12 = icmp eq ptr %i.ak, null
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !323
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.am, i1 noundef zeroext false), !inline_history !1427
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.h:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1119 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1118
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !323
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(94) %i.ar, i32 noundef %i.at, i1 noundef zeroext true), !inline_history !1427
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit
  %i.ax = zext i32 %i.l to i64                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ax ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !333
  switch i8 %i.az, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit [
    i8 57, label %bb.i
    i8 56, label %bb.i
    i8 34, label %bb.ax
    i8 55, label %bb.i
    i8 116, label %bb.aq
    i8 102, label %bb.aq
    i8 45, label %bb.i
    i8 48, label %bb.i
    i8 49, label %bb.i
    i8 50, label %bb.i
    i8 51, label %bb.i
    i8 52, label %bb.i
    i8 53, label %bb.i
    i8 54, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.ba = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.ba, label %bb.j, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i44.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !334
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bc
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i44.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i44.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i45.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.ay, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1083
  store i8 0, ptr %i.be, align 1, !tbaa !333
  %i.bf = zext i32 %..i to i64                    ; 3 uses
  %i.bg = icmp ult i32 %..i, 1084
  br i1 %i.bg, label %bb.k, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i44.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.0.i.i45.i.i.i, i64 %i.bf, i1 false)
  %.not.i.i.i = icmp eq i32 %..i, 1083
  br i1 %.not.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bi = sub nuw nsw i64 1083, %i.bf
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bh, i8 32, i64 %i.bi, i1 false)
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !333
  %i.bk = icmp eq i8 %i.bj, 45                    ; 8 uses
  %.neg79.i.i.i.i = sext i1 %i.bk to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.bk to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.bl = load i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !333
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 10                   ; 3 uses
  %narrow.i.i.i = select i1 %i.bn, i8 %i.bm, i8 0 ; 2 uses
  %spec.select.i.i.i = zext i8 %narrow.i.i.i to i64 ; 2 uses
  %i.bo = zext i1 %i.bn to i64                    ; 2 uses
  %i.bp = icmp eq i8 %narrow.i.i.i, 0             ; 2 uses
  %.067.ptr.i326.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bo
  %i.bq = load i8, ptr %.067.ptr.i326.i.i.i, align 1, !tbaa !333 ; 2 uses
  %i.br = add i8 %i.bq, -48                       ; 2 uses
  %i.bs = icmp ult i8 %i.br, 10
  br i1 %i.bs, label %.lr.ph.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i, %.lr.ph.i.i.i
  %i.bt = phi i8 [ %i.by, %.lr.ph.i.i.i ], [ %i.br, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i ]
  %.067.idx.i328.i.i.i = phi i64 [ %.067.add.i.i.i.i, %.lr.ph.i.i.i ], [ %i.bo, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i ] ; 2 uses
  %.1240327.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i ]
  %i.bu = mul i64 %.1240327.i.i.i, 10
  %i.bv = zext nneg i8 %i.bt to i64
  %i.bw = add i64 %i.bu, %i.bv                    ; 2 uses
  %.067.add.i.i.i.i = add nuw nsw i64 %.067.idx.i328.i.i.i, 1 ; 4 uses
  %.067.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.i.i.i
  %i.bx = load i8, ptr %.067.ptr.i.i.i.i, align 1, !tbaa !333 ; 2 uses
  %i.by = add i8 %i.bx, -48                       ; 2 uses
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.lr.ph.i.i.i, label %bb.m, !llvm.loop !250

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88.i.i.i.i
  br i1 %i.bn, label %.thread371.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not.i56.i.i.i = icmp ne i64 %.067.idx.i328.i.i.i, 0
  %or.cond.i.not.i.i.i = and i1 %i.bp, %.not.i56.i.i.i
  br i1 %or.cond.i.not.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i, label %.thread371.i.i.i

.thread371.i.i.i:                                 ; preds = %bb.m, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i
  %.067.idx.i.lcssa325367381.i.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.m ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.1240.lcssa368380.i.i.i = phi i64 [ %i.bw, %bb.m ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.lcssa369379.i.i.i = phi i8 [ %i.bx, %bb.m ], [ %i.bq, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.067.add.i.pn.i.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.m ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.067.ptr.i.le370378.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.067.add.i.pn.i.i.i ; 3 uses
  %i.ca = icmp eq i8 %.lcssa369379.i.i.i, 46
  br i1 %i.ca, label %bb.n, label %bb.s, !prof !403

bb.n:                                             ; preds = %.thread371.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le370378.i.i.i, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !333
  %i.cd = add i8 %i.cc, -48                       ; 2 uses
  %i.ce = icmp ult i8 %i.cd, 10
  br i1 %i.ce, label %bb.o, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cf = mul i64 %.1240.lcssa368380.i.i.i, 10
  %i.cg = zext nneg i8 %i.cd to i64
  %i.ch = add i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.067.ptr.i.le370378.i.i.i, i64 2 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !333 ; 2 uses
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %.lr.ph334.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i

.lr.ph334.i.i.i:                                  ; preds = %bb.o, %.lr.ph334.i.i.i
  %i.cm = phi i8 [ %i.cs, %.lr.ph334.i.i.i ], [ %i.ck, %bb.o ]
  %.168.i333.i.i.i = phi ptr [ %i.cq, %.lr.ph334.i.i.i ], [ %i.ci, %bb.o ]
  %.6332.i.i.i = phi i64 [ %i.cp, %.lr.ph334.i.i.i ], [ %i.ch, %bb.o ]
  %i.cn = mul i64 %.6332.i.i.i, 10
  %i.co = zext nneg i8 %i.cm to i64
  %i.cp = add i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.168.i333.i.i.i, i64 1 ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !333 ; 2 uses
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 10
  br i1 %i.ct, label %.lr.ph334.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i, !llvm.loop !251

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i: ; preds = %.lr.ph334.i.i.i, %bb.o
  %i.cu = phi i8 [ %i.cj, %bb.o ], [ %i.cr, %.lr.ph334.i.i.i ] ; 2 uses
  %.6.lcssa.i.i.i = phi i64 [ %i.ch, %bb.o ], [ %i.cp, %.lr.ph334.i.i.i ] ; 2 uses
  %.168.i.lcssa.i.i.i = phi ptr [ %i.ci, %bb.o ], [ %i.cq, %.lr.ph334.i.i.i ] ; 3 uses
  %i.cv = ptrtoint ptr %.168.i.lcssa.i.i.i to i64 ; 3 uses
  %i.cw = ptrtoint ptr %i.cb to i64
  %.neg.i.i.i.i = sub i64 %i.cw, %i.cv            ; 2 uses
  %i.cx = ptrtoint ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.cy = sub i64 %i.cx, %i.cv
  %i.cz = icmp slt i64 %i.cy, -20                 ; 2 uses
  %i.da = and i1 %i.bp, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, !prof !335

bb.p:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, i64 3, i64 2
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i63.i.i.i = phi ptr [ %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.p ], [ %i.dd, %bb.q ] ; 3 uses
  %i.db = load i8, ptr %.0.i63.i.i.i, align 1, !tbaa !333
  %i.dc = icmp eq i8 %i.db, 48
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i63.i.i.i, i64 1
  br i1 %i.dc, label %bb.q, label %bb.r, !llvm.loop !252

bb.r:                                             ; preds = %bb.q
  %i.de = ptrtoint ptr %.0.i63.i.i.i to i64
  %i.df = sub i64 %i.cv, %i.de
  %i.dg = icmp sgt i64 %i.df, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

bb.s:                                             ; preds = %.thread371.i.i.i
  %i.dh = icmp samesign ugt i64 %.067.idx.i.lcssa325367381.i.i.i, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %i.di = phi i8 [ %.lcssa369379.i.i.i, %bb.s ], [ %i.cu, %bb.r ], [ %i.cu, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.3242.i.i.i = phi i64 [ %.1240.lcssa368380.i.i.i, %bb.s ], [ %.6.lcssa.i.i.i, %bb.r ], [ %.6.lcssa.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 5 uses
  %.370.i.i.i.i = phi ptr [ %.067.ptr.i.le370378.i.i.i, %bb.s ], [ %.168.i.lcssa.i.i.i, %bb.r ], [ %.168.i.lcssa.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.163.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.neg.i.i.i.i, %bb.r ], [ %.neg.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i1 [ %i.dh, %bb.s ], [ %i.dg, %bb.r ], [ %i.cz, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ]
  switch i8 %i.di, label %bb.v [
    i8 101, label %bb.t
    i8 69, label %bb.t
  ]

bb.t:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.370.i.i.i.i, i64 1 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !333 ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 45                    ; 2 uses
  %i.dm = icmp eq i8 %i.dk, 43
  %narrow322.i.i.i = or i1 %i.dl, %i.dm
  %.sroa.gep350.i.i.i = getelementptr inbounds nuw i8, ptr %.370.i.i.i.i, i64 2
  %.sroa.sel.i.i.i = select i1 %narrow322.i.i.i, ptr %.sroa.gep350.i.i.i, ptr %i.dj ; 3 uses
  %i.dn = load i8, ptr %.sroa.sel.i.i.i, align 1, !tbaa !333
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph339.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

.lr.ph339.i.i.i:                                  ; preds = %bb.t, %.lr.ph339.i.i.i
  %i.dq = phi i8 [ %i.dw, %.lr.ph339.i.i.i ], [ %i.do, %bb.t ]
  %.4.i338.i.i.i = phi ptr [ %i.du, %.lr.ph339.i.i.i ], [ %.sroa.sel.i.i.i, %bb.t ]
  %.0244337.i.i.i = phi i64 [ %i.dt, %.lr.ph339.i.i.i ], [ 0, %bb.t ]
  %i.dr = mul i64 %.0244337.i.i.i, 10
  %i.ds = zext nneg i8 %i.dq to i64
  %i.dt = add i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.4.i338.i.i.i, i64 1 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !333 ; 2 uses
  %i.dw = add i8 %i.dv, -48                       ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 10
  br i1 %i.dx, label %.lr.ph339.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i, !llvm.loop !253

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i: ; preds = %.lr.ph339.i.i.i
  %i.dy = ptrtoint ptr %.sroa.sel.i.i.i to i64
  %i.dz = ptrtoint ptr %i.du to i64
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = icmp sgt i64 %i.ea, 19
  br i1 %i.eb, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i
  %i.ec = sub i64 0, %i.dt
  %i.ed = select i1 %i.dl, i64 %i.ec, i64 %i.dt
  %i.ee = add i64 %i.ed, %.163.i.i.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.ef = phi i8 [ %i.dv, %bb.u ], [ %i.di, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ]
  %.3.i.i.i.i = phi i64 [ %i.ee, %bb.u ], [ %.163.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ] ; 8 uses
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !418, !range !401, !noundef !402
  %.not76.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not76.i.i.i.i, label %bb.w, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_112parse_doubleEPKh.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ej = add i64 %.3.i.i.i.i, -309
  %i.ek = icmp ult i64 %i.ej, -651
  %.not78.i.i.i.i = select i1 %.2.i.i.i.i, i1 true, i1 %i.ek
  br i1 %.not78.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i.i, label %bb.x, !prof !335

bb.x:                                             ; preds = %bb.w
  %i.el = add nsw i64 %.3.i.i.i.i, 22
  %or.cond.i.i62.i.i.i = icmp ult i64 %i.el, 45
  %i.em = icmp ult i64 %.3242.i.i.i, 9007199254740992
  %or.cond3.i.i.i.i.i = and i1 %i.em, %or.cond.i.i62.i.i.i
  br i1 %or.cond3.i.i.i.i.i, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.en = uitofp nneg i64 %.3242.i.i.i to double  ; 2 uses
  %i.eo = icmp slt i64 %.3.i.i.i.i, 0
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ep = sub nsw i64 0, %.3.i.i.i.i
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !886
  %i.es = fdiv double %i.en, %i.er
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.3.i.i.i.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !886
  %i.ev = fmul double %i.eu, %i.en
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %storemerge.i.i.i.i.i = phi double [ %i.ev, %bb.aa ], [ %i.es, %bb.z ] ; 2 uses
  %i.ew = fneg double %storemerge.i.i.i.i.i
  %spec.select318.i.i.i = select i1 %i.bk, double %i.ew, double %storemerge.i.i.i.i.i
  br label %bb.ao

bb.ac:                                            ; preds = %bb.x
  %i.ex = icmp eq i64 %.3242.i.i.i, 0
  br i1 %i.ex, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ey = select i1 %i.bk, double -0.000000e+00, double 0.000000e+00
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  %i.ez = mul nsw i64 %.3.i.i.i.i, 217706
  %i.fa = ashr i64 %i.ez, 16
  %i.fb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3242.i.i.i, i1 true) ; 2 uses
  %i.fc = shl i64 %.3242.i.i.i, %i.fb             ; 2 uses
  %i.fd = trunc nsw i64 %.3.i.i.i.i to i32
  %i.fe = shl nsw i32 %i.fd, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 5472
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !434
  %i.fj = zext i64 %i.fc to i128
  %i.fk = zext i64 %i.fi to i128
  %i.fl = mul nuw i128 %i.fk, %i.fj               ; 2 uses
  %i.fm = trunc i128 %i.fl to i64                 ; 2 uses
  %i.fn = lshr i128 %i.fl, 64
  %i.fo = trunc nuw i128 %i.fn to i64             ; 3 uses
  %i.fp = and i64 %i.fo, 511
  %i.fq = icmp eq i64 %i.fp, 511
  br i1 %i.fq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr i8, ptr %i.fg, i64 5480
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !434
  %i.ft = call i64 @llvm.umulh.i64(i64 %i.fc, i64 %i.fs) ; 2 uses
  %i.fu = add i64 %i.ft, %i.fm                    ; 2 uses
  %i.fv = icmp ugt i64 %i.ft, %i.fu
  %i.fw = zext i1 %i.fv to i64
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
bb.bb:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store ptr %i.kf, ptr %i.ju, align 8, !tbaa !2568, !noalias !10185
  %i.kg = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i41.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i41.i.i), !noalias !10185
  store i32 %i.kg, ptr %i.jx, align 4, !tbaa !2566, !noalias !10185
  br label %.thread255.i.i

.thread255.i.i:                                   ; preds = %bb.bb, %bb.ba
  %i.kh = phi i64 [ %i.kc, %bb.bb ], [ %i.c, %bb.ba ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !2416, !noalias !10186
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 24 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !2420, !noalias !10187 ; 2 uses
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !471, !noalias !10187
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !323, !noalias !10187
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !10187
  %i.kt = tail call noundef ptr %i.ks(ptr noundef nonnull align 8 dereferenceable(48) %i.ko, ptr noundef nonnull %i.kj, ptr noundef %i.kp, i1 noundef zeroext false) #38, !noalias !10187, !inline_history !10177 ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i1.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.bc

bb.bc:                                            ; preds = %.thread255.i.i
  %i.ku = load ptr, ptr %i.km, align 8, !tbaa !471, !noalias !10187 ; 3 uses
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  store ptr %i.kt, ptr %i.km, align 8, !tbaa !471, !noalias !10187
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ku, ptr %2, align 8, !noalias !10188
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.ky, ptr %i.kz, align 8, !noalias !10188
  %i.la = call { i64, i64 } @_ZN5folly6detail15str_to_integralIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #38, !noalias !10188 ; 2 uses
  %i.lb = extractvalue { i64, i64 } %i.la, 0
  %i.lc = and i64 %i.lb, 255
  %i.ld = icmp eq i64 %i.lc, 1
  br i1 %i.ld, label %bb.bd, label %_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i.i.i, !prof !403

bb.bd:                                            ; preds = %bb.bc
  %i.le = extractvalue { i64, i64 } %i.la, 1
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !471, !noalias !10189 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.kz, align 8, !tbaa !471, !noalias !10189 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.lf, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bd, %bb.be
  %.0915.i.i.i.i.i.i.i.i = phi ptr [ %i.lf, %bb.be ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.bd ] ; 2 uses
  %i.lg = load i8, ptr %.0915.i.i.i.i.i.i.i.i, align 1, !tbaa !333
  %i.lh = sext i8 %i.lg to i32
  %i.li = call i32 @isspace(i32 noundef %i.lh) #51
  %.not12.not.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.be

_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit

.loopexit.i.i:                                    ; preds = %bb.be, %bb.bd
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !1429, !nonnull !402, !align !442
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !1128
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !1834
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !2497, !nonnull !402, !align !825
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !334
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lr
  store i64 %i.le, ptr %i.ls, align 8, !tbaa !434
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.a, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i, %bb.d, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.i, %bb.k, %bb.p, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i, %bb.ai, %bb.al, %bb.am, %bb.an, %.thread225.i.i, %.thread225.i.thread.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.thread234.thread348.i.i, %bb.aq, %bb.ar, %bb.at, %bb.au, %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i, %bb.av, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.thread234.thread.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.ay, %.thread251.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, %.thread255.i.i, %_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i.i.i, %.loopexit.i.i
  %.6.i.i = phi i32 [ 18, %bb.aq ], [ 9, %bb.d ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i ], [ 5, %.thread255.i.i ], [ 0, %.loopexit.i.i ], [ 0, %.thread251.i.i ], [ 9, %bb.k ], [ 17, %bb.ay ], [ 17, %bb.a ], [ 0, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.thread234.thread.i.i ], [ 9, %.thread225.i.thread.i ], [ %.5.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ %spec.select.i, %.thread225.i.i ], [ 10, %bb.al ], [ 9, %bb.am ], [ 10, %bb.ai ], [ 9, %bb.an ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i ], [ 17, %_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i ], [ 9, %bb.p ], [ 18, %bb.ar ], [ 18, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.thread234.thread348.i.i ], [ 0, %bb.av ], [ 18, %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i ], [ 18, %bb.au ], [ 18, %bb.at ], [ 17, %.lr.ph.i.i.i.i.i.i.i.i ]
  ret i32 %.6.i.i
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE10EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE() unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #38, !noalias !10192
  store i64 ptrtoint (ptr @.str.35 to i64), ptr %0, align 16, !noalias !10192
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr nonnull @.str.264, i64 41, i64 12, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #38, !noalias !10192
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE10EvE5applyES6_RNS0_4exec13GenericWriterEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.264) #46
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %1, align 8, !tbaa !397    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !333
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 19) i32 @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE(ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !2632 ; 11 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !334 ; 16 uses
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !815 ; 5 uses
  %i.a = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !2569 ; 6 uses
  %i.b = load i32, ptr %.sroa.0.sroa.4.0.copyload, align 4, !tbaa !334
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !333   ; 2 uses
  switch i8 %i.e, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit [
    i8 57, label %bb.b
    i8 56, label %bb.b
    i8 34, label %bb.an
    i8 55, label %bb.b
    i8 116, label %bb.aj
    i8 102, label %bb.aj
    i8 45, label %bb.b
    i8 48, label %bb.b
    i8 49, label %bb.b
    i8 50, label %bb.b
    i8 51, label %bb.b
    i8 52, label %bb.b
    i8 53, label %bb.b
    i8 54, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2568 ; 7 uses
  %i.h = icmp eq ptr %i.g, %.sroa.0.sroa.4.0.copyload
  br i1 %i.h, label %bb.c, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2566
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp sgt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i32, ptr %i.g, align 4, !tbaa !334
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %.pre.i.i = load i8, ptr %i.o, align 1, !tbaa !333
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i: ; preds = %bb.c, %bb.b
  %i.p = phi i8 [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.q = phi i64 [ %i.n, %bb.c ], [ %i.c, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = icmp eq i8 %i.p, 45                      ; 7 uses
  %.neg79.i.i.i.i = sext i1 %i.s to i64
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 7 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !333
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %i.x = icmp ult i8 %i.w, 10                     ; 3 uses
  %narrow.i.i = select i1 %i.x, i8 %i.w, i8 0     ; 2 uses
  %spec.select.i.i = zext i8 %narrow.i.i to i64   ; 2 uses
  %i.y = zext i1 %i.x to i64                      ; 2 uses
  %i.z = icmp eq i8 %narrow.i.i, 0                ; 2 uses
  %.067.ptr.i.i221.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load i8, ptr %.067.ptr.i.i221.i.i, align 1, !tbaa !333 ; 2 uses
  %i.ab = add i8 %i.aa, -48                       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i, %.lr.ph.i.i
  %i.ad = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i ]
  %.067.idx.i.i223.i.i = phi i64 [ %.067.add.i.i.i.i, %.lr.ph.i.i ], [ %i.y, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i ] ; 2 uses
  %.1140222.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %spec.select.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i ]
  %i.ae = mul i64 %.1140222.i.i, 10
  %i.af = zext nneg i8 %i.ad to i64
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  %.067.add.i.i.i.i = add nuw nsw i64 %.067.idx.i.i223.i.i, 1 ; 4 uses
  %.067.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.067.add.i.i.i.i
  %i.ah = load i8, ptr %.067.ptr.i.i.i.i, align 1, !tbaa !333 ; 2 uses
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %.lr.ph.i.i, label %bb.d, !llvm.loop !250

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i33.i.i
  br i1 %i.x, label %.thread.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not.i.i34.i.i = icmp ne i64 %.067.idx.i.i223.i.i, 0
  %or.cond.i.i.not.i.i = and i1 %i.z, %.not.i.i34.i.i
  br i1 %or.cond.i.i.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i
  %.067.idx.i.i.lcssa220257270.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.d ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.1140.lcssa258269.i.i = phi i64 [ %i.ag, %bb.d ], [ %spec.select.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.lcssa259268.i.i = phi i8 [ %i.ah, %bb.d ], [ %i.aa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.067.add.i.i.pn.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.d ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.067.ptr.i.i.le260267.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.067.add.i.i.pn.i.i ; 3 uses
  %i.ak = icmp eq i8 %.lcssa259268.i.i, 46
  br i1 %i.ak, label %bb.e, label %bb.j, !prof !403

bb.e:                                             ; preds = %.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le260267.i.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !333
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %bb.f, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = mul i64 %.1140.lcssa258269.i.i, 10
  %i.aq = zext nneg i8 %i.an to i64
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le260267.i.i, i64 2 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !333 ; 2 uses
  %i.au = add i8 %i.at, -48                       ; 2 uses
  %i.av = icmp ult i8 %i.au, 10
  br i1 %i.av, label %.lr.ph229.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i

.lr.ph229.i.i:                                    ; preds = %bb.f, %.lr.ph229.i.i
  %i.aw = phi i8 [ %i.bc, %.lr.ph229.i.i ], [ %i.au, %bb.f ]
  %.168.i.i228.i.i = phi ptr [ %i.ba, %.lr.ph229.i.i ], [ %i.as, %bb.f ]
  %.6227.i.i = phi i64 [ %i.az, %.lr.ph229.i.i ], [ %i.ar, %bb.f ]
  %i.ax = mul i64 %.6227.i.i, 10
  %i.ay = zext nneg i8 %i.aw to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.168.i.i228.i.i, i64 1 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !333 ; 2 uses
  %i.bc = add i8 %i.bb, -48                       ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 10
  br i1 %i.bd, label %.lr.ph229.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i, !llvm.loop !251

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i: ; preds = %.lr.ph229.i.i, %bb.f
  %i.be = phi i8 [ %i.at, %bb.f ], [ %i.bb, %.lr.ph229.i.i ] ; 2 uses
  %.6.lcssa.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.az, %.lr.ph229.i.i ] ; 2 uses
  %.168.i.i.lcssa.i.i = phi ptr [ %i.as, %bb.f ], [ %i.ba, %.lr.ph229.i.i ] ; 3 uses
  %i.bf = ptrtoint ptr %.168.i.i.lcssa.i.i to i64 ; 3 uses
  %i.bg = ptrtoint ptr %i.al to i64
  %.neg.i.i.i.i = sub i64 %i.bg, %i.bf            ; 2 uses
  %i.bh = ptrtoint ptr %i.u to i64
  %i.bi = sub i64 %i.bh, %i.bf
  %i.bj = icmp slt i64 %i.bi, -20                 ; 2 uses
  %i.bk = and i1 %i.z, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, !prof !335

bb.g:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i44.i.i = phi ptr [ %i.bl, %bb.g ], [ %i.bo, %bb.h ] ; 3 uses
  %i.bm = load i8, ptr %.0.i.i44.i.i, align 1, !tbaa !333
  %i.bn = icmp eq i8 %i.bm, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i44.i.i, i64 1
  br i1 %i.bn, label %bb.h, label %bb.i, !llvm.loop !252

bb.i:                                             ; preds = %bb.h
  %i.bp = ptrtoint ptr %.0.i.i44.i.i to i64
  %i.bq = sub i64 %i.bf, %i.bp
  %i.br = icmp sgt i64 %i.bq, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

bb.j:                                             ; preds = %.thread.i.i
  %i.bs = icmp samesign ugt i64 %.067.idx.i.i.lcssa220257270.i.i, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %i.bt = phi i8 [ %.lcssa259268.i.i, %bb.j ], [ %i.be, %bb.i ], [ %i.be, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.3142.i.i = phi i64 [ %.1140.lcssa258269.i.i, %bb.j ], [ %.6.lcssa.i.i, %bb.i ], [ %.6.lcssa.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 5 uses
  %.370.i.i.i.i = phi ptr [ %.067.ptr.i.i.le260267.i.i, %bb.j ], [ %.168.i.i.lcssa.i.i, %bb.i ], [ %.168.i.i.lcssa.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ]
  %.163.i.i.i.i = phi i64 [ 0, %bb.j ], [ %.neg.i.i.i.i, %bb.i ], [ %.neg.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i1 [ %i.bs, %bb.j ], [ %i.br, %bb.i ], [ %i.bj, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ]
  switch i8 %i.bt, label %bb.m [
    i8 101, label %bb.k
    i8 69, label %bb.k
  ]

bb.k:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.370.i.i.i.i, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !333 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 45                    ; 2 uses
  %i.bx = icmp eq i8 %i.bv, 43
  %narrow217.i.i = or i1 %i.bw, %i.bx
  %i.by = zext i1 %narrow217.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !333
  %i.cb = add i8 %i.ca, -48                       ; 2 uses
  %i.cc = icmp ult i8 %i.cb, 10
  br i1 %i.cc, label %.lr.ph234.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

.lr.ph234.i.i:                                    ; preds = %bb.k, %.lr.ph234.i.i
  %i.cd = phi i8 [ %i.cj, %.lr.ph234.i.i ], [ %i.cb, %bb.k ]
  %.4.i.i233.i.i = phi ptr [ %i.ch, %.lr.ph234.i.i ], [ %i.bz, %bb.k ]
  %.0144232.i.i = phi i64 [ %i.cg, %.lr.ph234.i.i ], [ 0, %bb.k ]
  %i.ce = mul i64 %.0144232.i.i, 10
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = add i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.4.i.i233.i.i, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !333 ; 2 uses
  %i.cj = add i8 %i.ci, -48                       ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 10
  br i1 %i.ck, label %.lr.ph234.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i, !llvm.loop !253

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i: ; preds = %.lr.ph234.i.i
  %i.cl = ptrtoint ptr %i.bz to i64
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = icmp sgt i64 %i.cn, 19
  br i1 %i.co, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i
  %i.cp = sub i64 0, %i.cg
  %i.cq = select i1 %i.bw, i64 %i.cp, i64 %i.cg
  %i.cr = add i64 %i.cq, %.163.i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.cs = phi i8 [ %i.ci, %bb.l ], [ %i.bt, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ]
  %.3.i.i.i.i = phi i64 [ %i.cr, %bb.l ], [ %.163.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ] ; 8 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !418, !range !401, !noundef !402
  %.not76.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not76.i.i.i.i, label %bb.n, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = add i64 %.3.i.i.i.i, -309
  %i.cx = icmp ult i64 %i.cw, -651
  %.not78.i.i.i.i = select i1 %.2.i.i.i.i, i1 true, i1 %i.cx
  br i1 %.not78.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i.i, label %bb.o, !prof !335

bb.o:                                             ; preds = %bb.n
  %i.cy = add nsw i64 %.3.i.i.i.i, 22
  %or.cond.i.i.i43.i.i = icmp ult i64 %i.cy, 45
  %i.cz = icmp ult i64 %.3142.i.i, 9007199254740992
  %or.cond3.i.i.i.i.i = and i1 %i.cz, %or.cond.i.i.i43.i.i
  br i1 %or.cond3.i.i.i.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.da = uitofp nneg i64 %.3142.i.i to double    ; 2 uses
  %i.db = icmp slt i64 %.3.i.i.i.i, 0
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = sub nsw i64 0, %.3.i.i.i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !886
  %i.df = fdiv double %i.da, %i.de
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.3.i.i.i.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !886
  %i.di = fmul double %i.dh, %i.da
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %storemerge.i.i.i.i.i = phi double [ %i.di, %bb.r ], [ %i.df, %bb.q ] ; 2 uses
  %i.dj = fneg double %storemerge.i.i.i.i.i
  %spec.select214.i.i = select i1 %i.s, double %i.dj, double %storemerge.i.i.i.i.i
  br label %bb.af

bb.t:                                             ; preds = %bb.o
  %i.dk = icmp eq i64 %.3142.i.i, 0
  br i1 %i.dk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dl = select i1 %i.s, double -0.000000e+00, double 0.000000e+00
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.dm = mul nsw i64 %.3.i.i.i.i, 217706
  %i.dn = ashr i64 %i.dm, 16
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3142.i.i, i1 true) ; 2 uses
  %i.dp = shl i64 %.3142.i.i, %i.do               ; 2 uses
  %i.dq = trunc nsw i64 %.3.i.i.i.i to i32
  %i.dr = shl nsw i32 %i.dq, 1
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 5472
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !434
  %i.dw = zext i64 %i.dp to i128
  %i.dx = zext i64 %i.dv to i128
  %i.dy = mul nuw i128 %i.dx, %i.dw               ; 2 uses
  %i.dz = trunc i128 %i.dy to i64                 ; 2 uses
  %i.ea = lshr i128 %i.dy, 64
  %i.eb = trunc nuw i128 %i.ea to i64             ; 3 uses
  %i.ec = and i64 %i.eb, 511
  %i.ed = icmp eq i64 %i.ec, 511
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr i8, ptr %i.dt, i64 5480
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !434
  %i.eg = tail call i64 @llvm.umulh.i64(i64 %i.dp, i64 %i.ef) ; 2 uses
  %i.eh = add i64 %i.eg, %i.dz                    ; 2 uses
  %i.ei = icmp ugt i64 %i.eg, %i.eh
  %i.ej = zext i1 %i.ei to i64
  %spec.select.i.i.i.i.i = add nuw i64 %i.ej, %i.eb
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.al
  %i.hr = xor i1 %i.hj, true
  br i1 %.not.i.i, label %bb.am, label %.thread191.i.i

bb.am:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 36 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !2566
  %i.hu = icmp eq i32 %i.ht, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp sgt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store ptr %i.hw, ptr %i.gu, align 8, !tbaa !2568
  %i.hx = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i)
  store i32 %i.hx, ptr %i.hs, align 4, !tbaa !2566
  br label %.thread191.i.i

.thread191.i.i:                                   ; preds = %bb.am, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.hy = uitofp i1 %i.hr to float
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !1429, !nonnull !402, !align !442
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1128
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !2053
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !2497, !nonnull !402, !align !825
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !334
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.ih
  store float %i.hy, ptr %i.ii, align 4, !tbaa !775
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.an:                                            ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !2568, !noalias !10200 ; 3 uses
  %i.il = icmp eq ptr %i.ik, %.sroa.0.sroa.4.0.copyload
  br i1 %i.il, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, label %.thread195.i.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i: ; preds = %bb.an
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 36 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !2566, !noalias !10200
  %i.io = icmp eq i32 %i.in, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.io), !noalias !10200
  %i.ip = icmp sgt i32 %.sroa.0.sroa.2.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ip), !noalias !10200
  %i.iq = load i32, ptr %i.ik, align 4, !tbaa !334, !noalias !10200
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !333, !noalias !10200
  %.not.i.i.i = icmp eq i8 %i.it, 34
  br i1 %.not.i.i.i, label %bb.ao, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.ao:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store ptr %i.iu, ptr %i.ij, align 8, !tbaa !2568, !noalias !10200
  %i.iv = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i32.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i32.i.i), !noalias !10200
  store i32 %i.iv, ptr %i.im, align 4, !tbaa !2566, !noalias !10200
  br label %.thread195.i.i

.thread195.i.i:                                   ; preds = %bb.ao, %bb.an
  %i.iw = phi i64 [ %i.ir, %bb.ao ], [ %i.c, %bb.an ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !2416, !noalias !10201
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 24 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !2420, !noalias !10202 ; 2 uses
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !471, !noalias !10202
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !323, !noalias !10202
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !10202
  %i.ji = tail call noundef ptr %i.jh(ptr noundef nonnull align 8 dereferenceable(48) %i.jd, ptr noundef nonnull %i.iy, ptr noundef %i.je, i1 noundef zeroext false) #38, !noalias !10202, !inline_history !10199 ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i1.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread195.i.i
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !471, !noalias !10202 ; 2 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  store ptr %i.ji, ptr %i.jb, align 8, !tbaa !471, !noalias !10202
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store i64 %i.jm, ptr %2, align 8, !tbaa !434
  %.sroa.048.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.jj, ptr %.sroa.048.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !471
  %i.jn = call fastcc i64 @_ZN8facebook5velox12_GLOBAL__N_110fromStringIfEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.jn, 32 ; 2 uses
  %.not28.i.i = icmp eq i64 %.sroa.4.0.extract.shift.i.i, 0
  br i1 %.not28.i.i, label %.thread213.i.i, label %bb.aq

.thread213.i.i:                                   ; preds = %bb.ap
  %.sroa.0.0.extract.trunc.i.i = trunc nuw i64 %i.jn to i32
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1429, !nonnull !402, !align !442
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1128
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !2053
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !2497, !nonnull !402, !align !825
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !334
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.jw
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.jx, align 4, !tbaa !775
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.aq:                                            ; preds = %bb.ap
  %.sroa.4.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE5EvE5applyES6_RNS0_4exec13GenericWriterE.exit: ; preds = %bb.a, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i, %bb.d, %bb.e, %bb.k, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i, %bb.m, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i.i, %bb.ah, %bb.ai, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.al, %.thread191.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, %.thread195.i.i, %.thread213.i.i, %bb.aq
  %.5.i.i = phi i32 [ 0, %.thread191.i.i ], [ %.sroa.4.0.extract.trunc.i.i, %bb.aq ], [ 18, %bb.ah ], [ 5, %.thread195.i.i ], [ 17, %bb.a ], [ 0, %bb.ai ], [ 17, %bb.al ], [ 0, %.thread213.i.i ], [ 9, %bb.d ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ], [ 9, %bb.m ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i.i ], [ 9, %bb.e ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i ], [ 9, %bb.k ]
  ret i32 %.5.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE(ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !2632 ; 11 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !334 ; 16 uses
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !815 ; 5 uses
  %i.a = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !2569 ; 6 uses
  %i.b = load i32, ptr %.sroa.0.sroa.4.0.copyload, align 4, !tbaa !334
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !333   ; 2 uses
  switch i8 %i.e, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit [
    i8 57, label %bb.b
    i8 56, label %bb.b
    i8 34, label %bb.am
    i8 55, label %bb.b
    i8 116, label %bb.ai
    i8 102, label %bb.ai
    i8 45, label %bb.b
    i8 48, label %bb.b
    i8 49, label %bb.b
    i8 50, label %bb.b
    i8 51, label %bb.b
    i8 52, label %bb.b
    i8 53, label %bb.b
    i8 54, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2568 ; 7 uses
  %i.h = icmp eq ptr %i.g, %.sroa.0.sroa.4.0.copyload
  br i1 %i.h, label %bb.c, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2566
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp sgt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i32, ptr %i.g, align 4, !tbaa !334
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %.pre.i.i = load i8, ptr %i.o, align 1, !tbaa !333
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i: ; preds = %bb.c, %bb.b
  %i.p = phi i8 [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.q = phi i64 [ %i.n, %bb.c ], [ %i.c, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = icmp eq i8 %i.p, 45                      ; 7 uses
  %.neg79.i.i.i.i = sext i1 %i.s to i64
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 7 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !333
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %i.x = icmp ult i8 %i.w, 10                     ; 3 uses
  %narrow.i.i = select i1 %i.x, i8 %i.w, i8 0     ; 2 uses
  %spec.select.i.i = zext i8 %narrow.i.i to i64   ; 2 uses
  %i.y = zext i1 %i.x to i64                      ; 2 uses
  %i.z = icmp eq i8 %narrow.i.i, 0                ; 2 uses
  %.067.ptr.i.i225.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load i8, ptr %.067.ptr.i.i225.i.i, align 1, !tbaa !333 ; 2 uses
  %i.ab = add i8 %i.aa, -48                       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i, %.lr.ph.i.i
  %i.ad = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i ]
  %.067.idx.i.i227.i.i = phi i64 [ %.067.add.i.i.i.i, %.lr.ph.i.i ], [ %i.y, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i ] ; 2 uses
  %.1144226.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %spec.select.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i ]
  %i.ae = mul i64 %.1144226.i.i, 10
  %i.af = zext nneg i8 %i.ad to i64
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  %.067.add.i.i.i.i = add nuw nsw i64 %.067.idx.i.i227.i.i, 1 ; 4 uses
  %.067.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.067.add.i.i.i.i
  %i.ah = load i8, ptr %.067.ptr.i.i.i.i, align 1, !tbaa !333 ; 2 uses
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %.lr.ph.i.i, label %bb.d, !llvm.loop !250

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i37.i.i
  br i1 %i.x, label %.thread265.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not.i.i38.i.i = icmp ne i64 %.067.idx.i.i227.i.i, 0
  %or.cond.i.i.not.i.i = and i1 %i.z, %.not.i.i38.i.i
  br i1 %or.cond.i.i.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %.thread265.i.i

.thread265.i.i:                                   ; preds = %bb.d, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i
  %.067.idx.i.i.lcssa224261275.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.d ], [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.1144.lcssa262274.i.i = phi i64 [ %i.ag, %bb.d ], [ %spec.select.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.lcssa263273.i.i = phi i8 [ %i.ah, %bb.d ], [ %i.aa, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ] ; 2 uses
  %.067.add.i.i.pn.i.i = phi i64 [ %.067.add.i.i.i.i, %bb.d ], [ 1, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87.i.i.i.i ]
  %.067.ptr.i.i.le264272.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.067.add.i.i.pn.i.i ; 3 uses
  %i.ak = icmp eq i8 %.lcssa263273.i.i, 46
  br i1 %i.ak, label %bb.e, label %bb.j, !prof !403

bb.e:                                             ; preds = %.thread265.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le264272.i.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !333
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %bb.f, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = mul i64 %.1144.lcssa262274.i.i, 10
  %i.aq = zext nneg i8 %i.an to i64
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.067.ptr.i.i.le264272.i.i, i64 2 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !333 ; 2 uses
  %i.au = add i8 %i.at, -48                       ; 2 uses
  %i.av = icmp ult i8 %i.au, 10
  br i1 %i.av, label %.lr.ph233.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i

.lr.ph233.i.i:                                    ; preds = %bb.f, %.lr.ph233.i.i
  %i.aw = phi i8 [ %i.bc, %.lr.ph233.i.i ], [ %i.au, %bb.f ]
  %.168.i.i232.i.i = phi ptr [ %i.ba, %.lr.ph233.i.i ], [ %i.as, %bb.f ]
  %.6231.i.i = phi i64 [ %i.az, %.lr.ph233.i.i ], [ %i.ar, %bb.f ]
  %i.ax = mul i64 %.6231.i.i, 10
  %i.ay = zext nneg i8 %i.aw to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.168.i.i232.i.i, i64 1 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !333 ; 2 uses
  %i.bc = add i8 %i.bb, -48                       ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 10
  br i1 %i.bd, label %.lr.ph233.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i, !llvm.loop !251

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i: ; preds = %.lr.ph233.i.i, %bb.f
  %i.be = phi i8 [ %i.at, %bb.f ], [ %i.bb, %.lr.ph233.i.i ] ; 2 uses
  %.6.lcssa.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.az, %.lr.ph233.i.i ] ; 2 uses
  %.168.i.i.lcssa.i.i = phi ptr [ %i.as, %bb.f ], [ %i.ba, %.lr.ph233.i.i ] ; 3 uses
  %i.bf = ptrtoint ptr %.168.i.i.lcssa.i.i to i64 ; 3 uses
  %i.bg = ptrtoint ptr %i.al to i64
  %.neg.i.i.i.i = sub i64 %i.bg, %i.bf            ; 2 uses
  %i.bh = ptrtoint ptr %i.u to i64
  %i.bi = sub i64 %i.bh, %i.bf
  %i.bj = icmp slt i64 %i.bi, -20                 ; 2 uses
  %i.bk = and i1 %i.z, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, !prof !335

bb.g:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i48.i.i = phi ptr [ %i.bl, %bb.g ], [ %i.bo, %bb.h ] ; 3 uses
  %i.bm = load i8, ptr %.0.i.i48.i.i, align 1, !tbaa !333
  %i.bn = icmp eq i8 %i.bm, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i48.i.i, i64 1
  br i1 %i.bn, label %bb.h, label %bb.i, !llvm.loop !252

bb.i:                                             ; preds = %bb.h
  %i.bp = ptrtoint ptr %.0.i.i48.i.i to i64
  %i.bq = sub i64 %i.bf, %i.bp
  %i.br = icmp sgt i64 %i.bq, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

bb.j:                                             ; preds = %.thread265.i.i
  %i.bs = icmp samesign ugt i64 %.067.idx.i.i.lcssa224261275.i.i, 19
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i
  %i.bt = phi i8 [ %.lcssa263273.i.i, %bb.j ], [ %i.be, %bb.i ], [ %i.be, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.3146.i.i = phi i64 [ %.1144.lcssa262274.i.i, %bb.j ], [ %.6.lcssa.i.i, %bb.i ], [ %.6.lcssa.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 5 uses
  %.370.i.i.i.i = phi ptr [ %.067.ptr.i.i.le264272.i.i, %bb.j ], [ %.168.i.i.lcssa.i.i, %bb.i ], [ %.168.i.i.lcssa.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ]
  %.163.i.i.i.i = phi i64 [ 0, %bb.j ], [ %.neg.i.i.i.i, %bb.i ], [ %.neg.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i1 [ %i.bs, %bb.j ], [ %i.br, %bb.i ], [ %i.bj, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit85.i.i.i.i ]
  switch i8 %i.bt, label %bb.m [
    i8 101, label %bb.k
    i8 69, label %bb.k
  ]

bb.k:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.370.i.i.i.i, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !333 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 45                    ; 2 uses
  %i.bx = icmp eq i8 %i.bv, 43
  %narrow221.i.i = or i1 %i.bw, %i.bx
  %i.by = zext i1 %narrow221.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !333
  %i.cb = add i8 %i.ca, -48                       ; 2 uses
  %i.cc = icmp ult i8 %i.cb, 10
  br i1 %i.cc, label %.lr.ph238.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit

.lr.ph238.i.i:                                    ; preds = %bb.k, %.lr.ph238.i.i
  %i.cd = phi i8 [ %i.cj, %.lr.ph238.i.i ], [ %i.cb, %bb.k ]
  %.4.i.i237.i.i = phi ptr [ %i.ch, %.lr.ph238.i.i ], [ %i.bz, %bb.k ]
  %.0148236.i.i = phi i64 [ %i.cg, %.lr.ph238.i.i ], [ 0, %bb.k ]
  %i.ce = mul i64 %.0148236.i.i, 10
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = add i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.4.i.i237.i.i, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !333 ; 2 uses
  %i.cj = add i8 %i.ci, -48                       ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 10
  br i1 %i.ck, label %.lr.ph238.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i, !llvm.loop !253

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i: ; preds = %.lr.ph238.i.i
  %i.cl = ptrtoint ptr %i.bz to i64
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = icmp sgt i64 %i.cn, 19
  br i1 %i.co, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i.i
  %i.cp = sub i64 0, %i.cg
  %i.cq = select i1 %i.bw, i64 %i.cp, i64 %i.cg
  %i.cr = add i64 %i.cq, %.163.i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i
  %i.cs = phi i8 [ %i.ci, %bb.l ], [ %i.bt, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ]
  %.3.i.i.i.i = phi i64 [ %i.cr, %bb.l ], [ %.163.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit86.i.i.i.i ] ; 8 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !418, !range !401, !noundef !402
  %.not76.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not76.i.i.i.i, label %bb.n, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE6EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = add i64 %.3.i.i.i.i, -309
  %i.cx = icmp ult i64 %i.cw, -651
  %.not78.i.i.i.i = select i1 %.2.i.i.i.i, i1 true, i1 %i.cx
  br i1 %.not78.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.i.i, label %bb.o, !prof !335

bb.o:                                             ; preds = %bb.n
  %i.cy = add nsw i64 %.3.i.i.i.i, 22
  %or.cond.i.i.i47.i.i = icmp ult i64 %i.cy, 45
  %i.cz = icmp ult i64 %.3146.i.i, 9007199254740992
  %or.cond3.i.i.i.i.i = and i1 %i.cz, %or.cond.i.i.i47.i.i
  br i1 %or.cond3.i.i.i.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.da = uitofp nneg i64 %.3146.i.i to double    ; 2 uses
  %i.db = icmp slt i64 %.3.i.i.i.i, 0
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = sub nsw i64 0, %.3.i.i.i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !886
  %i.df = fdiv double %i.da, %i.de
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.3.i.i.i.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !886
  %i.di = fmul double %i.dh, %i.da
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %storemerge.i.i.i.i.i = phi double [ %i.di, %bb.r ], [ %i.df, %bb.q ] ; 2 uses
  %i.dj = fneg double %storemerge.i.i.i.i.i
  %spec.select218.i.i = select i1 %i.s, double %i.dj, double %storemerge.i.i.i.i.i
  br label %bb.af

bb.t:                                             ; preds = %bb.o
  %i.dk = icmp eq i64 %.3146.i.i, 0
  br i1 %i.dk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dl = select i1 %i.s, double -0.000000e+00, double 0.000000e+00
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.dm = mul nsw i64 %.3.i.i.i.i, 217706
  %i.dn = ashr i64 %i.dm, 16
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.3146.i.i, i1 true) ; 2 uses
  %i.dp = shl i64 %.3146.i.i, %i.do               ; 2 uses
  %i.dq = trunc nsw i64 %.3.i.i.i.i to i32
  %i.dr = shl nsw i32 %i.dq, 1
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 5472
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !434
  %i.dw = zext i64 %i.dp to i128
  %i.dx = zext i64 %i.dv to i128
  %i.dy = mul nuw i128 %i.dx, %i.dw               ; 2 uses
  %i.dz = trunc i128 %i.dy to i64                 ; 2 uses
  %i.ea = lshr i128 %i.dy, 64
  %i.eb = trunc nuw i128 %i.ea to i64             ; 3 uses
  %i.ec = and i64 %i.eb, 511
  %i.ed = icmp eq i64 %i.ec, 511
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr i8, ptr %i.dt, i64 5480
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !434
  %i.eg = tail call i64 @llvm.umulh.i64(i64 %i.dp, i64 %i.ef) ; 2 uses
  %i.eh = add i64 %i.eg, %i.dz                    ; 2 uses
  %i.ei = icmp ugt i64 %i.eg, %i.eh
  %i.ej = zext i1 %i.ei to i64
  %spec.select.i.i.i.i.i = add nuw i64 %i.ej, %i.eb
end_hunk_3
