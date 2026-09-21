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

bb.dh:                                            ; preds = %.lr.ph
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 %i.l
  %i.kh = load i8, ptr %i.kg, align 1, !noundef !6
  %i.ki = zext i8 %i.kh to i64
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 8, i64 noundef %i.ki, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.kj = add i64 %.sroa.026.0778, 8              ; 2 uses
  %i.kk = or disjoint i64 %i.kj, 7
  %i.kl = icmp ult i64 %i.kk, %i.h
  br i1 %i.kl, label %.lr.ph, label %._crit_edge

bb.di:                                            ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #16
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
begin_hunk_2_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br i1 %.not6.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fz = load i32, ptr %i.bm, align 4, !alias.scope !749, !noalias !750, !noundef !6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp eq i64 %i.fb, %i.ga
  br i1 %i.gb, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i, label %bb.u

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !751
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i: ; preds = %bb.aj, %bb.ag, %bb.af, %bb.ad, %bb.aa, %bb.u
  %.sroa.0.0.i.i = phi i64 [ %i.fc, %bb.u ], [ 3, %bb.aj ], [ %i.fr, %bb.ad ], [ %i.fv, %bb.af ], [ 1, %bb.aa ], [ 2, %bb.ag ] ; 3 uses
  %i.gc = icmp ule i64 %i.fb, %spec.store.select3.i
  %i.gd = icmp ne i64 %.sroa.0.0.i.i, 0
  %or.cond.i = and i1 %i.gc, %i.gd
  br i1 %or.cond.i, label %bb.ap, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i

bb.al:                                            ; preds = %bb.s
  %i.ge = load i64, ptr %i.bh, align 8, !noalias !712, !noundef !6
  %i.gf = load i64, ptr %i.bb, align 8, !noalias !712, !noundef !6
  %i.gg = add i64 %i.gf, 175
  %.not71.i = icmp ult i64 %i.ge, %i.gg
  br i1 %.not71.i, label %bb.t, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gh = add i64 %.sroa.034.2.i, 1               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !712
  %i.gi = icmp samesign ult i32 %.sroa.049.0.i, 3
  %i.gj = add i64 %.sroa.0.2.i, 9
  %i.gk = icmp ult i64 %i.gj, %i.aq
  %or.cond5.i = and i1 %i.gi, %i.gk
  br i1 %or.cond5.i, label %bb.an, label %bb.t

bb.an:                                            ; preds = %bb.am
  %i.gl = add nuw nsw i32 %.sroa.049.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !712
  br label %.preheader.i

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i: ; preds = %bb.as, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i, %bb.y
  %.sroa.0.0.i3.i = phi i64 [ %.sroa.0.0.i.i, %bb.as ], [ %.sroa.0.0.i.i, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i ], [ 0, %bb.y ]
  %.not.i103.i = icmp eq i64 %.sroa.4.0107.i, 0
  br i1 %.not.i103.i, label %bb.ao, label %bb.au, !prof !10

bb.ao:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !752
  unreachable

bb.ap:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i
  br i1 %i.bk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not6.i.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !753
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.gm = load i32, ptr %i.bl, align 4, !alias.scope !706, !noalias !750, !noundef !6
  store i32 %i.gm, ptr %i.bm, align 4, !alias.scope !706, !noalias !750
  %i.gn = load <2 x i32>, ptr %9, align 4, !alias.scope !706, !noalias !750
  store <2 x i32> %i.gn, ptr %i.bj, align 4, !alias.scope !706, !noalias !750
  %i.go = trunc i64 %i.fb to i32
  store i32 %i.go, ptr %9, align 4, !alias.scope !706, !noalias !750
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !753
  unreachable

bb.au:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i, i64 16
  %i.gq = add nsw i64 %.sroa.4.0107.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i) ]
  %i.gr = add i64 %.sroa.032.0106.i, 1
  %i.gs = load i64, ptr %i.az, align 8, !noalias !712, !noundef !6
  %i.gt = xor i64 %i.gs, %i.ex
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc, i64 noundef %.sroa.034.3.i, i64 noundef %i.ex, i64 noundef %i.gt, i64 noundef %.sroa.0.0.i3.i), !noalias !753
  %i.gu = load i64, ptr %15, align 8, !alias.scope !709, !noalias !754, !noundef !6
  %i.gv = add i64 %i.gu, %.sroa.034.3.i
  store i64 %i.gv, ptr %15, align 8, !alias.scope !709, !noalias !754
  %i.gw = add i64 %.sroa.0.3.i, 2                 ; 4 uses
  %i.gx = load i64, ptr %i.ad, align 8, !noalias !712, !noundef !6
  %i.gy = add i64 %i.gx, %.sroa.0.3.i
  %spec.store.select4.i = call i64 @llvm.umin.i64(i64 %i.gy, i64 %spec.select.i) ; 4 uses
  %.val77.i = load ptr, ptr %i.af, align 8, !alias.scope !705, !noalias !713 ; 7 uses
  %.val78.i = load i64, ptr %i.bf, align 8, !alias.scope !705, !noalias !713 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.gz = add i64 %.sroa.0.3.i, 18
  %.not.i.i.i = icmp ult i64 %spec.store.select4.i, %i.gz
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = sub i64 %spec.store.select4.i, %i.gw    ; 2 uses
  %i.hb = lshr i64 %i.ha, 2                       ; 2 uses
  %.not32.i.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.av
  %i.hc = and i64 %i.ha, -4
  %i.hd = add i64 %i.hc, %i.gw
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av, %bb.be
  %.sroa.02.031.i.i.i = phi i64 [ %i.he, %bb.be ], [ 0, %bb.av ] ; 2 uses
  %i.he = add nuw nsw i64 %.sroa.02.031.i.i.i, 1  ; 2 uses
  %i.hf = shl nuw i64 %.sroa.02.031.i.i.i, 2
  %i.hg = add i64 %i.hf, %i.gw
  %i.hh = and i64 %i.hg, %6                       ; 4 uses
  %.not.i.i.i104.i = icmp ugt i64 %i.hh, %5
  br i1 %.not.i.i.i104.i, label %bb.aw, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i, !prof !10

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !757
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i: ; preds = %.lr.ph.i.i.i
  %i.hi = sub nuw nsw i64 %5, %i.hh
  %.not.i24.i.i.i = icmp samesign ult i64 %i.hi, 11
  br i1 %.not.i24.i.i.i, label %bb.ax, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i, !prof !10

bb.ax:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !758
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 %i.hh ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i = load i64, ptr %i.hj, align 1, !alias.scope !759, !noalias !760
  %i.hk = mul i64 %.sroa.0.0.copyload.i.i.i106.i, -4819355556693147648
  %i.hl = lshr i64 %i.hk, 48                      ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %.sroa.0.0.copyload.i32.i.i.i = load i64, ptr %i.hm, align 1, !alias.scope !761, !noalias !762
  %i.hn = mul i64 %.sroa.0.0.copyload.i32.i.i.i, -4819355556693147648
  %i.ho = lshr i64 %i.hn, 48                      ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %.sroa.0.0.copyload.i36.i.i.i = load i64, ptr %i.hp, align 1, !alias.scope !763, !noalias !764
  %i.hq = mul i64 %.sroa.0.0.copyload.i36.i.i.i, -4819355556693147648
  %i.hr = lshr i64 %i.hq, 48                      ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %.sroa.0.0.copyload.i40.i.i.i = load i64, ptr %i.hs, align 1, !alias.scope !765, !noalias !766
  %i.ht = mul i64 %.sroa.0.0.copyload.i40.i.i.i, -4819355556693147648
  %i.hu = lshr i64 %i.ht, 48                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i) ]
  %i.hv = icmp ugt i64 %.val78.i, %i.hl
  br i1 %i.hv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.hl
  %i.hx = trunc i64 %i.hh to i32                  ; 4 uses
  store i32 %i.hx, ptr %i.hw, align 4, !noalias !767
  %i.hy = icmp ugt i64 %.val78.i, %i.ho
  br i1 %i.hy, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !767
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.ho
  %i.ia = add i32 %i.hx, 1
  store i32 %i.ia, ptr %i.hz, align 4, !noalias !767
  %i.ib = icmp ugt i64 %.val78.i, %i.hr
  br i1 %i.ib, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !767
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.hr
  %i.id = add i32 %i.hx, 2
  store i32 %i.id, ptr %i.ic, align 4, !noalias !767
  %i.ie = icmp ugt i64 %.val78.i, %i.hu
  br i1 %i.ie, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !767
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.hu
  %i.ig = add i32 %i.hx, 3
  store i32 %i.ig, ptr %i.if, align 4, !noalias !767
  %exitcond.not.i.i.i = icmp eq i64 %i.he, %i.hb
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !767
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.au
  %.sroa.0.0.i.i.i = phi i64 [ %i.hd, %._crit_edge.i.i.i ], [ %i.gw, %bb.au ] ; 2 uses
  %i.ih = icmp ult i64 %.sroa.0.0.i.i.i, %spec.store.select4.i
  br i1 %i.ih, label %.lr.ph.i.i, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i = phi i64 [ %i.ii, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 3 uses
  %i.ii = add i64 %.sroa.01.021.i.i, 1            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ij = and i64 %.sroa.01.021.i.i, %6           ; 3 uses
  %.not.i.i6.i.i = icmp ugt i64 %i.ij, %5
  br i1 %.not.i.i6.i.i, label %bb.bg, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i, !prof !10

bb.bg:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !769
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i: ; preds = %.lr.ph.i.i
  %i.ik = sub nuw nsw i64 %5, %i.ij
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %.not.i.i.i.i107.i = icmp samesign ult i64 %i.ik, 8
  br i1 %.not.i.i.i.i107.i, label %bb.bh, label %_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.bh:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !771
  unreachable

_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 %i.ij
  %.sroa.0.0.copyload.i.i8.i.i = load i64, ptr %i.il, align 1, !alias.scope !772, !noalias !773
  %i.im = mul i64 %.sroa.0.0.copyload.i.i8.i.i, -4819355556693147648
  %i.in = lshr i64 %i.im, 48                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i) ]
  %i.io = icmp ugt i64 %.val78.i, %i.in
  br i1 %i.io, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.bi

bb.bi:                                            ; preds = %_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.in, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !774
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.in
  %i.iq = trunc i64 %.sroa.01.021.i.i to i32
  store i32 %i.iq, ptr %i.ip, align 4, !noalias !774
  %exitcond.not.i.i = icmp eq i64 %i.ii, %spec.store.select4.i
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i
  %i.ir = load i64, ptr %i.ad, align 8, !noalias !712, !noundef !6
  %i.is = add i64 %i.ir, %.sroa.0.3.i
  br label %bb.q

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.q, %bb.c
  %.sroa.034.0.lcssa.i = phi i64 [ %i.ap, %bb.c ], [ %.sroa.034.1.i, %bb.q ]
  %.sroa.032.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.sroa.032.1.i, %bb.q ]
  %.sroa.0.0.lcssa.i = phi i64 [ %3, %bb.c ], [ %.sroa.0.1.i, %bb.q ]
  %i.it = add i64 %.sroa.034.0.lcssa.i, %i.aq
  %i.iu = sub i64 %i.it, %.sroa.0.0.lcssa.i
  store i64 %i.iu, ptr %11, align 8, !alias.scope !707, !noalias !711
  %i.iv = load i64, ptr %14, align 8, !alias.scope !708, !noalias !775, !noundef !6
  %i.iw = add i64 %i.iv, %.sroa.032.0.lcssa.i
  store i64 %i.iw, ptr %14, align 8, !alias.scope !708, !noalias !775
  br label %bb.acw

