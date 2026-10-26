Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.14?download=true
inline.NumInlined: 640
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 15 uses
  %i.b = load i8, ptr %1, align 8, !range !9, !noundef !6
  switch i8 %i.b, label %default.unreachable29 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.e
    i8 6, label %bb.e
  ]

default.unreachable29:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !noundef !6
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !47, !noundef !6
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !47
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = load i8, ptr %i.i, align 2, !noundef !6
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !48, !noundef !6
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !48
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %.val14 = load i64, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %.val14, 0
  br i1 %.not, label %.thread46, label %bb.i

bb.e:                                             ; preds = %._crit_edge, %bb.f, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 2, !noundef !6
  tail call void @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter17update_block_typeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i8 noundef %i.q, i8 noundef %i.s)
  br label %bb.e

.lr.ph:                                           ; preds = %.thread46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit
  %.sroa.01.020 = phi i64 [ 0, %.lr.ph ], [ %i.as, %_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit ] ; 4 uses
  %.sroa.07.019 = phi ptr [ %i.cb, %.lr.ph ], [ %i.v, %_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.019, i64 1 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.01.020, 7
  %i.x = and i64 %i.w, 7                          ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.01.020, 6
  %i.z = and i64 %i.y, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !6
  %.val15 = load ptr, ptr %i.t, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.ae = load ptr, ptr %.val15, align 8, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %.val15, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %.val15, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !6
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6
  %i.al = load i8, ptr %i.ak, align 1, !noundef !6
  br label %_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit

_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.al, %bb.h ], [ 0, %bb.g ]
  %.val17 = load i8, ptr %i.u, align 8, !noundef !6
  %i.am = tail call { i64, i8 } @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc12ir_interpret43compute_huffman_table_index_for_context_map(i8 noundef %i.ab, i8 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag, i8 noundef %.sroa.0.0.i, i8 noundef %.val17) ; 2 uses
  %i.an = extractvalue { i64, i8 } %i.am, 0
  %i.ao = extractvalue { i64, i8 } %i.am, 1
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  %i.ap = load i8, ptr %.sroa.07.019, align 1, !noundef !6 ; 2 uses
  tail call void @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter11update_costCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %.sroa.09.0.copyload, i64 noundef %i.x, i8 noundef %i.ao, i64 noundef %i.an, i8 noundef %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.020
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %.sroa.01.020, 1
  %i.as = and i64 %i.ar, 7
  %i.at = icmp eq ptr %i.v, %i.ce
  br i1 %i.at, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter15prediction_modeCskeugdADtBsi_12pingora_core.exit, %.thread46
  %i.au = load i64, ptr %i.o, align 8, !alias.scope !49, !noundef !6
  %i.av = add i64 %i.au, %i.cd
  store i64 %i.av, ptr %i.o, align 8, !alias.scope !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.d
  %i.aw = add i64 %.val14, -1
  %i.ax = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.ax, ptr %i.ay, align 1
  %.val14.1.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.az = icmp ugt i64 %.val14.1.pre, 1
  br i1 %i.az, label %bb.j, label %.thread46

bb.j:                                             ; preds = %bb.i
  %i.ba = add i64 %.val14.1.pre, -2
  %i.bb = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.bb, ptr %i.bc, align 2
  %.val14.2.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.bd = icmp ugt i64 %.val14.2.pre, 2
  br i1 %i.bd, label %bb.k, label %.thread46

bb.k:                                             ; preds = %bb.j
  %i.be = add i64 %.val14.2.pre, -3
  %i.bf = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.bf, ptr %i.bg, align 1
  %.val14.3.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.bh = icmp ugt i64 %.val14.3.pre, 3
  br i1 %i.bh, label %bb.l, label %.thread46

bb.l:                                             ; preds = %bb.k
  %i.bi = add i64 %.val14.3.pre, -4
  %i.bj = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.bj, ptr %i.bk, align 4
  %.val14.4.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.bl = icmp ugt i64 %.val14.4.pre, 4
  br i1 %i.bl, label %bb.m, label %.thread46

bb.m:                                             ; preds = %bb.l
  %i.bm = add i64 %.val14.4.pre, -5
  %i.bn = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.bn, ptr %i.bo, align 1
  %.val14.5.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.bp = icmp ugt i64 %.val14.5.pre, 5
  br i1 %i.bp, label %bb.n, label %.thread46

