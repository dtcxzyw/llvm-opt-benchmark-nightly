Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.14?download=true
inline.NumInlined: 640
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core:bb.a
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
  %switch.maskindex = trunc i64 %switch.tableidx to i8
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
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not2286 = icmp eq i64 %14, 0
  br i1 %.not2286, label %bb.di, label %bb.dh

._crit_edge:                                      ; preds = %bb.dh, %bb.a
  %i.j = lshr i64 %i.h, 3                         ; 3 uses
  %i.k = icmp samesign ult i64 %i.j, %14
  br i1 %i.k, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.dh
  %i.l = lshr exact i64 %i.kj, 3                  ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.d, ptr noundef nonnull align 4 dereferenceable(512) @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment13kCmdHistoSeed, i64 512, i1 false), !alias.scope !71, !noalias !72
  %i.x = add i64 %.sroa.013.01406, %.sroa.0126.01397 ; 8 uses
  %i.y = icmp samesign ugt i64 %.sroa.0126.01397, 15
  br i1 %i.y, label %bb.ai, label %.thread251.loopexit

.thread251.loopexit:                              ; preds = %bb.bp, %bb.df, %.backedge, %bb.cp, %bb.aj, %bb.d
  %.sroa.0103.1.jt0 = phi i64 [ %.sroa.0103.01401, %bb.d ], [ %.sroa.0103.3796, %.backedge ], [ %.sroa.0103.01401, %bb.aj ], [ %i.ic, %bb.cp ], [ %.sroa.036.1787, %bb.df ], [ %i.eu, %bb.bp ] ; 12 uses
  %i.z = add i64 %.sroa.013.01406, %.sroa.0126.01397 ; 9 uses
  %i.aa = sub i64 %.sroa.0.01409, %.sroa.0126.01397 ; 8 uses
  %..i221 = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 65536) ; 4 uses
  %.not216 = icmp eq i64 %i.aa, 0
  br i1 %.not216, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread251.loopexit
  %i.ab = add i64 %..i221, %.sroa.0140.01395      ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 1048577
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, %bb.e, %.thread251.loopexit
  %i.ad = icmp ult i64 %.sroa.0103.1.jt0, %i.x
  br i1 %i.ad, label %bb.s, label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %i.z, %2
  br i1 %i.ae, label %bb.q, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.af = sub nuw nsw i64 %2, %i.z                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !75
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
  %i.ar = load float, ptr %i.aq, align 4, !noalias !75, !noundef !6
  %.pre.i = uitofp nneg i64 %i.ai to float
  br label %bb.j

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.0.119.i = phi i64 [ 0, %bb.j ], [ %i.bd, %bb.m ] ; 3 uses
  %.sroa.08.018.i = phi float [ %i.ap, %bb.j ], [ %i.bc, %bb.m ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.119.i
  %i.at = load i64, ptr %i.as, align 8, !noalias !75, !noundef !6 ; 3 uses
  %i.au = uitofp i64 %i.at to float               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.119.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !74, !noalias !73, !noundef !6
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
  %i.bf = load float, ptr %i.be, align 4, !noalias !75, !noundef !6
  br label %bb.m

bb.o:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.017.i, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #16, !noalias !75
  unreachable

bb.p:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.017.i
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !73, !noalias !74, !noundef !6
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !75, !noundef !6
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !75
  %i.bm = add nuw nsw i64 %.sroa.0.017.i, 43      ; 2 uses
  %i.bn = icmp samesign ult i64 %i.bm, %..i221
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.i

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment16ShouldMergeBlock.exit: ; preds = %bb.m
  %i.bo = fcmp ult float %i.bc, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
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
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BrotliCompressFragmentFastImplNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.ch:                                            ; preds = %bb.ce
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #16
  unreachable

.lr.ph791:                                        ; preds = %bb.cg, %bb.dc
  %.sroa.092.2789.in = phi i32 [ %i.jy, %bb.dc ], [ %i.hh, %bb.cg ]
  %.sroa.023.2788 = phi i32 [ %i.id, %bb.dc ], [ %.sroa.023.1, %bb.cg ]
  %.sroa.036.1787 = phi i64 [ %i.ic, %bb.dc ], [ %i.eu, %bb.cg ] ; 11 uses
  %.sroa.092.2789 = sext i32 %.sroa.092.2789.in to i64 ; 6 uses
  %i.hj = icmp ult i64 %2, %.sroa.092.2789
  br i1 %i.hj, label %bb.cj, label %bb.ci, !prof !10

._crit_edge792:                                   ; preds = %bb.cg, %bb.dc
  %.sroa.036.1.lcssa = phi i64 [ %i.ic, %bb.dc ], [ %i.eu, %bb.cg ]
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.036.1.lcssa, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #16
  unreachable

bb.ci:                                            ; preds = %.lr.ph791
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.036.1787
  %i.hl = sub nuw nsw i64 %2, %.sroa.036.1787
  %i.hm = sub nuw nsw i64 %2, %.sroa.092.2789
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.092.2789
  %i.ho = call noundef zeroext i1 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment7IsMatch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hk, i64 noundef %i.hl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef %i.hm)
  br i1 %i.ho, label %bb.ck, label %bb.de