bb.bj:                                            ; preds = %bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.iz = load i32, ptr %i.iy, align 4, !alias.scope !777, !noalias !783, !noundef !6
  %i.ja = and i32 %i.iz, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl nuw i64 1, %i.jb
  %i.jd = add i64 %i.jc, -16                      ; 3 uses
  %i.je = load i64, ptr %11, align 8, !alias.scope !780, !noalias !784, !noundef !6 ; 2 uses
  %i.jf = add i64 %3, %2                          ; 8 uses
  %i.jg = icmp ugt i64 %2, 7
  %i.jh = add i64 %i.jf, -7                       ; 2 uses
  %spec.select.i21 = select i1 %i.jg, i64 %i.jh, i64 %3
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.jj = load i32, ptr %i.ji, align 8, !alias.scope !777, !noalias !783, !noundef !6 ; 2 uses
  %i.jk = icmp slt i32 %i.jj, 9
  %..i22 = select i1 %i.jk, i64 64, i64 512       ; 3 uses
  %i.jl = add i64 %3, 8
  %i.jm = icmp ult i64 %i.jl, %i.jf
  br i1 %i.jm, label %.lr.ph.i26, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i26:                                       ; preds = %bb.bj
  %i.jn = add i64 %..i22, %3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.js = shl nuw nsw i64 %..i22, 2
  %.val.i = load ptr, ptr %i.ix, align 8, !alias.scope !778, !noalias !785 ; 17 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val74.i = load i64, ptr %i.jt, align 8, !alias.scope !778, !noalias !785 ; 20 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.jw = icmp slt i32 %i.jj, 5
  %.not4.i.i27 = icmp eq i64 %10, 0
  %.not5.i.i28 = icmp eq i64 %10, 1
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.jy = icmp samesign ugt i64 %10, 2            ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i29 = icmp eq i64 %10, 3               ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i26
  %.sroa.0.0109.i30 = phi i64 [ %3, %.lr.ph.i26 ], [ %.sroa.0.1.i42, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.0108.i31 = phi ptr [ %12, %.lr.ph.i26 ], [ %.sroa.031.1.i41, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.0107.i32 = phi i64 [ %13, %.lr.ph.i26 ], [ %.sroa.4.1.i40, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.0106.i33 = phi i64 [ 0, %.lr.ph.i26 ], [ %.sroa.032.1.i39, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.0105.i34 = phi i64 [ %i.je, %.lr.ph.i26 ], [ %.sroa.034.1.i38, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.0104.i35 = phi i64 [ %i.jn, %.lr.ph.i26 ], [ %.sroa.053.1.i37, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.kb = sub i64 %i.jf, %.sroa.0.0109.i30        ; 2 uses
  %spec.store.select.i36 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0109.i30, i64 %i.jd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !noalias !786
  store i64 2020, ptr %i.jq, align 8, !noalias !786
  %i.kc = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ix, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0109.i30, i64 noundef %i.kb, i64 noundef %spec.store.select.i36, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
  br i1 %i.kc, label %.preheader.i78, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kd = add i64 %.sroa.034.0105.i34, 1          ; 2 uses
  %i.ke = add i64 %.sroa.0.0109.i30, 1            ; 8 uses
  %i.kf = icmp ugt i64 %i.ke, %.sroa.053.0104.i35
  br i1 %i.kf, label %bb.bm, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.kg = add i64 %.sroa.0.0109.i30, 17           ; 2 uses
  %.not.i43 = icmp ult i64 %i.kg, %i.jh
  br i1 %.not.i43, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kh = add i64 %.sroa.053.0104.i35, %i.js
  %i.ki = icmp ugt i64 %i.ke, %i.kh
  %i.kj = and i64 %i.ke, %6                       ; 5 uses
  %.not.i.i.i79.i45 = icmp ugt i64 %i.kj, %5      ; 2 uses
  br i1 %i.ki, label %bb.bt, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.neg.i44 = xor i64 %.sroa.0.0109.i30, -1
  %i.kk = add i64 %i.jf, %.neg.i44
  %i.kl = add i64 %i.kk, %i.kd
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.bp:                                            ; preds = %bb.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  br i1 %.not.i.i.i79.i45, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46, !prof !10

bb.bq:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.2.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.1.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, %bb.bp
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !789
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46: ; preds = %bb.bp
  %i.km = sub nuw nsw i64 %5, %i.kj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %.not.i.i.i.i.i47 = icmp samesign ult i64 %i.km, 8
  br i1 %.not.i.i.i.i.i47, label %bb.br, label %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !10

bb.br:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.3.i.i59, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.2.i.i55, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !791
  unreachable

_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 %i.kj
  %.sroa.0.0.copyload.i.i.i.i48 = load i64, ptr %i.kn, align 1, !alias.scope !792, !noalias !793
  %i.ko = mul i64 %.sroa.0.0.copyload.i.i.i.i48, -4819355556693147648
  %i.kp = lshr i64 %i.ko, 48
  %i.kq = lshr i64 %i.ke, 3
  %i.kr = and i64 %i.kq, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ks = add nuw nsw i64 %i.kp, %i.kr            ; 3 uses
  %i.kt = icmp ugt i64 %.val74.i, %i.ks
  br i1 %i.kt, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %.lcssa.i.i49 = phi i64 [ %i.ks, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.le, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i ], [ %i.lq, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i ], [ %i.mc, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i49, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !794
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.ku = trunc i64 %i.ke to i32
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ks
  store i32 %i.ku, ptr %i.kv, align 4, !noalias !794
  %i.kw = add i64 %.sroa.0.0109.i30, 3            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.kx = and i64 %i.kw, %6                       ; 3 uses
  %.not.i.i.1.i.i50 = icmp ugt i64 %i.kx, %5
  br i1 %.not.i.i.1.i.i50, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i
  %i.ky = sub nuw nsw i64 %5, %i.kx
  %.not.i.i.i.1.i.i52 = icmp samesign ult i64 %i.ky, 8
  br i1 %.not.i.i.i.1.i.i52, label %bb.br, label %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, !prof !10

_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 %i.kx
  %.sroa.0.0.copyload.i.i.1.i.i53 = load i64, ptr %i.kz, align 1, !alias.scope !796, !noalias !793
  %i.la = mul i64 %.sroa.0.0.copyload.i.i.1.i.i53, -4819355556693147648
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.pl = load i32, ptr %i.ka, align 4, !alias.scope !822, !noalias !823, !noundef !6
  %i.pm = sext i32 %i.pl to i64
  %i.pn = icmp eq i64 %i.on, %i.pm
  br i1 %i.pn, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90, label %bb.ca

bb.cq:                                            ; preds = %bb.co
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !824
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90: ; preds = %bb.cp, %bb.cm, %bb.cl, %bb.cj, %bb.cg, %bb.ca
  %.sroa.0.0.i.i91 = phi i64 [ %i.oo, %bb.ca ], [ 3, %bb.cp ], [ %i.pd, %bb.cj ], [ %i.ph, %bb.cl ], [ 1, %bb.cg ], [ 2, %bb.cm ] ; 3 uses
  %i.po = icmp ule i64 %i.on, %spec.store.select3.i88
  %i.pp = icmp ne i64 %.sroa.0.0.i.i91, 0
  %or.cond.i92 = and i1 %i.po, %i.pp
  br i1 %or.cond.i92, label %bb.cv, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93

bb.cr:                                            ; preds = %bb.by
  %i.pq = load i64, ptr %i.jv, align 8, !noalias !786, !noundef !6
  %i.pr = load i64, ptr %i.jq, align 8, !noalias !786, !noundef !6
  %i.ps = add i64 %i.pr, 175
  %.not71.i121 = icmp ult i64 %i.pq, %i.ps
  br i1 %.not71.i121, label %bb.bz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pt = add i64 %.sroa.034.2.i81, 1             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !786
  %i.pu = icmp samesign ult i32 %.sroa.049.0.i79, 3
  %i.pv = add i64 %.sroa.0.2.i82, 9
  %i.pw = icmp ult i64 %i.pv, %i.jf
  %or.cond5.i122 = and i1 %i.pu, %i.pw
  br i1 %or.cond5.i122, label %bb.ct, label %bb.bz

bb.ct:                                            ; preds = %bb.cs
  %i.px = add nuw nsw i32 %.sroa.049.0.i79, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !786
  br label %.preheader.i78

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93: ; preds = %bb.cy, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90, %bb.ce
  %.sroa.0.0.i3.i94 = phi i64 [ %.sroa.0.0.i.i91, %bb.cy ], [ %.sroa.0.0.i.i91, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90 ], [ 0, %bb.ce ]
  %.not.i103.i95 = icmp eq i64 %.sroa.4.0107.i32, 0
  br i1 %.not.i103.i95, label %bb.cu, label %bb.da, !prof !10

bb.cu:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !825
  unreachable

bb.cv:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90
  br i1 %i.jy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not6.i.i29, label %bb.cz, label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !826
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.py = load i32, ptr %i.jz, align 4, !alias.scope !779, !noalias !823, !noundef !6
  store i32 %i.py, ptr %i.ka, align 4, !alias.scope !779, !noalias !823
  %i.pz = load <2 x i32>, ptr %9, align 4, !alias.scope !779, !noalias !823
  store <2 x i32> %i.pz, ptr %i.jx, align 4, !alias.scope !779, !noalias !823
  %i.qa = trunc i64 %i.on to i32
  store i32 %i.qa, ptr %9, align 4, !alias.scope !779, !noalias !823
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93

bb.cz:                                            ; preds = %bb.cw
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !826
  unreachable

bb.da:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i31, i64 16 ; 2 uses
  %i.qc = add nsw i64 %.sroa.4.0107.i32, -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i31) ]
  %i.qd = add i64 %.sroa.032.0106.i33, 1          ; 2 uses
  %i.qe = load i64, ptr %i.jo, align 8, !noalias !786, !noundef !6
  %i.qf = xor i64 %i.qe, %i.oj
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i31, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jr, i64 noundef %.sroa.034.3.i86, i64 noundef %i.oj, i64 noundef %i.qf, i64 noundef %.sroa.0.0.i3.i94), !noalias !826
  %i.qg = load i64, ptr %15, align 8, !alias.scope !782, !noalias !827, !noundef !6
  %i.qh = add i64 %i.qg, %.sroa.034.3.i86
  store i64 %i.qh, ptr %15, align 8, !alias.scope !782, !noalias !827
  %i.qi = add i64 %.sroa.0.3.i87, 2               ; 4 uses
  %i.qj = add i64 %i.oj, %.sroa.0.3.i87           ; 3 uses
  %spec.store.select4.i96 = tail call i64 @llvm.umin.i64(i64 %i.qj, i64 %spec.select.i21) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.qk = add i64 %.sroa.0.3.i87, 18
  %.not.i.i.i97 = icmp ult i64 %spec.store.select4.i96, %i.qk
  br i1 %.not.i.i.i97, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ql = sub i64 %spec.store.select4.i96, %i.qi  ; 2 uses
  %i.qm = lshr i64 %i.ql, 2                       ; 2 uses
  %.not32.i.i.i98 = icmp eq i64 %i.qm, 0
  br i1 %.not32.i.i.i98, label %._crit_edge.i.i.i110, label %.lr.ph.i.i.i99

._crit_edge.i.i.i110:                             ; preds = %bb.dk, %bb.db
  %i.qn = and i64 %i.ql, -4
  %i.qo = add i64 %i.qn, %i.qi
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i99:                                   ; preds = %bb.db, %bb.dk
  %.sroa.02.031.i.i.i100 = phi i64 [ %i.qp, %bb.dk ], [ 0, %bb.db ] ; 2 uses
  %i.qp = add nuw nsw i64 %.sroa.02.031.i.i.i100, 1 ; 2 uses
  %i.qq = shl nuw i64 %.sroa.02.031.i.i.i100, 2
  %i.qr = add i64 %i.qq, %i.qi
  %i.qs = and i64 %i.qr, %6                       ; 5 uses
  %.not.i.i.i104.i101 = icmp ugt i64 %i.qs, %5
  br i1 %.not.i.i.i104.i101, label %bb.dc, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102, !prof !10

bb.dc:                                            ; preds = %.lr.ph.i.i.i99
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !830
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102: ; preds = %.lr.ph.i.i.i99
  %i.qt = sub nuw nsw i64 %5, %i.qs
  %.not.i24.i.i.i103 = icmp samesign ult i64 %i.qt, 11
  br i1 %.not.i24.i.i.i103, label %bb.dd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104, !prof !10

bb.dd:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !831
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 %i.qs ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i105 = load i64, ptr %i.qu, align 1, !alias.scope !832, !noalias !833
  %i.qv = mul i64 %.sroa.0.0.copyload.i.i.i106.i105, -4819355556693147648
  %i.qw = lshr i64 %i.qv, 48
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  %.sroa.0.0.copyload.i32.i.i.i106 = load i64, ptr %i.qx, align 1, !alias.scope !834, !noalias !835
  %i.qy = mul i64 %.sroa.0.0.copyload.i32.i.i.i106, -4819355556693147648
  %i.qz = lshr i64 %i.qy, 48
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  %.sroa.0.0.copyload.i36.i.i.i107 = load i64, ptr %i.ra, align 1, !alias.scope !836, !noalias !837
  %i.rb = mul i64 %.sroa.0.0.copyload.i36.i.i.i107, -4819355556693147648
  %i.rc = lshr i64 %i.rb, 48
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qu, i64 3
  %.sroa.0.0.copyload.i40.i.i.i108 = load i64, ptr %i.rd, align 1, !alias.scope !838, !noalias !839
  %i.re = mul i64 %.sroa.0.0.copyload.i40.i.i.i108, -4819355556693147648
  %i.rf = lshr i64 %i.re, 48
  %i.rg = lshr i64 %i.qs, 3
  %i.rh = and i64 %i.rg, 1                        ; 4 uses
  %i.ri = add nuw nsw i64 %i.qw, %i.rh            ; 3 uses
  %i.rj = add nuw nsw i64 %i.qz, %i.rh            ; 3 uses
  %i.rk = add nuw nsw i64 %i.rc, %i.rh            ; 3 uses
  %i.rl = add nuw nsw i64 %i.rf, %i.rh            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.rm = icmp ult i64 %i.ri, %.val74.i
  br i1 %i.rm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ri
  %i.ro = trunc i64 %i.qs to i32                  ; 4 uses
  store i32 %i.ro, ptr %i.rn, align 4, !noalias !840
  %i.rp = icmp ult i64 %i.rj, %.val74.i
  br i1 %i.rp, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ri, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !840
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.rj
  %i.rr = add i32 %i.ro, 1
  store i32 %i.rr, ptr %i.rq, align 4, !noalias !840
  %i.rs = icmp ult i64 %i.rk, %.val74.i
  br i1 %i.rs, label %bb.di, label %bb.dj

bb.dh:                                            ; preds = %bb.de
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rj, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !840
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.rk
  %i.ru = add i32 %i.ro, 2
  store i32 %i.ru, ptr %i.rt, align 4, !noalias !840
  %i.rv = icmp ult i64 %i.rl, %.val74.i
  br i1 %i.rv, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %bb.dg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rk, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !840
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.rl
  %i.rx = add i32 %i.ro, 3
  store i32 %i.rx, ptr %i.rw, align 4, !noalias !840
  %exitcond.not.i.i.i109 = icmp eq i64 %i.qp, %i.qm
  br i1 %exitcond.not.i.i.i109, label %._crit_edge.i.i.i110, label %.lr.ph.i.i.i99

bb.dl:                                            ; preds = %bb.di
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rl, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !840
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i110, %bb.da
  %.sroa.0.0.i.i.i111 = phi i64 [ %i.qo, %._crit_edge.i.i.i110 ], [ %i.qi, %bb.da ] ; 2 uses
  %i.ry = icmp ult i64 %.sroa.0.0.i.i.i111, %spec.store.select4.i96
  br i1 %i.ry, label %.lr.ph.i.i112, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i112:                                    ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i113 = phi i64 [ %i.rz, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i111, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 4 uses
  %i.rz = add i64 %.sroa.01.021.i.i113, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.sa = and i64 %.sroa.01.021.i.i113, %6        ; 3 uses
  %.not.i.i6.i.i114 = icmp ugt i64 %i.sa, %5
  br i1 %.not.i.i6.i.i114, label %bb.dm, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115, !prof !10

bb.dm:                                            ; preds = %.lr.ph.i.i112
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !842
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115: ; preds = %.lr.ph.i.i112
  %i.sb = sub nuw nsw i64 %5, %i.sa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %.not.i.i.i.i107.i116 = icmp samesign ult i64 %i.sb, 8
  br i1 %.not.i.i.i.i107.i116, label %bb.dn, label %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.dn:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !844
  unreachable

_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115
  %i.sc = getelementptr inbounds nuw i8, ptr %4, i64 %i.sa
  %.sroa.0.0.copyload.i.i8.i.i117 = load i64, ptr %i.sc, align 1, !alias.scope !845, !noalias !846
  %i.sd = mul i64 %.sroa.0.0.copyload.i.i8.i.i117, -4819355556693147648
  %i.se = lshr i64 %i.sd, 48
  %i.sf = lshr i64 %.sroa.01.021.i.i113, 3
  %i.sg = and i64 %i.sf, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.sh = add nuw nsw i64 %i.se, %i.sg            ; 3 uses
  %i.si = icmp ugt i64 %.val74.i, %i.sh
  br i1 %i.si, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.do

bb.do:                                            ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.sh, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !847
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.sj = trunc i64 %.sroa.01.021.i.i113 to i32
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.sh
  store i32 %i.sj, ptr %i.sk, align 4, !noalias !847
  %exitcond.not.i.i118 = icmp eq i64 %i.rz, %spec.store.select4.i96
  br i1 %exitcond.not.i.i118, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i112

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.bj
  %.sroa.034.0.lcssa.i23 = phi i64 [ %i.je, %bb.bj ], [ %.sroa.034.1.i38, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i24 = phi i64 [ 0, %bb.bj ], [ %.sroa.032.1.i39, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i25 = phi i64 [ %3, %bb.bj ], [ %.sroa.0.1.i42, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.sl = add i64 %.sroa.034.0.lcssa.i23, %i.jf
  %i.sm = sub i64 %i.sl, %.sroa.0.0.lcssa.i25
  store i64 %i.sm, ptr %11, align 8, !alias.scope !780, !noalias !784
  %i.sn = load i64, ptr %14, align 8, !alias.scope !781, !noalias !848, !noundef !6
  %i.so = add i64 %i.sn, %.sroa.032.0.lcssa.i24
  store i64 %i.so, ptr %14, align 8, !alias.scope !781, !noalias !848
  br label %bb.acw

bb.dp:                                            ; preds = %bb.a
  %i.sp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.sr = load i8, ptr %i.sq, align 1, !range !702, !noundef !6
  %i.ss = trunc nuw i8 %i.sr to i1
  %.12 = select i1 %i.ss, ptr %1, ptr null        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.su = load i32, ptr %i.st, align 4, !alias.scope !850, !noalias !856, !noundef !6
  %i.sv = and i32 %i.su, 63
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = shl nuw i64 1, %i.sw
  %i.sy = add i64 %i.sx, -16                      ; 3 uses
  %i.sz = load i64, ptr %11, align 8, !alias.scope !853, !noalias !857, !noundef !6 ; 2 uses
  %i.ta = add i64 %3, %2                          ; 8 uses
  %i.tb = icmp ugt i64 %2, 7
  %i.tc = add i64 %i.ta, -7                       ; 2 uses
  %spec.select.i124 = select i1 %i.tb, i64 %i.tc, i64 %3
  %i.td = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.te = load i32, ptr %i.td, align 8, !alias.scope !850, !noalias !856, !noundef !6 ; 2 uses
  %i.tf = icmp slt i32 %i.te, 9
  %..i125 = select i1 %i.tf, i64 64, i64 512      ; 3 uses
  %i.tg = add i64 %3, 8
  %i.th = icmp ult i64 %i.tg, %i.ta
  br i1 %i.th, label %.lr.ph.i129, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i129:                                      ; preds = %bb.dp
  %i.ti = add i64 %..i125, %3
  %i.tj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.tn = load i64, ptr %i.tm, align 8, !alias.scope !850, !noalias !856, !noundef !6 ; 2 uses
  %i.to = shl nuw nsw i64 %..i125, 2
  %i.tp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ts = icmp slt i32 %i.te, 5
  %.not4.i.i130 = icmp eq i64 %10, 0
  %.not5.i.i131 = icmp eq i64 %10, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.tu = icmp samesign ugt i64 %10, 2            ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i132 = icmp eq i64 %10, 3              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ed, %.lr.ph.i129
  %.sroa.0.0109.i133 = phi i64 [ %3, %.lr.ph.i129 ], [ %.sroa.0.1.i145, %bb.ed ] ; 14 uses
  %.sroa.031.0108.i134 = phi ptr [ %12, %.lr.ph.i129 ], [ %.sroa.031.1.i144, %bb.ed ] ; 7 uses
  %.sroa.4.0107.i135 = phi i64 [ %13, %.lr.ph.i129 ], [ %.sroa.4.1.i143, %bb.ed ] ; 6 uses
  %.sroa.032.0106.i136 = phi i64 [ 0, %.lr.ph.i129 ], [ %.sroa.032.1.i142, %bb.ed ] ; 5 uses
  %.sroa.034.0105.i137 = phi i64 [ %i.sz, %.lr.ph.i129 ], [ %.sroa.034.1.i141, %bb.ed ] ; 4 uses
  %.sroa.053.0104.i138 = phi i64 [ %i.ti, %.lr.ph.i129 ], [ %.sroa.053.1.i140, %bb.ed ] ; 6 uses
  %i.tx = sub i64 %i.ta, %.sroa.0.0109.i133       ; 2 uses
  %spec.store.select.i139 = call i64 @llvm.umin.i64(i64 %.sroa.0.0109.i133, i64 %i.sy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !noalias !858
  store i64 2020, ptr %i.tl, align 8, !noalias !858
  %i.ty = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.sp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0109.i133, i64 noundef %i.tx, i64 noundef %spec.store.select.i139, i64 noundef %i.tn, ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
  br i1 %i.ty, label %.preheader.i183, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.tz = add i64 %.sroa.034.0105.i137, 1         ; 2 uses
  %i.ua = add i64 %.sroa.0.0109.i133, 1           ; 8 uses
  %i.ub = icmp ugt i64 %i.ua, %.sroa.053.0104.i138
  br i1 %i.ub, label %bb.ds, label %bb.ed

bb.ds:                                            ; preds = %bb.dr
  %i.uc = add i64 %.sroa.0.0109.i133, 17          ; 2 uses
  %.not.i146 = icmp ult i64 %i.uc, %i.tc
  br i1 %.not.i146, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ud = add i64 %.sroa.053.0104.i138, %i.to
  %i.ue = icmp ugt i64 %i.ua, %i.ud
  %.val75.i148 = load ptr, ptr %i.sp, align 8, !alias.scope !851, !noalias !859 ; 10 uses
  %.val76.i149 = load i64, ptr %i.tp, align 8, !alias.scope !851, !noalias !859 ; 10 uses
  %i.uf = and i64 %i.ua, %6                       ; 5 uses
  %.not.i.i.i79.i150 = icmp ugt i64 %i.uf, %5     ; 2 uses
  br i1 %i.ue, label %bb.dz, label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %.neg.i147 = xor i64 %.sroa.0.0109.i133, -1
  %i.ug = add i64 %i.ta, %.neg.i147
  %i.uh = add i64 %i.ug, %i.tz
  br label %bb.ed

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  br i1 %.not.i.i.i79.i150, label %bb.dw, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151, !prof !10

bb.dw:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.2.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.1.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, %bb.dv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !862
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151: ; preds = %bb.dv
  %i.ui = sub nuw nsw i64 %5, %i.uf
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %.not.i.i.i.i.i152 = icmp samesign ult i64 %i.ui, 8
  br i1 %.not.i.i.i.i.i152, label %bb.dx, label %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !10

bb.dx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.3.i.i164, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.2.i.i160, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !864
  unreachable

_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 %i.uf
  %.sroa.0.0.copyload.i.i.i.i153 = load i64, ptr %i.uj, align 1, !alias.scope !865, !noalias !866
  %i.uk = mul i64 %.sroa.0.0.copyload.i.i.i.i153, -4819355556693147648
  %i.ul = lshr i64 %i.uk, 47
  %i.um = lshr i64 %i.ua, 3
  %i.un = and i64 %i.um, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val75.i148) ]
  %i.uo = add nuw nsw i64 %i.ul, %i.un            ; 3 uses
  %i.up = icmp ugt i64 %.val76.i149, %i.uo
  br i1 %i.up, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %.lcssa.i.i154 = phi i64 [ %i.uo, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.va, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i ], [ %i.vm, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i ], [ %i.vy, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i154, i64 noundef %.val76.i149, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !867
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.uq = trunc i64 %i.ua to i32
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.val75.i148, i64 %i.uo
  store i32 %i.uq, ptr %i.ur, align 4, !noalias !867
  %i.us = add i64 %.sroa.0.0109.i133, 3           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.ut = and i64 %i.us, %6                       ; 3 uses
  %.not.i.i.1.i.i155 = icmp ugt i64 %i.ut, %5
  br i1 %.not.i.i.1.i.i155, label %bb.dw, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i
  %i.uu = sub nuw nsw i64 %5, %i.ut
  %.not.i.i.i.1.i.i157 = icmp samesign ult i64 %i.uu, 8
  br i1 %.not.i.i.i.1.i.i157, label %bb.dx, label %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, !prof !10

_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br i1 %i.zj, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195, label %bb.eh

bb.ex:                                            ; preds = %bb.ev
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !897
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195: ; preds = %bb.ew, %bb.et, %bb.es, %bb.eq, %bb.en, %bb.eh
  %.sroa.0.0.i.i196 = phi i64 [ %i.yk, %bb.eh ], [ 3, %bb.ew ], [ %i.yz, %bb.eq ], [ %i.zd, %bb.es ], [ 1, %bb.en ], [ 2, %bb.et ] ; 3 uses
  %i.zk = icmp ule i64 %i.yj, %spec.store.select3.i193
  %i.zl = icmp ne i64 %.sroa.0.0.i.i196, 0
  %or.cond.i197 = and i1 %i.zk, %i.zl
  br i1 %or.cond.i197, label %bb.fc, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198

bb.ey:                                            ; preds = %bb.ef
  %i.zm = load i64, ptr %i.tr, align 8, !noalias !858, !noundef !6
  %i.zn = load i64, ptr %i.tl, align 8, !noalias !858, !noundef !6
  %i.zo = add i64 %i.zn, 175
  %.not71.i228 = icmp ult i64 %i.zm, %i.zo
  br i1 %.not71.i228, label %bb.eg, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zp = add i64 %.sroa.034.2.i186, 1            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !858
  %i.zq = icmp samesign ult i32 %.sroa.049.0.i184, 3
  %i.zr = add i64 %.sroa.0.2.i187, 9
  %i.zs = icmp ult i64 %i.zr, %i.ta
  %or.cond5.i229 = and i1 %i.zq, %i.zs
  br i1 %or.cond5.i229, label %bb.fa, label %bb.eg

bb.fa:                                            ; preds = %bb.ez
  %i.zt = add nuw nsw i32 %.sroa.049.0.i184, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !858
  br label %.preheader.i183

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198: ; preds = %bb.ff, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195, %bb.el
  %.sroa.0.0.i3.i199 = phi i64 [ %.sroa.0.0.i.i196, %bb.ff ], [ %.sroa.0.0.i.i196, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195 ], [ 0, %bb.el ]
  %.not.i103.i200 = icmp eq i64 %.sroa.4.0107.i135, 0
  br i1 %.not.i103.i200, label %bb.fb, label %bb.fh, !prof !10

bb.fb:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !898
  unreachable

bb.fc:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195
  br i1 %i.tu, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not6.i.i132, label %bb.fg, label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !899
  unreachable

bb.ff:                                            ; preds = %bb.fd
  %i.zu = load i32, ptr %i.tv, align 4, !alias.scope !852, !noalias !896, !noundef !6
  store i32 %i.zu, ptr %i.tw, align 4, !alias.scope !852, !noalias !896
  %i.zv = load <2 x i32>, ptr %9, align 4, !alias.scope !852, !noalias !896
  store <2 x i32> %i.zv, ptr %i.tt, align 4, !alias.scope !852, !noalias !896
  %i.zw = trunc i64 %i.yj to i32
  store i32 %i.zw, ptr %9, align 4, !alias.scope !852, !noalias !896
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198

bb.fg:                                            ; preds = %bb.fd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !899
  unreachable

bb.fh:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i134, i64 16
  %i.zy = add nsw i64 %.sroa.4.0107.i135, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i134) ]
  %i.zz = add i64 %.sroa.032.0106.i136, 1
  %i.aaa = load i64, ptr %i.tj, align 8, !noalias !858, !noundef !6
  %i.aab = xor i64 %i.aaa, %i.yf
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i134, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tm, i64 noundef %.sroa.034.3.i191, i64 noundef %i.yf, i64 noundef %i.aab, i64 noundef %.sroa.0.0.i3.i199), !noalias !899
  %i.aac = load i64, ptr %15, align 8, !alias.scope !855, !noalias !900, !noundef !6
  %i.aad = add i64 %i.aac, %.sroa.034.3.i191
  store i64 %i.aad, ptr %15, align 8, !alias.scope !855, !noalias !900
  %i.aae = add i64 %.sroa.0.3.i192, 2             ; 4 uses
  %i.aaf = load i64, ptr %i.z, align 8, !noalias !858, !noundef !6
  %i.aag = add i64 %i.aaf, %.sroa.0.3.i192
  %spec.store.select4.i201 = call i64 @llvm.umin.i64(i64 %i.aag, i64 %spec.select.i124) ; 4 uses
  %.val77.i202 = load ptr, ptr %i.sp, align 8, !alias.scope !851, !noalias !859 ; 7 uses
  %.val78.i203 = load i64, ptr %i.tp, align 8, !alias.scope !851, !noalias !859 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.aah = add i64 %.sroa.0.3.i192, 18
  %.not.i.i.i204 = icmp ult i64 %spec.store.select4.i201, %i.aah
  br i1 %.not.i.i.i204, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aai = sub i64 %spec.store.select4.i201, %i.aae ; 2 uses
  %i.aaj = lshr i64 %i.aai, 2                     ; 2 uses
  %.not32.i.i.i205 = icmp eq i64 %i.aaj, 0
  br i1 %.not32.i.i.i205, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i206

._crit_edge.i.i.i217:                             ; preds = %bb.fr, %bb.fi
  %i.aak = and i64 %i.aai, -4
  %i.aal = add i64 %i.aak, %i.aae
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i206:                                  ; preds = %bb.fi, %bb.fr
  %.sroa.02.031.i.i.i207 = phi i64 [ %i.aam, %bb.fr ], [ 0, %bb.fi ] ; 2 uses
  %i.aam = add nuw nsw i64 %.sroa.02.031.i.i.i207, 1 ; 2 uses
  %i.aan = shl nuw i64 %.sroa.02.031.i.i.i207, 2
  %i.aao = add i64 %i.aan, %i.aae
  %i.aap = and i64 %i.aao, %6                     ; 5 uses
  %.not.i.i.i104.i208 = icmp ugt i64 %i.aap, %5
  br i1 %.not.i.i.i104.i208, label %bb.fj, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209, !prof !10

bb.fj:                                            ; preds = %.lr.ph.i.i.i206
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !903
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209: ; preds = %.lr.ph.i.i.i206
  %i.aaq = sub nuw nsw i64 %5, %i.aap
  %.not.i24.i.i.i210 = icmp samesign ult i64 %i.aaq, 11
  br i1 %.not.i24.i.i.i210, label %bb.fk, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211, !prof !10

bb.fk:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !904
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209
  %i.aar = getelementptr inbounds nuw i8, ptr %4, i64 %i.aap ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i212 = load i64, ptr %i.aar, align 1, !alias.scope !905, !noalias !906
  %i.aas = mul i64 %.sroa.0.0.copyload.i.i.i106.i212, -4819355556693147648
  %i.aat = lshr i64 %i.aas, 47
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 1
  %.sroa.0.0.copyload.i32.i.i.i213 = load i64, ptr %i.aau, align 1, !alias.scope !907, !noalias !908
  %i.aav = mul i64 %.sroa.0.0.copyload.i32.i.i.i213, -4819355556693147648
  %i.aaw = lshr i64 %i.aav, 47
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 2
  %.sroa.0.0.copyload.i36.i.i.i214 = load i64, ptr %i.aax, align 1, !alias.scope !909, !noalias !910
  %i.aay = mul i64 %.sroa.0.0.copyload.i36.i.i.i214, -4819355556693147648
  %i.aaz = lshr i64 %i.aay, 47
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aar, i64 3
  %.sroa.0.0.copyload.i40.i.i.i215 = load i64, ptr %i.aba, align 1, !alias.scope !911, !noalias !912
  %i.abb = mul i64 %.sroa.0.0.copyload.i40.i.i.i215, -4819355556693147648
  %i.abc = lshr i64 %i.abb, 47
  %i.abd = lshr i64 %i.aap, 3
  %i.abe = and i64 %i.abd, 3                      ; 4 uses
  %i.abf = add nuw nsw i64 %i.aat, %i.abe         ; 3 uses
  %i.abg = add nuw nsw i64 %i.aaw, %i.abe         ; 3 uses
  %i.abh = add nuw nsw i64 %i.aaz, %i.abe         ; 3 uses
  %i.abi = add nuw nsw i64 %i.abc, %i.abe         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i202) ]
  %i.abj = icmp ult i64 %i.abf, %.val78.i203
  br i1 %i.abj, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abf
  %i.abl = trunc i64 %i.aap to i32                ; 4 uses
  store i32 %i.abl, ptr %i.abk, align 4, !noalias !913
  %i.abm = icmp ult i64 %i.abg, %.val78.i203
  br i1 %i.abm, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abf, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !913
  unreachable

bb.fn:                                            ; preds = %bb.fl
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abg
  %i.abo = add i32 %i.abl, 1
  store i32 %i.abo, ptr %i.abn, align 4, !noalias !913
  %i.abp = icmp ult i64 %i.abh, %.val78.i203
  br i1 %i.abp, label %bb.fp, label %bb.fq

bb.fo:                                            ; preds = %bb.fl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abg, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !913
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abh
  %i.abr = add i32 %i.abl, 2
  store i32 %i.abr, ptr %i.abq, align 4, !noalias !913
  %i.abs = icmp ult i64 %i.abi, %.val78.i203
  br i1 %i.abs, label %bb.fr, label %bb.fs

bb.fq:                                            ; preds = %bb.fn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abh, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !913
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abi
  %i.abu = add i32 %i.abl, 3
  store i32 %i.abu, ptr %i.abt, align 4, !noalias !913
  %exitcond.not.i.i.i216 = icmp eq i64 %i.aam, %i.aaj
  br i1 %exitcond.not.i.i.i216, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i206

bb.fs:                                            ; preds = %bb.fp
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abi, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !913
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i217, %bb.fh
  %.sroa.0.0.i.i.i218 = phi i64 [ %i.aal, %._crit_edge.i.i.i217 ], [ %i.aae, %bb.fh ] ; 2 uses
  %i.abv = icmp ult i64 %.sroa.0.0.i.i.i218, %spec.store.select4.i201
  br i1 %i.abv, label %.lr.ph.i.i219, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i219:                                    ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i220 = phi i64 [ %i.abw, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i218, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 4 uses
  %i.abw = add i64 %.sroa.01.021.i.i220, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.abx = and i64 %.sroa.01.021.i.i220, %6       ; 3 uses
  %.not.i.i6.i.i221 = icmp ugt i64 %i.abx, %5
  br i1 %.not.i.i6.i.i221, label %bb.ft, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222, !prof !10

bb.ft:                                            ; preds = %.lr.ph.i.i219
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !915
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222: ; preds = %.lr.ph.i.i219
  %i.aby = sub nuw nsw i64 %5, %i.abx
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %.not.i.i.i.i107.i223 = icmp samesign ult i64 %i.aby, 8
  br i1 %.not.i.i.i.i107.i223, label %bb.fu, label %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.fu:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !917
  unreachable

_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222
  %i.abz = getelementptr inbounds nuw i8, ptr %4, i64 %i.abx
  %.sroa.0.0.copyload.i.i8.i.i224 = load i64, ptr %i.abz, align 1, !alias.scope !918, !noalias !919
  %i.aca = mul i64 %.sroa.0.0.copyload.i.i8.i.i224, -4819355556693147648
  %i.acb = lshr i64 %i.aca, 47
  %i.acc = lshr i64 %.sroa.01.021.i.i220, 3
  %i.acd = and i64 %i.acc, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i202) ]
  %i.ace = add nuw nsw i64 %i.acb, %i.acd         ; 3 uses
  %i.acf = icmp ugt i64 %.val78.i203, %i.ace
  br i1 %i.acf, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.fv

bb.fv:                                            ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ace, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !920
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.acg = trunc i64 %.sroa.01.021.i.i220 to i32
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.ace
  store i32 %i.acg, ptr %i.ach, align 4, !noalias !920
  %exitcond.not.i.i225 = icmp eq i64 %i.abw, %spec.store.select4.i201
  br i1 %exitcond.not.i.i225, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i219

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i
  %i.aci = load i64, ptr %i.z, align 8, !noalias !858, !noundef !6
  %i.acj = add i64 %i.aci, %.sroa.0.3.i192
  br label %bb.ed

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ed, %bb.dp
  %.sroa.034.0.lcssa.i126 = phi i64 [ %i.sz, %bb.dp ], [ %.sroa.034.1.i141, %bb.ed ]
  %.sroa.032.0.lcssa.i127 = phi i64 [ 0, %bb.dp ], [ %.sroa.032.1.i142, %bb.ed ]
  %.sroa.0.0.lcssa.i128 = phi i64 [ %3, %bb.dp ], [ %.sroa.0.1.i145, %bb.ed ]
  %i.ack = add i64 %.sroa.034.0.lcssa.i126, %i.ta
  %i.acl = sub i64 %i.ack, %.sroa.0.0.lcssa.i128
  store i64 %i.acl, ptr %11, align 8, !alias.scope !853, !noalias !857
  %i.acm = load i64, ptr %14, align 8, !alias.scope !854, !noalias !921, !noundef !6
  %i.acn = add i64 %i.acm, %.sroa.032.0.lcssa.i127
  store i64 %i.acn, ptr %14, align 8, !alias.scope !854, !noalias !921
  br label %bb.acw

bb.fw:                                            ; preds = %bb.a
  %i.aco = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.acp = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.acq = load i32, ptr %i.acp, align 4, !alias.scope !923, !noalias !929, !noundef !6
  %i.acr = and i32 %i.acq, 63
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = shl nuw i64 1, %i.acs
  %i.acu = add i64 %i.act, -16                    ; 3 uses
  %i.acv = load i64, ptr %11, align 8, !alias.scope !926, !noalias !930, !noundef !6 ; 2 uses
  %i.acw = add i64 %3, %2                         ; 8 uses
  %i.acx = icmp ugt i64 %2, 7
  %i.acy = add i64 %i.acw, -7                     ; 2 uses
  %spec.select.i231 = select i1 %i.acx, i64 %i.acy, i64 %3
  %i.acz = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ada = load i32, ptr %i.acz, align 8, !alias.scope !923, !noalias !929, !noundef !6 ; 2 uses
  %i.adb = icmp slt i32 %i.ada, 9
  %..i232 = select i1 %i.adb, i64 64, i64 512     ; 3 uses
  %i.adc = add i64 %3, 8
  %i.add = icmp ult i64 %i.adc, %i.acw
  br i1 %i.add, label %.lr.ph.i236, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i236:                                      ; preds = %bb.fw
  %i.ade = add i64 %..i232, %3
  %i.adf = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.adg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.adh = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.adj = shl nuw nsw i64 %..i232, 2
  %.val.i237 = load ptr, ptr %i.aco, align 8, !alias.scope !924, !noalias !931 ; 17 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val74.i238 = load i64, ptr %i.adk, align 8, !alias.scope !924, !noalias !931 ; 20 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.adn = icmp slt i32 %i.ada, 5
  %.not4.i.i239 = icmp eq i64 %10, 0
  %.not5.i.i240 = icmp eq i64 %10, 1
  %i.ado = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.adp = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i241 = icmp eq i64 %10, 3              ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.fx

bb.fx:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i236
  %.sroa.0.0109.i242 = phi i64 [ %3, %.lr.ph.i236 ], [ %.sroa.0.1.i254, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.0108.i243 = phi ptr [ %12, %.lr.ph.i236 ], [ %.sroa.031.1.i253, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.0107.i244 = phi i64 [ %13, %.lr.ph.i236 ], [ %.sroa.4.1.i252, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.0106.i245 = phi i64 [ 0, %.lr.ph.i236 ], [ %.sroa.032.1.i251, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.0105.i246 = phi i64 [ %i.acv, %.lr.ph.i236 ], [ %.sroa.034.1.i250, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.0104.i247 = phi i64 [ %i.ade, %.lr.ph.i236 ], [ %.sroa.053.1.i249, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.ads = sub i64 %i.acw, %.sroa.0.0109.i242     ; 2 uses
  %spec.store.select.i248 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0109.i242, i64 %i.acu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !932
  store i64 2020, ptr %i.adh, align 8, !noalias !932
  %i.adt = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.aco, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0109.i242, i64 noundef %i.ads, i64 noundef %spec.store.select.i248, ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
  br i1 %i.adt, label %.preheader.i290, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.adu = add i64 %.sroa.034.0105.i246, 1        ; 2 uses
  %i.adv = add i64 %.sroa.0.0109.i242, 1          ; 8 uses
  %i.adw = icmp ugt i64 %i.adv, %.sroa.053.0104.i247
  br i1 %i.adw, label %bb.fz, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.fz:                                            ; preds = %bb.fy
  %i.adx = add i64 %.sroa.0.0109.i242, 17         ; 2 uses
  %.not.i255 = icmp ult i64 %i.adx, %i.acy
  br i1 %.not.i255, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.ady = add i64 %.sroa.053.0104.i247, %i.adj
  %i.adz = icmp ugt i64 %i.adv, %i.ady
  %i.aea = and i64 %i.adv, %6                     ; 5 uses
  %.not.i.i.i79.i257 = icmp ugt i64 %i.aea, %5    ; 2 uses
  br i1 %i.adz, label %bb.gg, label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %.neg.i256 = xor i64 %.sroa.0.0109.i242, -1
  %i.aeb = add i64 %i.acw, %.neg.i256
  %i.aec = add i64 %i.aeb, %i.adu
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.gc:                                            ; preds = %bb.ga
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  br i1 %.not.i.i.i79.i257, label %bb.gd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258, !prof !10

bb.gd:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.2.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.1.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, %bb.gc
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !935
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258: ; preds = %bb.gc
  %i.aed = sub nuw nsw i64 %5, %i.aea
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %.not.i.i.i.i.i259 = icmp samesign ult i64 %i.aed, 8
  br i1 %.not.i.i.i.i.i259, label %bb.ge, label %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !10

bb.ge:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.3.i.i271, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.2.i.i267, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !937
  unreachable

_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 %i.aea
  %.sroa.0.0.copyload.i.i.i.i260 = load i64, ptr %i.aee, align 1, !alias.scope !938, !noalias !939
  %i.aef = mul i64 %.sroa.0.0.copyload.i.i.i.i260, 3866266742567714048
  %i.aeg = lshr i64 %i.aef, 44
  %i.aeh = lshr i64 %i.adv, 3
  %i.aei = and i64 %i.aeh, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i237) ]
  %i.aej = add nuw nsw i64 %i.aeg, %i.aei         ; 3 uses
  %i.aek = icmp ugt i64 %.val74.i238, %i.aej
  br i1 %i.aek, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.gf

bb.gf:                                            ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %.lcssa.i.i261 = phi i64 [ %i.aej, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.aev, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i ], [ %i.afh, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i ], [ %i.aft, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i261, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !940
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.ael = trunc i64 %i.adv to i32
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.aej
  store i32 %i.ael, ptr %i.aem, align 4, !noalias !940
  %i.aen = add i64 %.sroa.0.0109.i242, 3          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.aeo = and i64 %i.aen, %6                     ; 3 uses
  %.not.i.i.1.i.i262 = icmp ugt i64 %i.aeo, %5
  br i1 %.not.i.i.1.i.i262, label %bb.gd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i
  %i.aep = sub nuw nsw i64 %5, %i.aeo
  %.not.i.i.i.1.i.i264 = icmp samesign ult i64 %i.aep, 8
  br i1 %.not.i.i.i.1.i.i264, label %bb.ge, label %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, !prof !10

_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263
end_hunk_4
begin_hunk_5_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.ajc = load i32, ptr %i.adr, align 4, !alias.scope !968, !noalias !969, !noundef !6
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = icmp eq i64 %i.aie, %i.ajd
  br i1 %i.aje, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302, label %bb.gn

bb.hd:                                            ; preds = %bb.hb
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !970
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302: ; preds = %bb.hc, %bb.gz, %bb.gy, %bb.gw, %bb.gt, %bb.gn
  %.sroa.0.0.i.i303 = phi i64 [ %i.aif, %bb.gn ], [ 3, %bb.hc ], [ %i.aiu, %bb.gw ], [ %i.aiy, %bb.gy ], [ 1, %bb.gt ], [ 2, %bb.gz ] ; 3 uses
  %i.ajf = icmp ule i64 %i.aie, %spec.store.select3.i300
  %i.ajg = icmp ne i64 %.sroa.0.0.i.i303, 0
  %or.cond.i304 = and i1 %i.ajf, %i.ajg
  br i1 %or.cond.i304, label %bb.hi, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305

bb.he:                                            ; preds = %bb.gl
  %i.ajh = load i64, ptr %i.adm, align 8, !noalias !932, !noundef !6
  %i.aji = load i64, ptr %i.adh, align 8, !noalias !932, !noundef !6
  %i.ajj = add i64 %i.aji, 175
  %.not71.i333 = icmp ult i64 %i.ajh, %i.ajj
  br i1 %.not71.i333, label %bb.gm, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ajk = add i64 %.sroa.034.2.i293, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !932
  %i.ajl = icmp samesign ult i32 %.sroa.049.0.i291, 3
  %i.ajm = add i64 %.sroa.0.2.i294, 9
  %i.ajn = icmp ult i64 %i.ajm, %i.acw
  %or.cond5.i334 = and i1 %i.ajl, %i.ajn
  br i1 %or.cond5.i334, label %bb.hg, label %bb.gm

bb.hg:                                            ; preds = %bb.hf
  %i.ajo = add nuw nsw i32 %.sroa.049.0.i291, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !932
  br label %.preheader.i290

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305: ; preds = %bb.hl, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302, %bb.gr
  %.sroa.0.0.i3.i306 = phi i64 [ %.sroa.0.0.i.i303, %bb.hl ], [ %.sroa.0.0.i.i303, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302 ], [ 0, %bb.gr ]
  %.not.i103.i307 = icmp eq i64 %.sroa.4.0107.i244, 0
  br i1 %.not.i103.i307, label %bb.hh, label %bb.hn, !prof !10

bb.hh:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !971
  unreachable

bb.hi:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302
  br i1 %i.adp, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  br i1 %.not6.i.i241, label %bb.hm, label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !972
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.ajp = load i32, ptr %i.adq, align 4, !alias.scope !925, !noalias !969, !noundef !6
  store i32 %i.ajp, ptr %i.adr, align 4, !alias.scope !925, !noalias !969
  %i.ajq = load <2 x i32>, ptr %9, align 4, !alias.scope !925, !noalias !969
  store <2 x i32> %i.ajq, ptr %i.ado, align 4, !alias.scope !925, !noalias !969
  %i.ajr = trunc i64 %i.aie to i32
  store i32 %i.ajr, ptr %9, align 4, !alias.scope !925, !noalias !969
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305

bb.hm:                                            ; preds = %bb.hj
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !972
  unreachable

bb.hn:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i243, i64 16 ; 2 uses
  %i.ajt = add nsw i64 %.sroa.4.0107.i244, -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i243) ]
  %i.aju = add i64 %.sroa.032.0106.i245, 1        ; 2 uses
  %i.ajv = load i64, ptr %i.adf, align 8, !noalias !932, !noundef !6
  %i.ajw = xor i64 %i.ajv, %i.aia
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i243, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adi, i64 noundef %.sroa.034.3.i298, i64 noundef %i.aia, i64 noundef %i.ajw, i64 noundef %.sroa.0.0.i3.i306), !noalias !972
  %i.ajx = load i64, ptr %15, align 8, !alias.scope !928, !noalias !973, !noundef !6
  %i.ajy = add i64 %i.ajx, %.sroa.034.3.i298
  store i64 %i.ajy, ptr %15, align 8, !alias.scope !928, !noalias !973
  %i.ajz = add i64 %.sroa.0.3.i299, 2             ; 4 uses
  %i.aka = add i64 %i.aia, %.sroa.0.3.i299        ; 3 uses
  %spec.store.select4.i308 = tail call i64 @llvm.umin.i64(i64 %i.aka, i64 %spec.select.i231) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.akb = add i64 %.sroa.0.3.i299, 18
  %.not.i.i.i309 = icmp ult i64 %spec.store.select4.i308, %i.akb
  br i1 %.not.i.i.i309, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.akc = sub i64 %spec.store.select4.i308, %i.ajz ; 2 uses
  %i.akd = lshr i64 %i.akc, 2                     ; 2 uses
  %.not32.i.i.i310 = icmp eq i64 %i.akd, 0
  br i1 %.not32.i.i.i310, label %._crit_edge.i.i.i322, label %.lr.ph.i.i.i311

._crit_edge.i.i.i322:                             ; preds = %bb.hx, %bb.ho
  %i.ake = and i64 %i.akc, -4
  %i.akf = add i64 %i.ake, %i.ajz
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i311:                                  ; preds = %bb.ho, %bb.hx
  %.sroa.02.031.i.i.i312 = phi i64 [ %i.akg, %bb.hx ], [ 0, %bb.ho ] ; 2 uses
  %i.akg = add nuw nsw i64 %.sroa.02.031.i.i.i312, 1 ; 2 uses
  %i.akh = shl nuw i64 %.sroa.02.031.i.i.i312, 2
  %i.aki = add i64 %i.akh, %i.ajz
  %i.akj = and i64 %i.aki, %6                     ; 5 uses
  %.not.i.i.i104.i313 = icmp ugt i64 %i.akj, %5
  br i1 %.not.i.i.i104.i313, label %bb.hp, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314, !prof !10

bb.hp:                                            ; preds = %.lr.ph.i.i.i311
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !976
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314: ; preds = %.lr.ph.i.i.i311
  %i.akk = sub nuw nsw i64 %5, %i.akj
  %.not.i24.i.i.i315 = icmp samesign ult i64 %i.akk, 11
  br i1 %.not.i24.i.i.i315, label %bb.hq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316, !prof !10

bb.hq:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !977
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314
  %i.akl = getelementptr inbounds nuw i8, ptr %4, i64 %i.akj ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i317 = load i64, ptr %i.akl, align 1, !alias.scope !978, !noalias !979
  %i.akm = mul i64 %.sroa.0.0.copyload.i.i.i106.i317, 3866266742567714048
  %i.akn = lshr i64 %i.akm, 44
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 1
  %.sroa.0.0.copyload.i32.i.i.i318 = load i64, ptr %i.ako, align 1, !alias.scope !980, !noalias !981
  %i.akp = mul i64 %.sroa.0.0.copyload.i32.i.i.i318, 3866266742567714048
  %i.akq = lshr i64 %i.akp, 44
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akl, i64 2
  %.sroa.0.0.copyload.i36.i.i.i319 = load i64, ptr %i.akr, align 1, !alias.scope !982, !noalias !983
  %i.aks = mul i64 %.sroa.0.0.copyload.i36.i.i.i319, 3866266742567714048
  %i.akt = lshr i64 %i.aks, 44
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akl, i64 3
  %.sroa.0.0.copyload.i40.i.i.i320 = load i64, ptr %i.aku, align 1, !alias.scope !984, !noalias !985
  %i.akv = mul i64 %.sroa.0.0.copyload.i40.i.i.i320, 3866266742567714048
  %i.akw = lshr i64 %i.akv, 44
  %i.akx = lshr i64 %i.akj, 3
  %i.aky = and i64 %i.akx, 3                      ; 4 uses
  %i.akz = add nuw nsw i64 %i.akn, %i.aky         ; 3 uses
  %i.ala = add nuw nsw i64 %i.akq, %i.aky         ; 3 uses
  %i.alb = add nuw nsw i64 %i.akt, %i.aky         ; 3 uses
  %i.alc = add nuw nsw i64 %i.akw, %i.aky         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i237) ]
  %i.ald = icmp ult i64 %i.akz, %.val74.i238
  br i1 %i.ald, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.akz
  %i.alf = trunc i64 %i.akj to i32                ; 4 uses
  store i32 %i.alf, ptr %i.ale, align 4, !noalias !986
  %i.alg = icmp ult i64 %i.ala, %.val74.i238
  br i1 %i.alg, label %bb.ht, label %bb.hu

bb.hs:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akz, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !986
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.ala
  %i.ali = add i32 %i.alf, 1
  store i32 %i.ali, ptr %i.alh, align 4, !noalias !986
  %i.alj = icmp ult i64 %i.alb, %.val74.i238
  br i1 %i.alj, label %bb.hv, label %bb.hw

bb.hu:                                            ; preds = %bb.hr
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ala, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !986
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.alb
  %i.all = add i32 %i.alf, 2
  store i32 %i.all, ptr %i.alk, align 4, !noalias !986
  %i.alm = icmp ult i64 %i.alc, %.val74.i238
  br i1 %i.alm, label %bb.hx, label %bb.hy

bb.hw:                                            ; preds = %bb.ht
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.alb, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !986
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.alc
  %i.alo = add i32 %i.alf, 3
  store i32 %i.alo, ptr %i.aln, align 4, !noalias !986
  %exitcond.not.i.i.i321 = icmp eq i64 %i.akg, %i.akd
  br i1 %exitcond.not.i.i.i321, label %._crit_edge.i.i.i322, label %.lr.ph.i.i.i311

bb.hy:                                            ; preds = %bb.hv
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.alc, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !986
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i322, %bb.hn
  %.sroa.0.0.i.i.i323 = phi i64 [ %i.akf, %._crit_edge.i.i.i322 ], [ %i.ajz, %bb.hn ] ; 2 uses
  %i.alp = icmp ult i64 %.sroa.0.0.i.i.i323, %spec.store.select4.i308
  br i1 %i.alp, label %.lr.ph.i.i324, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i324:                                    ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i325 = phi i64 [ %i.alq, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i323, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 4 uses
  %i.alq = add i64 %.sroa.01.021.i.i325, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.alr = and i64 %.sroa.01.021.i.i325, %6       ; 3 uses
  %.not.i.i6.i.i326 = icmp ugt i64 %i.alr, %5
  br i1 %.not.i.i6.i.i326, label %bb.hz, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327, !prof !10

bb.hz:                                            ; preds = %.lr.ph.i.i324
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !988
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327: ; preds = %.lr.ph.i.i324
  %i.als = sub nuw nsw i64 %5, %i.alr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %.not.i.i.i.i107.i328 = icmp samesign ult i64 %i.als, 8
  br i1 %.not.i.i.i.i107.i328, label %bb.ia, label %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.ia:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !990
  unreachable

_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327
  %i.alt = getelementptr inbounds nuw i8, ptr %4, i64 %i.alr
  %.sroa.0.0.copyload.i.i8.i.i329 = load i64, ptr %i.alt, align 1, !alias.scope !991, !noalias !992
  %i.alu = mul i64 %.sroa.0.0.copyload.i.i8.i.i329, 3866266742567714048
  %i.alv = lshr i64 %i.alu, 44
  %i.alw = lshr i64 %.sroa.01.021.i.i325, 3
  %i.alx = and i64 %i.alw, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i237) ]
  %i.aly = add nuw nsw i64 %i.alv, %i.alx         ; 3 uses
  %i.alz = icmp ugt i64 %.val74.i238, %i.aly
  br i1 %i.alz, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.ib

bb.ib:                                            ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aly, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !993
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.ama = trunc i64 %.sroa.01.021.i.i325 to i32
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.aly
  store i32 %i.ama, ptr %i.amb, align 4, !noalias !993
  %exitcond.not.i.i330 = icmp eq i64 %i.alq, %spec.store.select4.i308
  br i1 %exitcond.not.i.i330, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i324

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.fw
  %.sroa.034.0.lcssa.i233 = phi i64 [ %i.acv, %bb.fw ], [ %.sroa.034.1.i250, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i234 = phi i64 [ 0, %bb.fw ], [ %.sroa.032.1.i251, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i235 = phi i64 [ %3, %bb.fw ], [ %.sroa.0.1.i254, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.amc = add i64 %.sroa.034.0.lcssa.i233, %i.acw
  %i.amd = sub i64 %i.amc, %.sroa.0.0.lcssa.i235
  store i64 %i.amd, ptr %11, align 8, !alias.scope !926, !noalias !930
  %i.ame = load i64, ptr %14, align 8, !alias.scope !927, !noalias !994, !noundef !6
  %i.amf = add i64 %i.ame, %.sroa.032.0.lcssa.i234
  store i64 %i.amf, ptr %14, align 8, !alias.scope !927, !noalias !994
  br label %bb.acw

bb.ic:                                            ; preds = %bb.a
  %i.amg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.ami = load i8, ptr %i.amh, align 1, !range !702, !noundef !6
  %i.amj = trunc nuw i8 %i.ami to i1
  %.14 = select i1 %i.amj, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.amk = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.aml = load i32, ptr %i.amk, align 4, !alias.scope !996, !noalias !1002, !noundef !6
  %i.amm = and i32 %i.aml, 63
  %i.amn = zext nneg i32 %i.amm to i64
  %i.amo = shl nuw i64 1, %i.amn
  %i.amp = add i64 %i.amo, -16                    ; 3 uses
  %i.amq = load i64, ptr %11, align 8, !alias.scope !999, !noalias !1003, !noundef !6 ; 2 uses
  %i.amr = add i64 %3, %2                         ; 9 uses
  %i.ams = icmp ugt i64 %2, 3
  %i.amt = add i64 %i.amr, -3
  %spec.select.i336 = select i1 %i.ams, i64 %i.amt, i64 %3
  %i.amu = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.amv = load i32, ptr %i.amu, align 8, !alias.scope !996, !noalias !1002, !noundef !6 ; 2 uses
  %i.amw = icmp slt i32 %i.amv, 9
  %..i337 = select i1 %i.amw, i64 64, i64 512     ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i338 = load i32, ptr %i.amx, align 8, !alias.scope !997, !noalias !1004, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i338), !noalias !1005
  %i.amy = add i64 %3, 4
  %i.amz = icmp ult i64 %i.amy, %i.amr
  br i1 %i.amz, label %.lr.ph.i342, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i342:                                      ; preds = %bb.ic
  %i.ana = add i64 %..i337, %3
  %i.anb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.and = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.anf = load i64, ptr %i.ane, align 8, !alias.scope !996, !noalias !1002, !noundef !6 ; 2 uses
  %i.ang = add i64 %i.amr, -4
  %i.anh = shl nuw nsw i64 %..i337, 2
  %i.ani = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 5 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 4 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.anp = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.anq = icmp slt i32 %i.amv, 5
  %.not4.i.i343 = icmp eq i64 %10, 0
  %.not5.i.i344 = icmp eq i64 %10, 1
  %i.anr = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.ans = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i345 = icmp eq i64 %10, 3              ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %8, i64 92
  br label %bb.id

bb.id:                                            ; preds = %bb.lo, %.lr.ph.i342
  %.sroa.0.0987.i = phi i64 [ %3, %.lr.ph.i342 ], [ %.sroa.0.1.i352, %bb.lo ] ; 9 uses
  %.sroa.031.0986.i = phi ptr [ %12, %.lr.ph.i342 ], [ %.sroa.031.1.i351, %bb.lo ] ; 7 uses
  %.sroa.4.0985.i = phi i64 [ %13, %.lr.ph.i342 ], [ %.sroa.4.1.i350, %bb.lo ] ; 6 uses
  %.sroa.032.0984.i = phi i64 [ 0, %.lr.ph.i342 ], [ %.sroa.032.1.i349, %bb.lo ] ; 5 uses
  %.sroa.034.0983.i = phi i64 [ %i.amq, %.lr.ph.i342 ], [ %.sroa.034.1.i348, %bb.lo ] ; 4 uses
  %.sroa.053.0982.i = phi i64 [ %i.ana, %.lr.ph.i342 ], [ %.sroa.053.1.i347, %bb.lo ] ; 6 uses
  %i.anw = sub i64 %i.amr, %.sroa.0.0987.i        ; 2 uses
  %spec.store.select.i346 = call i64 @llvm.umin.i64(i64 %.sroa.0.0987.i, i64 %i.amp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1006
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !noalias !1006
  store i64 2020, ptr %i.and, align 8, !noalias !1006
  %i.anx = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.amg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0987.i, i64 noundef %i.anw, i64 noundef %spec.store.select.i346, i64 noundef %i.anf, ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
  br i1 %i.anx, label %.preheader.i355, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.any = add i64 %.sroa.034.0983.i, 1           ; 2 uses
  %i.anz = add i64 %.sroa.0.0987.i, 1             ; 6 uses
  %i.aoa = icmp ugt i64 %i.anz, %.sroa.053.0982.i
  br i1 %i.aoa, label %bb.if, label %bb.lo

bb.if:                                            ; preds = %bb.ie
  %i.aob = add i64 %.sroa.0.0987.i, 17            ; 2 uses
  %.not.i353 = icmp ult i64 %i.aob, %i.ang
  br i1 %.not.i353, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.aoc = add i64 %.sroa.053.0982.i, %i.anh
  %i.aod = icmp ugt i64 %i.anz, %i.aoc
  %i.aoe = and i64 %i.anz, %6                     ; 19 uses
  %i.aof = icmp ult i64 %i.aoe, %5                ; 2 uses
  br i1 %i.aod, label %bb.js, label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %.neg.i354 = xor i64 %.sroa.0.0987.i, -1
  %i.aog = add i64 %i.amr, %.neg.i354
  %i.aoh = add i64 %i.aog, %i.any
  br label %bb.lo

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.aoi = load i32, ptr %i.ani, align 8, !alias.scope !1009, !noalias !1010, !noundef !6
  %.val58.i.i = load ptr, ptr %i.amg, align 8, !alias.scope !1011, !noalias !1010, !nonnull !6, !noundef !6 ; 4 uses
  %.val59.i.i = load i64, ptr %i.anj, align 8, !alias.scope !1011, !noalias !1010, !noundef !6 ; 8 uses
  %.val.i.i = load ptr, ptr %i.ank, align 8, !alias.scope !1011, !noalias !1010, !nonnull !6, !noundef !6 ; 4 uses
  %.val53.i.i = load i64, ptr %i.anl, align 8, !alias.scope !1011, !noalias !1010, !noundef !6 ; 8 uses
  br i1 %i.aof, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aoj = add nuw nsw i64 %i.aoe, 1              ; 3 uses
  %i.aok = icmp samesign ult i64 %i.aoj, %5
  br i1 %i.aok, label %bb.il, label %bb.im

bb.ik:                                            ; preds = %bb.ii
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoe, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #16, !noalias !1012
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.aol = add nuw nsw i64 %i.aoe, 2              ; 3 uses
  %i.aom = icmp samesign ult i64 %i.aol, %5
  br i1 %i.aom, label %bb.in, label %bb.io

bb.im:                                            ; preds = %bb.ij
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoj, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #16, !noalias !1012
  unreachable

bb.in:                                            ; preds = %bb.il
  %i.aon = add nuw nsw i64 %i.aoe, 3              ; 3 uses
  %i.aoo = icmp samesign ult i64 %i.aon, %5
  br i1 %i.aoo, label %bb.ip, label %bb.iq

bb.io:                                            ; preds = %bb.il
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aol, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #16, !noalias !1012
  unreachable

bb.ip:                                            ; preds = %bb.in
  %i.aop = add nuw nsw i64 %i.aoe, 4              ; 3 uses
  %i.aoq = icmp samesign ult i64 %i.aop, %5
  br i1 %i.aoq, label %bb.ir, label %bb.is

bb.iq:                                            ; preds = %bb.in
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aon, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #16, !noalias !1012
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.baz = lshr i32 158663784, %i.bay
  %i.bba = and i32 %i.baz, 15
  %i.bbb = zext nneg i32 %i.bba to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367

bb.mc:                                            ; preds = %bb.ma
  br i1 %i.ans, label %bb.me, label %bb.mf

bb.md:                                            ; preds = %bb.ma
  %.tr.i.i381 = trunc nuw nsw i64 %i.bat to i32
  %i.bbc = shl nuw nsw i32 %.tr.i.i381, 2
  %i.bbd = lshr i32 266017486, %i.bbc
  %i.bbe = and i32 %i.bbd, 15
  %i.bbf = zext nneg i32 %i.bbe to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367

bb.me:                                            ; preds = %bb.mc
  %i.bbg = load i32, ptr %i.ant, align 4, !alias.scope !1024, !noalias !1005, !noundef !6
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = icmp eq i64 %i.bal, %i.bbh
  br i1 %i.bbi, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367, label %bb.mg

bb.mf:                                            ; preds = %bb.mc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1025
  unreachable

bb.mg:                                            ; preds = %bb.me
  br i1 %.not6.i.i345, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bbj = load i32, ptr %i.anu, align 4, !alias.scope !1024, !noalias !1005, !noundef !6
  %i.bbk = sext i32 %i.bbj to i64
  %i.bbl = icmp eq i64 %i.bal, %i.bbk
  br i1 %i.bbl, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367, label %bb.ls

bb.mi:                                            ; preds = %bb.mg
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1025
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367: ; preds = %bb.mh, %bb.me, %bb.md, %bb.mb, %bb.ly, %bb.ls
  %.sroa.0.0.i.i368 = phi i64 [ %i.bam, %bb.ls ], [ 3, %bb.mh ], [ %i.bbb, %bb.mb ], [ %i.bbf, %bb.md ], [ 1, %bb.ly ], [ 2, %bb.me ] ; 3 uses
  %i.bbm = icmp ule i64 %i.bal, %spec.store.select3.i365
  %i.bbn = icmp ne i64 %.sroa.0.0.i.i368, 0
  %or.cond.i369 = and i1 %i.bbm, %i.bbn
  br i1 %or.cond.i369, label %bb.mn, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370

bb.mj:                                            ; preds = %bb.lq
  %i.bbo = load i64, ptr %i.anp, align 8, !noalias !1006, !noundef !6
  %i.bbp = load i64, ptr %i.and, align 8, !noalias !1006, !noundef !6
  %i.bbq = add i64 %i.bbp, 175
  %.not71.i383 = icmp ult i64 %i.bbo, %i.bbq
  br i1 %.not71.i383, label %bb.lr, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.bbr = add i64 %.sroa.034.2.i358, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !1006
  %i.bbs = icmp samesign ult i32 %.sroa.049.0.i356, 3
  %i.bbt = add i64 %.sroa.0.2.i359, 5
  %i.bbu = icmp ult i64 %i.bbt, %i.amr
  %or.cond5.i384 = and i1 %i.bbs, %i.bbu
  br i1 %or.cond5.i384, label %bb.ml, label %bb.lr

bb.ml:                                            ; preds = %bb.mk
  %i.bbv = add nuw nsw i32 %.sroa.049.0.i356, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1006
  br label %.preheader.i355

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370: ; preds = %bb.mq, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367, %bb.lw
  %.sroa.0.0.i3.i371 = phi i64 [ %.sroa.0.0.i.i368, %bb.mq ], [ %.sroa.0.0.i.i368, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367 ], [ 0, %bb.lw ]
  %.not.i76.i = icmp eq i64 %.sroa.4.0985.i, 0
  br i1 %.not.i76.i, label %bb.mm, label %bb.ms, !prof !10

bb.mm:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !1026
  unreachable

bb.mn:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367
  br i1 %i.ans, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  br i1 %.not6.i.i345, label %bb.mr, label %bb.mq

bb.mp:                                            ; preds = %bb.mn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1027
  unreachable

bb.mq:                                            ; preds = %bb.mo
  %i.bbw = load i32, ptr %i.ant, align 4, !alias.scope !998, !noalias !1005, !noundef !6
  store i32 %i.bbw, ptr %i.anu, align 4, !alias.scope !998, !noalias !1005
  %i.bbx = load <2 x i32>, ptr %9, align 4, !alias.scope !998, !noalias !1005
  store <2 x i32> %i.bbx, ptr %i.anr, align 4, !alias.scope !998, !noalias !1005
  %i.bby = trunc i64 %i.bal to i32
  store i32 %i.bby, ptr %9, align 4, !alias.scope !998, !noalias !1005
  %.val.i380 = load i32, ptr %i.amx, align 8, !alias.scope !997, !noalias !1004, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i380), !noalias !1028
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370

bb.mr:                                            ; preds = %bb.mo
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1027
  unreachable

bb.ms:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370
  %i.bbz = getelementptr inbounds nuw i8, ptr %.sroa.031.0986.i, i64 16
  %i.bca = add nsw i64 %.sroa.4.0985.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0986.i) ]
  %i.bcb = add i64 %.sroa.032.0984.i, 1
  %i.bcc = load i64, ptr %i.v, align 8, !noalias !1006, !noundef !6 ; 2 uses
  %i.bcd = load i64, ptr %i.anb, align 8, !noalias !1006, !noundef !6
  %i.bce = xor i64 %i.bcd, %i.bcc
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0986.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ane, i64 noundef %.sroa.034.3.i363, i64 noundef %i.bcc, i64 noundef %i.bce, i64 noundef %.sroa.0.0.i3.i371), !noalias !1027
  %i.bcf = load i64, ptr %15, align 8, !alias.scope !1001, !noalias !1029, !noundef !6
  %i.bcg = add i64 %i.bcf, %.sroa.034.3.i363
  store i64 %i.bcg, ptr %15, align 8, !alias.scope !1001, !noalias !1029
  %i.bch = add i64 %.sroa.0.3.i364, 2             ; 4 uses
  %i.bci = load i64, ptr %i.v, align 8, !noalias !1006, !noundef !6
  %i.bcj = add i64 %i.bci, %.sroa.0.3.i364
  %spec.store.select4.i372 = call i64 @llvm.umin.i64(i64 %i.bcj, i64 %spec.select.i336) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1034
  %i.bck = add i64 %.sroa.0.3.i364, 10
  %.not.i.i.i373 = icmp ult i64 %spec.store.select4.i372, %i.bck
  br i1 %.not.i.i.i373, label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %.val54.i.i.i = load ptr, ptr %i.amg, align 8, !alias.scope !1035, !noalias !1036, !nonnull !6, !noundef !6 ; 4 uses
  %.val55.i.i.i = load i64, ptr %i.anj, align 8, !alias.scope !1035, !noalias !1036, !noundef !6 ; 11 uses
  %.val.i.i.i = load ptr, ptr %i.ank, align 8, !alias.scope !1035, !noalias !1036, !nonnull !6, !noundef !6 ; 4 uses
  %.val49.i.i.i = load i64, ptr %i.anl, align 8, !alias.scope !1035, !noalias !1036, !noundef !6 ; 10 uses
  store i64 %.val55.i.i.i, ptr %i.t, align 8, !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1037
  %.val62.i.i.i = load i32, ptr %i.anv, align 4, !alias.scope !1035, !noalias !1036, !noundef !6
  %i.bcl = zext i32 %.val62.i.i.i to i64          ; 2 uses
  store i64 %i.bcl, ptr %i.s, align 8, !noalias !1037
  %i.bcm = icmp eq i64 %.val55.i.i.i, %i.bcl
  br i1 %i.bcm, label %bb.mv, label %bb.mu, !prof !8