bb.n:                                             ; preds = %bb.m
  %i.bq = add i64 %.val14.5.pre, -6
  %i.br = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.br, ptr %i.bs, align 2
  %.val14.6.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.bt = icmp ugt i64 %.val14.6.pre, 6
  br i1 %i.bt, label %bb.o, label %.thread46

bb.o:                                             ; preds = %bb.n
  %i.bu = add i64 %.val14.6.pre, -7
  %i.bv = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bv, ptr %i.bw, align 1
  %.val14.7.pre = load i64, ptr %i.o, align 8     ; 2 uses
  %i.bx = icmp ugt i64 %.val14.7.pre, 7
  br i1 %i.bx, label %bb.p, label %.thread46

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %.val14.7.pre, -8
  %i.bz = tail call noundef i8 @_RNvXs3_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, i64 noundef %i.by)
  store i8 %i.bz, ptr %i.a, align 8
  br label %.thread46

.thread46:                                        ; preds = %bb.d, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.p, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !6 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  %i.cf = icmp samesign eq i64 %i.cd, 0
  br i1 %i.cf, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment26BrotliCompressFragmentFastNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef %7, ptr noalias nofree noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef range(i64 0, 4611686018427387904) %11, ptr noalias nofree noundef align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef range(i64 0, -9223372036854775808) %14, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef range(i64 0, -9223372036854775808) %17) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %15, align 8, !noundef !6  ; 2 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %switch.tableidx = add nsw i64 %i.c, -48        ; 3 uses
  %i.d = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc nsw i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.f
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.e = load i64, ptr %15, align 8, !noundef !6
  %i.f = add i64 %i.e, 7
  %i.g = and i64 %i.f, 4294967288
  store i64 %i.g, ptr %15, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.f
  ret void

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment26BrotliCompressFragmentFastNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  tail call fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BrotliCompressFragmentFastImplNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 4 %5, i64 noundef %6, i64 noundef %switch.ext, ptr noalias nofree noundef nonnull %8, i64 noundef %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef %11, ptr noalias nofree noundef align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef %14, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %switch.lookup
  %i.h = load i64, ptr %15, align 8, !noundef !6
  %i.i = sub i64 %i.h, %i.a
  %i.j = shl i64 %3, 3
  %i.k = add i64 %i.j, 31
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = icmp eq i32 %4, 0
  br i1 %i.m, label %bb.c, label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BrotliCompressFragmentFastImplNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 0) %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 9, 16) %7, ptr noalias nofree noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef range(i64 0, 4611686018427387904) %11, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef range(i64 0, -9223372036854775808) %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef range(i64 0, -9223372036854775808) %17) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 5 uses
  %i.b = alloca [512 x i8], align 2               ; 8 uses
  %i.c = alloca [256 x i8], align 1               ; 9 uses
  %i.d = alloca [512 x i8], align 4               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 98304) ; 3 uses
  %i.e = load i64, ptr %15, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.f = sub nuw nsw i64 64, %7                   ; 11 uses
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass26BrotliStoreMetaBlockHeader(i64 noundef %..i, i32 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 13, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.g = call fastcc noundef i64 @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %..i, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 2 %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.h = load i64, ptr %12, align 8, !noundef !6  ; 4 uses
  %i.i = icmp ugt i64 %i.h, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dh, %bb.a
  %i.j = lshr i64 %i.h, 3                         ; 3 uses
  %i.k = icmp samesign ult i64 %i.j, %14
  br i1 %i.k, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.dh
  %.sroa.026.0778 = phi i64 [ %i.kj, %bb.dh ], [ 0, %bb.a ] ; 2 uses
  %i.l = lshr exact i64 %.sroa.026.0778, 3        ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, %14
  br i1 %i.m, label %bb.dh, label %bb.di

bb.b:                                             ; preds = %._crit_edge
  %i.n = and i64 %i.h, 7
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 %i.j
  %i.p = load i8, ptr %i.o, align 1, !noundef !6
  %i.q = zext i8 %i.p to i64
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef %i.n, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.r = icmp samesign ugt i64 %9, 64
  %i.s = icmp samesign ugt i64 %11, 64
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.ag, %bb.b
  %.sroa.0.01409.ph = phi i64 [ %.sroa.0.1.jt2, %bb.ag ], [ %3, %bb.b ]
  %.sroa.0103.01401.ph = phi i64 [ %.sroa.0103.1.jt2, %bb.ag ], [ 0, %bb.b ]
  %.sroa.0120.01399.ph = phi i64 [ %.sroa.013.1.jt2, %bb.ag ], [ 0, %bb.b ] ; 9 uses
  %.sroa.0140.01395.ph = phi i64 [ %..i222, %bb.ag ], [ %..i, %bb.b ] ; 2 uses
  %.sroa.0143.01393.ph.in = phi i64 [ %i.ch, %bb.ag ], [ %i.e, %bb.b ] ; 3 uses
  %.sroa.0146.01391.ph = phi i64 [ %i.cl, %bb.ag ], [ %i.g, %bb.b ] ; 2 uses
  %.sroa.0143.01393.ph = add i64 %.sroa.0143.01393.ph.in, 3
  %i.w = icmp ugt i64 %.sroa.0146.01391.ph, 980
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.d:                                             ; preds = %.outer, %bb.r
  %.sroa.0.01409 = phi i64 [ %i.aa, %bb.r ], [ %.sroa.0.01409.ph, %.outer ] ; 3 uses
  %.sroa.013.01406 = phi i64 [ %i.z, %bb.r ], [ %.sroa.0120.01399.ph, %.outer ] ; 6 uses
  %.sroa.0103.01401 = phi i64 [ %.sroa.0103.1.jt0, %bb.r ], [ %.sroa.0103.01401.ph, %.outer ] ; 3 uses
  %.sroa.0126.01397 = phi i64 [ %..i221, %bb.r ], [ %.sroa.0140.01395.ph, %.outer ] ; 5 uses
  %.sroa.0140.01395 = phi i64 [ %i.ab, %bb.r ], [ %.sroa.0140.01395.ph, %.outer ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.d, ptr noundef nonnull align 4 dereferenceable(512) @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment13kCmdHistoSeed, i64 512, i1 false), !alias.scope !68
  %i.x = add i64 %.sroa.013.01406, %.sroa.0126.01397 ; 8 uses
  %i.y = icmp samesign ugt i64 %.sroa.0126.01397, 15
  br i1 %i.y, label %bb.ai, label %.thread251.loopexit

.thread251.loopexit:                              ; preds = %bb.bp, %bb.df, %.backedge, %bb.cp, %bb.aj, %bb.d
  %.sroa.0103.1.jt0 = phi i64 [ %.sroa.0103.01401, %bb.d ], [ %.sroa.0103.3796, %.backedge ], [ %.sroa.0103.01401, %bb.aj ], [ %i.ic, %bb.cp ], [ %.sroa.036.1787, %bb.df ], [ %i.eu, %bb.bp ] ; 12 uses
  %i.z = add i64 %.sroa.013.01406, %.sroa.0126.01397 ; 9 uses
  %i.aa = sub i64 %.sroa.0.01409, %.sroa.0126.01397 ; 6 uses
  %..i221 = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 65536) ; 4 uses
  %.not216 = icmp eq i64 %i.aa, 0
  br i1 %.not216, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread251.loopexit
  %i.ab = add i64 %..i221, %.sroa.0140.01395      ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 1048577
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, %bb.e, %.thread251.loopexit
  %.lcssa2784 = phi i64 [ %i.aa, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit ], [ %i.aa, %bb.e ], [ 0, %.thread251.loopexit ] ; 4 uses
  %i.ad = icmp ult i64 %.sroa.0103.1.jt0, %i.x
  br i1 %i.ad, label %bb.s, label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %i.z, %2
  br i1 %i.ae, label %bb.q, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.af = sub nuw nsw i64 %2, %i.z                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !71
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.p
  %i.ah = add nuw nsw i64 %..i221, 42
  %i.ai = udiv i64 %i.ah, 43                      ; 3 uses
  %i.aj = icmp ult i64 %i.aa, 10966
  br i1 %i.aj, label %._crit_edge.thread.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.p
  %.sroa.0.017.i = phi i64 [ %i.bm, %bb.p ], [ 0, %bb.h ] ; 4 uses
  %i.ak = icmp samesign ult i64 %.sroa.0.017.i, %i.af
  br i1 %i.ak, label %bb.p, label %bb.o