bb.cj:                                            ; preds = %.lr.ph791
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.092.2789, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #16
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.hp = add nuw nsw i64 %.sroa.092.2789, 5      ; 4 uses
  %i.hq = icmp ugt i64 %i.hp, %2
  br i1 %i.hq, label %bb.cm, label %bb.cl, !prof !10

bb.cl:                                            ; preds = %bb.ck
  %i.hr = add nuw i64 %.sroa.036.1787, 5          ; 4 uses
  %i.hs = icmp ugt i64 %i.hr, %2
  br i1 %i.hs, label %bb.co, label %bb.cn, !prof !10

bb.cm:                                            ; preds = %bb.ck
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hp, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hp
  %i.hu = sub nuw nsw i64 %2, %i.hp
  %i.hv = sub nuw nsw i64 %2, %i.hr
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %i.hr
  %i.hx = sub i64 %i.cw, %.sroa.036.1787
  %i.hy = call noundef i64 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ht, i64 noundef %i.hu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef %i.hv, i64 noundef %i.hx)
  %i.hz = sub nsw i64 %.sroa.036.1787, %.sroa.092.2789 ; 3 uses
  %i.ia = icmp ugt i64 %i.hz, 262128
  br i1 %i.ia, label %bb.de, label %bb.cp

bb.co:                                            ; preds = %bb.cl
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hr, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #16
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.ib = add i64 %i.hy, 5                        ; 2 uses
  %i.ic = add i64 %i.ib, %.sroa.036.1787          ; 9 uses
  %i.id = trunc nuw nsw i64 %i.hz to i32
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment11EmitCopyLen(i64 noundef %i.ib, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 4 %i.d, i64 noundef 128, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment12EmitDistance(i64 noundef %i.hz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 4 %i.d, i64 noundef 128, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %.not218 = icmp ult i64 %i.ic, %i.co
  br i1 %.not218, label %bb.cq, label %.thread251.loopexit

bb.cq:                                            ; preds = %bb.cp
  %i.ie = icmp ugt i64 %i.ic, 2
  br i1 %i.ie, label %bb.cs, label %bb.cr, !prof !8

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #16
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.if = add i64 %i.ic, -3                       ; 5 uses
  %i.ig = icmp ugt i64 %i.if, %2
  br i1 %i.ig, label %bb.cv, label %bb.ct, !prof !10

bb.ct:                                            ; preds = %bb.cs
  %i.ih = sub nuw nsw i64 %2, %i.if
  %.not.i225 = icmp samesign ult i64 %i.ih, 8
  br i1 %.not.i225, label %bb.cu, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit229, !prof !10

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !80
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit229: ; preds = %bb.ct
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %i.if ; 5 uses
  %.sroa.0.0.copyload = load i16, ptr %i.ii, align 1, !alias.scope !81, !noalias !82
  %i.ij = zext i16 %.sroa.0.0.copyload to i64
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !81, !noalias !82
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 %i.ic
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !81, !noalias !82
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1, !alias.scope !81, !noalias !82
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 5
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1, !alias.scope !81, !noalias !82
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 6
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 1, !alias.scope !81, !noalias !82
  %i.ik = zext i16 %.sroa.10.0.copyload to i64
  %i.il = shl nuw i64 %i.ik, 48
  %i.im = zext i8 %.sroa.6.0.copyload to i64
  %i.in = shl nuw nsw i64 %i.im, 16
  %i.io = or disjoint i64 %i.in, %i.ij
  %i.ip = zext i8 %.sroa.7.0.copyload to i64
  %i.iq = shl nuw nsw i64 %i.ip, 24
  %i.ir = or disjoint i64 %i.io, %i.iq
  %i.is = zext i8 %.sroa.8.0.copyload to i64
  %i.it = shl nuw nsw i64 %i.is, 32
  %i.iu = or disjoint i64 %i.ir, %i.it
  %i.iv = zext i8 %.sroa.9.0.copyload to i64
  %i.iw = shl nuw nsw i64 %i.iv, 40
  %i.ix = or disjoint i64 %i.iu, %i.iw            ; 2 uses
  %i.iy = or i64 %i.il, %i.ix                     ; 3 uses
  %i.iz = mul i64 %i.iy, 8503243848024064
  %i.ja = lshr i64 %i.iz, %i.f                    ; 3 uses
  %i.jb = and i64 %i.iy, -16777216
  %i.jc = mul i64 %i.jb, 506832829
  %i.jd = lshr i64 %i.jc, %i.f                    ; 3 uses
  %i.je = icmp samesign ult i64 %i.ja, %6
  br i1 %i.je, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %bb.cs
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.if, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #16
  unreachable

bb.cw:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit229
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ja
  %i.jg = trunc i64 %i.if to i32
  store i32 %i.jg, ptr %i.jf, align 4
  %i.jh = shl nuw i64 %i.ix, 16
  %i.ji = and i64 %i.jh, -16777216
  %i.jj = mul i64 %i.ji, 506832829
  %i.jk = lshr i64 %i.jj, %i.f                    ; 3 uses
  %i.jl = icmp samesign ult i64 %i.jk, %6
  br i1 %i.jl, label %bb.cy, label %bb.cz

bb.cx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit229
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ja, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #16
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jk
  %i.jn = trunc i64 %i.ic to i32                  ; 3 uses
  %i.jo = add i32 %i.jn, -2
  store i32 %i.jo, ptr %i.jm, align 4
  %i.jp = shl i64 %i.iy, 8
  %i.jq = and i64 %i.jp, -16777216
  %i.jr = mul i64 %i.jq, 506832829
  %i.js = lshr i64 %i.jr, %i.f                    ; 3 uses
  %i.jt = icmp samesign ult i64 %i.js, %6
  br i1 %i.jt, label %bb.da, label %bb.db

bb.cz:                                            ; preds = %bb.cw
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jk, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #16
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.js
  %i.jv = add i32 %i.jn, -1
  store i32 %i.jv, ptr %i.ju, align 4
  %i.jw = icmp samesign ult i64 %i.jd, %6
  br i1 %i.jw, label %bb.dc, label %bb.dd

bb.db:                                            ; preds = %bb.cy
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.js, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #16
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jd ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !noundef !6
  store i32 %i.jn, ptr %i.jx, align 4
  %i.jz = icmp ugt i64 %i.ic, %2
  br i1 %i.jz, label %._crit_edge792, label %.lr.ph791, !prof !83

bb.dd:                                            ; preds = %bb.da
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jd, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #16
  unreachable

bb.de:                                            ; preds = %bb.cn, %bb.ci
  %i.ka = add nuw i64 %.sroa.036.1787, 1          ; 4 uses
  %.not219 = icmp ult i64 %.sroa.036.1787, %2
  br i1 %.not219, label %bb.df, label %bb.dg, !prof !8

bb.df:                                            ; preds = %bb.de
  %i.kb = sub nuw nsw i64 %2, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ka
  %i.kd = call noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment4Hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kc, i64 noundef %i.kb, i64 noundef %i.f)
  %i.ke = add nuw i64 %.sroa.036.1787, 2          ; 2 uses
  %i.kf = icmp ugt i64 %i.ke, %i.co
  br i1 %i.kf, label %.thread251.loopexit, label %.lr.ph782

bb.dg:                                            ; preds = %bb.de
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ka, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #16
  unreachable

bb.dh:                                            ; preds = %.lr.ph.preheader, %.lr.ph
  %18 = phi i64 [ %i.l, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.026.07782284 = phi i64 [ %i.kj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 %18
  %i.kh = load i8, ptr %i.kg, align 1, !noundef !6
  %i.ki = zext i8 %i.kh to i64
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 8, i64 noundef %i.ki, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.kj = add nuw i64 %.sroa.026.07782284, 8      ; 3 uses
  %i.kk = or disjoint i64 %i.kj, 7
  %i.kl = icmp ult i64 %i.kk, %i.h
  br i1 %i.kl, label %.lr.ph, label %._crit_edge

bb.di:                                            ; preds = %.lr.ph, %.lr.ph.preheader
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %14, i64 noundef %14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, ptr noalias nofree noundef nonnull align 2 %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noalias nofree noundef nonnull %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 4              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = icmp ult i64 %3, 32768
  br i1 %i.b, label %.preheader34, label %.preheader36.preheader

.preheader36.preheader:                           ; preds = %bb.a
  %.not18 = icmp eq i64 %2, 0
  br i1 %.not18, label %.preheader36._crit_edge, label %.lr.ph5

.preheader34:                                     ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %vector.ph8, label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph5
  %i.c = add nuw i64 %3, 28
  %i.d = udiv i64 %i.c, 29
  %i.e = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.e, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi6 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.f, align 4  ; 2 uses
  %wide.load7 = load <2 x i32>, ptr %i.g, align 4 ; 2 uses
  %i.h = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load, <2 x i32> splat (i32 11))
  %i.i = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load7, <2 x i32> splat (i32 11))
  %i.j = shl nuw nsw <2 x i32> %i.h, splat (i32 1)
  %i.k = shl nuw nsw <2 x i32> %i.i, splat (i32 1)
  %i.l = or disjoint <2 x i32> %i.j, splat (i32 1) ; 2 uses
  %i.m = or disjoint <2 x i32> %i.k, splat (i32 1) ; 2 uses
  %i.n = add <2 x i32> %i.l, %wide.load
  %i.o = add <2 x i32> %i.m, %wide.load7
  store <2 x i32> %i.n, ptr %i.f, align 4
  store <2 x i32> %i.o, ptr %i.g, align 4
  %i.p = zext nneg <2 x i32> %i.l to <2 x i64>
  %i.q = zext nneg <2 x i32> %i.m to <2 x i64>
  %i.r = add <2 x i64> %vec.phi, %i.p             ; 2 uses
  %i.s = add <2 x i64> %vec.phi6, %i.q            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, 256
  br i1 %i.t, label %.loopexit.loopexit1, label %vector.body, !llvm.loop !84

.preheader36:                                     ; preds = %.lr.ph5
  %i.u = icmp ult i64 %i.ac, %2
  br i1 %i.u, label %.lr.ph5, label %.preheader36._crit_edge

.loopexit.loopexit1:                              ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.s, %i.r
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit1, %middle.block16
  %bin.rdx.sink = phi <2 x i64> [ %bin.rdx, %.loopexit.loopexit1 ], [ %bin.rdx17, %middle.block16 ]
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx.sink) ; 3 uses
  call void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 256, i64 noundef %i.v, i64 noundef 8, ptr noalias nofree noundef nonnull %4, i64 noundef 256, ptr noalias nofree noundef nonnull align 2 %5, i64 noundef 256, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noalias nofree noundef nonnull %7, i64 noundef %8)
  br label %bb.e