bb.mu:                                            ; preds = %bb.mt
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1038
  unreachable

bb.mv:                                            ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1037
  store i64 %.val49.i.i.i, ptr %i.r, align 8, !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1037
  %.val56.i.i.i = load i32, ptr %i.ann, align 4, !alias.scope !1035, !noalias !1036, !noundef !6 ; 2 uses
  %i.bcn = and i32 %.val56.i.i.i, 31
  %i.bco = zext nneg i32 %i.bcn to i64
  %i.bcp = shl nuw nsw i64 %.val55.i.i.i, %i.bco  ; 2 uses
  store i64 %i.bcp, ptr %i.q, align 8, !noalias !1037
  %i.bcq = icmp eq i64 %.val49.i.i.i, %i.bcp
  br i1 %i.bcq, label %bb.mx, label %bb.mw, !prof !8

bb.mw:                                            ; preds = %bb.mv
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16, !noalias !1038
  unreachable

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1037
  %i.bcr = sub i64 %spec.store.select4.i372, %i.bch ; 2 uses
  %i.bcs = lshr i64 %i.bcr, 2                     ; 2 uses
  %.not195.i.i.i = icmp eq i64 %i.bcs, 0
  br i1 %.not195.i.i.i, label %._crit_edge.i.i.i376, label %.lr.ph.i.i.i374