bb.i:                                             ; preds = %._crit_edge.i
  %i.al = uitofp nneg i64 %i.ai to float          ; 2 uses
  %i.am = call nnan float @llvm.log2.f32(float %i.al)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i, %bb.i
  %.pre-phi.i = phi float [ %.pre.i, %._crit_edge.thread.i ], [ %i.al, %bb.i ]
  %.sroa.010.0.i = phi float [ %i.ar, %._crit_edge.thread.i ], [ %i.am, %bb.i ]
  %i.an = fadd float %.sroa.010.0.i, 5.000000e-01
  %i.ao = fmul float %.pre-phi.i, %i.an
  %i.ap = fadd float %i.ao, 2.000000e+02
  br label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util10kLog2Table, i64 %i.ai
  %i.ar = load float, ptr %i.aq, align 4, !noalias !71, !noundef !6
  %.pre.i = uitofp nneg i64 %i.ai to float
  br label %bb.j

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.0.119.i = phi i64 [ 0, %bb.j ], [ %i.bd, %bb.m ] ; 3 uses
  %.sroa.08.018.i = phi float [ %i.ap, %bb.j ], [ %i.bc, %bb.m ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.119.i
  %i.at = load i64, ptr %i.as, align 8, !noalias !71, !noundef !6 ; 3 uses
  %i.au = uitofp i64 %i.at to float               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.119.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !70, !noundef !6
  %i.ax = uitofp i8 %i.aw to float
  %i.ay = icmp ult i64 %i.at, 256
  br i1 %i.ay, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = call nnan float @llvm.log2.f32(float %i.au)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.011.0.i = phi float [ %i.bf, %bb.n ], [ %i.az, %bb.l ]
  %i.ba = fadd float %.sroa.011.0.i, %i.ax
  %i.bb = fmul float %i.ba, %i.au
  %i.bc = fsub float %.sroa.08.018.i, %i.bb       ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0.119.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, 256
  br i1 %exitcond.not.i, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, label %bb.k

bb.n:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util10kLog2Table, i64 %i.at
  %i.bf = load float, ptr %i.be, align 4, !noalias !71, !noundef !6
  br label %bb.m

bb.o:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.017.i, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #16, !noalias !71
  unreachable

bb.p:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.017.i
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !69, !noundef !6
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !71, !noundef !6
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !71
  %i.bm = add nuw nsw i64 %.sroa.0.017.i, 43      ; 2 uses
  %i.bn = icmp samesign ult i64 %i.bm, %..i221
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.i

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit: ; preds = %bb.m
  %i.bo = fcmp ult float %i.bc, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  br i1 %i.bo, label %bb.f, label %bb.r

bb.q:                                             ; preds = %bb.g
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.z, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16
  unreachable

bb.r:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit
  %i.bp = trunc nuw nsw i64 %i.ab to i32
  %i.bq = add nsw i32 %i.bp, -1
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment10UpdateBits(i64 noundef 20, i32 noundef %i.bq, i64 noundef %.sroa.0143.01393.ph, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.d

bb.s:                                             ; preds = %bb.f
  %i.br = sub nuw i64 %i.x, %.sroa.0103.1.jt0     ; 6 uses
  %i.bs = icmp ult i64 %i.br, 6210
  br i1 %i.bs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = sub i64 %.sroa.0103.1.jt0, %.sroa.0120.01399.ph
  %i.bu = mul i64 %i.bt, 50
  %i.bv = icmp ule i64 %i.bu, %i.br
  %i.bw = icmp ugt i64 %.sroa.0146.01391.ph, 980
  %or.cond = and i1 %i.bw, %i.bv
  br i1 %or.cond, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment13EmitInsertLen(i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 4 %i.d, i64 noundef 128, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.bx = icmp ugt i64 %.sroa.0103.1.jt0, %2
  br i1 %i.bx, label %bb.aa, label %bb.z, !prof !10

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment17EmitLongInsertLen(i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 4 %i.d, i64 noundef 128, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.by = icmp ugt i64 %.sroa.0103.1.jt0, %2
  br i1 %i.by, label %bb.y, label %bb.x, !prof !10

bb.w:                                             ; preds = %bb.t
  %i.bz = sub nuw nsw i64 %2, %.sroa.0120.01399.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0120.01399.ph
  %i.cb = sub i64 %i.x, %.sroa.0120.01399.ph
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.bz, i64 noundef %i.cb, i64 noundef %.sroa.0143.01393.ph.in, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.cc = sub nuw nsw i64 %2, %.sroa.0103.1.jt0
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0103.1.jt0
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment12EmitLiterals(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cc, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 256, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.b, i64 noundef 256, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0103.1.jt0, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16
  unreachable

bb.z:                                             ; preds = %bb.u
  %i.ce = sub nuw nsw i64 %2, %.sroa.0103.1.jt0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0103.1.jt0
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment12EmitLiterals(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ce, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 256, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.b, i64 noundef 256, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0103.1.jt0, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.z, %bb.bj, %bb.f
  %.sroa.0103.1.jt2 = phi i64 [ %i.x, %bb.w ], [ %i.x, %bb.f ], [ %i.x, %bb.z ], [ %.sroa.083.0780, %bb.bj ], [ %i.x, %bb.x ]
  %.sroa.013.1.jt2 = phi i64 [ %i.z, %bb.w ], [ %i.z, %bb.f ], [ %i.z, %bb.z ], [ %.sroa.083.0780, %bb.bj ], [ %i.z, %bb.x ] ; 5 uses
  %.sroa.0.1.jt2 = phi i64 [ %.lcssa2784, %bb.w ], [ %.lcssa2784, %bb.f ], [ %.lcssa2784, %bb.z ], [ %i.fc, %bb.bj ], [ %.lcssa2784, %bb.x ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.1.jt2, 0
  br i1 %.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cg = icmp eq i32 %4, 0
  br i1 %i.cg, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %..i222 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.jt2, i64 98304) ; 3 uses
  %i.ch = load i64, ptr %15, align 8, !noundef !6
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass26BrotliStoreMetaBlockHeader(i64 noundef %..i222, i32 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 13, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.ci = icmp ugt i64 %.sroa.013.1.jt2, %2
  br i1 %i.ci, label %bb.ah, label %bb.ag, !prof !10

bb.ae:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.af:                                            ; preds = %bb.ac
  store i8 0, ptr %13, align 1
  store i64 0, ptr %12, align 8
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.d, i64 noundef 128, ptr noalias nofree noundef nonnull %8, i64 noundef %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef %14)
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  %i.cj = sub nuw nsw i64 %2, %.sroa.013.1.jt2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.1.jt2
  %i.cl = call fastcc noundef i64 @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cj, i64 noundef %..i222, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 2 %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.d, i64 noundef 128, ptr noalias nofree noundef nonnull %8, i64 noundef %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %.outer

bb.ah:                                            ; preds = %bb.ad
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.1.jt2, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
  unreachable

bb.ai:                                            ; preds = %bb.d
  %i.cm = add nsw i64 %.sroa.0126.01397, -5
  %i.cn = add i64 %.sroa.0.01409, -16
  %..i223 = call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cm)
  %i.co = add i64 %..i223, %.sroa.013.01406       ; 5 uses
  %i.cp = add i64 %.sroa.013.01406, 1             ; 5 uses
  %i.cq = icmp ugt i64 %i.cp, %2
  br i1 %i.cq, label %bb.ak, label %bb.aj, !prof !10

bb.aj:                                            ; preds = %bb.ai
  %i.cr = sub nuw nsw i64 %2, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.ct = call noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment4Hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, i64 noundef %i.f)
  %i.cu = add i64 %.sroa.013.01406, 2             ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %i.co
  br i1 %i.cv, label %.thread251.loopexit, label %.lr.ph782.lr.ph

.lr.ph782.lr.ph:                                  ; preds = %bb.aj
  %i.cw = add i64 %i.x, -5                        ; 2 uses
  br label %.lr.ph782

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #16
  unreachable

.lr.ph782:                                        ; preds = %.lr.ph782.lr.ph, %bb.df
  %i.cx = phi i64 [ %i.cu, %.lr.ph782.lr.ph ], [ %i.ke, %bb.df ]
  %.sroa.023.0799 = phi i32 [ -1, %.lr.ph782.lr.ph ], [ %.sroa.023.2788, %bb.df ] ; 3 uses
  %.sroa.036.0798 = phi i64 [ %i.cp, %.lr.ph782.lr.ph ], [ %i.ka, %bb.df ]
  %.sroa.0102.0797 = phi i32 [ %i.ct, %.lr.ph782.lr.ph ], [ %i.kd, %bb.df ]
  %.sroa.0103.3796 = phi i64 [ %.sroa.0103.01401, %.lr.ph782.lr.ph ], [ %.sroa.036.1787, %bb.df ] ; 7 uses
  %i.cy = sext i32 %.sroa.023.0799 to i64
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph782, %.backedge
  %i.cz = phi i64 [ %i.cx, %.lr.ph782 ], [ %i.eb, %.backedge ] ; 6 uses
  %i.da = phi i32 [ 33, %.lr.ph782 ], [ %i.dz, %.backedge ] ; 2 uses
  %.sroa.083.0780 = phi i64 [ %.sroa.036.0798, %.lr.ph782 ], [ %i.cz, %.backedge ] ; 17 uses
  %.sroa.0102.1779 = phi i32 [ %.sroa.0102.0797, %.lr.ph782 ], [ %i.de, %.backedge ]
  %i.db = icmp ugt i64 %i.cz, %2
  br i1 %i.db, label %bb.an, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.dc = sub nuw nsw i64 %2, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.de = call noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment4Hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.dc, i64 noundef %i.f)
  %i.df = sub i64 %.sroa.083.0780, %i.cy          ; 6 uses
  %i.dg = icmp ugt i64 %.sroa.083.0780, %2
  br i1 %i.dg, label %bb.ap, label %bb.ao, !prof !10

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dh = sub nuw nsw i64 %2, %.sroa.083.0780     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.0780 ; 2 uses
  %i.dj = icmp ugt i64 %i.df, %2
  br i1 %i.dj, label %bb.ar, label %bb.aq, !prof !10

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.083.0780, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dk = sub nuw nsw i64 %2, %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %i.df
  %i.dm = call noundef zeroext i1 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment7IsMatch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dl, i64 noundef %i.dk)
  %i.dn = icmp ult i64 %i.df, %.sroa.083.0780
  %or.cond220 = select i1 %i.dm, i1 %i.dn, i1 false
  %i.do = zext i32 %.sroa.0102.1779 to i64        ; 5 uses
  %i.dp = icmp samesign ugt i64 %6, %i.do         ; 2 uses
  br i1 %or.cond220, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
  unreachable

bb.as:                                            ; preds = %bb.aq
  br i1 %i.dp, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.aq
  br i1 %i.dp, label %bb.az, label %bb.ba

bb.au:                                            ; preds = %bb.as
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.do ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !noundef !6
  %i.ds = sext i32 %i.dr to i64                   ; 5 uses
  %i.dt = trunc i64 %.sroa.083.0780 to i32
  store i32 %i.dt, ptr %i.dq, align 4
  %i.du = icmp ult i64 %2, %i.ds
  br i1 %i.du, label %bb.ax, label %bb.aw, !prof !10

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.dv = sub nuw nsw i64 %2, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.dx = call noundef zeroext i1 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment7IsMatch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dv)
  br i1 %i.dx, label %bb.ay, label %.backedge

.backedge:                                        ; preds = %bb.aw, %bb.ay
  %i.dy = lshr i32 %i.da, 5
  %i.dz = add i32 %i.da, 1
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = add nuw i64 %i.cz, %i.ea                ; 2 uses
  %i.ec = icmp ugt i64 %i.eb, %i.co
  br i1 %i.ec, label %.thread251.loopexit, label %bb.al

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.sroa.092.1 = phi i64 [ %i.ds, %bb.aw ], [ %i.df, %bb.az ] ; 2 uses
  %i.ed = sub nsw i64 %.sroa.083.0780, %.sroa.092.1 ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 262128
  br i1 %i.ee, label %.backedge, label %bb.bb

bb.az:                                            ; preds = %bb.at
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.do
  %i.eg = trunc i64 %.sroa.083.0780 to i32
  store i32 %i.eg, ptr %i.ef, align 4
  br label %bb.ay

bb.ba:                                            ; preds = %bb.at
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.eh = add nuw i64 %.sroa.092.1, 5             ; 4 uses
  %i.ei = icmp ugt i64 %i.eh, %2
  br i1 %i.ei, label %bb.bd, label %bb.bc, !prof !10

bb.bc:                                            ; preds = %bb.bb
  %i.ej = add nuw i64 %.sroa.083.0780, 5          ; 4 uses
  %i.ek = icmp ugt i64 %i.ej, %2
  br i1 %i.ek, label %bb.bf, label %bb.be, !prof !10

bb.bd:                                            ; preds = %bb.bb
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #16
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  %i.em = sub nuw nsw i64 %2, %i.eh
  %i.en = sub nuw nsw i64 %2, %i.ej
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.ej
  %i.ep = sub i64 %i.cw, %.sroa.083.0780
  %i.eq = call noundef i64 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.en, i64 noundef %i.ep)
  %i.er = add i64 %i.eq, 5                        ; 2 uses
  %i.es = trunc nuw nsw i64 %i.ed to i32          ; 2 uses
  %i.et = sub i64 %.sroa.083.0780, %.sroa.0103.3796 ; 5 uses
  %i.eu = add i64 %i.er, %.sroa.083.0780          ; 9 uses
  %i.ev = icmp ult i64 %i.et, 6210
  br i1 %i.ev, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ej, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16
  unreachable
end_hunk_0