.preheader36._crit_edge:                          ; preds = %.preheader36, %.preheader36.preheader
  %.sroa.09.039.lcssa = phi i64 [ 0, %.preheader36.preheader ], [ %i.ac, %.preheader36 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.039.lcssa, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #16
  unreachable

.lr.ph5:                                          ; preds = %.preheader36.preheader, %.preheader36
  %.sroa.09.0394 = phi i64 [ %i.ac, %.preheader36 ], [ 0, %.preheader36.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.0394
  %i.x = load i8, ptr %i.w, align 1, !noundef !6
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noundef !6
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = add nuw i64 %.sroa.09.0394, 29          ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %.preheader36, label %vector.ph

vector.ph8:                                       ; preds = %bb.k, %.preheader34
  %i.ae = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph8
  %index10 = phi i64 [ 0, %vector.ph8 ], [ %index.next15, %vector.body9 ] ; 2 uses
  %vec.phi11 = phi <2 x i64> [ %i.ae, %vector.ph8 ], [ %i.ap, %vector.body9 ]
  %vec.phi12 = phi <2 x i64> [ zeroinitializer, %vector.ph8 ], [ %i.aq, %vector.body9 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index10 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %wide.load13 = load <2 x i32>, ptr %i.af, align 4 ; 2 uses
  %wide.load14 = load <2 x i32>, ptr %i.ag, align 4 ; 2 uses
  %i.ah = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load13, <2 x i32> splat (i32 11))
  %i.ai = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load14, <2 x i32> splat (i32 11))
  %i.aj = shl nuw nsw <2 x i32> %i.ah, splat (i32 1) ; 2 uses
  %i.ak = shl nuw nsw <2 x i32> %i.ai, splat (i32 1) ; 2 uses
  %i.al = add <2 x i32> %i.aj, %wide.load13
  %i.am = add <2 x i32> %i.ak, %wide.load14
  store <2 x i32> %i.al, ptr %i.af, align 4
  store <2 x i32> %i.am, ptr %i.ag, align 4
  %i.an = zext nneg <2 x i32> %i.aj to <2 x i64>
  %i.ao = zext nneg <2 x i32> %i.ak to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi11, %i.an         ; 2 uses
  %i.aq = add <2 x i64> %vec.phi12, %i.ao         ; 2 uses
  %index.next15 = add nuw i64 %index10, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next15, 256
  br i1 %i.ar, label %middle.block16, label %vector.body9, !llvm.loop !85

middle.block16:                                   ; preds = %vector.body9
  %bin.rdx17 = add <2 x i64> %i.aq, %i.ap
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader34, %bb.k
  %.sroa.09.242 = phi i64 [ %i.bv, %bb.k ], [ 0, %.preheader34 ] ; 3 uses
  %exitcond51.not = icmp eq i64 %.sroa.09.242, %2
  br i1 %exitcond51.not, label %bb.j, label %bb.k

bb.b:                                             ; preds = %bb.h
  %i.as = icmp eq i64 %i.v, 0
  br i1 %i.as, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = mul i64 %.sroa.028.1.1, 125
  %i.au = udiv i64 %i.at, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.au

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16
  unreachable

bb.e:                                             ; preds = %bb.h, %.loopexit
  %.sroa.09.446 = phi i64 [ 0, %.loopexit ], [ %i.bi, %bb.h ] ; 4 uses
  %.sroa.028.045 = phi i64 [ 0, %.loopexit ], [ %.sroa.028.1.1, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.09.446
  %i.aw = load i32, ptr %i.av, align 4, !noundef !6 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.i
  %.sroa.028.1 = phi i64 [ %.sroa.028.045, %bb.e ], [ %i.bo, %bb.i ] ; 2 uses
  %i.ay = or disjoint i64 %.sroa.09.446, 1        ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !noundef !6 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !6
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul i32 %i.ba, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add i64 %.sroa.028.1, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.028.1.1 = phi i64 [ %.sroa.028.1, %bb.f ], [ %i.bh, %bb.g ] ; 2 uses
  %i.bi = add nuw nsw i64 %.sroa.09.446, 2        ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %i.bi, 256
  br i1 %exitcond54.not.1, label %bb.b, label %bb.e

bb.i:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.09.446
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !6
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul i32 %i.aw, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %.sroa.028.045, %i.bn
  br label %bb.f

bb.j:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #16
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.242
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !6
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !6
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = add nuw i64 %.sroa.09.242, 1            ; 2 uses
  %exitcond52.not = icmp eq i64 %i.bv, %3
  br i1 %exitcond52.not, label %vector.ph8, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef align 8 dereferenceable(8) %11, ptr noalias nofree noundef nonnull align 4 %12, i64 noundef range(i64 0, 576460752303423488) %13, ptr noalias nofree noundef align 8 dereferenceable(8) %14, ptr noalias nofree noundef align 8 dereferenceable(8) %15) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 13 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_1