.lr.ph.i.i.i374:                                  ; preds = %bb.mx
  %i.bct = load i32, ptr %i.ani, align 8, !alias.scope !1039, !noalias !1036, !noundef !6
  %i.bcu = and i32 %i.bct, 63
  %i.bcv = zext nneg i32 %i.bcu to i64            ; 4 uses
  %.val60.i.i.i = load i32, ptr %i.anm, align 8, !alias.scope !1035, !noalias !1036 ; 4 uses
  %i.bcw = and i32 %.val56.i.i.i, 63
  %i.bcx = zext nneg i32 %i.bcw to i64            ; 4 uses
  br label %bb.my

._crit_edge.i.i.i376:                             ; preds = %bb.ob, %bb.mx
  %i.bcy = and i64 %i.bcr, -4
  %i.bcz = add i64 %i.bcy, %i.bch
  br label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i

bb.my:                                            ; preds = %bb.ob, %.lr.ph.i.i.i374
  %.sroa.014.0194.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i374 ], [ %i.bda, %bb.ob ] ; 2 uses
  %i.bda = add nuw nsw i64 %.sroa.014.0194.i.i.i, 1 ; 2 uses
  %i.bdb = shl nuw i64 %.sroa.014.0194.i.i.i, 2
  %i.bdc = add i64 %i.bdb, %i.bch
  %i.bdd = and i64 %i.bdc, %6                     ; 10 uses
  %i.bde = icmp ult i64 %i.bdd, %5
  br i1 %i.bde, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.bdf = add nuw nsw i64 %i.bdd, 1              ; 3 uses
  %i.bdg = icmp ult i64 %i.bdf, %5
  br i1 %i.bdg, label %bb.nb, label %bb.nc

bb.na:                                            ; preds = %bb.my
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdd, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #16, !noalias !1038
  unreachable

bb.nb:                                            ; preds = %bb.mz
  %i.bdh = add nuw i64 %i.bdd, 2                  ; 3 uses
  %i.bdi = icmp ult i64 %i.bdh, %5
  br i1 %i.bdi, label %bb.nd, label %bb.ne

bb.nc:                                            ; preds = %bb.mz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdf, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16, !noalias !1038
  unreachable

bb.nd:                                            ; preds = %bb.nb
  %i.bdj = add nuw i64 %i.bdd, 3                  ; 3 uses
  %i.bdk = icmp ult i64 %i.bdj, %5
  br i1 %i.bdk, label %bb.nf, label %bb.ng

bb.ne:                                            ; preds = %bb.nb
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdh, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !1038
  unreachable

bb.nf:                                            ; preds = %bb.nd
  %i.bdl = add nuw i64 %i.bdd, 4                  ; 3 uses
  %i.bdm = icmp ult i64 %i.bdl, %5
  br i1 %i.bdm, label %bb.nh, label %bb.ni

bb.ng:                                            ; preds = %bb.nd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdj, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !1038
  unreachable

bb.nh:                                            ; preds = %bb.nf
  %i.bdn = add nuw i64 %i.bdd, 5                  ; 3 uses
  %i.bdo = icmp ult i64 %i.bdn, %5
  br i1 %i.bdo, label %bb.nj, label %bb.nk

bb.ni:                                            ; preds = %bb.nf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdl, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16, !noalias !1038
  unreachable

bb.nj:                                            ; preds = %bb.nh
  %i.bdp = add nuw i64 %i.bdd, 6                  ; 3 uses
  %i.bdq = icmp ult i64 %i.bdp, %5
  br i1 %i.bdq, label %bb.nl, label %bb.nm

bb.nk:                                            ; preds = %bb.nh
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdn, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #16, !noalias !1038
  unreachable

bb.nl:                                            ; preds = %bb.nj
  %i.bdr = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdd
  %i.bds = load i32, ptr %i.bdr, align 1
  %i.bdt = zext i32 %i.bds to i64                 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdl
  %i.bdv = load i8, ptr %i.bdu, align 1, !alias.scope !1040, !noalias !1041, !noundef !6
  %i.bdw = zext i8 %i.bdv to i64
  %i.bdx = shl nuw nsw i64 %i.bdw, 32
  %i.bdy = or disjoint i64 %i.bdx, %i.bdt         ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdn
  %i.bea = load i8, ptr %i.bdz, align 1, !alias.scope !1040, !noalias !1041, !noundef !6
  %i.beb = zext i8 %i.bea to i64
  %i.bec = shl nuw nsw i64 %i.beb, 40
  %i.bed = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdp
  %i.bee = load i8, ptr %i.bed, align 1, !alias.scope !1040, !noalias !1041, !noundef !6
  %i.bef = zext i8 %i.bee to i64
  %i.beg = shl nuw nsw i64 %i.bef, 48
  %i.beh = or disjoint i64 %i.bec, %i.beg
  %i.bei = or disjoint i64 %i.beh, %i.bdy         ; 2 uses
  %i.bej = mul nuw nsw i64 %i.bdt, 506832829
  %i.bek = and i64 %i.bej, 4294967295
  %i.bel = lshr i64 %i.bek, %i.bcv                ; 4 uses
  %i.bem = lshr i64 %i.bdy, 8
  %i.ben = mul nuw nsw i64 %i.bem, 506832829
  %i.beo = and i64 %i.ben, 4294967295
  %i.bep = lshr i64 %i.beo, %i.bcv                ; 4 uses
  %i.beq = lshr i64 %i.bei, 16
  %i.ber = mul i64 %i.beq, 506832829
  %i.bes = and i64 %i.ber, 4294967295
  %i.bet = lshr i64 %i.bes, %i.bcv                ; 4 uses
  %i.beu = lshr i64 %i.bei, 24
  %i.bev = mul nuw nsw i64 %i.beu, 506832829
  %i.bew = and i64 %i.bev, 4294967295
  %i.bex = lshr i64 %i.bew, %i.bcv                ; 4 uses
  %i.bey = icmp ult i64 %i.bel, %.val55.i.i.i
  br i1 %i.bey, label %bb.nn, label %bb.no

bb.nm:                                            ; preds = %bb.nj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdp, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16, !noalias !1038
  unreachable

bb.nn:                                            ; preds = %bb.nl
  %i.bez = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.bel ; 2 uses
  %i.bfa = load i16, ptr %i.bez, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bfb = zext i16 %i.bfa to i32
  %i.bfc = add i16 %i.bfa, 1
  store i16 %i.bfc, ptr %i.bez, align 2, !noalias !1038
  %i.bfd = and i32 %.val60.i.i.i, %i.bfb
  %i.bfe = icmp ult i64 %i.bep, %.val55.i.i.i
  br i1 %i.bfe, label %bb.np, label %bb.nq

bb.no:                                            ; preds = %bb.nl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bel, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #16, !noalias !1038
  unreachable

bb.np:                                            ; preds = %bb.nn
  %i.bff = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.bep ; 2 uses
  %i.bfg = load i16, ptr %i.bff, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bfh = zext i16 %i.bfg to i32
  %i.bfi = add i16 %i.bfg, 1
  store i16 %i.bfi, ptr %i.bff, align 2, !noalias !1038
  %i.bfj = and i32 %.val60.i.i.i, %i.bfh
  %i.bfk = icmp ult i64 %i.bet, %.val55.i.i.i
  br i1 %i.bfk, label %bb.nr, label %bb.ns

bb.nq:                                            ; preds = %bb.nn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bep, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #16, !noalias !1038
  unreachable

bb.nr:                                            ; preds = %bb.np
  %i.bfl = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.bet ; 2 uses
  %i.bfm = load i16, ptr %i.bfl, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bfn = add i16 %i.bfm, 1
  store i16 %i.bfn, ptr %i.bfl, align 2, !noalias !1038
  %i.bfo = icmp ult i64 %i.bex, %.val55.i.i.i
  br i1 %i.bfo, label %bb.nt, label %bb.nu

bb.ns:                                            ; preds = %bb.np
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bet, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #16, !noalias !1038
  unreachable

bb.nt:                                            ; preds = %bb.nr
  %i.bfp = zext i16 %i.bfm to i32
  %i.bfq = and i32 %.val60.i.i.i, %i.bfp
  %i.bfr = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.bex ; 2 uses
  %i.bfs = load i16, ptr %i.bfr, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bft = zext i16 %i.bfs to i32
  %i.bfu = add i16 %i.bfs, 1
  store i16 %i.bfu, ptr %i.bfr, align 2, !noalias !1038
  %i.bfv = and i32 %.val60.i.i.i, %i.bft
  %i.bfw = shl i64 %i.bel, %i.bcx
  %i.bfx = zext nneg i32 %i.bfd to i64
  %i.bfy = add i64 %i.bfw, %i.bfx                 ; 3 uses
  %i.bfz = shl i64 %i.bep, %i.bcx
  %i.bga = zext nneg i32 %i.bfj to i64
  %i.bgb = add i64 %i.bfz, %i.bga                 ; 3 uses
  %i.bgc = shl i64 %i.bet, %i.bcx
  %i.bgd = zext nneg i32 %i.bfq to i64
  %i.bge = add i64 %i.bgc, %i.bgd                 ; 3 uses
  %i.bgf = shl i64 %i.bex, %i.bcx
  %i.bgg = zext nneg i32 %i.bfv to i64
  %i.bgh = add i64 %i.bgf, %i.bgg                 ; 3 uses
  %i.bgi = icmp ult i64 %i.bfy, %.val49.i.i.i
  br i1 %i.bgi, label %bb.nv, label %bb.nw

bb.nu:                                            ; preds = %bb.nr
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bex, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #16, !noalias !1038
  unreachable

bb.nv:                                            ; preds = %bb.nt
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bfy
  %i.bgk = trunc i64 %i.bdd to i32
  store i32 %i.bgk, ptr %i.bgj, align 4, !noalias !1038
  %i.bgl = icmp ult i64 %i.bgb, %.val49.i.i.i
  br i1 %i.bgl, label %bb.nx, label %bb.ny

bb.nw:                                            ; preds = %bb.nt
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bfy, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #16, !noalias !1038
  unreachable

bb.nx:                                            ; preds = %bb.nv
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bgb
  %i.bgn = trunc i64 %i.bdf to i32
  store i32 %i.bgn, ptr %i.bgm, align 4, !noalias !1038
  %i.bgo = icmp ult i64 %i.bge, %.val49.i.i.i
  br i1 %i.bgo, label %bb.nz, label %bb.oa

bb.ny:                                            ; preds = %bb.nv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bgb, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #16, !noalias !1038
  unreachable

bb.nz:                                            ; preds = %bb.nx
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bge
  %i.bgq = trunc i64 %i.bdh to i32
  store i32 %i.bgq, ptr %i.bgp, align 4, !noalias !1038
  %i.bgr = icmp ult i64 %i.bgh, %.val49.i.i.i
  br i1 %i.bgr, label %bb.ob, label %bb.oc

bb.oa:                                            ; preds = %bb.nx
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bge, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #16, !noalias !1038
  unreachable

bb.ob:                                            ; preds = %bb.nz
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bgh
  %i.bgt = trunc i64 %i.bdj to i32
  store i32 %i.bgt, ptr %i.bgs, align 4, !noalias !1038
  %exitcond.not.i.i.i375 = icmp eq i64 %i.bda, %i.bcs
  br i1 %exitcond.not.i.i.i375, label %._crit_edge.i.i.i376, label %bb.my

bb.oc:                                            ; preds = %bb.nz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bgh, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #16, !noalias !1038
  unreachable

_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i376, %bb.ms
  %.sroa.0.0.i.i.i377 = phi i64 [ %i.bcz, %._crit_edge.i.i.i376 ], [ %i.bch, %bb.ms ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1034
  %i.bgu = icmp ult i64 %.sroa.0.0.i.i.i377, %spec.store.select4.i372
  br i1 %i.bgu, label %.lr.ph.i.i378, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i378:                                    ; preds = %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i
  %.sroa.01.0149.i.i = phi i64 [ %i.bgv, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.0.i.i.i377, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i ] ; 3 uses
  %i.bgv = add i64 %.sroa.01.0149.i.i, 1          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.bgw = and i64 %.sroa.01.0149.i.i, %6         ; 3 uses
  %.not.i.i77.i = icmp ugt i64 %i.bgw, %5
  br i1 %.not.i.i77.i, label %bb.od, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.od:                                            ; preds = %.lr.ph.i.i378
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1043
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %.lr.ph.i.i378
  %i.bgx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bgw
  %i.bgy = sub nuw nsw i64 %5, %i.bgw
  %i.bgz = load i32, ptr %i.ani, align 8, !alias.scope !1044, !noalias !1045, !noundef !6
  %i.bha = call noundef i64 @_RNvXsk_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H5SubNtB5_21AdvHashSpecialization17load_and_mix_word(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ani, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bgx, i64 noundef range(i64 0, -9223372036854775808) %i.bgy), !noalias !1027
  %i.bhb = and i32 %i.bgz, 63
  %i.bhc = zext nneg i32 %i.bhb to i64
  %i.bhd = lshr i64 %i.bha, %i.bhc                ; 2 uses
  %i.bhe = and i64 %i.bhd, 4294967295             ; 6 uses
  %.val11.i.i = load i64, ptr %i.anj, align 8, !alias.scope !1046, !noalias !1047, !noundef !6 ; 2 uses
  %i.bhf = icmp ult i64 %i.bhe, %.val11.i.i
  br i1 %i.bhf, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i
  %.val10.i.i = load ptr, ptr %i.amg, align 8, !alias.scope !1046, !noalias !1047, !nonnull !6, !noundef !6
  %i.bhg = trunc i64 %i.bhd to i32
  %i.bhh = getelementptr inbounds nuw [2 x i8], ptr %.val10.i.i, i64 %i.bhe
  %i.bhi = load i16, ptr %i.bhh, align 2, !noalias !1027, !noundef !6
  %i.bhj = zext i16 %i.bhi to i32
  %.val9.i.i = load i32, ptr %i.anm, align 8, !alias.scope !1046, !noalias !1047, !noundef !6
  %i.bhk = and i32 %.val9.i.i, %i.bhj
  %i.bhl = zext nneg i32 %i.bhk to i64
  %.val6.i.i = load i32, ptr %i.ann, align 4, !alias.scope !1046, !noalias !1047, !noundef !6
  %i.bhm = and i32 %.val6.i.i, 31
  %i.bhn = shl i32 %i.bhg, %i.bhm
  %i.bho = zext i32 %i.bhn to i64
  %i.bhp = add nuw nsw i64 %i.bho, %i.bhl         ; 3 uses
  %.val5.i.i = load i64, ptr %i.anl, align 8, !alias.scope !1046, !noalias !1047, !noundef !6 ; 2 uses
  %i.bhq = icmp ult i64 %i.bhp, %.val5.i.i
  br i1 %i.bhq, label %bb.og, label %bb.oh

bb.of:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhe, i64 noundef %.val11.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1027
  unreachable

bb.og:                                            ; preds = %bb.oe
  %.val.i78.i = load ptr, ptr %i.ank, align 8, !alias.scope !1046, !noalias !1047, !nonnull !6, !noundef !6
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.val.i78.i, i64 %i.bhp
  %i.bhs = trunc i64 %.sroa.01.0149.i.i to i32
  store i32 %i.bhs, ptr %i.bhr, align 4, !noalias !1027
  %.val8.i.i = load i64, ptr %i.anj, align 8, !alias.scope !1046, !noalias !1047, !noundef !6 ; 2 uses
  %i.bht = icmp ult i64 %i.bhe, %.val8.i.i
  br i1 %i.bht, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.oi

bb.oh:                                            ; preds = %bb.oe
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhp, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1027
  unreachable

bb.oi:                                            ; preds = %bb.og
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhe, i64 noundef %.val8.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #16, !noalias !1027
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.og
  %.val7.i.i = load ptr, ptr %i.amg, align 8, !alias.scope !1046, !noalias !1047, !nonnull !6, !noundef !6
  %i.bhu = getelementptr inbounds nuw [2 x i8], ptr %.val7.i.i, i64 %i.bhe ; 2 uses
  %i.bhv = load i16, ptr %i.bhu, align 2, !noalias !1027, !noundef !6
  %i.bhw = add i16 %i.bhv, 1
  store i16 %i.bhw, ptr %i.bhu, align 2, !noalias !1027
  %exitcond.not.i.i379 = icmp eq i64 %i.bgv, %spec.store.select4.i372
  br i1 %exitcond.not.i.i379, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i378

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %i.bhx = load i64, ptr %i.v, align 8, !noalias !1006, !noundef !6
  %i.bhy = add i64 %i.bhx, %.sroa.0.3.i364
  br label %bb.lo

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.lo, %bb.ic
  %.sroa.034.0.lcssa.i339 = phi i64 [ %i.amq, %bb.ic ], [ %.sroa.034.1.i348, %bb.lo ]
  %.sroa.032.0.lcssa.i340 = phi i64 [ 0, %bb.ic ], [ %.sroa.032.1.i349, %bb.lo ]
  %.sroa.0.0.lcssa.i341 = phi i64 [ %3, %bb.ic ], [ %.sroa.0.1.i352, %bb.lo ]
  %i.bhz = add i64 %.sroa.034.0.lcssa.i339, %i.amr
  %i.bia = sub i64 %i.bhz, %.sroa.0.0.lcssa.i341
  store i64 %i.bia, ptr %11, align 8, !alias.scope !999, !noalias !1003
  %i.bib = load i64, ptr %14, align 8, !alias.scope !1000, !noalias !1048, !noundef !6
  %i.bic = add i64 %i.bib, %.sroa.032.0.lcssa.i340
  store i64 %i.bic, ptr %14, align 8, !alias.scope !1000, !noalias !1048
  br label %bb.acw

bb.oj:                                            ; preds = %bb.a
  %i.bid = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.bif = load i8, ptr %i.bie, align 1, !range !702, !noundef !6
  %i.big = trunc nuw i8 %i.bif to i1
  %.15 = select i1 %i.big, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.bih = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.bii = load i32, ptr %i.bih, align 4, !alias.scope !1050, !noalias !1056, !noundef !6
  %i.bij = and i32 %i.bii, 63
  %i.bik = zext nneg i32 %i.bij to i64
  %i.bil = shl nuw i64 1, %i.bik
  %i.bim = add i64 %i.bil, -16                    ; 3 uses
  %i.bin = load i64, ptr %11, align 8, !alias.scope !1053, !noalias !1057, !noundef !6 ; 2 uses
  %i.bio = add i64 %3, %2                         ; 9 uses
  %i.bip = icmp ugt i64 %2, 3
  %i.biq = add i64 %i.bio, -3
  %spec.select.i386 = select i1 %i.bip, i64 %i.biq, i64 %3
  %i.bir = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bis = load i32, ptr %i.bir, align 8, !alias.scope !1050, !noalias !1056, !noundef !6 ; 2 uses
  %i.bit = icmp slt i32 %i.bis, 9
  %..i387 = select i1 %i.bit, i64 64, i64 512     ; 3 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i388 = load i32, ptr %i.biu, align 8, !alias.scope !1051, !noalias !1058, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i388), !noalias !1059
  %i.biv = add i64 %3, 4
  %i.biw = icmp ult i64 %i.biv, %i.bio
  br i1 %i.biw, label %.lr.ph.i392, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i392:                                      ; preds = %bb.oj
  %i.bix = add i64 %..i387, %3
  %i.biy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.biz = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bja = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bjc = load i64, ptr %i.bjb, align 8, !alias.scope !1050, !noalias !1056, !noundef !6 ; 2 uses
  %i.bjd = add i64 %i.bio, -4
  %i.bje = shl nuw nsw i64 %..i387, 2
  %i.bjf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.bjk = icmp slt i32 %i.bis, 5
  %.not4.i.i393 = icmp eq i64 %10, 0
  %.not5.i.i394 = icmp eq i64 %10, 1
  %i.bjl = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bjm = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i395 = icmp eq i64 %10, 3              ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.ok

bb.ok:                                            ; preds = %bb.rv, %.lr.ph.i392
  %.sroa.0.0814.i = phi i64 [ %3, %.lr.ph.i392 ], [ %.sroa.0.1.i402, %bb.rv ] ; 9 uses
  %.sroa.031.0813.i = phi ptr [ %12, %.lr.ph.i392 ], [ %.sroa.031.1.i401, %bb.rv ] ; 7 uses
  %.sroa.4.0812.i = phi i64 [ %13, %.lr.ph.i392 ], [ %.sroa.4.1.i400, %bb.rv ] ; 6 uses
  %.sroa.032.0811.i = phi i64 [ 0, %.lr.ph.i392 ], [ %.sroa.032.1.i399, %bb.rv ] ; 5 uses
  %.sroa.034.0810.i = phi i64 [ %i.bin, %.lr.ph.i392 ], [ %.sroa.034.1.i398, %bb.rv ] ; 4 uses
  %.sroa.053.0809.i = phi i64 [ %i.bix, %.lr.ph.i392 ], [ %.sroa.053.1.i397, %bb.rv ] ; 6 uses
  %i.bjp = sub i64 %i.bio, %.sroa.0.0814.i        ; 2 uses
  %spec.store.select.i396 = call i64 @llvm.umin.i64(i64 %.sroa.0.0814.i, i64 %i.bim)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1060
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !1060
  store i64 2020, ptr %i.bja, align 8, !noalias !1060
  %i.bjq = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bid, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0814.i, i64 noundef %i.bjp, i64 noundef %spec.store.select.i396, i64 noundef %i.bjc, ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
  br i1 %i.bjq, label %.preheader.i409, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bjr = add i64 %.sroa.034.0810.i, 1           ; 2 uses
  %i.bjs = add i64 %.sroa.0.0814.i, 1             ; 6 uses
  %i.bjt = icmp ugt i64 %i.bjs, %.sroa.053.0809.i
  br i1 %i.bjt, label %bb.om, label %bb.rv

bb.om:                                            ; preds = %bb.ol
  %i.bju = add i64 %.sroa.0.0814.i, 17            ; 2 uses
  %.not.i403 = icmp ult i64 %i.bju, %i.bjd
  br i1 %.not.i403, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.bjv = add i64 %.sroa.053.0809.i, %i.bje
  %i.bjw = icmp ugt i64 %i.bjs, %i.bjv
  %i.bjx = and i64 %i.bjs, %6                     ; 19 uses
  %i.bjy = icmp ult i64 %i.bjx, %5                ; 2 uses
  br i1 %i.bjw, label %bb.pz, label %bb.op

bb.oo:                                            ; preds = %bb.om
  %.neg.i404 = xor i64 %.sroa.0.0814.i, -1
  %i.bjz = add i64 %i.bio, %.neg.i404
  %i.bka = add i64 %i.bjz, %i.bjr
  br label %bb.rv

bb.op:                                            ; preds = %bb.on
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %.val54.i.i = load ptr, ptr %i.bid, align 8, !alias.scope !1063, !noalias !1064, !nonnull !6, !noundef !6 ; 4 uses
  %.val55.i.i = load i64, ptr %i.bjf, align 8, !alias.scope !1063, !noalias !1064, !noundef !6 ; 8 uses
  %.val.i.i405 = load ptr, ptr %i.bjg, align 8, !alias.scope !1063, !noalias !1064, !nonnull !6, !noundef !6 ; 4 uses
  %.val53.i.i406 = load i64, ptr %i.bjh, align 8, !alias.scope !1063, !noalias !1064, !noundef !6 ; 8 uses
  br i1 %i.bjy, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.bkb = add nuw nsw i64 %i.bjx, 1              ; 3 uses
  %i.bkc = icmp samesign ult i64 %i.bkb, %5
  br i1 %i.bkc, label %bb.os, label %bb.ot

bb.or:                                            ; preds = %bb.op
end_hunk_6
begin_hunk_7_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.sf:                                            ; preds = %bb.sd
  %i.bvw = icmp eq i64 %i.bvm, %i.bvt
  br i1 %i.bvw, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bvx = icmp ult i64 %i.bvr, 7
  br i1 %i.bvx, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bvy = icmp ult i64 %i.bvu, 7
  br i1 %i.bvy, label %bb.sk, label %bb.sj

bb.si:                                            ; preds = %bb.sg
  %.tr7.i.i445 = trunc nuw nsw i64 %i.bvr to i32
  %i.bvz = shl nuw nsw i32 %.tr7.i.i445, 2
  %i.bwa = lshr i32 158663784, %i.bvz
  %i.bwb = and i32 %i.bwa, 15
  %i.bwc = zext nneg i32 %i.bwb to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421

bb.sj:                                            ; preds = %bb.sh
  br i1 %i.bjm, label %bb.sl, label %bb.sm

bb.sk:                                            ; preds = %bb.sh
  %.tr.i.i444 = trunc nuw nsw i64 %i.bvu to i32
  %i.bwd = shl nuw nsw i32 %.tr.i.i444, 2
  %i.bwe = lshr i32 266017486, %i.bwd
  %i.bwf = and i32 %i.bwe, 15
  %i.bwg = zext nneg i32 %i.bwf to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421

bb.sl:                                            ; preds = %bb.sj
  %i.bwh = load i32, ptr %i.bjn, align 4, !alias.scope !1076, !noalias !1059, !noundef !6
  %i.bwi = sext i32 %i.bwh to i64
  %i.bwj = icmp eq i64 %i.bvm, %i.bwi
  br i1 %i.bwj, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, label %bb.sn

bb.sm:                                            ; preds = %bb.sj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1077
  unreachable

bb.sn:                                            ; preds = %bb.sl
  br i1 %.not6.i.i395, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bwk = load i32, ptr %i.bjo, align 4, !alias.scope !1076, !noalias !1059, !noundef !6
  %i.bwl = sext i32 %i.bwk to i64
  %i.bwm = icmp eq i64 %i.bvm, %i.bwl
  br i1 %i.bwm, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, label %bb.rz

bb.sp:                                            ; preds = %bb.sn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1077
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421: ; preds = %bb.so, %bb.sl, %bb.sk, %bb.si, %bb.sf, %bb.rz
  %.sroa.0.0.i.i422 = phi i64 [ %i.bvn, %bb.rz ], [ 3, %bb.so ], [ %i.bwc, %bb.si ], [ %i.bwg, %bb.sk ], [ 1, %bb.sf ], [ 2, %bb.sl ] ; 3 uses
  %i.bwn = icmp ule i64 %i.bvm, %spec.store.select3.i419
  %i.bwo = icmp ne i64 %.sroa.0.0.i.i422, 0
  %or.cond.i423 = and i1 %i.bwn, %i.bwo
  br i1 %or.cond.i423, label %bb.su, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424

bb.sq:                                            ; preds = %bb.rx
  %i.bwp = load i64, ptr %i.bjj, align 8, !noalias !1060, !noundef !6
  %i.bwq = load i64, ptr %i.bja, align 8, !noalias !1060, !noundef !6
  %i.bwr = add i64 %i.bwq, 175
  %.not71.i446 = icmp ult i64 %i.bwp, %i.bwr
  br i1 %.not71.i446, label %bb.ry, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.bws = add i64 %.sroa.034.2.i412, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !1060
  %i.bwt = icmp samesign ult i32 %.sroa.049.0.i410, 3
  %i.bwu = add i64 %.sroa.0.2.i413, 5
  %i.bwv = icmp ult i64 %i.bwu, %i.bio
  %or.cond5.i447 = and i1 %i.bwt, %i.bwv
  br i1 %or.cond5.i447, label %bb.ss, label %bb.ry

bb.ss:                                            ; preds = %bb.sr
  %i.bww = add nuw nsw i32 %.sroa.049.0.i410, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1060
  br label %.preheader.i409

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424: ; preds = %bb.sx, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, %bb.sd
  %.sroa.0.0.i3.i425 = phi i64 [ %.sroa.0.0.i.i422, %bb.sx ], [ %.sroa.0.0.i.i422, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421 ], [ 0, %bb.sd ]
  %.not.i76.i426 = icmp eq i64 %.sroa.4.0812.i, 0
  br i1 %.not.i76.i426, label %bb.st, label %bb.sz, !prof !10

bb.st:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !1078
  unreachable

bb.su:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421
  br i1 %i.bjm, label %bb.sv, label %bb.sw

bb.sv:                                            ; preds = %bb.su
  br i1 %.not6.i.i395, label %bb.sy, label %bb.sx

bb.sw:                                            ; preds = %bb.su
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1079
  unreachable

bb.sx:                                            ; preds = %bb.sv
  %i.bwx = load i32, ptr %i.bjn, align 4, !alias.scope !1052, !noalias !1059, !noundef !6
  store i32 %i.bwx, ptr %i.bjo, align 4, !alias.scope !1052, !noalias !1059
  %i.bwy = load <2 x i32>, ptr %9, align 4, !alias.scope !1052, !noalias !1059
  store <2 x i32> %i.bwy, ptr %i.bjl, align 4, !alias.scope !1052, !noalias !1059
  %i.bwz = trunc i64 %i.bvm to i32
  store i32 %i.bwz, ptr %9, align 4, !alias.scope !1052, !noalias !1059
  %.val.i443 = load i32, ptr %i.biu, align 8, !alias.scope !1051, !noalias !1058, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i443), !noalias !1080
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424

bb.sy:                                            ; preds = %bb.sv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1079
  unreachable

bb.sz:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424
  %i.bxa = getelementptr inbounds nuw i8, ptr %.sroa.031.0813.i, i64 16
  %i.bxb = add nsw i64 %.sroa.4.0812.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0813.i) ]
  %i.bxc = add i64 %.sroa.032.0811.i, 1
  %i.bxd = load i64, ptr %i.p, align 8, !noalias !1060, !noundef !6 ; 2 uses
  %i.bxe = load i64, ptr %i.biy, align 8, !noalias !1060, !noundef !6
  %i.bxf = xor i64 %i.bxe, %i.bxd
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0813.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bjb, i64 noundef %.sroa.034.3.i417, i64 noundef %i.bxd, i64 noundef %i.bxf, i64 noundef %.sroa.0.0.i3.i425), !noalias !1079
  %i.bxg = load i64, ptr %15, align 8, !alias.scope !1055, !noalias !1081, !noundef !6
  %i.bxh = add i64 %i.bxg, %.sroa.034.3.i417
  store i64 %i.bxh, ptr %15, align 8, !alias.scope !1055, !noalias !1081
  %i.bxi = add i64 %.sroa.0.3.i418, 2             ; 4 uses
  %i.bxj = load i64, ptr %i.p, align 8, !noalias !1060, !noundef !6
  %i.bxk = add i64 %i.bxj, %.sroa.0.3.i418
  %spec.store.select4.i427 = call i64 @llvm.umin.i64(i64 %i.bxk, i64 %spec.select.i386) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1086
  %i.bxl = add i64 %.sroa.0.3.i418, 10
  %.not.i.i.i428 = icmp ult i64 %spec.store.select4.i427, %i.bxl
  br i1 %.not.i.i.i428, label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %.val53.i.i.i = load ptr, ptr %i.bid, align 8, !alias.scope !1087, !noalias !1088, !nonnull !6, !noundef !6 ; 4 uses
  %.val54.i.i.i429 = load i64, ptr %i.bjf, align 8, !alias.scope !1087, !noalias !1088, !noundef !6 ; 2 uses
  %.val.i.i.i430 = load ptr, ptr %i.bjg, align 8, !alias.scope !1087, !noalias !1088, !nonnull !6, !noundef !6 ; 4 uses
  %.val52.i.i.i = load i64, ptr %i.bjh, align 8, !alias.scope !1087, !noalias !1088, !noundef !6 ; 2 uses
  store i64 %.val54.i.i.i429, ptr %i.n, align 8, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1089
  store i64 32768, ptr %i.m, align 8, !noalias !1089
  %i.bxm = icmp eq i64 %.val54.i.i.i429, 32768
  br i1 %i.bxm, label %bb.tc, label %bb.tb, !prof !8

bb.tb:                                            ; preds = %bb.ta
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1090
  unreachable

bb.tc:                                            ; preds = %bb.ta
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1089
  store i64 %.val52.i.i.i, ptr %i.l, align 8, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1089
  store i64 2097152, ptr %i.k, align 8, !noalias !1089
  %i.bxn = icmp eq i64 %.val52.i.i.i, 2097152
  br i1 %i.bxn, label %bb.te, label %bb.td, !prof !8

bb.td:                                            ; preds = %bb.tc
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16, !noalias !1090
  unreachable

bb.te:                                            ; preds = %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1089
  %i.bxo = sub i64 %spec.store.select4.i427, %i.bxi ; 2 uses
  %i.bxp = lshr i64 %i.bxo, 2                     ; 2 uses
  %.not83.i.i.i = icmp eq i64 %i.bxp, 0
  br i1 %.not83.i.i.i, label %._crit_edge.i.i.i433, label %.lr.ph.i.i.i431

._crit_edge.i.i.i433:                             ; preds = %bb.tr, %bb.te
  %i.bxq = and i64 %i.bxo, -4
  %i.bxr = add i64 %i.bxq, %i.bxi
  br label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i431:                                  ; preds = %bb.te, %bb.tr
  %.sroa.014.082.i.i.i = phi i64 [ %i.bxs, %bb.tr ], [ 0, %bb.te ] ; 2 uses
  %i.bxs = add nuw nsw i64 %.sroa.014.082.i.i.i, 1 ; 2 uses
  %i.bxt = shl nuw i64 %.sroa.014.082.i.i.i, 2
  %i.bxu = add i64 %i.bxt, %i.bxi
  %i.bxv = and i64 %i.bxu, %6                     ; 10 uses
  %i.bxw = icmp ult i64 %i.bxv, %5
  br i1 %i.bxw, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %.lr.ph.i.i.i431
  %i.bxx = add nuw nsw i64 %i.bxv, 1              ; 4 uses
  %i.bxy = icmp ult i64 %i.bxx, %5
  br i1 %i.bxy, label %bb.th, label %bb.ti

bb.tg:                                            ; preds = %.lr.ph.i.i.i431
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxv, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #16, !noalias !1090
  unreachable

bb.th:                                            ; preds = %bb.tf
  %i.bxz = add nuw i64 %i.bxv, 2                  ; 4 uses
  %i.bya = icmp ult i64 %i.bxz, %5
  br i1 %i.bya, label %bb.tj, label %bb.tk

bb.ti:                                            ; preds = %bb.tf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxx, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16, !noalias !1090
  unreachable

bb.tj:                                            ; preds = %bb.th
  %i.byb = add nuw i64 %i.bxv, 3                  ; 4 uses
  %i.byc = icmp ult i64 %i.byb, %5
  br i1 %i.byc, label %bb.tl, label %bb.tm

bb.tk:                                            ; preds = %bb.th
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxz, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !1090
  unreachable

bb.tl:                                            ; preds = %bb.tj
  %i.byd = add nuw i64 %i.bxv, 4                  ; 3 uses
  %i.bye = icmp ult i64 %i.byd, %5
  br i1 %i.bye, label %bb.tn, label %bb.to

bb.tm:                                            ; preds = %bb.tj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.byb, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !1090
  unreachable

bb.tn:                                            ; preds = %bb.tl
  %i.byf = add nuw i64 %i.bxv, 5                  ; 3 uses
  %i.byg = icmp ult i64 %i.byf, %5
  br i1 %i.byg, label %bb.tp, label %bb.tq

bb.to:                                            ; preds = %bb.tl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.byd, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16, !noalias !1090
  unreachable

bb.tp:                                            ; preds = %bb.tn
  %i.byh = add nuw i64 %i.bxv, 6                  ; 3 uses
  %i.byi = icmp ult i64 %i.byh, %5
  br i1 %i.byi, label %bb.tr, label %bb.ts

bb.tq:                                            ; preds = %bb.tn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.byf, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #16, !noalias !1090
  unreachable

bb.tr:                                            ; preds = %bb.tp
  %i.byj = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxx
  %i.byk = load i8, ptr %i.byj, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byl = zext i8 %i.byk to i64
  %i.bym = shl nuw nsw i64 %i.byl, 8
  %i.byn = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxv
  %i.byo = load i8, ptr %i.byn, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byp = zext i8 %i.byo to i64
  %i.byq = or disjoint i64 %i.bym, %i.byp
  %i.byr = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxz
  %i.bys = load i8, ptr %i.byr, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byt = zext i8 %i.bys to i64
  %i.byu = shl nuw nsw i64 %i.byt, 16
  %i.byv = or disjoint i64 %i.byq, %i.byu
  %i.byw = getelementptr inbounds nuw i8, ptr %4, i64 %i.byb
  %i.byx = load i8, ptr %i.byw, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byy = zext i8 %i.byx to i64
  %i.byz = shl nuw nsw i64 %i.byy, 24
  %i.bza = or disjoint i64 %i.byv, %i.byz         ; 2 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %4, i64 %i.byd
  %i.bzc = load i8, ptr %i.bzb, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.bzd = zext i8 %i.bzc to i64
  %i.bze = shl nuw nsw i64 %i.bzd, 32
  %i.bzf = or disjoint i64 %i.bza, %i.bze         ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %4, i64 %i.byf
  %i.bzh = load i8, ptr %i.bzg, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.bzi = zext i8 %i.bzh to i64
  %i.bzj = shl nuw nsw i64 %i.bzi, 40
  %i.bzk = getelementptr inbounds nuw i8, ptr %4, i64 %i.byh
  %i.bzl = load i8, ptr %i.bzk, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.bzm = zext i8 %i.bzl to i64
  %i.bzn = shl nuw nsw i64 %i.bzm, 48
  %i.bzo = or disjoint i64 %i.bzj, %i.bzn
  %i.bzp = or i64 %i.bzo, %i.bzf                  ; 2 uses
  %i.bzq = mul nuw nsw i64 %i.bza, 506832829
  %i.bzr = lshr i64 %i.bzq, 17
  %i.bzs = and i64 %i.bzr, 32767                  ; 2 uses
  %i.bzt = lshr i64 %i.bzf, 8
  %i.bzu = mul nuw nsw i64 %i.bzt, 506832829
  %i.bzv = lshr i64 %i.bzu, 17
  %i.bzw = and i64 %i.bzv, 32767                  ; 2 uses
  %i.bzx = lshr i64 %i.bzp, 16
  %i.bzy = mul i64 %i.bzx, 506832829
  %i.bzz = lshr i64 %i.bzy, 17
  %i.caa = and i64 %i.bzz, 32767                  ; 2 uses
  %i.cab = lshr i64 %i.bzp, 24
  %i.cac = mul nuw nsw i64 %i.cab, 506832829
  %i.cad = lshr i64 %i.cac, 17
  %i.cae = and i64 %i.cad, 32767                  ; 2 uses
  %i.caf = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.bzs ; 2 uses
  %i.cag = load i16, ptr %i.caf, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.cah = add i16 %i.cag, 1
  store i16 %i.cah, ptr %i.caf, align 2, !noalias !1090
  %i.cai = and i16 %i.cag, 63
  %i.caj = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.bzw ; 2 uses
  %i.cak = load i16, ptr %i.caj, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.cal = add i16 %i.cak, 1
  store i16 %i.cal, ptr %i.caj, align 2, !noalias !1090
  %i.cam = and i16 %i.cak, 63
  %i.can = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.caa ; 2 uses
  %i.cao = load i16, ptr %i.can, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.cap = add i16 %i.cao, 1
  store i16 %i.cap, ptr %i.can, align 2, !noalias !1090
  %i.caq = and i16 %i.cao, 63
  %i.car = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.cae ; 2 uses
  %i.cas = load i16, ptr %i.car, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.cat = add i16 %i.cas, 1
  store i16 %i.cat, ptr %i.car, align 2, !noalias !1090
  %i.cau = and i16 %i.cas, 63
  %i.cav = zext nneg i16 %i.cam to i64
  %i.caw = zext nneg i16 %i.caq to i64
  %i.cax = zext nneg i16 %i.cau to i64
  %i.cay = zext nneg i16 %i.cai to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bzs, 8
  %i.caz = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx.i.i.i
  %i.cba = getelementptr inbounds nuw [4 x i8], ptr %i.caz, i64 %i.cay
  %i.cbb = trunc i64 %i.bxv to i32
  store i32 %i.cbb, ptr %i.cba, align 4, !noalias !1090
  %.idx49.i.i.i = shl nuw nsw i64 %i.bzw, 8
  %i.cbc = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx49.i.i.i
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %i.cbc, i64 %i.cav
  %i.cbe = trunc i64 %i.bxx to i32
  store i32 %i.cbe, ptr %i.cbd, align 4, !noalias !1090
  %.idx50.i.i.i = shl nuw nsw i64 %i.caa, 8
  %i.cbf = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx50.i.i.i
  %i.cbg = getelementptr inbounds nuw [4 x i8], ptr %i.cbf, i64 %i.caw
  %i.cbh = trunc i64 %i.bxz to i32
  store i32 %i.cbh, ptr %i.cbg, align 4, !noalias !1090
  %.idx51.i.i.i = shl nuw nsw i64 %i.cae, 8
  %i.cbi = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx51.i.i.i
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %i.cbi, i64 %i.cax
  %i.cbk = trunc i64 %i.byb to i32
  store i32 %i.cbk, ptr %i.cbj, align 4, !noalias !1090
  %exitcond.not.i.i.i432 = icmp eq i64 %i.bxs, %i.bxp
  br i1 %exitcond.not.i.i.i432, label %._crit_edge.i.i.i433, label %.lr.ph.i.i.i431

bb.ts:                                            ; preds = %bb.tp
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.byh, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16, !noalias !1090
  unreachable

_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i433, %bb.sz
  %.sroa.0.0.i.i.i434 = phi i64 [ %i.bxr, %._crit_edge.i.i.i433 ], [ %i.bxi, %bb.sz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1086
  %i.cbl = icmp ult i64 %.sroa.0.0.i.i.i434, %spec.store.select4.i427
  br i1 %i.cbl, label %.lr.ph.i.preheader.i, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %.val9.i.i435 = load i64, ptr %i.bjf, align 8, !alias.scope !1051, !noalias !1058 ; 2 uses
  %.val8.i.i436 = load ptr, ptr %i.bid, align 8, !alias.scope !1051, !noalias !1058, !nonnull !6
  %.val5.i.i437 = load i64, ptr %i.bjh, align 8, !alias.scope !1051, !noalias !1058 ; 2 uses
  %.val.i78.i438 = load ptr, ptr %i.bjg, align 8, !alias.scope !1051, !noalias !1058, !nonnull !6
  br label %.lr.ph.i.i439

.lr.ph.i.i439:                                    ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i
  %.sroa.01.037.i.i = phi i64 [ %i.cbm, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.0.i.i.i434, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.cbm = add i64 %.sroa.01.037.i.i, 1           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %i.cbn = and i64 %.sroa.01.037.i.i, %6          ; 3 uses
  %.not.i.i77.i440 = icmp ugt i64 %i.cbn, %5
  br i1 %.not.i.i77.i440, label %bb.tt, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441, !prof !10

bb.tt:                                            ; preds = %.lr.ph.i.i439
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1094
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441: ; preds = %.lr.ph.i.i439
  %i.cbo = sub nuw nsw i64 %5, %i.cbn
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %.not.i.i.i.i = icmp samesign ult i64 %i.cbo, 4
  br i1 %.not.i.i.i.i, label %bb.tu, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.tu:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !1096
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441
  %i.cbp = getelementptr inbounds nuw i8, ptr %4, i64 %i.cbn
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cbp, align 1, !alias.scope !1097, !noalias !1098
  %i.cbq = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.cbr = mul nuw nsw i64 %i.cbq, 506832829
  %i.cbs = lshr i64 %i.cbr, 17
  %i.cbt = and i64 %i.cbs, 32767                  ; 4 uses
  %i.cbu = icmp ult i64 %i.cbt, %.val9.i.i435
  br i1 %i.cbu, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cbv = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i436, i64 %i.cbt ; 3 uses
  %i.cbw = load i16, ptr %i.cbv, align 2, !noalias !1099, !noundef !6
  %i.cbx = and i16 %i.cbw, 63
  %i.cby = zext nneg i16 %i.cbx to i64
  %i.cbz = shl nuw nsw i64 %i.cbt, 6
  %i.cca = or disjoint i64 %i.cbz, %i.cby         ; 3 uses
  %i.ccb = icmp ult i64 %i.cca, %.val5.i.i437
  br i1 %i.ccb, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.tx

bb.tw:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cbt, i64 noundef %.val9.i.i435, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1099
  unreachable

bb.tx:                                            ; preds = %bb.tv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cca, i64 noundef %.val5.i.i437, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1099
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.tv
  %i.ccc = getelementptr inbounds nuw [4 x i8], ptr %.val.i78.i438, i64 %i.cca
  %i.ccd = trunc i64 %.sroa.01.037.i.i to i32
  store i32 %i.ccd, ptr %i.ccc, align 4, !noalias !1099
  %i.cce = load i16, ptr %i.cbv, align 2, !noalias !1099, !noundef !6
  %i.ccf = add i16 %i.cce, 1
  store i16 %i.ccf, ptr %i.cbv, align 2, !noalias !1099
  %exitcond.not.i.i442 = icmp eq i64 %i.cbm, %spec.store.select4.i427
  br i1 %exitcond.not.i.i442, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i439

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %i.ccg = load i64, ptr %i.p, align 8, !noalias !1060, !noundef !6
  %i.cch = add i64 %i.ccg, %.sroa.0.3.i418
  br label %bb.rv

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.rv, %bb.oj
  %.sroa.034.0.lcssa.i389 = phi i64 [ %i.bin, %bb.oj ], [ %.sroa.034.1.i398, %bb.rv ]
  %.sroa.032.0.lcssa.i390 = phi i64 [ 0, %bb.oj ], [ %.sroa.032.1.i399, %bb.rv ]
  %.sroa.0.0.lcssa.i391 = phi i64 [ %3, %bb.oj ], [ %.sroa.0.1.i402, %bb.rv ]
  %i.cci = add i64 %.sroa.034.0.lcssa.i389, %i.bio
  %i.ccj = sub i64 %i.cci, %.sroa.0.0.lcssa.i391
  store i64 %i.ccj, ptr %11, align 8, !alias.scope !1053, !noalias !1057
  %i.cck = load i64, ptr %14, align 8, !alias.scope !1054, !noalias !1100, !noundef !6
  %i.ccl = add i64 %i.cck, %.sroa.032.0.lcssa.i390
  store i64 %i.ccl, ptr %14, align 8, !alias.scope !1054, !noalias !1100
  br label %bb.acw

bb.ty:                                            ; preds = %bb.a
  %i.ccm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.cco = load i8, ptr %i.ccn, align 1, !range !702, !noundef !6
  %i.ccp = trunc nuw i8 %i.cco to i1
  %.16 = select i1 %i.ccp, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.ccq = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.ccr = load i32, ptr %i.ccq, align 4, !alias.scope !1102, !noalias !1108, !noundef !6
  %i.ccs = and i32 %i.ccr, 63
  %i.cct = zext nneg i32 %i.ccs to i64
  %i.ccu = shl nuw i64 1, %i.cct
  %i.ccv = add i64 %i.ccu, -16                    ; 3 uses
  %i.ccw = load i64, ptr %11, align 8, !alias.scope !1105, !noalias !1109, !noundef !6 ; 2 uses
  %i.ccx = add i64 %3, %2                         ; 9 uses
  %i.ccy = icmp ugt i64 %2, 3
  %i.ccz = add i64 %i.ccx, -3
  %spec.select.i449 = select i1 %i.ccy, i64 %i.ccz, i64 %3
  %i.cda = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cdb = load i32, ptr %i.cda, align 8, !alias.scope !1102, !noalias !1108, !noundef !6 ; 2 uses
  %i.cdc = icmp slt i32 %i.cdb, 9
  %..i450 = select i1 %i.cdc, i64 64, i64 512     ; 3 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i451 = load i32, ptr %i.cdd, align 8, !alias.scope !1103, !noalias !1110, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i451), !noalias !1111
  %i.cde = add i64 %3, 4
  %i.cdf = icmp ult i64 %i.cde, %i.ccx
  br i1 %i.cdf, label %.lr.ph.i455, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i455:                                      ; preds = %bb.ty
  %i.cdg = add i64 %..i450, %3
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cdl = load i64, ptr %i.cdk, align 8, !alias.scope !1102, !noalias !1108, !noundef !6 ; 2 uses
  %i.cdm = add i64 %i.ccx, -4
  %i.cdn = shl nuw nsw i64 %..i450, 2
  %i.cdo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cds = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.cdt = icmp slt i32 %i.cdb, 5
  %.not4.i.i456 = icmp eq i64 %10, 0
  %.not5.i.i457 = icmp eq i64 %10, 1
  %i.cdu = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cdv = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.cdw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i458 = icmp eq i64 %10, 3              ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.tz

bb.tz:                                            ; preds = %bb.xk, %.lr.ph.i455
  %.sroa.0.0814.i459 = phi i64 [ %3, %.lr.ph.i455 ], [ %.sroa.0.1.i471, %bb.xk ] ; 9 uses
  %.sroa.031.0813.i460 = phi ptr [ %12, %.lr.ph.i455 ], [ %.sroa.031.1.i470, %bb.xk ] ; 7 uses
  %.sroa.4.0812.i461 = phi i64 [ %13, %.lr.ph.i455 ], [ %.sroa.4.1.i469, %bb.xk ] ; 6 uses
  %.sroa.032.0811.i462 = phi i64 [ 0, %.lr.ph.i455 ], [ %.sroa.032.1.i468, %bb.xk ] ; 5 uses
  %.sroa.034.0810.i463 = phi i64 [ %i.ccw, %.lr.ph.i455 ], [ %.sroa.034.1.i467, %bb.xk ] ; 4 uses
  %.sroa.053.0809.i464 = phi i64 [ %i.cdg, %.lr.ph.i455 ], [ %.sroa.053.1.i466, %bb.xk ] ; 6 uses
  %i.cdy = sub i64 %i.ccx, %.sroa.0.0814.i459     ; 2 uses
  %spec.store.select.i465 = call i64 @llvm.umin.i64(i64 %.sroa.0.0814.i459, i64 %i.ccv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !1112
  store i64 2020, ptr %i.cdj, align 8, !noalias !1112
  %i.cdz = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ccm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0814.i459, i64 noundef %i.cdy, i64 noundef %spec.store.select.i465, i64 noundef %i.cdl, ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
  br i1 %i.cdz, label %.preheader.i482, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.cea = add i64 %.sroa.034.0810.i463, 1        ; 2 uses
  %i.ceb = add i64 %.sroa.0.0814.i459, 1          ; 6 uses
  %i.cec = icmp ugt i64 %i.ceb, %.sroa.053.0809.i464
  br i1 %i.cec, label %bb.ub, label %bb.xk

bb.ub:                                            ; preds = %bb.ua
  %i.ced = add i64 %.sroa.0.0814.i459, 17         ; 2 uses
  %.not.i472 = icmp ult i64 %i.ced, %i.cdm
  br i1 %.not.i472, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.cee = add i64 %.sroa.053.0809.i464, %i.cdn
  %i.cef = icmp ugt i64 %i.ceb, %i.cee
  %i.ceg = and i64 %i.ceb, %6                     ; 19 uses
  %i.ceh = icmp ult i64 %i.ceg, %5                ; 2 uses
  br i1 %i.cef, label %bb.vo, label %bb.ue

bb.ud:                                            ; preds = %bb.ub
  %.neg.i473 = xor i64 %.sroa.0.0814.i459, -1
  %i.cei = add i64 %i.ccx, %.neg.i473
  %i.cej = add i64 %i.cei, %i.cea
  br label %bb.xk

bb.ue:                                            ; preds = %bb.uc
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %.val54.i.i474 = load ptr, ptr %i.ccm, align 8, !alias.scope !1115, !noalias !1116, !nonnull !6, !noundef !6 ; 4 uses
  %.val55.i.i475 = load i64, ptr %i.cdo, align 8, !alias.scope !1115, !noalias !1116, !noundef !6 ; 8 uses
  %.val.i.i476 = load ptr, ptr %i.cdp, align 8, !alias.scope !1115, !noalias !1116, !nonnull !6, !noundef !6 ; 4 uses
  %.val53.i.i477 = load i64, ptr %i.cdq, align 8, !alias.scope !1115, !noalias !1116, !noundef !6 ; 8 uses
  br i1 %i.ceh, label %bb.uf, label %bb.ug

bb.uf:                                            ; preds = %bb.ue
  %i.cek = add nuw nsw i64 %i.ceg, 1              ; 3 uses
  %i.cel = icmp samesign ult i64 %i.cek, %5
  br i1 %i.cel, label %bb.uh, label %bb.ui

bb.ug:                                            ; preds = %bb.ue
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ceg, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #16, !noalias !1117
  unreachable

bb.uh:                                            ; preds = %bb.uf
  %i.cem = add nuw nsw i64 %i.ceg, 2              ; 3 uses
  %i.cen = icmp samesign ult i64 %i.cem, %5
  br i1 %i.cen, label %bb.uj, label %bb.uk

bb.ui:                                            ; preds = %bb.uf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cek, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #16, !noalias !1117
  unreachable

bb.uj:                                            ; preds = %bb.uh
end_hunk_7
begin_hunk_8_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.xu:                                            ; preds = %bb.xs
  %i.cqf = icmp eq i64 %i.cpv, %i.cqc
  br i1 %i.cqf, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.cqg = icmp ult i64 %i.cqa, 7
  br i1 %i.cqg, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cqh = icmp ult i64 %i.cqd, 7
  br i1 %i.cqh, label %bb.xz, label %bb.xy

bb.xx:                                            ; preds = %bb.xv
  %.tr7.i.i530 = trunc nuw nsw i64 %i.cqa to i32
  %i.cqi = shl nuw nsw i32 %.tr7.i.i530, 2
  %i.cqj = lshr i32 158663784, %i.cqi
  %i.cqk = and i32 %i.cqj, 15
  %i.cql = zext nneg i32 %i.cqk to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494

bb.xy:                                            ; preds = %bb.xw
  br i1 %i.cdv, label %bb.ya, label %bb.yb

bb.xz:                                            ; preds = %bb.xw
  %.tr.i.i529 = trunc nuw nsw i64 %i.cqd to i32
  %i.cqm = shl nuw nsw i32 %.tr.i.i529, 2
  %i.cqn = lshr i32 266017486, %i.cqm
  %i.cqo = and i32 %i.cqn, 15
  %i.cqp = zext nneg i32 %i.cqo to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494

bb.ya:                                            ; preds = %bb.xy
  %i.cqq = load i32, ptr %i.cdw, align 4, !alias.scope !1128, !noalias !1111, !noundef !6
  %i.cqr = sext i32 %i.cqq to i64
  %i.cqs = icmp eq i64 %i.cpv, %i.cqr
  br i1 %i.cqs, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, label %bb.yc

bb.yb:                                            ; preds = %bb.xy
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1129
  unreachable

bb.yc:                                            ; preds = %bb.ya
  br i1 %.not6.i.i458, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cqt = load i32, ptr %i.cdx, align 4, !alias.scope !1128, !noalias !1111, !noundef !6
  %i.cqu = sext i32 %i.cqt to i64
  %i.cqv = icmp eq i64 %i.cpv, %i.cqu
  br i1 %i.cqv, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, label %bb.xo

bb.ye:                                            ; preds = %bb.yc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1129
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494: ; preds = %bb.yd, %bb.ya, %bb.xz, %bb.xx, %bb.xu, %bb.xo
  %.sroa.0.0.i.i495 = phi i64 [ %i.cpw, %bb.xo ], [ 3, %bb.yd ], [ %i.cql, %bb.xx ], [ %i.cqp, %bb.xz ], [ 1, %bb.xu ], [ 2, %bb.ya ] ; 3 uses
  %i.cqw = icmp ule i64 %i.cpv, %spec.store.select3.i492
  %i.cqx = icmp ne i64 %.sroa.0.0.i.i495, 0
  %or.cond.i496 = and i1 %i.cqw, %i.cqx
  br i1 %or.cond.i496, label %bb.yj, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497

bb.yf:                                            ; preds = %bb.xm
  %i.cqy = load i64, ptr %i.cds, align 8, !noalias !1112, !noundef !6
  %i.cqz = load i64, ptr %i.cdj, align 8, !noalias !1112, !noundef !6
  %i.cra = add i64 %i.cqz, 175
  %.not71.i531 = icmp ult i64 %i.cqy, %i.cra
  br i1 %.not71.i531, label %bb.xn, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.crb = add i64 %.sroa.034.2.i485, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1112
  %i.crc = icmp samesign ult i32 %.sroa.049.0.i483, 3
  %i.crd = add i64 %.sroa.0.2.i486, 5
  %i.cre = icmp ult i64 %i.crd, %i.ccx
  %or.cond5.i532 = and i1 %i.crc, %i.cre
  br i1 %or.cond5.i532, label %bb.yh, label %bb.xn

bb.yh:                                            ; preds = %bb.yg
  %i.crf = add nuw nsw i32 %.sroa.049.0.i483, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1112
  br label %.preheader.i482

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497: ; preds = %bb.ym, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, %bb.xs
  %.sroa.0.0.i3.i498 = phi i64 [ %.sroa.0.0.i.i495, %bb.ym ], [ %.sroa.0.0.i.i495, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494 ], [ 0, %bb.xs ]
  %.not.i76.i499 = icmp eq i64 %.sroa.4.0812.i461, 0
  br i1 %.not.i76.i499, label %bb.yi, label %bb.yo, !prof !10

bb.yi:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !1130
  unreachable

bb.yj:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494
  br i1 %i.cdv, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  br i1 %.not6.i.i458, label %bb.yn, label %bb.ym

bb.yl:                                            ; preds = %bb.yj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1131
  unreachable

bb.ym:                                            ; preds = %bb.yk
  %i.crg = load i32, ptr %i.cdw, align 4, !alias.scope !1104, !noalias !1111, !noundef !6
  store i32 %i.crg, ptr %i.cdx, align 4, !alias.scope !1104, !noalias !1111
  %i.crh = load <2 x i32>, ptr %9, align 4, !alias.scope !1104, !noalias !1111
  store <2 x i32> %i.crh, ptr %i.cdu, align 4, !alias.scope !1104, !noalias !1111
  %i.cri = trunc i64 %i.cpv to i32
  store i32 %i.cri, ptr %9, align 4, !alias.scope !1104, !noalias !1111
  %.val.i528 = load i32, ptr %i.cdd, align 8, !alias.scope !1103, !noalias !1110, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i528), !noalias !1132
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497

bb.yn:                                            ; preds = %bb.yk
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1131
  unreachable

bb.yo:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497
  %i.crj = getelementptr inbounds nuw i8, ptr %.sroa.031.0813.i460, i64 16
  %i.crk = add nsw i64 %.sroa.4.0812.i461, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0813.i460) ]
  %i.crl = add i64 %.sroa.032.0811.i462, 1
  %i.crm = load i64, ptr %i.j, align 8, !noalias !1112, !noundef !6 ; 2 uses
  %i.crn = load i64, ptr %i.cdh, align 8, !noalias !1112, !noundef !6
  %i.cro = xor i64 %i.crn, %i.crm
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0813.i460, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cdk, i64 noundef %.sroa.034.3.i490, i64 noundef %i.crm, i64 noundef %i.cro, i64 noundef %.sroa.0.0.i3.i498), !noalias !1131
  %i.crp = load i64, ptr %15, align 8, !alias.scope !1107, !noalias !1133, !noundef !6
  %i.crq = add i64 %i.crp, %.sroa.034.3.i490
  store i64 %i.crq, ptr %15, align 8, !alias.scope !1107, !noalias !1133
  %i.crr = add i64 %.sroa.0.3.i491, 2             ; 4 uses
  %i.crs = load i64, ptr %i.j, align 8, !noalias !1112, !noundef !6
  %i.crt = add i64 %i.crs, %.sroa.0.3.i491
  %spec.store.select4.i500 = call i64 @llvm.umin.i64(i64 %i.crt, i64 %spec.select.i449) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1138
  %i.cru = add i64 %.sroa.0.3.i491, 10
  %.not.i.i.i501 = icmp ult i64 %spec.store.select4.i500, %i.cru
  br i1 %.not.i.i.i501, label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %.val53.i.i.i502 = load ptr, ptr %i.ccm, align 8, !alias.scope !1139, !noalias !1140, !nonnull !6, !noundef !6 ; 4 uses
  %.val54.i.i.i503 = load i64, ptr %i.cdo, align 8, !alias.scope !1139, !noalias !1140, !noundef !6 ; 2 uses
  %.val.i.i.i504 = load ptr, ptr %i.cdp, align 8, !alias.scope !1139, !noalias !1140, !nonnull !6, !noundef !6 ; 4 uses
  %.val52.i.i.i505 = load i64, ptr %i.cdq, align 8, !alias.scope !1139, !noalias !1140, !noundef !6 ; 2 uses
  store i64 %.val54.i.i.i503, ptr %i.h, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1141
  store i64 16384, ptr %i.g, align 8, !noalias !1141
  %i.crv = icmp eq i64 %.val54.i.i.i503, 16384
  br i1 %i.crv, label %bb.yr, label %bb.yq, !prof !8

bb.yq:                                            ; preds = %bb.yp
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1142
  unreachable

bb.yr:                                            ; preds = %bb.yp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1141
  store i64 %.val52.i.i.i505, ptr %i.f, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1141
  store i64 262144, ptr %i.e, align 8, !noalias !1141
  %i.crw = icmp eq i64 %.val52.i.i.i505, 262144
  br i1 %i.crw, label %bb.yt, label %bb.ys, !prof !8

bb.ys:                                            ; preds = %bb.yr
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16, !noalias !1142
  unreachable

bb.yt:                                            ; preds = %bb.yr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1141
  %i.crx = sub i64 %spec.store.select4.i500, %i.crr ; 2 uses
  %i.cry = lshr i64 %i.crx, 2                     ; 2 uses
  %.not83.i.i.i506 = icmp eq i64 %i.cry, 0
  br i1 %.not83.i.i.i506, label %._crit_edge.i.i.i514, label %.lr.ph.i.i.i507

._crit_edge.i.i.i514:                             ; preds = %bb.zg, %bb.yt
  %i.crz = and i64 %i.crx, -4
  %i.csa = add i64 %i.crz, %i.crr
  br label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i507:                                  ; preds = %bb.yt, %bb.zg
  %.sroa.014.082.i.i.i508 = phi i64 [ %i.csb, %bb.zg ], [ 0, %bb.yt ] ; 2 uses
  %i.csb = add nuw nsw i64 %.sroa.014.082.i.i.i508, 1 ; 2 uses
  %i.csc = shl nuw i64 %.sroa.014.082.i.i.i508, 2
  %i.csd = add i64 %i.csc, %i.crr
  %i.cse = and i64 %i.csd, %6                     ; 10 uses
  %i.csf = icmp ult i64 %i.cse, %5
  br i1 %i.csf, label %bb.yu, label %bb.yv

bb.yu:                                            ; preds = %.lr.ph.i.i.i507
  %i.csg = add nuw nsw i64 %i.cse, 1              ; 4 uses
  %i.csh = icmp ult i64 %i.csg, %5
  br i1 %i.csh, label %bb.yw, label %bb.yx

bb.yv:                                            ; preds = %.lr.ph.i.i.i507
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cse, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #16, !noalias !1142
  unreachable

bb.yw:                                            ; preds = %bb.yu
  %i.csi = add nuw i64 %i.cse, 2                  ; 4 uses
  %i.csj = icmp ult i64 %i.csi, %5
  br i1 %i.csj, label %bb.yy, label %bb.yz

bb.yx:                                            ; preds = %bb.yu
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csg, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16, !noalias !1142
  unreachable

bb.yy:                                            ; preds = %bb.yw
  %i.csk = add nuw i64 %i.cse, 3                  ; 4 uses
  %i.csl = icmp ult i64 %i.csk, %5
  br i1 %i.csl, label %bb.za, label %bb.zb

bb.yz:                                            ; preds = %bb.yw
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csi, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !1142
  unreachable

bb.za:                                            ; preds = %bb.yy
  %i.csm = add nuw i64 %i.cse, 4                  ; 3 uses
  %i.csn = icmp ult i64 %i.csm, %5
  br i1 %i.csn, label %bb.zc, label %bb.zd

bb.zb:                                            ; preds = %bb.yy
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csk, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !1142
  unreachable

bb.zc:                                            ; preds = %bb.za
  %i.cso = add nuw i64 %i.cse, 5                  ; 3 uses
  %i.csp = icmp ult i64 %i.cso, %5
  br i1 %i.csp, label %bb.ze, label %bb.zf

bb.zd:                                            ; preds = %bb.za
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csm, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16, !noalias !1142
  unreachable

bb.ze:                                            ; preds = %bb.zc
  %i.csq = add nuw i64 %i.cse, 6                  ; 3 uses
  %i.csr = icmp ult i64 %i.csq, %5
  br i1 %i.csr, label %bb.zg, label %bb.zh

bb.zf:                                            ; preds = %bb.zc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cso, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #16, !noalias !1142
  unreachable

bb.zg:                                            ; preds = %bb.ze
  %i.css = getelementptr inbounds nuw i8, ptr %4, i64 %i.csg
  %i.cst = load i8, ptr %i.css, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.csu = zext i8 %i.cst to i64
  %i.csv = shl nuw nsw i64 %i.csu, 8
  %i.csw = getelementptr inbounds nuw i8, ptr %4, i64 %i.cse
  %i.csx = load i8, ptr %i.csw, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.csy = zext i8 %i.csx to i64
  %i.csz = or disjoint i64 %i.csv, %i.csy
  %i.cta = getelementptr inbounds nuw i8, ptr %4, i64 %i.csi
  %i.ctb = load i8, ptr %i.cta, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.ctc = zext i8 %i.ctb to i64
  %i.ctd = shl nuw nsw i64 %i.ctc, 16
  %i.cte = or disjoint i64 %i.csz, %i.ctd
  %i.ctf = getelementptr inbounds nuw i8, ptr %4, i64 %i.csk
  %i.ctg = load i8, ptr %i.ctf, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.cth = zext i8 %i.ctg to i64
  %i.cti = shl nuw nsw i64 %i.cth, 24
  %i.ctj = or disjoint i64 %i.cte, %i.cti         ; 2 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %4, i64 %i.csm
  %i.ctl = load i8, ptr %i.ctk, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.ctm = zext i8 %i.ctl to i64
  %i.ctn = shl nuw nsw i64 %i.ctm, 32
  %i.cto = or disjoint i64 %i.ctj, %i.ctn         ; 2 uses
  %i.ctp = getelementptr inbounds nuw i8, ptr %4, i64 %i.cso
  %i.ctq = load i8, ptr %i.ctp, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.ctr = zext i8 %i.ctq to i64
  %i.cts = shl nuw nsw i64 %i.ctr, 40
  %i.ctt = getelementptr inbounds nuw i8, ptr %4, i64 %i.csq
  %i.ctu = load i8, ptr %i.ctt, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.ctv = zext i8 %i.ctu to i64
  %i.ctw = shl nuw nsw i64 %i.ctv, 48
  %i.ctx = or disjoint i64 %i.cts, %i.ctw
  %i.cty = or i64 %i.ctx, %i.cto                  ; 2 uses
  %i.ctz = mul nuw nsw i64 %i.ctj, 506832829
  %i.cua = lshr i64 %i.ctz, 18
  %i.cub = and i64 %i.cua, 16383                  ; 2 uses
  %i.cuc = lshr i64 %i.cto, 8
  %i.cud = mul nuw nsw i64 %i.cuc, 506832829
  %i.cue = lshr i64 %i.cud, 18
  %i.cuf = and i64 %i.cue, 16383                  ; 2 uses
  %i.cug = lshr i64 %i.cty, 16
  %i.cuh = mul i64 %i.cug, 506832829
  %i.cui = lshr i64 %i.cuh, 18
  %i.cuj = and i64 %i.cui, 16383                  ; 2 uses
  %i.cuk = lshr i64 %i.cty, 24
  %i.cul = mul nuw nsw i64 %i.cuk, 506832829
  %i.cum = lshr i64 %i.cul, 18
  %i.cun = and i64 %i.cum, 16383                  ; 2 uses
  %i.cuo = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cub ; 2 uses
  %i.cup = load i16, ptr %i.cuo, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cuq = add i16 %i.cup, 1
  store i16 %i.cuq, ptr %i.cuo, align 2, !noalias !1142
  %i.cur = and i16 %i.cup, 15
  %i.cus = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cuf ; 2 uses
  %i.cut = load i16, ptr %i.cus, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cuu = add i16 %i.cut, 1
  store i16 %i.cuu, ptr %i.cus, align 2, !noalias !1142
  %i.cuv = and i16 %i.cut, 15
  %i.cuw = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cuj ; 2 uses
  %i.cux = load i16, ptr %i.cuw, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cuy = add i16 %i.cux, 1
  store i16 %i.cuy, ptr %i.cuw, align 2, !noalias !1142
  %i.cuz = and i16 %i.cux, 15
  %i.cva = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cun ; 2 uses
  %i.cvb = load i16, ptr %i.cva, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cvc = add i16 %i.cvb, 1
  store i16 %i.cvc, ptr %i.cva, align 2, !noalias !1142
  %i.cvd = and i16 %i.cvb, 15
  %i.cve = zext nneg i16 %i.cuv to i64
  %i.cvf = zext nneg i16 %i.cuz to i64
  %i.cvg = zext nneg i16 %i.cvd to i64
  %i.cvh = zext nneg i16 %i.cur to i64
  %.idx.i.i.i509 = shl nuw nsw i64 %i.cub, 6
  %i.cvi = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx.i.i.i509
  %i.cvj = getelementptr inbounds nuw [4 x i8], ptr %i.cvi, i64 %i.cvh
  %i.cvk = trunc i64 %i.cse to i32
  store i32 %i.cvk, ptr %i.cvj, align 4, !noalias !1142
  %.idx49.i.i.i510 = shl nuw nsw i64 %i.cuf, 6
  %i.cvl = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx49.i.i.i510
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.cvl, i64 %i.cve
  %i.cvn = trunc i64 %i.csg to i32
  store i32 %i.cvn, ptr %i.cvm, align 4, !noalias !1142
  %.idx50.i.i.i511 = shl nuw nsw i64 %i.cuj, 6
  %i.cvo = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx50.i.i.i511
  %i.cvp = getelementptr inbounds nuw [4 x i8], ptr %i.cvo, i64 %i.cvf
  %i.cvq = trunc i64 %i.csi to i32
  store i32 %i.cvq, ptr %i.cvp, align 4, !noalias !1142
  %.idx51.i.i.i512 = shl nuw nsw i64 %i.cun, 6
  %i.cvr = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx51.i.i.i512
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.cvr, i64 %i.cvg
  %i.cvt = trunc i64 %i.csk to i32
  store i32 %i.cvt, ptr %i.cvs, align 4, !noalias !1142
  %exitcond.not.i.i.i513 = icmp eq i64 %i.csb, %i.cry
  br i1 %exitcond.not.i.i.i513, label %._crit_edge.i.i.i514, label %.lr.ph.i.i.i507

bb.zh:                                            ; preds = %bb.ze
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csq, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16, !noalias !1142
  unreachable

_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i514, %bb.yo
  %.sroa.0.0.i.i.i515 = phi i64 [ %i.csa, %._crit_edge.i.i.i514 ], [ %i.crr, %bb.yo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1138
  %i.cvu = icmp ult i64 %.sroa.0.0.i.i.i515, %spec.store.select4.i500
  br i1 %i.cvu, label %.lr.ph.i.preheader.i516, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i516:                          ; preds = %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %.val9.i.i517 = load i64, ptr %i.cdo, align 8, !alias.scope !1103, !noalias !1110 ; 2 uses
  %.val8.i.i518 = load ptr, ptr %i.ccm, align 8, !alias.scope !1103, !noalias !1110, !nonnull !6
  %.val5.i.i519 = load i64, ptr %i.cdq, align 8, !alias.scope !1103, !noalias !1110 ; 2 uses
  %.val.i78.i520 = load ptr, ptr %i.cdp, align 8, !alias.scope !1103, !noalias !1110, !nonnull !6
  br label %.lr.ph.i.i521

.lr.ph.i.i521:                                    ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i516
  %.sroa.01.037.i.i522 = phi i64 [ %i.cvv, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.0.i.i.i515, %.lr.ph.i.preheader.i516 ] ; 3 uses
  %i.cvv = add i64 %.sroa.01.037.i.i522, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.cvw = and i64 %.sroa.01.037.i.i522, %6       ; 3 uses
  %.not.i.i77.i523 = icmp ugt i64 %i.cvw, %5
  br i1 %.not.i.i77.i523, label %bb.zi, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524, !prof !10

bb.zi:                                            ; preds = %.lr.ph.i.i521
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1146
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524: ; preds = %.lr.ph.i.i521
  %i.cvx = sub nuw nsw i64 %5, %i.cvw
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %.not.i.i.i.i525 = icmp samesign ult i64 %i.cvx, 4
  br i1 %.not.i.i.i.i525, label %bb.zj, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.zj:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !1148
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524
  %i.cvy = getelementptr inbounds nuw i8, ptr %4, i64 %i.cvw
  %.sroa.0.0.copyload.i.i.i526 = load i32, ptr %i.cvy, align 1, !alias.scope !1149, !noalias !1150
  %i.cvz = zext i32 %.sroa.0.0.copyload.i.i.i526 to i64
  %i.cwa = mul nuw nsw i64 %i.cvz, 506832829
  %i.cwb = lshr i64 %i.cwa, 18
  %i.cwc = and i64 %i.cwb, 16383                  ; 4 uses
  %i.cwd = icmp ult i64 %i.cwc, %.val9.i.i517
  br i1 %i.cwd, label %bb.zk, label %bb.zl

bb.zk:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cwe = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i518, i64 %i.cwc ; 3 uses
  %i.cwf = load i16, ptr %i.cwe, align 2, !noalias !1151, !noundef !6
  %i.cwg = and i16 %i.cwf, 15
  %i.cwh = zext nneg i16 %i.cwg to i64
  %i.cwi = shl nuw nsw i64 %i.cwc, 4
  %i.cwj = or disjoint i64 %i.cwi, %i.cwh         ; 3 uses
  %i.cwk = icmp ult i64 %i.cwj, %.val5.i.i519
  br i1 %i.cwk, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.zm

bb.zl:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cwc, i64 noundef %.val9.i.i517, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1151
  unreachable

bb.zm:                                            ; preds = %bb.zk
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cwj, i64 noundef %.val5.i.i519, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1151
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.zk
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %.val.i78.i520, i64 %i.cwj
  %i.cwm = trunc i64 %.sroa.01.037.i.i522 to i32
  store i32 %i.cwm, ptr %i.cwl, align 4, !noalias !1151
  %i.cwn = load i16, ptr %i.cwe, align 2, !noalias !1151, !noundef !6
  %i.cwo = add i16 %i.cwn, 1
  store i16 %i.cwo, ptr %i.cwe, align 2, !noalias !1151
  %exitcond.not.i.i527 = icmp eq i64 %i.cvv, %spec.store.select4.i500
  br i1 %exitcond.not.i.i527, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i521

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cwp = load i64, ptr %i.j, align 8, !noalias !1112, !noundef !6
  %i.cwq = add i64 %i.cwp, %.sroa.0.3.i491
  br label %bb.xk

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.xk, %bb.ty
  %.sroa.034.0.lcssa.i452 = phi i64 [ %i.ccw, %bb.ty ], [ %.sroa.034.1.i467, %bb.xk ]
  %.sroa.032.0.lcssa.i453 = phi i64 [ 0, %bb.ty ], [ %.sroa.032.1.i468, %bb.xk ]
  %.sroa.0.0.lcssa.i454 = phi i64 [ %3, %bb.ty ], [ %.sroa.0.1.i471, %bb.xk ]
  %i.cwr = add i64 %.sroa.034.0.lcssa.i452, %i.ccx
  %i.cws = sub i64 %i.cwr, %.sroa.0.0.lcssa.i454
  store i64 %i.cws, ptr %11, align 8, !alias.scope !1105, !noalias !1109
  %i.cwt = load i64, ptr %14, align 8, !alias.scope !1106, !noalias !1152, !noundef !6
  %i.cwu = add i64 %i.cwt, %.sroa.032.0.lcssa.i453
  store i64 %i.cwu, ptr %14, align 8, !alias.scope !1106, !noalias !1152
  br label %bb.acw

bb.zn:                                            ; preds = %bb.a
  %i.cwv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  %i.cww = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.cwx = load i8, ptr %i.cww, align 1, !range !702, !noundef !6
  %i.cwy = trunc nuw i8 %i.cwx to i1
  %.17 = select i1 %i.cwy, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.cwz = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.cxa = load i32, ptr %i.cwz, align 4, !alias.scope !1154, !noalias !1160, !noundef !6
  %i.cxb = and i32 %i.cxa, 63
  %i.cxc = zext nneg i32 %i.cxb to i64
  %i.cxd = shl nuw i64 1, %i.cxc
  %i.cxe = add i64 %i.cxd, -16                    ; 3 uses
  %i.cxf = load i64, ptr %11, align 8, !alias.scope !1157, !noalias !1161, !noundef !6 ; 2 uses
  %i.cxg = add i64 %3, %2                         ; 8 uses
  %i.cxh = icmp ugt i64 %2, 7
  %i.cxi = add i64 %i.cxg, -7                     ; 2 uses
  %spec.select.i534 = select i1 %i.cxh, i64 %i.cxi, i64 %3
  %i.cxj = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cxk = load i32, ptr %i.cxj, align 8, !alias.scope !1154, !noalias !1160, !noundef !6 ; 2 uses
  %i.cxl = icmp slt i32 %i.cxk, 9
  %..i535 = select i1 %i.cxl, i64 64, i64 512     ; 3 uses
  %i.cxm = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i536 = load i32, ptr %i.cxm, align 8, !alias.scope !1155, !noalias !1162, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i536), !noalias !1163
  %i.cxn = add i64 %3, 8
  %i.cxo = icmp ult i64 %i.cxn, %i.cxg
  br i1 %i.cxo, label %.lr.ph.i540, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i540:                                      ; preds = %bb.zn
  %i.cxp = add i64 %..i535, %3
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cxu = load i64, ptr %i.cxt, align 8, !alias.scope !1154, !noalias !1160, !noundef !6 ; 2 uses
  %i.cxv = shl nuw nsw i64 %..i535, 2
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.cxy = icmp slt i32 %i.cxk, 5
  %.not4.i.i541 = icmp eq i64 %10, 0
  %.not5.i.i542 = icmp eq i64 %10, 1
  %i.cxz = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cya = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.cyb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i543 = icmp eq i64 %10, 3              ; 2 uses
  %i.cyc = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.cyd = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.cye = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.cyf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cyg = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.cyh = getelementptr inbounds nuw i8, ptr %8, i64 108
  %i.cyi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cyj = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.zo

bb.zo:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i540
  %.sroa.0.051.i = phi i64 [ %3, %.lr.ph.i540 ], [ %.sroa.0.1.i550, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.050.i = phi ptr [ %12, %.lr.ph.i540 ], [ %.sroa.031.1.i549, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.049.i = phi i64 [ %13, %.lr.ph.i540 ], [ %.sroa.4.1.i548, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.048.i = phi i64 [ 0, %.lr.ph.i540 ], [ %.sroa.032.1.i547, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.047.i = phi i64 [ %i.cxf, %.lr.ph.i540 ], [ %.sroa.034.1.i546, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.046.i = phi i64 [ %i.cxp, %.lr.ph.i540 ], [ %.sroa.053.1.i545, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.cyk = sub i64 %i.cxg, %.sroa.0.051.i         ; 2 uses
  %spec.store.select.i544 = call i64 @llvm.umin.i64(i64 %.sroa.0.051.i, i64 %i.cxe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !1164
  store i64 2020, ptr %i.cxs, align 8, !noalias !1164
  %i.cyl = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.051.i, i64 noundef %i.cyk, i64 noundef %spec.store.select.i544, i64 noundef %i.cxu, ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br i1 %i.cyl, label %.preheader.i553, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.cym = add i64 %.sroa.034.047.i, 1            ; 2 uses
  %i.cyn = add i64 %.sroa.0.051.i, 1              ; 4 uses
  %i.cyo = icmp ugt i64 %i.cyn, %.sroa.053.046.i
  br i1 %i.cyo, label %bb.zq, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.zq:                                            ; preds = %bb.zp
  %i.cyp = add i64 %.sroa.0.051.i, 17             ; 2 uses
  %.not.i551 = icmp ult i64 %i.cyp, %i.cxi
  br i1 %.not.i551, label %bb.zr, label %bb.zs

bb.zr:                                            ; preds = %bb.zq
  %i.cyq = add i64 %.sroa.053.046.i, %i.cxv
  %i.cyr = icmp ugt i64 %i.cyn, %i.cyq
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyn), !noalias !1165
  br i1 %i.cyr, label %bb.zu, label %bb.zt

bb.zs:                                            ; preds = %bb.zq
  %.neg.i552 = xor i64 %.sroa.0.051.i, -1
  %i.cys = add i64 %i.cxg, %.neg.i552
  %i.cyt = add i64 %i.cys, %i.cym
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.zt:                                            ; preds = %bb.zr
  %i.cyu = add i64 %.sroa.0.051.i, 3
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyu), !noalias !1165
  %i.cyv = add i64 %.sroa.0.051.i, 5
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyv), !noalias !1165
  %i.cyw = add i64 %.sroa.0.051.i, 7
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyw), !noalias !1165
  %i.cyx = add i64 %.sroa.034.047.i, 9
  %i.cyy = add i64 %.sroa.0.051.i, 9
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.zu:                                            ; preds = %bb.zr
  %i.cyz = add i64 %.sroa.0.051.i, 5
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyz), !noalias !1165
  %i.cza = add i64 %.sroa.0.051.i, 9
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cza), !noalias !1165
  %i.czb = add i64 %.sroa.0.051.i, 13
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.czb), !noalias !1165
  %i.czc = add i64 %.sroa.034.047.i, 17
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, %bb.aay, %bb.zu, %bb.zt, %bb.zs, %bb.zp
  %.sroa.053.1.i545 = phi i64 [ %.sroa.053.046.i, %bb.zp ], [ %.sroa.053.046.i, %bb.zs ], [ %.sroa.053.046.i, %bb.zu ], [ %.sroa.053.046.i, %bb.zt ], [ %i.czm, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.czm, %bb.aay ]
  %.sroa.034.1.i546 = phi i64 [ %i.cym, %bb.zp ], [ %i.cyt, %bb.zs ], [ %i.czc, %bb.zu ], [ %i.cyx, %bb.zt ], [ 0, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ 0, %bb.aay ] ; 2 uses
  %.sroa.032.1.i547 = phi i64 [ %.sroa.032.048.i, %bb.zp ], [ %.sroa.032.048.i, %bb.zs ], [ %.sroa.032.048.i, %bb.zu ], [ %.sroa.032.048.i, %bb.zt ], [ %i.dbd, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dbd, %bb.aay ] ; 2 uses
  %.sroa.4.1.i548 = phi i64 [ %.sroa.4.049.i, %bb.zp ], [ %.sroa.4.049.i, %bb.zs ], [ %.sroa.4.049.i, %bb.zu ], [ %.sroa.4.049.i, %bb.zt ], [ %i.dbc, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dbc, %bb.aay ]
end_hunk_8
begin_hunk_9_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  store i64 2020, ptr %i.cxx, align 8, !noalias !1164
  %i.czh = add i64 %.sroa.0.2.i557, 1             ; 4 uses
  %spec.store.select2.i560 = call i64 @llvm.umin.i64(i64 %i.czh, i64 %i.cxe)
  %i.czi = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.cwv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %i.czh, i64 noundef %.sroa.044.0.i558, i64 noundef %spec.store.select2.i560, i64 noundef %i.cxu, ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  br i1 %i.czi, label %bb.aap, label %bb.zx

bb.zx:                                            ; preds = %bb.aaq, %bb.aap, %bb.zw
  %.sroa.034.3.i561 = phi i64 [ %.sroa.034.2.i556, %bb.zw ], [ %i.dat, %bb.aaq ], [ %.sroa.034.2.i556, %bb.aap ] ; 2 uses
  %.sroa.0.3.i562 = phi i64 [ %.sroa.0.2.i557, %bb.zw ], [ %i.czh, %bb.aaq ], [ %.sroa.0.2.i557, %bb.aap ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1164
  %i.czj = load i64, ptr %i.d, align 8, !noalias !1164, !noundef !6
  %i.czk = shl i64 %i.czj, 1
  %i.czl = add i64 %.sroa.0.3.i562, %..i535
  %i.czm = add i64 %i.czl, %i.czk                 ; 2 uses
  %spec.store.select3.i563 = call i64 @llvm.umin.i64(i64 %.sroa.0.3.i562, i64 %i.cxe) ; 2 uses
  %i.czn = load i64, ptr %i.cxr, align 8, !noalias !1164, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %.not.i.i564 = icmp ugt i64 %i.czn, %spec.store.select3.i563
  br i1 %.not.i.i564, label %bb.zy, label %bb.zz

bb.zy:                                            ; preds = %bb.aan, %bb.zx
  %i.czo = add i64 %i.czn, 15
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565

bb.zz:                                            ; preds = %bb.zx
  %i.czp = add i64 %i.czn, 3                      ; 2 uses
  br i1 %.not4.i.i541, label %bb.aab, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.czq = load i32, ptr %9, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.czr = sext i32 %i.czq to i64                 ; 2 uses
  %i.czs = sub i64 %i.czp, %i.czr                 ; 2 uses
  br i1 %.not5.i.i542, label %bb.aad, label %bb.aac

bb.aab:                                           ; preds = %bb.zz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #16, !noalias !1168
  unreachable

bb.aac:                                           ; preds = %bb.aaa
  %i.czt = load i32, ptr %i.cxz, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.czu = sext i32 %i.czt to i64                 ; 2 uses
  %i.czv = sub i64 %i.czp, %i.czu                 ; 2 uses
  %i.czw = icmp eq i64 %i.czn, %i.czr
  br i1 %i.czw, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568, label %bb.aae

bb.aad:                                           ; preds = %bb.aaa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #16, !noalias !1168
  unreachable

bb.aae:                                           ; preds = %bb.aac
  %i.czx = icmp eq i64 %i.czn, %i.czu
  br i1 %i.czx, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.czy = icmp ult i64 %i.czs, 7
  br i1 %i.czy, label %bb.aah, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.czz = icmp ult i64 %i.czv, 7
  br i1 %i.czz, label %bb.aaj, label %bb.aai

bb.aah:                                           ; preds = %bb.aaf
  %.tr7.i.i586 = trunc nuw nsw i64 %i.czs to i32
  %i.daa = shl nuw nsw i32 %.tr7.i.i586, 2
  %i.dab = lshr i32 158663784, %i.daa
  %i.dac = and i32 %i.dab, 15
  %i.dad = zext nneg i32 %i.dac to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565

bb.aai:                                           ; preds = %bb.aag
  br i1 %i.cya, label %bb.aak, label %bb.aal

bb.aaj:                                           ; preds = %bb.aag
  %.tr.i.i585 = trunc nuw nsw i64 %i.czv to i32
  %i.dae = shl nuw nsw i32 %.tr.i.i585, 2
  %i.daf = lshr i32 266017486, %i.dae
  %i.dag = and i32 %i.daf, 15
  %i.dah = zext nneg i32 %i.dag to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565

bb.aak:                                           ; preds = %bb.aai
  %i.dai = load i32, ptr %i.cyb, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.daj = sext i32 %i.dai to i64
  %i.dak = icmp eq i64 %i.czn, %i.daj
  br i1 %i.dak, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, label %bb.aam

bb.aal:                                           ; preds = %bb.aai
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1168
  unreachable

bb.aam:                                           ; preds = %bb.aak
  br i1 %.not6.i.i543, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.dal = load i32, ptr %i.cyc, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.dam = sext i32 %i.dal to i64
  %i.dan = icmp eq i64 %i.czn, %i.dam
  br i1 %i.dan, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, label %bb.zy

bb.aao:                                           ; preds = %bb.aam
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1168
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565: ; preds = %bb.aan, %bb.aak, %bb.aaj, %bb.aah, %bb.aae, %bb.zy
  %.sroa.0.0.i.i566 = phi i64 [ %i.czo, %bb.zy ], [ 3, %bb.aan ], [ %i.dad, %bb.aah ], [ %i.dah, %bb.aaj ], [ 1, %bb.aae ], [ 2, %bb.aak ] ; 3 uses
  %i.dao = icmp ule i64 %i.czn, %spec.store.select3.i563
  %i.dap = icmp ne i64 %.sroa.0.0.i.i566, 0
  %or.cond.i567 = and i1 %i.dao, %i.dap
  br i1 %or.cond.i567, label %bb.aat, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568

bb.aap:                                           ; preds = %bb.zw
  %i.daq = load i64, ptr %i.cxx, align 8, !noalias !1164, !noundef !6
  %i.dar = load i64, ptr %i.cxs, align 8, !noalias !1164, !noundef !6
  %i.das = add i64 %i.dar, 175
  %.not71.i587 = icmp ult i64 %i.daq, %i.das
  br i1 %.not71.i587, label %bb.zx, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.dat = add i64 %.sroa.034.2.i556, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1164
  %i.dau = icmp samesign ult i32 %.sroa.049.0.i554, 3
  %i.dav = add i64 %.sroa.0.2.i557, 9
  %i.daw = icmp ult i64 %i.dav, %i.cxg
  %or.cond5.i588 = and i1 %i.dau, %i.daw
  br i1 %or.cond5.i588, label %bb.aar, label %bb.zx

bb.aar:                                           ; preds = %bb.aaq
  %i.dax = add nuw nsw i32 %.sroa.049.0.i554, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1164
  br label %.preheader.i553

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568: ; preds = %bb.aaw, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, %bb.aac
  %.sroa.0.0.i3.i569 = phi i64 [ %.sroa.0.0.i.i566, %bb.aaw ], [ %.sroa.0.0.i.i566, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565 ], [ 0, %bb.aac ]
  %.not.i75.i = icmp eq i64 %.sroa.4.049.i, 0
  br i1 %.not.i75.i, label %bb.aas, label %bb.aay, !prof !10

bb.aas:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !1169
  unreachable

bb.aat:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565
  br i1 %i.cya, label %bb.aau, label %bb.aav

bb.aau:                                           ; preds = %bb.aat
  br i1 %.not6.i.i543, label %bb.aax, label %bb.aaw

bb.aav:                                           ; preds = %bb.aat
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1170
  unreachable

bb.aaw:                                           ; preds = %bb.aau
  %i.day = load i32, ptr %i.cyb, align 4, !alias.scope !1156, !noalias !1163, !noundef !6
  store i32 %i.day, ptr %i.cyc, align 4, !alias.scope !1156, !noalias !1163
  %i.daz = load <2 x i32>, ptr %9, align 4, !alias.scope !1156, !noalias !1163
  store <2 x i32> %i.daz, ptr %i.cxz, align 4, !alias.scope !1156, !noalias !1163
  %i.dba = trunc i64 %i.czn to i32
  store i32 %i.dba, ptr %9, align 4, !alias.scope !1156, !noalias !1163
  %.val.i584 = load i32, ptr %i.cxm, align 8, !alias.scope !1155, !noalias !1162, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i584), !noalias !1171
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568

bb.aax:                                           ; preds = %bb.aau
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1170
  unreachable

bb.aay:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568
  %i.dbb = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i, i64 16 ; 2 uses
  %i.dbc = add nsw i64 %.sroa.4.049.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.050.i) ]
  %i.dbd = add i64 %.sroa.032.048.i, 1            ; 2 uses
  %i.dbe = load i64, ptr %i.d, align 8, !noalias !1164, !noundef !6 ; 2 uses
  %i.dbf = load i64, ptr %i.cxq, align 8, !noalias !1164, !noundef !6
  %i.dbg = xor i64 %i.dbf, %i.dbe
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.050.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cxt, i64 noundef %.sroa.034.3.i561, i64 noundef %i.dbe, i64 noundef %i.dbg, i64 noundef %.sroa.0.0.i3.i569), !noalias !1170
  %i.dbh = load i64, ptr %15, align 8, !alias.scope !1159, !noalias !1172, !noundef !6
  %i.dbi = add i64 %i.dbh, %.sroa.034.3.i561
  store i64 %i.dbi, ptr %15, align 8, !alias.scope !1159, !noalias !1172
  %i.dbj = add i64 %.sroa.0.3.i562, 2             ; 2 uses
  %i.dbk = load i64, ptr %i.d, align 8, !noalias !1164, !noundef !6
  %i.dbl = add i64 %i.dbk, %.sroa.0.3.i562        ; 2 uses
  %spec.store.select4.i570 = call i64 @llvm.umin.i64(i64 %i.dbl, i64 %spec.select.i534) ; 2 uses
  %i.dbm = icmp ult i64 %i.dbj, %spec.store.select4.i570
  br i1 %i.dbm, label %.lr.ph.i.preheader.i571, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i571:                          ; preds = %bb.aay
  %.val10.i.i572 = load i64, ptr %i.cyd, align 8, !alias.scope !1155, !noalias !1162
  %.val11.i.i573 = load i32, ptr %i.cye, align 8, !alias.scope !1155, !noalias !1162
  %i.dbn = and i32 %.val11.i.i573, 63
  %i.dbo = zext nneg i32 %i.dbn to i64
  %.val9.i.i574 = load i64, ptr %i.cyf, align 8, !alias.scope !1155, !noalias !1162 ; 2 uses
  %.val8.i.i575 = load ptr, ptr %i.cwv, align 8, !alias.scope !1155, !noalias !1162, !nonnull !6
  %i.dbp = load i32, ptr %i.cyg, align 8, !alias.scope !1155, !noalias !1162
  %.val12.i.i = load i32, ptr %i.cyh, align 4, !alias.scope !1155, !noalias !1162
  %i.dbq = and i32 %.val12.i.i, 31
  %.val5.i.i576 = load i64, ptr %i.cyi, align 8, !alias.scope !1155, !noalias !1162 ; 2 uses
  %.val.i.i577 = load ptr, ptr %i.cyj, align 8, !alias.scope !1155, !noalias !1162, !nonnull !6
  br label %.lr.ph.i.i578

.lr.ph.i.i578:                                    ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i571
  %.sroa.01.03.i.i = phi i64 [ %i.dbr, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %i.dbj, %.lr.ph.i.preheader.i571 ] ; 3 uses
  %i.dbr = add i64 %.sroa.01.03.i.i, 1            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.dbs = and i64 %.sroa.01.03.i.i, %6           ; 3 uses
  %.not.i.i.i579 = icmp ugt i64 %i.dbs, %5
  br i1 %.not.i.i.i579, label %bb.aaz, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580, !prof !10

bb.aaz:                                           ; preds = %.lr.ph.i.i578
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1174
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580: ; preds = %.lr.ph.i.i578
  %i.dbt = sub nuw nsw i64 %5, %i.dbs
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %.not.i.i.i.i581 = icmp samesign ult i64 %i.dbt, 8
  br i1 %.not.i.i.i.i581, label %bb.aba, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.aba:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !1176
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580
  %i.dbu = getelementptr inbounds nuw i8, ptr %4, i64 %i.dbs
  %.sroa.0.0.copyload.i.i.i582 = load i64, ptr %i.dbu, align 1, !alias.scope !1177, !noalias !1178
  %i.dbv = and i64 %.sroa.0.0.copyload.i.i.i582, %.val10.i.i572
  %i.dbw = mul i64 %i.dbv, 2297779722762296275
  %i.dbx = lshr i64 %i.dbw, %i.dbo                ; 2 uses
  %i.dby = and i64 %i.dbx, 4294967295             ; 3 uses
  %i.dbz = icmp ult i64 %i.dby, %.val9.i.i574
  br i1 %i.dbz, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  %i.dca = trunc i64 %i.dbx to i32
  %i.dcb = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i575, i64 %i.dby ; 3 uses
  %i.dcc = load i16, ptr %i.dcb, align 2, !noalias !1179, !noundef !6
  %i.dcd = zext i16 %i.dcc to i32
  %i.dce = and i32 %i.dbp, %i.dcd
  %i.dcf = zext nneg i32 %i.dce to i64
  %i.dcg = shl i32 %i.dca, %i.dbq
  %i.dch = zext i32 %i.dcg to i64
  %i.dci = add nuw nsw i64 %i.dcf, %i.dch         ; 3 uses
  %i.dcj = icmp ult i64 %i.dci, %.val5.i.i576
  br i1 %i.dcj, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.abd

bb.abc:                                           ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dby, i64 noundef %.val9.i.i574, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1179
  unreachable

bb.abd:                                           ; preds = %bb.abb
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dci, i64 noundef %.val5.i.i576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1179
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.abb
  %i.dck = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i577, i64 %i.dci
  %i.dcl = trunc i64 %.sroa.01.03.i.i to i32
  store i32 %i.dcl, ptr %i.dck, align 4, !noalias !1179
  %i.dcm = load i16, ptr %i.dcb, align 2, !noalias !1179, !noundef !6
  %i.dcn = add i16 %i.dcm, 1
  store i16 %i.dcn, ptr %i.dcb, align 2, !noalias !1179
  %exitcond.not.i.i583 = icmp eq i64 %i.dbr, %spec.store.select4.i570
  br i1 %exitcond.not.i.i583, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, label %.lr.ph.i.i578

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i
  %.pre.i = load i64, ptr %i.d, align 8, !noalias !1164
  %.pre64.i = add i64 %.pre.i, %.sroa.0.3.i562
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.zn
  %.sroa.034.0.lcssa.i537 = phi i64 [ %i.cxf, %bb.zn ], [ %.sroa.034.1.i546, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i538 = phi i64 [ 0, %bb.zn ], [ %.sroa.032.1.i547, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i539 = phi i64 [ %3, %bb.zn ], [ %.sroa.0.1.i550, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.dco = add i64 %.sroa.034.0.lcssa.i537, %i.cxg
  %i.dcp = sub i64 %i.dco, %.sroa.0.0.lcssa.i539
  store i64 %i.dcp, ptr %11, align 8, !alias.scope !1157, !noalias !1161
  %i.dcq = load i64, ptr %14, align 8, !alias.scope !1158, !noalias !1180, !noundef !6
  %i.dcr = add i64 %i.dcq, %.sroa.032.0.lcssa.i538
  store i64 %i.dcr, ptr %14, align 8, !alias.scope !1158, !noalias !1180
  br label %bb.acw

bb.abe:                                           ; preds = %bb.a
  %i.dcs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  %i.dct = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.dcu = load i8, ptr %i.dct, align 1, !range !702, !noundef !6
  %i.dcv = trunc nuw i8 %i.dcu to i1
  %.18 = select i1 %i.dcv, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %i.dcw = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.dcx = load i32, ptr %i.dcw, align 4, !alias.scope !1182, !noalias !1188, !noundef !6
  %i.dcy = and i32 %i.dcx, 63
  %i.dcz = zext nneg i32 %i.dcy to i64
  %i.dda = shl nuw i64 1, %i.dcz
  %i.ddb = add i64 %i.dda, -16                    ; 3 uses
  %i.ddc = load i64, ptr %11, align 8, !alias.scope !1185, !noalias !1189, !noundef !6 ; 2 uses
  %i.ddd = add i64 %3, %2                         ; 9 uses
  %i.dde = icmp ugt i64 %2, 3
  %i.ddf = add i64 %i.ddd, -3
  %spec.select.i590 = select i1 %i.dde, i64 %i.ddf, i64 %3
  %i.ddg = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ddh = load i32, ptr %i.ddg, align 8, !alias.scope !1182, !noalias !1188, !noundef !6 ; 2 uses
  %i.ddi = icmp slt i32 %i.ddh, 9
  %..i591 = select i1 %i.ddi, i64 64, i64 512     ; 3 uses
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef 16), !noalias !1190
  %i.ddj = add i64 %3, 4
  %i.ddk = icmp ult i64 %i.ddj, %i.ddd
  br i1 %i.ddk, label %.lr.ph.i595, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i595:                                      ; preds = %bb.abe
  %i.ddl = add i64 %..i591, %3
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ddp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ddq = load i64, ptr %i.ddp, align 8, !alias.scope !1182, !noalias !1188, !noundef !6 ; 2 uses
  %i.ddr = add i64 %i.ddd, -4
  %i.dds = shl nuw nsw i64 %..i591, 2
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ddv = icmp slt i32 %i.ddh, 5
  %.not4.i.i596 = icmp eq i64 %10, 0
  %.not5.i.i597 = icmp eq i64 %10, 1
  %i.ddw = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.ddx = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.ddy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i598 = icmp eq i64 %10, 3              ; 2 uses
  %i.ddz = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.dea = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.deb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dec = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.abf

bb.abf:                                           ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i595
  %.sroa.0.051.i599 = phi i64 [ %3, %.lr.ph.i595 ], [ %.sroa.0.1.i611, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.050.i600 = phi ptr [ %12, %.lr.ph.i595 ], [ %.sroa.031.1.i610, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.049.i601 = phi i64 [ %13, %.lr.ph.i595 ], [ %.sroa.4.1.i609, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.048.i602 = phi i64 [ 0, %.lr.ph.i595 ], [ %.sroa.032.1.i608, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.047.i603 = phi i64 [ %i.ddc, %.lr.ph.i595 ], [ %.sroa.034.1.i607, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.046.i604 = phi i64 [ %i.ddl, %.lr.ph.i595 ], [ %.sroa.053.1.i606, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.ded = sub i64 %i.ddd, %.sroa.0.051.i599      ; 2 uses
  %spec.store.select.i605 = call i64 @llvm.umin.i64(i64 %.sroa.0.051.i599, i64 %i.ddb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !1191
  store i64 2020, ptr %i.ddo, align 8, !noalias !1191
  %i.dee = call fastcc noundef zeroext i1 @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.051.i599, i64 noundef %i.ded, i64 noundef %spec.store.select.i605, i64 noundef %i.ddq, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  br i1 %i.dee, label %.preheader.i614, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.def = add i64 %.sroa.034.047.i603, 1         ; 2 uses
  %i.deg = add i64 %.sroa.0.051.i599, 1           ; 4 uses
  %i.deh = icmp ugt i64 %i.deg, %.sroa.053.046.i604
  br i1 %i.deh, label %bb.abh, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.abh:                                           ; preds = %bb.abg
  %i.dei = add i64 %.sroa.0.051.i599, 17          ; 2 uses
  %.not.i612 = icmp ult i64 %i.dei, %i.ddr
  br i1 %.not.i612, label %bb.abi, label %bb.abj

bb.abi:                                           ; preds = %bb.abh
  %i.dej = add i64 %.sroa.053.046.i604, %i.dds
  %i.dek = icmp ugt i64 %i.deg, %i.dej
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.deg), !noalias !1192
  br i1 %i.dek, label %bb.abl, label %bb.abk

bb.abj:                                           ; preds = %bb.abh
  %.neg.i613 = xor i64 %.sroa.0.051.i599, -1
  %i.del = add i64 %i.ddd, %.neg.i613
  %i.dem = add i64 %i.del, %i.def
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.abk:                                           ; preds = %bb.abi
  %i.den = add i64 %.sroa.0.051.i599, 3
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.den), !noalias !1192
  %i.deo = add i64 %.sroa.0.051.i599, 5
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.deo), !noalias !1192
  %i.dep = add i64 %.sroa.0.051.i599, 7
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.dep), !noalias !1192
  %i.deq = add i64 %.sroa.034.047.i603, 9
  %i.der = add i64 %.sroa.0.051.i599, 9
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.abl:                                           ; preds = %bb.abi
  %i.des = add i64 %.sroa.0.051.i599, 5
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.des), !noalias !1192
  %i.det = add i64 %.sroa.0.051.i599, 9
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.det), !noalias !1192
  %i.deu = add i64 %.sroa.0.051.i599, 13
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.deu), !noalias !1192
  %i.dev = add i64 %.sroa.034.047.i603, 17
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, %bb.acp, %bb.abl, %bb.abk, %bb.abj, %bb.abg
  %.sroa.053.1.i606 = phi i64 [ %.sroa.053.046.i604, %bb.abg ], [ %.sroa.053.046.i604, %bb.abj ], [ %.sroa.053.046.i604, %bb.abl ], [ %.sroa.053.046.i604, %bb.abk ], [ %i.dff, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dff, %bb.acp ]
  %.sroa.034.1.i607 = phi i64 [ %i.def, %bb.abg ], [ %i.dem, %bb.abj ], [ %i.dev, %bb.abl ], [ %i.deq, %bb.abk ], [ 0, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ 0, %bb.acp ] ; 2 uses
  %.sroa.032.1.i608 = phi i64 [ %.sroa.032.048.i602, %bb.abg ], [ %.sroa.032.048.i602, %bb.abj ], [ %.sroa.032.048.i602, %bb.abl ], [ %.sroa.032.048.i602, %bb.abk ], [ %i.dgw, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgw, %bb.acp ] ; 2 uses
  %.sroa.4.1.i609 = phi i64 [ %.sroa.4.049.i601, %bb.abg ], [ %.sroa.4.049.i601, %bb.abj ], [ %.sroa.4.049.i601, %bb.abl ], [ %.sroa.4.049.i601, %bb.abk ], [ %i.dgv, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgv, %bb.acp ]
  %.sroa.031.1.i610 = phi ptr [ %.sroa.031.050.i600, %bb.abg ], [ %.sroa.031.050.i600, %bb.abj ], [ %.sroa.031.050.i600, %bb.abl ], [ %.sroa.031.050.i600, %bb.abk ], [ %i.dgu, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgu, %bb.acp ]
  %.sroa.0.1.i611 = phi i64 [ %i.deg, %bb.abg ], [ %i.ddd, %bb.abj ], [ %i.dei, %bb.abl ], [ %i.der, %bb.abk ], [ %.pre64.i642, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dhe, %bb.acp ] ; 3 uses
end_hunk_9
begin_hunk_10_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.dez = add i64 %i.dey, -1
  %spec.store.select1.i647 = call i64 @llvm.umin.i64(i64 %i.dez, i64 %.sroa.044.0.i619)
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %.preheader.i614
  %.sroa.051.0.i620 = phi i64 [ %spec.store.select1.i647, %bb.abm ], [ 0, %.preheader.i614 ]
  store i64 %.sroa.051.0.i620, ptr %i.a, align 8, !noalias !1191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ddt, i8 0, i64 16, i1 false), !noalias !1191
  store i64 2020, ptr %i.ddu, align 8, !noalias !1191
  %i.dfa = add i64 %.sroa.0.2.i618, 1             ; 4 uses
  %spec.store.select2.i621 = call i64 @llvm.umin.i64(i64 %i.dfa, i64 %i.ddb)
  %i.dfb = call fastcc noundef zeroext i1 @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.dcs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %i.dfa, i64 noundef %.sroa.044.0.i619, i64 noundef %spec.store.select2.i621, i64 noundef %i.ddq, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
  br i1 %i.dfb, label %bb.acg, label %bb.abo

bb.abo:                                           ; preds = %bb.ach, %bb.acg, %bb.abn
  %.sroa.034.3.i622 = phi i64 [ %.sroa.034.2.i617, %bb.abn ], [ %i.dgm, %bb.ach ], [ %.sroa.034.2.i617, %bb.acg ] ; 2 uses
  %.sroa.0.3.i623 = phi i64 [ %.sroa.0.2.i618, %bb.abn ], [ %i.dfa, %bb.ach ], [ %.sroa.0.2.i618, %bb.acg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1191
  %i.dfc = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6
  %i.dfd = shl i64 %i.dfc, 1
  %i.dfe = add i64 %.sroa.0.3.i623, %..i591
  %i.dff = add i64 %i.dfe, %i.dfd                 ; 2 uses
  %spec.store.select3.i624 = call i64 @llvm.umin.i64(i64 %.sroa.0.3.i623, i64 %i.ddb) ; 2 uses
  %i.dfg = load i64, ptr %i.ddn, align 8, !noalias !1191, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %.not.i.i625 = icmp ugt i64 %i.dfg, %spec.store.select3.i624
  br i1 %.not.i.i625, label %bb.abp, label %bb.abq

bb.abp:                                           ; preds = %bb.ace, %bb.abo
  %i.dfh = add i64 %i.dfg, 15
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626

bb.abq:                                           ; preds = %bb.abo
  %i.dfi = add i64 %i.dfg, 3                      ; 2 uses
  br i1 %.not4.i.i596, label %bb.abs, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.dfj = load i32, ptr %9, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dfk = sext i32 %i.dfj to i64                 ; 2 uses
  %i.dfl = sub i64 %i.dfi, %i.dfk                 ; 2 uses
  br i1 %.not5.i.i597, label %bb.abu, label %bb.abt

bb.abs:                                           ; preds = %bb.abq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #16, !noalias !1195
  unreachable

bb.abt:                                           ; preds = %bb.abr
  %i.dfm = load i32, ptr %i.ddw, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dfn = sext i32 %i.dfm to i64                 ; 2 uses
  %i.dfo = sub i64 %i.dfi, %i.dfn                 ; 2 uses
  %i.dfp = icmp eq i64 %i.dfg, %i.dfk
  br i1 %i.dfp, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629, label %bb.abv

bb.abu:                                           ; preds = %bb.abr
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #16, !noalias !1195
  unreachable

bb.abv:                                           ; preds = %bb.abt
  %i.dfq = icmp eq i64 %i.dfg, %i.dfn
  br i1 %i.dfq, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.dfr = icmp ult i64 %i.dfl, 7
  br i1 %i.dfr, label %bb.aby, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.dfs = icmp ult i64 %i.dfo, 7
  br i1 %i.dfs, label %bb.aca, label %bb.abz

bb.aby:                                           ; preds = %bb.abw
  %.tr7.i.i644 = trunc nuw nsw i64 %i.dfl to i32
  %i.dft = shl nuw nsw i32 %.tr7.i.i644, 2
  %i.dfu = lshr i32 158663784, %i.dft
  %i.dfv = and i32 %i.dfu, 15
  %i.dfw = zext nneg i32 %i.dfv to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626

bb.abz:                                           ; preds = %bb.abx
  br i1 %i.ddx, label %bb.acb, label %bb.acc

bb.aca:                                           ; preds = %bb.abx
  %.tr.i.i643 = trunc nuw nsw i64 %i.dfo to i32
  %i.dfx = shl nuw nsw i32 %.tr.i.i643, 2
  %i.dfy = lshr i32 266017486, %i.dfx
  %i.dfz = and i32 %i.dfy, 15
  %i.dga = zext nneg i32 %i.dfz to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626

bb.acb:                                           ; preds = %bb.abz
  %i.dgb = load i32, ptr %i.ddy, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dgc = sext i32 %i.dgb to i64
  %i.dgd = icmp eq i64 %i.dfg, %i.dgc
  br i1 %i.dgd, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, label %bb.acd

bb.acc:                                           ; preds = %bb.abz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1195
  unreachable

bb.acd:                                           ; preds = %bb.acb
  br i1 %.not6.i.i598, label %bb.acf, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  %i.dge = load i32, ptr %i.ddz, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dgf = sext i32 %i.dge to i64
  %i.dgg = icmp eq i64 %i.dfg, %i.dgf
  br i1 %i.dgg, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, label %bb.abp

bb.acf:                                           ; preds = %bb.acd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1195
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626: ; preds = %bb.ace, %bb.acb, %bb.aca, %bb.aby, %bb.abv, %bb.abp
  %.sroa.0.0.i.i627 = phi i64 [ %i.dfh, %bb.abp ], [ 3, %bb.ace ], [ %i.dfw, %bb.aby ], [ %i.dga, %bb.aca ], [ 1, %bb.abv ], [ 2, %bb.acb ] ; 3 uses
  %i.dgh = icmp ule i64 %i.dfg, %spec.store.select3.i624
  %i.dgi = icmp ne i64 %.sroa.0.0.i.i627, 0
  %or.cond.i628 = and i1 %i.dgh, %i.dgi
  br i1 %or.cond.i628, label %bb.ack, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629

bb.acg:                                           ; preds = %bb.abn
  %i.dgj = load i64, ptr %i.ddu, align 8, !noalias !1191, !noundef !6
  %i.dgk = load i64, ptr %i.ddo, align 8, !noalias !1191, !noundef !6
  %i.dgl = add i64 %i.dgk, 175
  %.not71.i645 = icmp ult i64 %i.dgj, %i.dgl
  br i1 %.not71.i645, label %bb.abo, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.dgm = add i64 %.sroa.034.2.i617, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1191
  %i.dgn = icmp samesign ult i32 %.sroa.049.0.i615, 3
  %i.dgo = add i64 %.sroa.0.2.i618, 5
  %i.dgp = icmp ult i64 %i.dgo, %i.ddd
  %or.cond5.i646 = and i1 %i.dgn, %i.dgp
  br i1 %or.cond5.i646, label %bb.aci, label %bb.abo

bb.aci:                                           ; preds = %bb.ach
  %i.dgq = add nuw nsw i32 %.sroa.049.0.i615, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1191
  br label %.preheader.i614

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629: ; preds = %bb.acn, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, %bb.abt
  %.sroa.0.0.i3.i630 = phi i64 [ %.sroa.0.0.i.i627, %bb.acn ], [ %.sroa.0.0.i.i627, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626 ], [ 0, %bb.abt ]
  %.not.i74.i = icmp eq i64 %.sroa.4.049.i601, 0
  br i1 %.not.i74.i, label %bb.acj, label %bb.acp, !prof !10

bb.acj:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #16, !noalias !1196
  unreachable

bb.ack:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626
  br i1 %i.ddx, label %bb.acl, label %bb.acm

bb.acl:                                           ; preds = %bb.ack
  br i1 %.not6.i.i598, label %bb.aco, label %bb.acn

bb.acm:                                           ; preds = %bb.ack
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1197
  unreachable

bb.acn:                                           ; preds = %bb.acl
  %i.dgr = load i32, ptr %i.ddy, align 4, !alias.scope !1184, !noalias !1190, !noundef !6
  store i32 %i.dgr, ptr %i.ddz, align 4, !alias.scope !1184, !noalias !1190
  %i.dgs = load <2 x i32>, ptr %9, align 4, !alias.scope !1184, !noalias !1190
  store <2 x i32> %i.dgs, ptr %i.ddw, align 4, !alias.scope !1184, !noalias !1190
  %i.dgt = trunc i64 %i.dfg to i32
  store i32 %i.dgt, ptr %9, align 4, !alias.scope !1184, !noalias !1190
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef 16), !noalias !1198
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629

bb.aco:                                           ; preds = %bb.acl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1197
  unreachable

bb.acp:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629
  %i.dgu = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i600, i64 16 ; 2 uses
  %i.dgv = add nsw i64 %.sroa.4.049.i601, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.050.i600) ]
  %i.dgw = add i64 %.sroa.032.048.i602, 1         ; 2 uses
  %i.dgx = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6 ; 2 uses
  %i.dgy = load i64, ptr %i.ddm, align 8, !noalias !1191, !noundef !6
  %i.dgz = xor i64 %i.dgy, %i.dgx
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.050.i600, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ddp, i64 noundef %.sroa.034.3.i622, i64 noundef %i.dgx, i64 noundef %i.dgz, i64 noundef %.sroa.0.0.i3.i630), !noalias !1197
  %i.dha = load i64, ptr %15, align 8, !alias.scope !1187, !noalias !1199, !noundef !6
  %i.dhb = add i64 %i.dha, %.sroa.034.3.i622
  store i64 %i.dhb, ptr %15, align 8, !alias.scope !1187, !noalias !1199
  %i.dhc = add i64 %.sroa.0.3.i623, 2             ; 2 uses
  %i.dhd = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6
  %i.dhe = add i64 %i.dhd, %.sroa.0.3.i623        ; 2 uses
  %spec.store.select4.i631 = call i64 @llvm.umin.i64(i64 %i.dhe, i64 %spec.select.i590) ; 2 uses
  %i.dhf = icmp ult i64 %i.dhc, %spec.store.select4.i631
  br i1 %i.dhf, label %.lr.ph.i.preheader.i632, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i632:                          ; preds = %bb.acp
  %.val7.i.i633 = load i64, ptr %i.dea, align 8, !alias.scope !1183, !noalias !1200 ; 2 uses
  %.val6.i.i634 = load ptr, ptr %i.dcs, align 8, !alias.scope !1183, !noalias !1200, !nonnull !6
  %.val5.i.i635 = load i64, ptr %i.deb, align 8, !alias.scope !1183, !noalias !1200 ; 2 uses
  %.val.i.i636 = load ptr, ptr %i.dec, align 8, !alias.scope !1183, !noalias !1200, !nonnull !6
  br label %.lr.ph.i.i637

.lr.ph.i.i637:                                    ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i632
  %.sroa.0.03.i.i = phi i64 [ %i.dhg, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %i.dhc, %.lr.ph.i.preheader.i632 ] ; 3 uses
  %i.dhg = add i64 %.sroa.0.03.i.i, 1             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.dhh = and i64 %.sroa.0.03.i.i, %6            ; 3 uses
  %.not.i.i.i638 = icmp ugt i64 %i.dhh, %5
  br i1 %.not.i.i.i638, label %bb.acq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639, !prof !10

bb.acq:                                           ; preds = %.lr.ph.i.i637
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #16, !noalias !1202
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639: ; preds = %.lr.ph.i.i637
  %i.dhi = sub nuw nsw i64 %5, %i.dhh
  %.not.i8.i.i = icmp samesign ult i64 %i.dhi, 4
  br i1 %.not.i8.i.i, label %bb.acr, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i, !prof !10

bb.acr:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !1203
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639
  %i.dhj = getelementptr inbounds nuw i8, ptr %4, i64 %i.dhh
  %.sroa.013.0.copyload.i.i = load i32, ptr %i.dhj, align 1, !alias.scope !1204, !noalias !1205
  %i.dhk = zext i32 %.sroa.013.0.copyload.i.i to i64
  %i.dhl = mul nuw nsw i64 %i.dhk, 506832829
  %i.dhm = lshr i64 %i.dhl, 17
  %i.dhn = and i64 %i.dhm, 32767                  ; 4 uses
  %i.dho = icmp ugt i64 %.val7.i.i633, %i.dhn
  br i1 %i.dho, label %bb.acs, label %bb.act

bb.acs:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i
  %i.dhp = getelementptr inbounds nuw [2 x i8], ptr %.val6.i.i634, i64 %i.dhn ; 3 uses
  %i.dhq = load i16, ptr %i.dhp, align 2, !noalias !1206, !noundef !6
  %i.dhr = and i16 %i.dhq, 255
  %i.dhs = zext nneg i16 %i.dhr to i64
  %i.dht = shl nuw nsw i64 %i.dhn, 8
  %i.dhu = or disjoint i64 %i.dht, %i.dhs         ; 3 uses
  %i.dhv = icmp ult i64 %i.dhu, %.val5.i.i635
  br i1 %i.dhv, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.acu

bb.act:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dhn, i64 noundef %.val7.i.i633, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #16, !noalias !1206
  unreachable

bb.acu:                                           ; preds = %bb.acs
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dhu, i64 noundef %.val5.i.i635, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #16, !noalias !1206
  unreachable

_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.acs
  %i.dhw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i636, i64 %i.dhu
  %i.dhx = trunc i64 %.sroa.0.03.i.i to i32
  store i32 %i.dhx, ptr %i.dhw, align 4, !noalias !1206
  %i.dhy = load i16, ptr %i.dhp, align 2, !noalias !1206, !noundef !6
  %i.dhz = add i16 %i.dhy, 1
  store i16 %i.dhz, ptr %i.dhp, align 2, !noalias !1206
  %exitcond.not.i.i640 = icmp eq i64 %i.dhg, %spec.store.select4.i631
  br i1 %exitcond.not.i.i640, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, label %.lr.ph.i.i637

_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i: ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i
  %.pre.i641 = load i64, ptr %i.b, align 8, !noalias !1191
  %.pre64.i642 = add i64 %.pre.i641, %.sroa.0.3.i623
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.abe
  %.sroa.034.0.lcssa.i592 = phi i64 [ %i.ddc, %bb.abe ], [ %.sroa.034.1.i607, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i593 = phi i64 [ 0, %bb.abe ], [ %.sroa.032.1.i608, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i594 = phi i64 [ %3, %bb.abe ], [ %.sroa.0.1.i611, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.dia = add i64 %.sroa.034.0.lcssa.i592, %i.ddd
  %i.dib = sub i64 %i.dia, %.sroa.0.0.lcssa.i594
  store i64 %i.dib, ptr %11, align 8, !alias.scope !1185, !noalias !1189
  %i.dic = load i64, ptr %14, align 8, !alias.scope !1186, !noalias !1207, !noundef !6
  %i.did = add i64 %i.dic, %.sroa.032.0.lcssa.i593
  store i64 %i.did, ptr %14, align 8, !alias.scope !1186, !noalias !1207
  br label %bb.acw

bb.acv:                                           ; preds = %bb.a
  %i.die = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dig = load i32, ptr %i.dif, align 8, !noundef !6
  %i.dih = icmp sgt i32 %i.dig, 10
  %i.dii = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.dij = load i8, ptr %i.dii, align 1, !range !702, !noundef !6
  %i.dik = trunc nuw i8 %i.dij to i1
  %.20 = select i1 %i.dik, ptr %1, ptr null       ; 2 uses
  br i1 %i.dih, label %bb.acy, label %bb.acx

bb.acw:                                           ; preds = %bb.acx, %bb.acy, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit
  ret void

bb.acx:                                           ; preds = %bb.acv
  tail call void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1x_ENtB2v_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.20, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.die, ptr noalias nofree noundef nonnull align 4 %9, i64 noundef %10, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noalias nofree noundef nonnull align 4 %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15)
  br label %bb.acw

bb.acy:                                           ; preds = %bb.acv
  tail call void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1z_ENtB2x_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.20, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.die, ptr noalias nofree noundef nonnull align 4 %9, i64 noundef %10, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noalias nofree noundef nonnull align 4 %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15)
  br label %bb.acw
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramCommandECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(2832) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [72 x i8], align 4                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1210, !noundef !6 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.r, label %.preheader84

.preheader84:                                     ; preds = %bb.a, %bb.f
  %.sroa.05.090 = phi i32 [ %.sroa.05.2.1, %bb.f ], [ 0, %bb.a ] ; 5 uses
  %.sroa.012.089 = phi i64 [ %i.s, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.012.089
  %i.h = load i32, ptr %i.g, align 8, !noundef !6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader84.1, label %bb.c

bb.b:                                             ; preds = %bb.f
  switch i32 %.sroa.05.2.1, label %.thread [
    i32 1, label %bb.r
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.q
  ]

bb.c:                                             ; preds = %.preheader84
  %i.i = sext i32 %.sroa.05.090 to i64            ; 2 uses
  %i.j = icmp ult i32 %.sroa.05.090, 5
  br i1 %i.j, label %bb.g, label %bb.h

.preheader84.1:                                   ; preds = %bb.g, %.preheader84
  %.sroa.05.2 = phi i32 [ %i.u, %bb.g ], [ %.sroa.05.090, %.preheader84 ] ; 5 uses
  %i.k = or disjoint i64 %.sroa.012.089, 1        ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !noundef !6
  %.not.1 = icmp eq i32 %i.m, 0
  br i1 %.not.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.preheader84.1
  %i.n = sext i32 %.sroa.05.2 to i64              ; 2 uses
  %i.o = icmp ult i32 %.sroa.05.2, 5
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.n
  store i64 %i.k, ptr %i.p, align 8
  %i.q = add nuw nsw i32 %.sroa.05.2, 1
  %i.r = icmp eq i32 %.sroa.05.2, 4
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader84.1
  %.sroa.05.2.1 = phi i32 [ %i.q, %bb.e ], [ %.sroa.05.2, %.preheader84.1 ] ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.012.089, 2        ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.s, 704
  br i1 %exitcond.not.1, label %bb.b, label %.preheader84

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.i
  store i64 %.sroa.012.089, ptr %i.t, align 8
  %i.u = add nuw nsw i32 %.sroa.05.090, 1
  %i.v = icmp eq i32 %.sroa.05.090, 4
  br i1 %i.v, label %.thread, label %.preheader84.1

bb.h:                                             ; preds = %bb.d, %bb.c
  %.lcssa172 = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa172, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #16
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.w = uitofp i64 %i.e to float
  %i.x = fadd float %i.w, 2.000000e+01
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.c, align 8, !noundef !6 ; 3 uses
  %i.z = icmp ult i64 %i.y, 704
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !6 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 704
  br i1 %i.ae, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 704
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #16
  unreachable

end_hunk_10
