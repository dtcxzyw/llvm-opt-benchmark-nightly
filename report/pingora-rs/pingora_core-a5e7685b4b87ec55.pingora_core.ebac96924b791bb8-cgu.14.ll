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
begin_hunk_2_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.ai:                                            ; preds = %bb.ag
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
  %i.gc = icmp ne i64 %.sroa.0.0.i.i, 0
  %or.cond.i = and i1 %.not.i.i, %i.gc
  br i1 %or.cond.i, label %bb.ap, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i

bb.al:                                            ; preds = %bb.s
  %i.gd = load i64, ptr %i.bh, align 8, !noalias !712, !noundef !6
  %i.ge = load i64, ptr %i.bb, align 8, !noalias !712, !noundef !6
  %i.gf = add i64 %i.ge, 175
  %.not71.i = icmp ult i64 %i.gd, %i.gf
  br i1 %.not71.i, label %bb.t, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = add i64 %.sroa.034.2.i, 1               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !712
  %i.gh = icmp samesign ult i32 %.sroa.049.0.i, 3
  %i.gi = add i64 %.sroa.0.2.i, 9
  %i.gj = icmp ult i64 %i.gi, %i.aq
  %or.cond5.i = and i1 %i.gh, %i.gj
  br i1 %or.cond5.i, label %bb.an, label %bb.t

bb.an:                                            ; preds = %bb.am
  %i.gk = add nuw nsw i32 %.sroa.049.0.i, 1
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
  %i.gl = load i32, ptr %i.bl, align 4, !alias.scope !706, !noalias !750, !noundef !6
  store i32 %i.gl, ptr %i.bm, align 4, !alias.scope !706, !noalias !750
  %i.gm = load <2 x i32>, ptr %9, align 4, !alias.scope !706, !noalias !750
  store <2 x i32> %i.gm, ptr %i.bj, align 4, !alias.scope !706, !noalias !750
  %i.gn = trunc i64 %i.fb to i32
  store i32 %i.gn, ptr %9, align 4, !alias.scope !706, !noalias !750
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !753
  unreachable

bb.au:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i, i64 16
  %i.gp = add nsw i64 %.sroa.4.0107.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i) ]
  %i.gq = add i64 %.sroa.032.0106.i, 1
  %i.gr = load i64, ptr %i.az, align 8, !noalias !712, !noundef !6
  %i.gs = xor i64 %i.gr, %i.ex
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc, i64 noundef %.sroa.034.3.i, i64 noundef %i.ex, i64 noundef %i.gs, i64 noundef %.sroa.0.0.i3.i), !noalias !753
  %i.gt = load i64, ptr %15, align 8, !alias.scope !709, !noalias !754, !noundef !6
  %i.gu = add i64 %i.gt, %.sroa.034.3.i
  store i64 %i.gu, ptr %15, align 8, !alias.scope !709, !noalias !754
  %i.gv = add i64 %.sroa.0.3.i, 2                 ; 4 uses
  %i.gw = load i64, ptr %i.ad, align 8, !noalias !712, !noundef !6
  %i.gx = add i64 %i.gw, %.sroa.0.3.i
  %spec.store.select4.i = call i64 @llvm.umin.i64(i64 %i.gx, i64 %spec.select.i) ; 4 uses
  %.val77.i = load ptr, ptr %i.af, align 8, !alias.scope !705, !noalias !713 ; 7 uses
  %.val78.i = load i64, ptr %i.bf, align 8, !alias.scope !705, !noalias !713 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.gy = add i64 %.sroa.0.3.i, 18
  %.not.i.i.i = icmp ult i64 %spec.store.select4.i, %i.gy
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gz = sub i64 %spec.store.select4.i, %i.gv    ; 2 uses
  %i.ha = lshr i64 %i.gz, 2                       ; 2 uses
  %.not32.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.av
  %i.hb = and i64 %i.gz, -4
  %i.hc = add i64 %i.hb, %i.gv
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av, %bb.be
  %.sroa.02.031.i.i.i = phi i64 [ %i.hd, %bb.be ], [ 0, %bb.av ] ; 2 uses
  %i.hd = add nuw nsw i64 %.sroa.02.031.i.i.i, 1  ; 2 uses
  %i.he = shl nuw i64 %.sroa.02.031.i.i.i, 2
  %i.hf = add i64 %i.he, %i.gv
  %i.hg = and i64 %i.hf, %6                       ; 4 uses
  %.not.i.i.i104.i = icmp ugt i64 %i.hg, %5
  br i1 %.not.i.i.i104.i, label %bb.aw, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i, !prof !10

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !757
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i: ; preds = %.lr.ph.i.i.i
  %i.hh = sub nuw nsw i64 %5, %i.hg
  %.not.i24.i.i.i = icmp samesign ult i64 %i.hh, 11
  br i1 %.not.i24.i.i.i, label %bb.ax, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i, !prof !10

bb.ax:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !758
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 %i.hg ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i = load i64, ptr %i.hi, align 1, !alias.scope !759, !noalias !760
  %i.hj = mul i64 %.sroa.0.0.copyload.i.i.i106.i, -4819355556693147648
  %i.hk = lshr i64 %i.hj, 48                      ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %.sroa.0.0.copyload.i32.i.i.i = load i64, ptr %i.hl, align 1, !alias.scope !761, !noalias !762
  %i.hm = mul i64 %.sroa.0.0.copyload.i32.i.i.i, -4819355556693147648
  %i.hn = lshr i64 %i.hm, 48                      ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %.sroa.0.0.copyload.i36.i.i.i = load i64, ptr %i.ho, align 1, !alias.scope !763, !noalias !764
  %i.hp = mul i64 %.sroa.0.0.copyload.i36.i.i.i, -4819355556693147648
  %i.hq = lshr i64 %i.hp, 48                      ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %.sroa.0.0.copyload.i40.i.i.i = load i64, ptr %i.hr, align 1, !alias.scope !765, !noalias !766
  %i.hs = mul i64 %.sroa.0.0.copyload.i40.i.i.i, -4819355556693147648
  %i.ht = lshr i64 %i.hs, 48                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i) ]
  %i.hu = icmp ugt i64 %.val78.i, %i.hk
  br i1 %i.hu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.hk
  %i.hw = trunc i64 %i.hg to i32                  ; 4 uses
  store i32 %i.hw, ptr %i.hv, align 4, !noalias !767
  %i.hx = icmp ugt i64 %.val78.i, %i.hn
  br i1 %i.hx, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hk, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !767
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.hn
  %i.hz = add i32 %i.hw, 1
  store i32 %i.hz, ptr %i.hy, align 4, !noalias !767
  %i.ia = icmp ugt i64 %.val78.i, %i.hq
  br i1 %i.ia, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hn, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !767
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.hq
  %i.ic = add i32 %i.hw, 2
  store i32 %i.ic, ptr %i.ib, align 4, !noalias !767
  %i.id = icmp ugt i64 %.val78.i, %i.ht
  br i1 %i.id, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hq, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !767
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.ht
  %i.if = add i32 %i.hw, 3
  store i32 %i.if, ptr %i.ie, align 4, !noalias !767
  %exitcond.not.i.i.i = icmp eq i64 %i.hd, %i.ha
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ht, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !767
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.au
  %.sroa.0.0.i.i.i = phi i64 [ %i.hc, %._crit_edge.i.i.i ], [ %i.gv, %bb.au ] ; 2 uses
  %i.ig = icmp ult i64 %.sroa.0.0.i.i.i, %spec.store.select4.i
  br i1 %i.ig, label %.lr.ph.i.i, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i = phi i64 [ %i.ih, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 3 uses
  %i.ih = add nuw i64 %.sroa.01.021.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ii = and i64 %.sroa.01.021.i.i, %6           ; 3 uses
  %.not.i.i6.i.i = icmp ugt i64 %i.ii, %5
  br i1 %.not.i.i6.i.i, label %bb.bg, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i, !prof !10

bb.bg:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !769
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i: ; preds = %.lr.ph.i.i
  %i.ij = sub nuw nsw i64 %5, %i.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %.not.i.i.i.i107.i = icmp samesign ult i64 %i.ij, 8
  br i1 %.not.i.i.i.i107.i, label %bb.bh, label %_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.bh:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !771
  unreachable

_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 %i.ii
  %.sroa.0.0.copyload.i.i8.i.i = load i64, ptr %i.ik, align 1, !alias.scope !772, !noalias !773
  %i.il = mul i64 %.sroa.0.0.copyload.i.i8.i.i, -4819355556693147648
  %i.im = lshr i64 %i.il, 48                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i) ]
  %i.in = icmp ugt i64 %.val78.i, %i.im
  br i1 %i.in, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.bi

bb.bi:                                            ; preds = %_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.im, i64 noundef %.val78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !774
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.val77.i, i64 %i.im
  %i.ip = trunc i64 %.sroa.01.021.i.i to i32
  store i32 %i.ip, ptr %i.io, align 4, !noalias !774
  %exitcond.not.i.i = icmp eq i64 %i.ih, %spec.store.select4.i
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i
  %i.iq = load i64, ptr %i.ad, align 8, !noalias !712, !noundef !6
  %i.ir = add i64 %i.iq, %.sroa.0.3.i
  br label %bb.q

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.q, %bb.c
  %.sroa.034.0.lcssa.i = phi i64 [ %i.ap, %bb.c ], [ %.sroa.034.1.i, %bb.q ]
  %.sroa.032.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.sroa.032.1.i, %bb.q ]
  %.sroa.0.0.lcssa.i = phi i64 [ %3, %bb.c ], [ %.sroa.0.1.i, %bb.q ]
  %i.is = add i64 %.sroa.034.0.lcssa.i, %i.aq
  %i.it = sub i64 %i.is, %.sroa.0.0.lcssa.i
  store i64 %i.it, ptr %11, align 8, !alias.scope !707, !noalias !711
  %i.iu = load i64, ptr %14, align 8, !alias.scope !708, !noalias !775, !noundef !6
  %i.iv = add i64 %i.iu, %.sroa.032.0.lcssa.i
  store i64 %i.iv, ptr %14, align 8, !alias.scope !708, !noalias !775
  br label %bb.acw

bb.bj:                                            ; preds = %bb.a
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.iy = load i32, ptr %i.ix, align 4, !alias.scope !777, !noalias !783, !noundef !6
  %i.iz = and i32 %i.iy, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl nuw i64 1, %i.ja
  %i.jc = add i64 %i.jb, -16                      ; 3 uses
  %i.jd = load i64, ptr %11, align 8, !alias.scope !780, !noalias !784, !noundef !6 ; 2 uses
  %i.je = add i64 %3, %2                          ; 8 uses
  %i.jf = icmp ugt i64 %2, 7
  %i.jg = add i64 %i.je, -7                       ; 2 uses
  %spec.select.i21 = select i1 %i.jf, i64 %i.jg, i64 %3
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ji = load i32, ptr %i.jh, align 8, !alias.scope !777, !noalias !783, !noundef !6 ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 9
  %..i22 = select i1 %i.jj, i64 64, i64 512       ; 3 uses
  %i.jk = add i64 %3, 8
  %i.jl = icmp ult i64 %i.jk, %i.je
  br i1 %i.jl, label %.lr.ph.i26, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i26:                                       ; preds = %bb.bj
  %i.jm = add i64 %..i22, %3
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jr = shl nuw nsw i64 %..i22, 2
  %.val.i = load ptr, ptr %i.iw, align 8, !alias.scope !778, !noalias !785 ; 17 uses
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val74.i = load i64, ptr %i.js, align 8, !alias.scope !778, !noalias !785 ; 20 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.jv = icmp slt i32 %i.ji, 5
  %.not4.i.i27 = icmp eq i64 %10, 0
  %.not5.i.i28 = icmp eq i64 %10, 1
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.jx = icmp samesign ugt i64 %10, 2            ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i29 = icmp eq i64 %10, 3               ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i26
  %.sroa.0.0109.i30 = phi i64 [ %3, %.lr.ph.i26 ], [ %.sroa.0.1.i42, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.0108.i31 = phi ptr [ %12, %.lr.ph.i26 ], [ %.sroa.031.1.i41, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.0107.i32 = phi i64 [ %13, %.lr.ph.i26 ], [ %.sroa.4.1.i40, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.0106.i33 = phi i64 [ 0, %.lr.ph.i26 ], [ %.sroa.032.1.i39, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.0105.i34 = phi i64 [ %i.jd, %.lr.ph.i26 ], [ %.sroa.034.1.i38, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.0104.i35 = phi i64 [ %i.jm, %.lr.ph.i26 ], [ %.sroa.053.1.i37, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.ka = sub i64 %i.je, %.sroa.0.0109.i30        ; 2 uses
  %spec.store.select.i36 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0109.i30, i64 %i.jc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !noalias !786
  store i64 2020, ptr %i.jp, align 8, !noalias !786
  %i.kb = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.iw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0109.i30, i64 noundef %i.ka, i64 noundef %spec.store.select.i36, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
  br i1 %i.kb, label %.preheader.i78, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kc = add i64 %.sroa.034.0105.i34, 1          ; 2 uses
  %i.kd = add i64 %.sroa.0.0109.i30, 1            ; 8 uses
  %i.ke = icmp ugt i64 %i.kd, %.sroa.053.0104.i35
  br i1 %i.ke, label %bb.bm, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.kf = add i64 %.sroa.0.0109.i30, 17           ; 2 uses
  %.not.i43 = icmp ult i64 %i.kf, %i.jg
  br i1 %.not.i43, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kg = add i64 %.sroa.053.0104.i35, %i.jr
  %i.kh = icmp ugt i64 %i.kd, %i.kg
  %i.ki = and i64 %i.kd, %6                       ; 5 uses
  %.not.i.i.i79.i45 = icmp ugt i64 %i.ki, %5      ; 2 uses
  br i1 %i.kh, label %bb.bt, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.neg.i44 = xor i64 %.sroa.0.0109.i30, -1
  %i.kj = add i64 %i.je, %.neg.i44
  %i.kk = add i64 %i.kj, %i.kc
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.bp:                                            ; preds = %bb.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  br i1 %.not.i.i.i79.i45, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46, !prof !10

bb.bq:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.2.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.1.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, %bb.bp
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !789
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46: ; preds = %bb.bp
  %i.kl = sub nuw nsw i64 %5, %i.ki
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %.not.i.i.i.i.i47 = icmp samesign ult i64 %i.kl, 8
  br i1 %.not.i.i.i.i.i47, label %bb.br, label %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !10

bb.br:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.3.i.i59, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.2.i.i55, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !791
  unreachable

_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i46
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 %i.ki
  %.sroa.0.0.copyload.i.i.i.i48 = load i64, ptr %i.km, align 1, !alias.scope !792, !noalias !793
  %i.kn = mul i64 %.sroa.0.0.copyload.i.i.i.i48, -4819355556693147648
  %i.ko = lshr i64 %i.kn, 48
  %i.kp = lshr i64 %i.kd, 3
  %i.kq = and i64 %i.kp, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.kr = add nuw nsw i64 %i.ko, %i.kq            ; 3 uses
  %i.ks = icmp ugt i64 %.val74.i, %i.kr
  br i1 %i.ks, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %.lcssa.i.i49 = phi i64 [ %i.kr, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.ld, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i ], [ %i.lp, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i ], [ %i.mb, %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i49, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !794
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.kt = trunc i64 %i.kd to i32
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.kr
  store i32 %i.kt, ptr %i.ku, align 4, !noalias !794
  %i.kv = add i64 %.sroa.0.0109.i30, 3            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.kw = and i64 %i.kv, %6                       ; 3 uses
  %.not.i.i.1.i.i50 = icmp ugt i64 %i.kw, %5
  br i1 %.not.i.i.1.i.i50, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i
  %i.kx = sub nuw nsw i64 %5, %i.kw
  %.not.i.i.i.1.i.i52 = icmp samesign ult i64 %i.kx, 8
  br i1 %.not.i.i.i.1.i.i52, label %bb.br, label %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, !prof !10

_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i51
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 %i.kw
  %.sroa.0.0.copyload.i.i.1.i.i53 = load i64, ptr %i.ky, align 1, !alias.scope !796, !noalias !793
  %i.kz = mul i64 %.sroa.0.0.copyload.i.i.1.i.i53, -4819355556693147648
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.cp:                                            ; preds = %bb.co
  %i.pk = load i32, ptr %i.jz, align 4, !alias.scope !822, !noalias !823, !noundef !6
  %i.pl = sext i32 %i.pk to i64
  %i.pm = icmp eq i64 %i.om, %i.pl
  br i1 %i.pm, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90, label %bb.ca

bb.cq:                                            ; preds = %bb.co
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !824
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i90: ; preds = %bb.cp, %bb.cm, %bb.cl, %bb.cj, %bb.cg, %bb.ca
  %.sroa.0.0.i.i91 = phi i64 [ %i.on, %bb.ca ], [ 3, %bb.cp ], [ %i.pc, %bb.cj ], [ %i.pg, %bb.cl ], [ 1, %bb.cg ], [ 2, %bb.cm ] ; 3 uses
  %i.pn = icmp ne i64 %.sroa.0.0.i.i91, 0
  %or.cond.i92 = and i1 %.not.i.i89, %i.pn
  br i1 %or.cond.i92, label %bb.cv, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93

bb.cr:                                            ; preds = %bb.by
  %i.po = load i64, ptr %i.ju, align 8, !noalias !786, !noundef !6
  %i.pp = load i64, ptr %i.jp, align 8, !noalias !786, !noundef !6
  %i.pq = add i64 %i.pp, 175
  %.not71.i121 = icmp ult i64 %i.po, %i.pq
  br i1 %.not71.i121, label %bb.bz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pr = add i64 %.sroa.034.2.i81, 1             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !786
  %i.ps = icmp samesign ult i32 %.sroa.049.0.i79, 3
  %i.pt = add i64 %.sroa.0.2.i82, 9
  %i.pu = icmp ult i64 %i.pt, %i.je
  %or.cond5.i122 = and i1 %i.ps, %i.pu
  br i1 %or.cond5.i122, label %bb.ct, label %bb.bz

bb.ct:                                            ; preds = %bb.cs
  %i.pv = add nuw nsw i32 %.sroa.049.0.i79, 1
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
  br i1 %i.jx, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not6.i.i29, label %bb.cz, label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !826
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.pw = load i32, ptr %i.jy, align 4, !alias.scope !779, !noalias !823, !noundef !6
  store i32 %i.pw, ptr %i.jz, align 4, !alias.scope !779, !noalias !823
  %i.px = load <2 x i32>, ptr %9, align 4, !alias.scope !779, !noalias !823
  store <2 x i32> %i.px, ptr %i.jw, align 4, !alias.scope !779, !noalias !823
  %i.py = trunc i64 %i.om to i32
  store i32 %i.py, ptr %9, align 4, !alias.scope !779, !noalias !823
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93

bb.cz:                                            ; preds = %bb.cw
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !826
  unreachable

bb.da:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i93
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i31, i64 16 ; 2 uses
  %i.qa = add nsw i64 %.sroa.4.0107.i32, -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i31) ]
  %i.qb = add i64 %.sroa.032.0106.i33, 1          ; 2 uses
  %i.qc = load i64, ptr %i.jn, align 8, !noalias !786, !noundef !6
  %i.qd = xor i64 %i.qc, %i.oi
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i31, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jq, i64 noundef %.sroa.034.3.i86, i64 noundef %i.oi, i64 noundef %i.qd, i64 noundef %.sroa.0.0.i3.i94), !noalias !826
  %i.qe = load i64, ptr %15, align 8, !alias.scope !782, !noalias !827, !noundef !6
  %i.qf = add i64 %i.qe, %.sroa.034.3.i86
  store i64 %i.qf, ptr %15, align 8, !alias.scope !782, !noalias !827
  %i.qg = add i64 %.sroa.0.3.i87, 2               ; 4 uses
  %i.qh = add i64 %i.oi, %.sroa.0.3.i87           ; 3 uses
  %spec.store.select4.i96 = tail call i64 @llvm.umin.i64(i64 %i.qh, i64 %spec.select.i21) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.qi = add i64 %.sroa.0.3.i87, 18
  %.not.i.i.i97 = icmp ult i64 %spec.store.select4.i96, %i.qi
  br i1 %.not.i.i.i97, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qj = sub i64 %spec.store.select4.i96, %i.qg  ; 2 uses
  %i.qk = lshr i64 %i.qj, 2                       ; 2 uses
  %.not32.i.i.i98 = icmp eq i64 %i.qk, 0
  br i1 %.not32.i.i.i98, label %._crit_edge.i.i.i110, label %.lr.ph.i.i.i99

._crit_edge.i.i.i110:                             ; preds = %bb.dk, %bb.db
  %i.ql = and i64 %i.qj, -4
  %i.qm = add i64 %i.ql, %i.qg
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i99:                                   ; preds = %bb.db, %bb.dk
  %.sroa.02.031.i.i.i100 = phi i64 [ %i.qn, %bb.dk ], [ 0, %bb.db ] ; 2 uses
  %i.qn = add nuw nsw i64 %.sroa.02.031.i.i.i100, 1 ; 2 uses
  %i.qo = shl nuw i64 %.sroa.02.031.i.i.i100, 2
  %i.qp = add i64 %i.qo, %i.qg
  %i.qq = and i64 %i.qp, %6                       ; 5 uses
  %.not.i.i.i104.i101 = icmp ugt i64 %i.qq, %5
  br i1 %.not.i.i.i104.i101, label %bb.dc, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102, !prof !10

bb.dc:                                            ; preds = %.lr.ph.i.i.i99
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !830
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102: ; preds = %.lr.ph.i.i.i99
  %i.qr = sub nuw nsw i64 %5, %i.qq
  %.not.i24.i.i.i103 = icmp samesign ult i64 %i.qr, 11
  br i1 %.not.i24.i.i.i103, label %bb.dd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104, !prof !10

bb.dd:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !831
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i102
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 %i.qq ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i105 = load i64, ptr %i.qs, align 1, !alias.scope !832, !noalias !833
  %i.qt = mul i64 %.sroa.0.0.copyload.i.i.i106.i105, -4819355556693147648
  %i.qu = lshr i64 %i.qt, 48
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 1
  %.sroa.0.0.copyload.i32.i.i.i106 = load i64, ptr %i.qv, align 1, !alias.scope !834, !noalias !835
  %i.qw = mul i64 %.sroa.0.0.copyload.i32.i.i.i106, -4819355556693147648
  %i.qx = lshr i64 %i.qw, 48
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 2
  %.sroa.0.0.copyload.i36.i.i.i107 = load i64, ptr %i.qy, align 1, !alias.scope !836, !noalias !837
  %i.qz = mul i64 %.sroa.0.0.copyload.i36.i.i.i107, -4819355556693147648
  %i.ra = lshr i64 %i.qz, 48
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qs, i64 3
  %.sroa.0.0.copyload.i40.i.i.i108 = load i64, ptr %i.rb, align 1, !alias.scope !838, !noalias !839
  %i.rc = mul i64 %.sroa.0.0.copyload.i40.i.i.i108, -4819355556693147648
  %i.rd = lshr i64 %i.rc, 48
  %i.re = lshr i64 %i.qq, 3
  %i.rf = and i64 %i.re, 1                        ; 4 uses
  %i.rg = add nuw nsw i64 %i.qu, %i.rf            ; 3 uses
  %i.rh = add nuw nsw i64 %i.qx, %i.rf            ; 3 uses
  %i.ri = add nuw nsw i64 %i.ra, %i.rf            ; 3 uses
  %i.rj = add nuw nsw i64 %i.rd, %i.rf            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.rk = icmp ult i64 %i.rg, %.val74.i
  br i1 %i.rk, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.rg
  %i.rm = trunc i64 %i.qq to i32                  ; 4 uses
  store i32 %i.rm, ptr %i.rl, align 4, !noalias !840
  %i.rn = icmp ult i64 %i.rh, %.val74.i
  br i1 %i.rn, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i104
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rg, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !840
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.rh
  %i.rp = add i32 %i.rm, 1
  store i32 %i.rp, ptr %i.ro, align 4, !noalias !840
  %i.rq = icmp ult i64 %i.ri, %.val74.i
  br i1 %i.rq, label %bb.di, label %bb.dj

bb.dh:                                            ; preds = %bb.de
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rh, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !840
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ri
  %i.rs = add i32 %i.rm, 2
  store i32 %i.rs, ptr %i.rr, align 4, !noalias !840
  %i.rt = icmp ult i64 %i.rj, %.val74.i
  br i1 %i.rt, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %bb.dg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ri, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !840
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.rj
  %i.rv = add i32 %i.rm, 3
  store i32 %i.rv, ptr %i.ru, align 4, !noalias !840
  %exitcond.not.i.i.i109 = icmp eq i64 %i.qn, %i.qk
  br i1 %exitcond.not.i.i.i109, label %._crit_edge.i.i.i110, label %.lr.ph.i.i.i99

bb.dl:                                            ; preds = %bb.di
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rj, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !840
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i110, %bb.da
  %.sroa.0.0.i.i.i111 = phi i64 [ %i.qm, %._crit_edge.i.i.i110 ], [ %i.qg, %bb.da ] ; 2 uses
  %i.rw = icmp ult i64 %.sroa.0.0.i.i.i111, %spec.store.select4.i96
  br i1 %i.rw, label %.lr.ph.i.i112, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i112:                                    ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i113 = phi i64 [ %i.rx, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i111, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 4 uses
  %i.rx = add nuw i64 %.sroa.01.021.i.i113, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.ry = and i64 %.sroa.01.021.i.i113, %6        ; 3 uses
  %.not.i.i6.i.i114 = icmp ugt i64 %i.ry, %5
  br i1 %.not.i.i6.i.i114, label %bb.dm, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115, !prof !10

bb.dm:                                            ; preds = %.lr.ph.i.i112
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !842
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115: ; preds = %.lr.ph.i.i112
  %i.rz = sub nuw nsw i64 %5, %i.ry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %.not.i.i.i.i107.i116 = icmp samesign ult i64 %i.rz, 8
  br i1 %.not.i.i.i.i107.i116, label %bb.dn, label %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.dn:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !844
  unreachable

_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i115
  %i.sa = getelementptr inbounds nuw i8, ptr %4, i64 %i.ry
  %.sroa.0.0.copyload.i.i8.i.i117 = load i64, ptr %i.sa, align 1, !alias.scope !845, !noalias !846
  %i.sb = mul i64 %.sroa.0.0.copyload.i.i8.i.i117, -4819355556693147648
  %i.sc = lshr i64 %i.sb, 48
  %i.sd = lshr i64 %.sroa.01.021.i.i113, 3
  %i.se = and i64 %i.sd, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.sf = add nuw nsw i64 %i.sc, %i.se            ; 3 uses
  %i.sg = icmp ugt i64 %.val74.i, %i.sf
  br i1 %i.sg, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.do

bb.do:                                            ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.sf, i64 noundef %.val74.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !847
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXs7_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.sh = trunc i64 %.sroa.01.021.i.i113 to i32
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.sf
  store i32 %i.sh, ptr %i.si, align 4, !noalias !847
  %exitcond.not.i.i118 = icmp eq i64 %i.rx, %spec.store.select4.i96
  br i1 %exitcond.not.i.i118, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i112

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.bj
  %.sroa.034.0.lcssa.i23 = phi i64 [ %i.jd, %bb.bj ], [ %.sroa.034.1.i38, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i24 = phi i64 [ 0, %bb.bj ], [ %.sroa.032.1.i39, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i25 = phi i64 [ %3, %bb.bj ], [ %.sroa.0.1.i42, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.sj = add i64 %.sroa.034.0.lcssa.i23, %i.je
  %i.sk = sub i64 %i.sj, %.sroa.0.0.lcssa.i25
  store i64 %i.sk, ptr %11, align 8, !alias.scope !780, !noalias !784
  %i.sl = load i64, ptr %14, align 8, !alias.scope !781, !noalias !848, !noundef !6
  %i.sm = add i64 %i.sl, %.sroa.032.0.lcssa.i24
  store i64 %i.sm, ptr %14, align 8, !alias.scope !781, !noalias !848
  br label %bb.acw

bb.dp:                                            ; preds = %bb.a
  %i.sn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.sp = load i8, ptr %i.so, align 1, !range !702, !noundef !6
  %i.sq = trunc nuw i8 %i.sp to i1
  %.12 = select i1 %i.sq, ptr %1, ptr null        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.sr = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.ss = load i32, ptr %i.sr, align 4, !alias.scope !850, !noalias !856, !noundef !6
  %i.st = and i32 %i.ss, 63
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = shl nuw i64 1, %i.su
  %i.sw = add i64 %i.sv, -16                      ; 3 uses
  %i.sx = load i64, ptr %11, align 8, !alias.scope !853, !noalias !857, !noundef !6 ; 2 uses
  %i.sy = add i64 %3, %2                          ; 8 uses
  %i.sz = icmp ugt i64 %2, 7
  %i.ta = add i64 %i.sy, -7                       ; 2 uses
  %spec.select.i124 = select i1 %i.sz, i64 %i.ta, i64 %3
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.tc = load i32, ptr %i.tb, align 8, !alias.scope !850, !noalias !856, !noundef !6 ; 2 uses
  %i.td = icmp slt i32 %i.tc, 9
  %..i125 = select i1 %i.td, i64 64, i64 512      ; 3 uses
  %i.te = add i64 %3, 8
  %i.tf = icmp ult i64 %i.te, %i.sy
  br i1 %i.tf, label %.lr.ph.i129, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i129:                                      ; preds = %bb.dp
  %i.tg = add i64 %..i125, %3
  %i.th = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !alias.scope !850, !noalias !856, !noundef !6 ; 2 uses
  %i.tm = shl nuw nsw i64 %..i125, 2
  %i.tn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.tq = icmp slt i32 %i.tc, 5
  %.not4.i.i130 = icmp eq i64 %10, 0
  %.not5.i.i131 = icmp eq i64 %10, 1
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.ts = icmp samesign ugt i64 %10, 2            ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i132 = icmp eq i64 %10, 3              ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ed, %.lr.ph.i129
  %.sroa.0.0109.i133 = phi i64 [ %3, %.lr.ph.i129 ], [ %.sroa.0.1.i145, %bb.ed ] ; 14 uses
  %.sroa.031.0108.i134 = phi ptr [ %12, %.lr.ph.i129 ], [ %.sroa.031.1.i144, %bb.ed ] ; 7 uses
  %.sroa.4.0107.i135 = phi i64 [ %13, %.lr.ph.i129 ], [ %.sroa.4.1.i143, %bb.ed ] ; 6 uses
  %.sroa.032.0106.i136 = phi i64 [ 0, %.lr.ph.i129 ], [ %.sroa.032.1.i142, %bb.ed ] ; 5 uses
  %.sroa.034.0105.i137 = phi i64 [ %i.sx, %.lr.ph.i129 ], [ %.sroa.034.1.i141, %bb.ed ] ; 4 uses
  %.sroa.053.0104.i138 = phi i64 [ %i.tg, %.lr.ph.i129 ], [ %.sroa.053.1.i140, %bb.ed ] ; 6 uses
  %i.tv = sub i64 %i.sy, %.sroa.0.0109.i133       ; 2 uses
  %spec.store.select.i139 = call i64 @llvm.umin.i64(i64 %.sroa.0.0109.i133, i64 %i.sw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !noalias !858
  store i64 2020, ptr %i.tj, align 8, !noalias !858
  %i.tw = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.sn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0109.i133, i64 noundef %i.tv, i64 noundef %spec.store.select.i139, i64 noundef %i.tl, ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
  br i1 %i.tw, label %.preheader.i183, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.tx = add i64 %.sroa.034.0105.i137, 1         ; 2 uses
  %i.ty = add i64 %.sroa.0.0109.i133, 1           ; 8 uses
  %i.tz = icmp ugt i64 %i.ty, %.sroa.053.0104.i138
  br i1 %i.tz, label %bb.ds, label %bb.ed

bb.ds:                                            ; preds = %bb.dr
  %i.ua = add i64 %.sroa.0.0109.i133, 17          ; 2 uses
  %.not.i146 = icmp ult i64 %i.ua, %i.ta
  br i1 %.not.i146, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ub = add i64 %.sroa.053.0104.i138, %i.tm
  %i.uc = icmp ugt i64 %i.ty, %i.ub
  %.val75.i148 = load ptr, ptr %i.sn, align 8, !alias.scope !851, !noalias !859 ; 10 uses
  %.val76.i149 = load i64, ptr %i.tn, align 8, !alias.scope !851, !noalias !859 ; 10 uses
  %i.ud = and i64 %i.ty, %6                       ; 5 uses
  %.not.i.i.i79.i150 = icmp ugt i64 %i.ud, %5     ; 2 uses
  br i1 %i.uc, label %bb.dz, label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %.neg.i147 = xor i64 %.sroa.0.0109.i133, -1
  %i.ue = add i64 %i.sy, %.neg.i147
  %i.uf = add i64 %i.ue, %i.tx
  br label %bb.ed

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  br i1 %.not.i.i.i79.i150, label %bb.dw, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151, !prof !10

bb.dw:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.2.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.1.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, %bb.dv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !862
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151: ; preds = %bb.dv
  %i.ug = sub nuw nsw i64 %5, %i.ud
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %.not.i.i.i.i.i152 = icmp samesign ult i64 %i.ug, 8
  br i1 %.not.i.i.i.i.i152, label %bb.dx, label %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !10

bb.dx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.3.i.i164, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.2.i.i160, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !864
  unreachable

_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i151
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 %i.ud
  %.sroa.0.0.copyload.i.i.i.i153 = load i64, ptr %i.uh, align 1, !alias.scope !865, !noalias !866
  %i.ui = mul i64 %.sroa.0.0.copyload.i.i.i.i153, -4819355556693147648
  %i.uj = lshr i64 %i.ui, 47
  %i.uk = lshr i64 %i.ty, 3
  %i.ul = and i64 %i.uk, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val75.i148) ]
  %i.um = add nuw nsw i64 %i.uj, %i.ul            ; 3 uses
  %i.un = icmp ugt i64 %.val76.i149, %i.um
  br i1 %i.un, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %.lcssa.i.i154 = phi i64 [ %i.um, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.uy, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i ], [ %i.vk, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i ], [ %i.vw, %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i154, i64 noundef %.val76.i149, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !867
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.uo = trunc i64 %i.ty to i32
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.val75.i148, i64 %i.um
  store i32 %i.uo, ptr %i.up, align 4, !noalias !867
  %i.uq = add i64 %.sroa.0.0109.i133, 3           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.ur = and i64 %i.uq, %6                       ; 3 uses
  %.not.i.i.1.i.i155 = icmp ugt i64 %i.ur, %5
  br i1 %.not.i.i.1.i.i155, label %bb.dw, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i
  %i.us = sub nuw nsw i64 %5, %i.ur
  %.not.i.i.i.1.i.i157 = icmp samesign ult i64 %i.us, 8
  br i1 %.not.i.i.i.1.i.i157, label %bb.dx, label %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, !prof !10

_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i156
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.zh = icmp eq i64 %i.yh, %i.zg
  br i1 %i.zh, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195, label %bb.eh

bb.ex:                                            ; preds = %bb.ev
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !897
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i195: ; preds = %bb.ew, %bb.et, %bb.es, %bb.eq, %bb.en, %bb.eh
  %.sroa.0.0.i.i196 = phi i64 [ %i.yi, %bb.eh ], [ 3, %bb.ew ], [ %i.yx, %bb.eq ], [ %i.zb, %bb.es ], [ 1, %bb.en ], [ 2, %bb.et ] ; 3 uses
  %i.zi = icmp ne i64 %.sroa.0.0.i.i196, 0
  %or.cond.i197 = and i1 %.not.i.i194, %i.zi
  br i1 %or.cond.i197, label %bb.fc, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198

bb.ey:                                            ; preds = %bb.ef
  %i.zj = load i64, ptr %i.tp, align 8, !noalias !858, !noundef !6
  %i.zk = load i64, ptr %i.tj, align 8, !noalias !858, !noundef !6
  %i.zl = add i64 %i.zk, 175
  %.not71.i228 = icmp ult i64 %i.zj, %i.zl
  br i1 %.not71.i228, label %bb.eg, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zm = add i64 %.sroa.034.2.i186, 1            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !858
  %i.zn = icmp samesign ult i32 %.sroa.049.0.i184, 3
  %i.zo = add i64 %.sroa.0.2.i187, 9
  %i.zp = icmp ult i64 %i.zo, %i.sy
  %or.cond5.i229 = and i1 %i.zn, %i.zp
  br i1 %or.cond5.i229, label %bb.fa, label %bb.eg

bb.fa:                                            ; preds = %bb.ez
  %i.zq = add nuw nsw i32 %.sroa.049.0.i184, 1
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
  br i1 %i.ts, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not6.i.i132, label %bb.fg, label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !899
  unreachable

bb.ff:                                            ; preds = %bb.fd
  %i.zr = load i32, ptr %i.tt, align 4, !alias.scope !852, !noalias !896, !noundef !6
  store i32 %i.zr, ptr %i.tu, align 4, !alias.scope !852, !noalias !896
  %i.zs = load <2 x i32>, ptr %9, align 4, !alias.scope !852, !noalias !896
  store <2 x i32> %i.zs, ptr %i.tr, align 4, !alias.scope !852, !noalias !896
  %i.zt = trunc i64 %i.yh to i32
  store i32 %i.zt, ptr %9, align 4, !alias.scope !852, !noalias !896
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198

bb.fg:                                            ; preds = %bb.fd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !899
  unreachable

bb.fh:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i198
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i134, i64 16
  %i.zv = add nsw i64 %.sroa.4.0107.i135, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i134) ]
  %i.zw = add i64 %.sroa.032.0106.i136, 1
  %i.zx = load i64, ptr %i.th, align 8, !noalias !858, !noundef !6
  %i.zy = xor i64 %i.zx, %i.yd
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i134, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tk, i64 noundef %.sroa.034.3.i191, i64 noundef %i.yd, i64 noundef %i.zy, i64 noundef %.sroa.0.0.i3.i199), !noalias !899
  %i.zz = load i64, ptr %15, align 8, !alias.scope !855, !noalias !900, !noundef !6
  %i.aaa = add i64 %i.zz, %.sroa.034.3.i191
  store i64 %i.aaa, ptr %15, align 8, !alias.scope !855, !noalias !900
  %i.aab = add i64 %.sroa.0.3.i192, 2             ; 4 uses
  %i.aac = load i64, ptr %i.z, align 8, !noalias !858, !noundef !6
  %i.aad = add i64 %i.aac, %.sroa.0.3.i192
  %spec.store.select4.i201 = call i64 @llvm.umin.i64(i64 %i.aad, i64 %spec.select.i124) ; 4 uses
  %.val77.i202 = load ptr, ptr %i.sn, align 8, !alias.scope !851, !noalias !859 ; 7 uses
  %.val78.i203 = load i64, ptr %i.tn, align 8, !alias.scope !851, !noalias !859 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.aae = add i64 %.sroa.0.3.i192, 18
  %.not.i.i.i204 = icmp ult i64 %spec.store.select4.i201, %i.aae
  br i1 %.not.i.i.i204, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aaf = sub i64 %spec.store.select4.i201, %i.aab ; 2 uses
  %i.aag = lshr i64 %i.aaf, 2                     ; 2 uses
  %.not32.i.i.i205 = icmp eq i64 %i.aag, 0
  br i1 %.not32.i.i.i205, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i206

._crit_edge.i.i.i217:                             ; preds = %bb.fr, %bb.fi
  %i.aah = and i64 %i.aaf, -4
  %i.aai = add i64 %i.aah, %i.aab
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i206:                                  ; preds = %bb.fi, %bb.fr
  %.sroa.02.031.i.i.i207 = phi i64 [ %i.aaj, %bb.fr ], [ 0, %bb.fi ] ; 2 uses
  %i.aaj = add nuw nsw i64 %.sroa.02.031.i.i.i207, 1 ; 2 uses
  %i.aak = shl nuw i64 %.sroa.02.031.i.i.i207, 2
  %i.aal = add i64 %i.aak, %i.aab
  %i.aam = and i64 %i.aal, %6                     ; 5 uses
  %.not.i.i.i104.i208 = icmp ugt i64 %i.aam, %5
  br i1 %.not.i.i.i104.i208, label %bb.fj, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209, !prof !10

bb.fj:                                            ; preds = %.lr.ph.i.i.i206
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !903
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209: ; preds = %.lr.ph.i.i.i206
  %i.aan = sub nuw nsw i64 %5, %i.aam
  %.not.i24.i.i.i210 = icmp samesign ult i64 %i.aan, 11
  br i1 %.not.i24.i.i.i210, label %bb.fk, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211, !prof !10

bb.fk:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !904
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i209
  %i.aao = getelementptr inbounds nuw i8, ptr %4, i64 %i.aam ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i212 = load i64, ptr %i.aao, align 1, !alias.scope !905, !noalias !906
  %i.aap = mul i64 %.sroa.0.0.copyload.i.i.i106.i212, -4819355556693147648
  %i.aaq = lshr i64 %i.aap, 47
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 1
  %.sroa.0.0.copyload.i32.i.i.i213 = load i64, ptr %i.aar, align 1, !alias.scope !907, !noalias !908
  %i.aas = mul i64 %.sroa.0.0.copyload.i32.i.i.i213, -4819355556693147648
  %i.aat = lshr i64 %i.aas, 47
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  %.sroa.0.0.copyload.i36.i.i.i214 = load i64, ptr %i.aau, align 1, !alias.scope !909, !noalias !910
  %i.aav = mul i64 %.sroa.0.0.copyload.i36.i.i.i214, -4819355556693147648
  %i.aaw = lshr i64 %i.aav, 47
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aao, i64 3
  %.sroa.0.0.copyload.i40.i.i.i215 = load i64, ptr %i.aax, align 1, !alias.scope !911, !noalias !912
  %i.aay = mul i64 %.sroa.0.0.copyload.i40.i.i.i215, -4819355556693147648
  %i.aaz = lshr i64 %i.aay, 47
  %i.aba = lshr i64 %i.aam, 3
  %i.abb = and i64 %i.aba, 3                      ; 4 uses
  %i.abc = add nuw nsw i64 %i.aaq, %i.abb         ; 3 uses
  %i.abd = add nuw nsw i64 %i.aat, %i.abb         ; 3 uses
  %i.abe = add nuw nsw i64 %i.aaw, %i.abb         ; 3 uses
  %i.abf = add nuw nsw i64 %i.aaz, %i.abb         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i202) ]
  %i.abg = icmp ult i64 %i.abc, %.val78.i203
  br i1 %i.abg, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abc
  %i.abi = trunc i64 %i.aam to i32                ; 4 uses
  store i32 %i.abi, ptr %i.abh, align 4, !noalias !913
  %i.abj = icmp ult i64 %i.abd, %.val78.i203
  br i1 %i.abj, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i211
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abc, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !913
  unreachable

bb.fn:                                            ; preds = %bb.fl
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abd
  %i.abl = add i32 %i.abi, 1
  store i32 %i.abl, ptr %i.abk, align 4, !noalias !913
  %i.abm = icmp ult i64 %i.abe, %.val78.i203
  br i1 %i.abm, label %bb.fp, label %bb.fq

bb.fo:                                            ; preds = %bb.fl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abd, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !913
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abe
  %i.abo = add i32 %i.abi, 2
  store i32 %i.abo, ptr %i.abn, align 4, !noalias !913
  %i.abp = icmp ult i64 %i.abf, %.val78.i203
  br i1 %i.abp, label %bb.fr, label %bb.fs

bb.fq:                                            ; preds = %bb.fn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abe, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !913
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.abf
  %i.abr = add i32 %i.abi, 3
  store i32 %i.abr, ptr %i.abq, align 4, !noalias !913
  %exitcond.not.i.i.i216 = icmp eq i64 %i.aaj, %i.aag
  br i1 %exitcond.not.i.i.i216, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i206

bb.fs:                                            ; preds = %bb.fp
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abf, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !913
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i217, %bb.fh
  %.sroa.0.0.i.i.i218 = phi i64 [ %i.aai, %._crit_edge.i.i.i217 ], [ %i.aab, %bb.fh ] ; 2 uses
  %i.abs = icmp ult i64 %.sroa.0.0.i.i.i218, %spec.store.select4.i201
  br i1 %i.abs, label %.lr.ph.i.i219, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i219:                                    ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i220 = phi i64 [ %i.abt, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i218, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 4 uses
  %i.abt = add nuw i64 %.sroa.01.021.i.i220, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.abu = and i64 %.sroa.01.021.i.i220, %6       ; 3 uses
  %.not.i.i6.i.i221 = icmp ugt i64 %i.abu, %5
  br i1 %.not.i.i6.i.i221, label %bb.ft, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222, !prof !10

bb.ft:                                            ; preds = %.lr.ph.i.i219
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !915
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222: ; preds = %.lr.ph.i.i219
  %i.abv = sub nuw nsw i64 %5, %i.abu
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %.not.i.i.i.i107.i223 = icmp samesign ult i64 %i.abv, 8
  br i1 %.not.i.i.i.i107.i223, label %bb.fu, label %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.fu:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !917
  unreachable

_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i222
  %i.abw = getelementptr inbounds nuw i8, ptr %4, i64 %i.abu
  %.sroa.0.0.copyload.i.i8.i.i224 = load i64, ptr %i.abw, align 1, !alias.scope !918, !noalias !919
  %i.abx = mul i64 %.sroa.0.0.copyload.i.i8.i.i224, -4819355556693147648
  %i.aby = lshr i64 %i.abx, 47
  %i.abz = lshr i64 %.sroa.01.021.i.i220, 3
  %i.aca = and i64 %i.abz, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i202) ]
  %i.acb = add nuw nsw i64 %i.aby, %i.aca         ; 3 uses
  %i.acc = icmp ugt i64 %.val78.i203, %i.acb
  br i1 %i.acc, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.fv

bb.fv:                                            ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.acb, i64 noundef %.val78.i203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !920
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXs8_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.acd = trunc i64 %.sroa.01.021.i.i220 to i32
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.val77.i202, i64 %i.acb
  store i32 %i.acd, ptr %i.ace, align 4, !noalias !920
  %exitcond.not.i.i225 = icmp eq i64 %i.abt, %spec.store.select4.i201
  br i1 %exitcond.not.i.i225, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i219

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i
  %i.acf = load i64, ptr %i.z, align 8, !noalias !858, !noundef !6
  %i.acg = add i64 %i.acf, %.sroa.0.3.i192
  br label %bb.ed

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ed, %bb.dp
  %.sroa.034.0.lcssa.i126 = phi i64 [ %i.sx, %bb.dp ], [ %.sroa.034.1.i141, %bb.ed ]
  %.sroa.032.0.lcssa.i127 = phi i64 [ 0, %bb.dp ], [ %.sroa.032.1.i142, %bb.ed ]
  %.sroa.0.0.lcssa.i128 = phi i64 [ %3, %bb.dp ], [ %.sroa.0.1.i145, %bb.ed ]
  %i.ach = add i64 %.sroa.034.0.lcssa.i126, %i.sy
  %i.aci = sub i64 %i.ach, %.sroa.0.0.lcssa.i128
  store i64 %i.aci, ptr %11, align 8, !alias.scope !853, !noalias !857
  %i.acj = load i64, ptr %14, align 8, !alias.scope !854, !noalias !921, !noundef !6
  %i.ack = add i64 %i.acj, %.sroa.032.0.lcssa.i127
  store i64 %i.ack, ptr %14, align 8, !alias.scope !854, !noalias !921
  br label %bb.acw

bb.fw:                                            ; preds = %bb.a
  %i.acl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.acm = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.acn = load i32, ptr %i.acm, align 4, !alias.scope !923, !noalias !929, !noundef !6
  %i.aco = and i32 %i.acn, 63
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = shl nuw i64 1, %i.acp
  %i.acr = add i64 %i.acq, -16                    ; 3 uses
  %i.acs = load i64, ptr %11, align 8, !alias.scope !926, !noalias !930, !noundef !6 ; 2 uses
  %i.act = add i64 %3, %2                         ; 8 uses
  %i.acu = icmp ugt i64 %2, 7
  %i.acv = add i64 %i.act, -7                     ; 2 uses
  %spec.select.i231 = select i1 %i.acu, i64 %i.acv, i64 %3
  %i.acw = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.acx = load i32, ptr %i.acw, align 8, !alias.scope !923, !noalias !929, !noundef !6 ; 2 uses
  %i.acy = icmp slt i32 %i.acx, 9
  %..i232 = select i1 %i.acy, i64 64, i64 512     ; 3 uses
  %i.acz = add i64 %3, 8
  %i.ada = icmp ult i64 %i.acz, %i.act
  br i1 %i.ada, label %.lr.ph.i236, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i236:                                      ; preds = %bb.fw
  %i.adb = add i64 %..i232, %3
  %i.adc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.add = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ade = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.adg = shl nuw nsw i64 %..i232, 2
  %.val.i237 = load ptr, ptr %i.acl, align 8, !alias.scope !924, !noalias !931 ; 17 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val74.i238 = load i64, ptr %i.adh, align 8, !alias.scope !924, !noalias !931 ; 20 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.adk = icmp slt i32 %i.acx, 5
  %.not4.i.i239 = icmp eq i64 %10, 0
  %.not5.i.i240 = icmp eq i64 %10, 1
  %i.adl = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.adm = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i241 = icmp eq i64 %10, 3              ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.fx

bb.fx:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i236
  %.sroa.0.0109.i242 = phi i64 [ %3, %.lr.ph.i236 ], [ %.sroa.0.1.i254, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.0108.i243 = phi ptr [ %12, %.lr.ph.i236 ], [ %.sroa.031.1.i253, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.0107.i244 = phi i64 [ %13, %.lr.ph.i236 ], [ %.sroa.4.1.i252, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.0106.i245 = phi i64 [ 0, %.lr.ph.i236 ], [ %.sroa.032.1.i251, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.0105.i246 = phi i64 [ %i.acs, %.lr.ph.i236 ], [ %.sroa.034.1.i250, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.0104.i247 = phi i64 [ %i.adb, %.lr.ph.i236 ], [ %.sroa.053.1.i249, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.adp = sub i64 %i.act, %.sroa.0.0109.i242     ; 2 uses
  %spec.store.select.i248 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0109.i242, i64 %i.acr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !932
  store i64 2020, ptr %i.ade, align 8, !noalias !932
  %i.adq = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.acl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0109.i242, i64 noundef %i.adp, i64 noundef %spec.store.select.i248, ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
  br i1 %i.adq, label %.preheader.i290, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.adr = add i64 %.sroa.034.0105.i246, 1        ; 2 uses
  %i.ads = add i64 %.sroa.0.0109.i242, 1          ; 8 uses
  %i.adt = icmp ugt i64 %i.ads, %.sroa.053.0104.i247
  br i1 %i.adt, label %bb.fz, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.fz:                                            ; preds = %bb.fy
  %i.adu = add i64 %.sroa.0.0109.i242, 17         ; 2 uses
  %.not.i255 = icmp ult i64 %i.adu, %i.acv
  br i1 %.not.i255, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.adv = add i64 %.sroa.053.0104.i247, %i.adg
  %i.adw = icmp ugt i64 %i.ads, %i.adv
  %i.adx = and i64 %i.ads, %6                     ; 5 uses
  %.not.i.i.i79.i257 = icmp ugt i64 %i.adx, %5    ; 2 uses
  br i1 %i.adw, label %bb.gg, label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %.neg.i256 = xor i64 %.sroa.0.0109.i242, -1
  %i.ady = add i64 %i.act, %.neg.i256
  %i.adz = add i64 %i.ady, %i.adr
  br label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.gc:                                            ; preds = %bb.ga
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  br i1 %.not.i.i.i79.i257, label %bb.gd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258, !prof !10

bb.gd:                                            ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.2.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.1.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, %bb.gc
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !935
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258: ; preds = %bb.gc
  %i.aea = sub nuw nsw i64 %5, %i.adx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %.not.i.i.i.i.i259 = icmp samesign ult i64 %i.aea, 8
  br i1 %.not.i.i.i.i.i259, label %bb.ge, label %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !10

bb.ge:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.3.i.i271, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.2.i.i267, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !937
  unreachable

_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i.i258
  %i.aeb = getelementptr inbounds nuw i8, ptr %4, i64 %i.adx
  %.sroa.0.0.copyload.i.i.i.i260 = load i64, ptr %i.aeb, align 1, !alias.scope !938, !noalias !939
  %i.aec = mul i64 %.sroa.0.0.copyload.i.i.i.i260, 3866266742567714048
  %i.aed = lshr i64 %i.aec, 44
  %i.aee = lshr i64 %i.ads, 3
  %i.aef = and i64 %i.aee, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i237) ]
  %i.aeg = add nuw nsw i64 %i.aed, %i.aef         ; 3 uses
  %i.aeh = icmp ugt i64 %.val74.i238, %i.aeg
  br i1 %i.aeh, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.gf

bb.gf:                                            ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %.lcssa.i.i261 = phi i64 [ %i.aeg, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.aes, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i ], [ %i.afe, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.2.i.i ], [ %i.afq, %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.3.i.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i261, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !940
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.aei = trunc i64 %i.ads to i32
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.aeg
  store i32 %i.aei, ptr %i.aej, align 4, !noalias !940
  %i.aek = add i64 %.sroa.0.0109.i242, 3          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.ael = and i64 %i.aek, %6                     ; 3 uses
  %.not.i.i.1.i.i262 = icmp ugt i64 %i.ael, %5
  br i1 %.not.i.i.1.i.i262, label %bb.gd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i.i
  %i.aem = sub nuw nsw i64 %5, %i.ael
  %.not.i.i.i.1.i.i264 = icmp samesign ult i64 %i.aem, 8
  br i1 %.not.i.i.i.1.i.i264, label %bb.ge, label %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i, !prof !10

_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.1.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.1.i.i263
end_hunk_4
begin_hunk_5_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.hc:                                            ; preds = %bb.hb
  %i.aiz = load i32, ptr %i.ado, align 4, !alias.scope !968, !noalias !969, !noundef !6
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = icmp eq i64 %i.aib, %i.aja
  br i1 %i.ajb, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302, label %bb.gn

bb.hd:                                            ; preds = %bb.hb
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !970
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i302: ; preds = %bb.hc, %bb.gz, %bb.gy, %bb.gw, %bb.gt, %bb.gn
  %.sroa.0.0.i.i303 = phi i64 [ %i.aic, %bb.gn ], [ 3, %bb.hc ], [ %i.air, %bb.gw ], [ %i.aiv, %bb.gy ], [ 1, %bb.gt ], [ 2, %bb.gz ] ; 3 uses
  %i.ajc = icmp ne i64 %.sroa.0.0.i.i303, 0
  %or.cond.i304 = and i1 %.not.i.i301, %i.ajc
  br i1 %or.cond.i304, label %bb.hi, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305

bb.he:                                            ; preds = %bb.gl
  %i.ajd = load i64, ptr %i.adj, align 8, !noalias !932, !noundef !6
  %i.aje = load i64, ptr %i.ade, align 8, !noalias !932, !noundef !6
  %i.ajf = add i64 %i.aje, 175
  %.not71.i333 = icmp ult i64 %i.ajd, %i.ajf
  br i1 %.not71.i333, label %bb.gm, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ajg = add i64 %.sroa.034.2.i293, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !932
  %i.ajh = icmp samesign ult i32 %.sroa.049.0.i291, 3
  %i.aji = add i64 %.sroa.0.2.i294, 9
  %i.ajj = icmp ult i64 %i.aji, %i.act
  %or.cond5.i334 = and i1 %i.ajh, %i.ajj
  br i1 %or.cond5.i334, label %bb.hg, label %bb.gm

bb.hg:                                            ; preds = %bb.hf
  %i.ajk = add nuw nsw i32 %.sroa.049.0.i291, 1
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
  br i1 %i.adm, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  br i1 %.not6.i.i241, label %bb.hm, label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !972
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.ajl = load i32, ptr %i.adn, align 4, !alias.scope !925, !noalias !969, !noundef !6
  store i32 %i.ajl, ptr %i.ado, align 4, !alias.scope !925, !noalias !969
  %i.ajm = load <2 x i32>, ptr %9, align 4, !alias.scope !925, !noalias !969
  store <2 x i32> %i.ajm, ptr %i.adl, align 4, !alias.scope !925, !noalias !969
  %i.ajn = trunc i64 %i.aib to i32
  store i32 %i.ajn, ptr %9, align 4, !alias.scope !925, !noalias !969
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305

bb.hm:                                            ; preds = %bb.hj
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !972
  unreachable

bb.hn:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i305
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.031.0108.i243, i64 16 ; 2 uses
  %i.ajp = add nsw i64 %.sroa.4.0107.i244, -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0108.i243) ]
  %i.ajq = add i64 %.sroa.032.0106.i245, 1        ; 2 uses
  %i.ajr = load i64, ptr %i.adc, align 8, !noalias !932, !noundef !6
  %i.ajs = xor i64 %i.ajr, %i.ahx
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0108.i243, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adf, i64 noundef %.sroa.034.3.i298, i64 noundef %i.ahx, i64 noundef %i.ajs, i64 noundef %.sroa.0.0.i3.i306), !noalias !972
  %i.ajt = load i64, ptr %15, align 8, !alias.scope !928, !noalias !973, !noundef !6
  %i.aju = add i64 %i.ajt, %.sroa.034.3.i298
  store i64 %i.aju, ptr %15, align 8, !alias.scope !928, !noalias !973
  %i.ajv = add i64 %.sroa.0.3.i299, 2             ; 4 uses
  %i.ajw = add i64 %i.ahx, %.sroa.0.3.i299        ; 3 uses
  %spec.store.select4.i308 = tail call i64 @llvm.umin.i64(i64 %i.ajw, i64 %spec.select.i231) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.ajx = add i64 %.sroa.0.3.i299, 18
  %.not.i.i.i309 = icmp ult i64 %spec.store.select4.i308, %i.ajx
  br i1 %.not.i.i.i309, label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ajy = sub i64 %spec.store.select4.i308, %i.ajv ; 2 uses
  %i.ajz = lshr i64 %i.ajy, 2                     ; 2 uses
  %.not32.i.i.i310 = icmp eq i64 %i.ajz, 0
  br i1 %.not32.i.i.i310, label %._crit_edge.i.i.i322, label %.lr.ph.i.i.i311

._crit_edge.i.i.i322:                             ; preds = %bb.hx, %bb.ho
  %i.aka = and i64 %i.ajy, -4
  %i.akb = add i64 %i.aka, %i.ajv
  br label %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i311:                                  ; preds = %bb.ho, %bb.hx
  %.sroa.02.031.i.i.i312 = phi i64 [ %i.akc, %bb.hx ], [ 0, %bb.ho ] ; 2 uses
  %i.akc = add nuw nsw i64 %.sroa.02.031.i.i.i312, 1 ; 2 uses
  %i.akd = shl nuw i64 %.sroa.02.031.i.i.i312, 2
  %i.ake = add i64 %i.akd, %i.ajv
  %i.akf = and i64 %i.ake, %6                     ; 5 uses
  %.not.i.i.i104.i313 = icmp ugt i64 %i.akf, %5
  br i1 %.not.i.i.i104.i313, label %bb.hp, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314, !prof !10

bb.hp:                                            ; preds = %.lr.ph.i.i.i311
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16, !noalias !976
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314: ; preds = %.lr.ph.i.i.i311
  %i.akg = sub nuw nsw i64 %5, %i.akf
  %.not.i24.i.i.i315 = icmp samesign ult i64 %i.akg, 11
  br i1 %.not.i24.i.i.i315, label %bb.hq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316, !prof !10

bb.hq:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16, !noalias !977
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i105.i314
  %i.akh = getelementptr inbounds nuw i8, ptr %4, i64 %i.akf ; 4 uses
  %.sroa.0.0.copyload.i.i.i106.i317 = load i64, ptr %i.akh, align 1, !alias.scope !978, !noalias !979
  %i.aki = mul i64 %.sroa.0.0.copyload.i.i.i106.i317, 3866266742567714048
  %i.akj = lshr i64 %i.aki, 44
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 1
  %.sroa.0.0.copyload.i32.i.i.i318 = load i64, ptr %i.akk, align 1, !alias.scope !980, !noalias !981
  %i.akl = mul i64 %.sroa.0.0.copyload.i32.i.i.i318, 3866266742567714048
  %i.akm = lshr i64 %i.akl, 44
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akh, i64 2
  %.sroa.0.0.copyload.i36.i.i.i319 = load i64, ptr %i.akn, align 1, !alias.scope !982, !noalias !983
  %i.ako = mul i64 %.sroa.0.0.copyload.i36.i.i.i319, 3866266742567714048
  %i.akp = lshr i64 %i.ako, 44
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akh, i64 3
  %.sroa.0.0.copyload.i40.i.i.i320 = load i64, ptr %i.akq, align 1, !alias.scope !984, !noalias !985
  %i.akr = mul i64 %.sroa.0.0.copyload.i40.i.i.i320, 3866266742567714048
  %i.aks = lshr i64 %i.akr, 44
  %i.akt = lshr i64 %i.akf, 3
  %i.aku = and i64 %i.akt, 3                      ; 4 uses
  %i.akv = add nuw nsw i64 %i.akj, %i.aku         ; 3 uses
  %i.akw = add nuw nsw i64 %i.akm, %i.aku         ; 3 uses
  %i.akx = add nuw nsw i64 %i.akp, %i.aku         ; 3 uses
  %i.aky = add nuw nsw i64 %i.aks, %i.aku         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i237) ]
  %i.akz = icmp ult i64 %i.akv, %.val74.i238
  br i1 %i.akz, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.akv
  %i.alb = trunc i64 %i.akf to i32                ; 4 uses
  store i32 %i.alb, ptr %i.ala, align 4, !noalias !986
  %i.alc = icmp ult i64 %i.akw, %.val74.i238
  br i1 %i.alc, label %bb.ht, label %bb.hu

bb.hs:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit28.i.i.i316
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akv, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16, !noalias !986
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.akw
  %i.ale = add i32 %i.alb, 1
  store i32 %i.ale, ptr %i.ald, align 4, !noalias !986
  %i.alf = icmp ult i64 %i.akx, %.val74.i238
  br i1 %i.alf, label %bb.hv, label %bb.hw

bb.hu:                                            ; preds = %bb.hr
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akw, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16, !noalias !986
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.akx
  %i.alh = add i32 %i.alb, 2
  store i32 %i.alh, ptr %i.alg, align 4, !noalias !986
  %i.ali = icmp ult i64 %i.aky, %.val74.i238
  br i1 %i.ali, label %bb.hx, label %bb.hy

bb.hw:                                            ; preds = %bb.ht
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akx, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16, !noalias !986
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.aky
  %i.alk = add i32 %i.alb, 3
  store i32 %i.alk, ptr %i.alj, align 4, !noalias !986
  %exitcond.not.i.i.i321 = icmp eq i64 %i.akc, %i.ajz
  br i1 %exitcond.not.i.i.i321, label %._crit_edge.i.i.i322, label %.lr.ph.i.i.i311

bb.hy:                                            ; preds = %bb.hv
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aky, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16, !noalias !986
  unreachable

_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i322, %bb.hn
  %.sroa.0.0.i.i.i323 = phi i64 [ %i.akb, %._crit_edge.i.i.i322 ], [ %i.ajv, %bb.hn ] ; 2 uses
  %i.all = icmp ult i64 %.sroa.0.0.i.i.i323, %spec.store.select4.i308
  br i1 %i.all, label %.lr.ph.i.i324, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i324:                                    ; preds = %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i
  %.sroa.01.021.i.i325 = phi i64 [ %i.alm, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i ], [ %.sroa.0.0.i.i.i323, %_RNvMs0_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEE18StoreRangeOptBasicCskeugdADtBsi_12pingora_core.exit.i.i ] ; 4 uses
  %i.alm = add nuw i64 %.sroa.01.021.i.i325, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.aln = and i64 %.sroa.01.021.i.i325, %6       ; 3 uses
  %.not.i.i6.i.i326 = icmp ugt i64 %i.aln, %5
  br i1 %.not.i.i6.i.i326, label %bb.hz, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327, !prof !10

bb.hz:                                            ; preds = %.lr.ph.i.i324
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #16, !noalias !988
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327: ; preds = %.lr.ph.i.i324
  %i.alo = sub nuw nsw i64 %5, %i.aln
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %.not.i.i.i.i107.i328 = icmp samesign ult i64 %i.alo, 8
  br i1 %.not.i.i.i.i107.i328, label %bb.ia, label %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i, !prof !10

bb.ia:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !990
  unreachable

_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i7.i.i327
  %i.alp = getelementptr inbounds nuw i8, ptr %4, i64 %i.aln
  %.sroa.0.0.copyload.i.i8.i.i329 = load i64, ptr %i.alp, align 1, !alias.scope !991, !noalias !992
  %i.alq = mul i64 %.sroa.0.0.copyload.i.i8.i.i329, 3866266742567714048
  %i.alr = lshr i64 %i.alq, 44
  %i.als = lshr i64 %.sroa.01.021.i.i325, 3
  %i.alt = and i64 %i.als, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i237) ]
  %i.alu = add nuw nsw i64 %i.alr, %i.alt         ; 3 uses
  %i.alv = icmp ugt i64 %.val74.i238, %i.alu
  br i1 %i.alv, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i, label %bb.ib

bb.ib:                                            ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.alu, i64 noundef %.val74.i238, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #16, !noalias !993
  unreachable

_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i109.i: ; preds = %_RNvXsb_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_17BasicHashComputer9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i108.i
  %i.alw = trunc i64 %.sroa.01.021.i.i325 to i32
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.val.i237, i64 %i.alu
  store i32 %i.alw, ptr %i.alx, align 4, !noalias !993
  %exitcond.not.i.i330 = icmp eq i64 %i.alm, %spec.store.select4.i308
  br i1 %exitcond.not.i.i330, label %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i324

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.fw
  %.sroa.034.0.lcssa.i233 = phi i64 [ %i.acs, %bb.fw ], [ %.sroa.034.1.i250, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i234 = phi i64 [ 0, %bb.fw ], [ %.sroa.032.1.i251, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i235 = phi i64 [ %3, %bb.fw ], [ %.sroa.0.1.i254, %_RNvXs1_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.aly = add i64 %.sroa.034.0.lcssa.i233, %i.act
  %i.alz = sub i64 %i.aly, %.sroa.0.0.lcssa.i235
  store i64 %i.alz, ptr %11, align 8, !alias.scope !926, !noalias !930
  %i.ama = load i64, ptr %14, align 8, !alias.scope !927, !noalias !994, !noundef !6
  %i.amb = add i64 %i.ama, %.sroa.032.0.lcssa.i234
  store i64 %i.amb, ptr %14, align 8, !alias.scope !927, !noalias !994
  br label %bb.acw

bb.ic:                                            ; preds = %bb.a
  %i.amc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.ame = load i8, ptr %i.amd, align 1, !range !702, !noundef !6
  %i.amf = trunc nuw i8 %i.ame to i1
  %.14 = select i1 %i.amf, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.amg = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.amh = load i32, ptr %i.amg, align 4, !alias.scope !996, !noalias !1002, !noundef !6
  %i.ami = and i32 %i.amh, 63
  %i.amj = zext nneg i32 %i.ami to i64
  %i.amk = shl nuw i64 1, %i.amj
  %i.aml = add i64 %i.amk, -16                    ; 3 uses
  %i.amm = load i64, ptr %11, align 8, !alias.scope !999, !noalias !1003, !noundef !6 ; 2 uses
  %i.amn = add i64 %3, %2                         ; 9 uses
  %i.amo = icmp ugt i64 %2, 3
  %i.amp = add i64 %i.amn, -3
  %spec.select.i336 = select i1 %i.amo, i64 %i.amp, i64 %3
  %i.amq = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.amr = load i32, ptr %i.amq, align 8, !alias.scope !996, !noalias !1002, !noundef !6 ; 2 uses
  %i.ams = icmp slt i32 %i.amr, 9
  %..i337 = select i1 %i.ams, i64 64, i64 512     ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i338 = load i32, ptr %i.amt, align 8, !alias.scope !997, !noalias !1004, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i338), !noalias !1005
  %i.amu = add i64 %3, 4
  %i.amv = icmp ult i64 %i.amu, %i.amn
  br i1 %i.amv, label %.lr.ph.i342, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i342:                                      ; preds = %bb.ic
  %i.amw = add i64 %..i337, %3
  %i.amx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.amz = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.anb = load i64, ptr %i.ana, align 8, !alias.scope !996, !noalias !1002, !noundef !6 ; 2 uses
  %i.anc = add i64 %i.amn, -4
  %i.and = shl nuw nsw i64 %..i337, 2
  %i.ane = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 5 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 4 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.anm = icmp slt i32 %i.amr, 5
  %.not4.i.i343 = icmp eq i64 %10, 0
  %.not5.i.i344 = icmp eq i64 %10, 1
  %i.ann = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.ano = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i345 = icmp eq i64 %10, 3              ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %8, i64 92
  br label %bb.id

bb.id:                                            ; preds = %bb.lo, %.lr.ph.i342
  %.sroa.0.0987.i = phi i64 [ %3, %.lr.ph.i342 ], [ %.sroa.0.1.i352, %bb.lo ] ; 9 uses
  %.sroa.031.0986.i = phi ptr [ %12, %.lr.ph.i342 ], [ %.sroa.031.1.i351, %bb.lo ] ; 7 uses
  %.sroa.4.0985.i = phi i64 [ %13, %.lr.ph.i342 ], [ %.sroa.4.1.i350, %bb.lo ] ; 6 uses
  %.sroa.032.0984.i = phi i64 [ 0, %.lr.ph.i342 ], [ %.sroa.032.1.i349, %bb.lo ] ; 5 uses
  %.sroa.034.0983.i = phi i64 [ %i.amm, %.lr.ph.i342 ], [ %.sroa.034.1.i348, %bb.lo ] ; 4 uses
  %.sroa.053.0982.i = phi i64 [ %i.amw, %.lr.ph.i342 ], [ %.sroa.053.1.i347, %bb.lo ] ; 6 uses
  %i.ans = sub i64 %i.amn, %.sroa.0.0987.i        ; 2 uses
  %spec.store.select.i346 = call i64 @llvm.umin.i64(i64 %.sroa.0.0987.i, i64 %i.aml)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1006
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !noalias !1006
  store i64 2020, ptr %i.amz, align 8, !noalias !1006
  %i.ant = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.amc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0987.i, i64 noundef %i.ans, i64 noundef %spec.store.select.i346, i64 noundef %i.anb, ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
  br i1 %i.ant, label %.preheader.i355, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.anu = add i64 %.sroa.034.0983.i, 1           ; 2 uses
  %i.anv = add i64 %.sroa.0.0987.i, 1             ; 6 uses
  %i.anw = icmp ugt i64 %i.anv, %.sroa.053.0982.i
  br i1 %i.anw, label %bb.if, label %bb.lo

bb.if:                                            ; preds = %bb.ie
  %i.anx = add i64 %.sroa.0.0987.i, 17            ; 2 uses
  %.not.i353 = icmp ult i64 %i.anx, %i.anc
  br i1 %.not.i353, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.any = add i64 %.sroa.053.0982.i, %i.and
  %i.anz = icmp ugt i64 %i.anv, %i.any
  %i.aoa = and i64 %i.anv, %6                     ; 19 uses
  %i.aob = icmp ult i64 %i.aoa, %5                ; 2 uses
  br i1 %i.anz, label %bb.js, label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %.neg.i354 = xor i64 %.sroa.0.0987.i, -1
  %i.aoc = add i64 %i.amn, %.neg.i354
  %i.aod = add i64 %i.aoc, %i.anu
  br label %bb.lo

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.aoe = load i32, ptr %i.ane, align 8, !alias.scope !1009, !noalias !1010, !noundef !6
  %.val58.i.i = load ptr, ptr %i.amc, align 8, !alias.scope !1011, !noalias !1010, !nonnull !6, !noundef !6 ; 4 uses
  %.val59.i.i = load i64, ptr %i.anf, align 8, !alias.scope !1011, !noalias !1010, !noundef !6 ; 8 uses
  %.val.i.i = load ptr, ptr %i.ang, align 8, !alias.scope !1011, !noalias !1010, !nonnull !6, !noundef !6 ; 4 uses
  %.val53.i.i = load i64, ptr %i.anh, align 8, !alias.scope !1011, !noalias !1010, !noundef !6 ; 8 uses
  br i1 %i.aob, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aof = add nuw nsw i64 %i.aoa, 1              ; 3 uses
  %i.aog = icmp samesign ult i64 %i.aof, %5
  br i1 %i.aog, label %bb.il, label %bb.im

bb.ik:                                            ; preds = %bb.ii
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoa, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #16, !noalias !1012
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.aoh = add nuw nsw i64 %i.aoa, 2              ; 3 uses
  %i.aoi = icmp samesign ult i64 %i.aoh, %5
  br i1 %i.aoi, label %bb.in, label %bb.io

bb.im:                                            ; preds = %bb.ij
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aof, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #16, !noalias !1012
  unreachable

bb.in:                                            ; preds = %bb.il
  %i.aoj = add nuw nsw i64 %i.aoa, 3              ; 3 uses
  %i.aok = icmp samesign ult i64 %i.aoj, %5
  br i1 %i.aok, label %bb.ip, label %bb.iq

bb.io:                                            ; preds = %bb.il
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoh, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #16, !noalias !1012
  unreachable

bb.ip:                                            ; preds = %bb.in
  %i.aol = add nuw nsw i64 %i.aoa, 4              ; 3 uses
  %i.aom = icmp samesign ult i64 %i.aol, %5
  br i1 %i.aom, label %bb.ir, label %bb.is

bb.iq:                                            ; preds = %bb.in
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoj, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #16, !noalias !1012
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.bau = shl nuw nsw i32 %.tr7.i.i382, 2
  %i.bav = lshr i32 158663784, %i.bau
  %i.baw = and i32 %i.bav, 15
  %i.bax = zext nneg i32 %i.baw to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367

bb.mc:                                            ; preds = %bb.ma
  br i1 %i.ano, label %bb.me, label %bb.mf

bb.md:                                            ; preds = %bb.ma
  %.tr.i.i381 = trunc nuw nsw i64 %i.bap to i32
  %i.bay = shl nuw nsw i32 %.tr.i.i381, 2
  %i.baz = lshr i32 266017486, %i.bay
  %i.bba = and i32 %i.baz, 15
  %i.bbb = zext nneg i32 %i.bba to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367

bb.me:                                            ; preds = %bb.mc
  %i.bbc = load i32, ptr %i.anp, align 4, !alias.scope !1024, !noalias !1005, !noundef !6
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = icmp eq i64 %i.bah, %i.bbd
  br i1 %i.bbe, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367, label %bb.mg

bb.mf:                                            ; preds = %bb.mc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1025
  unreachable

bb.mg:                                            ; preds = %bb.me
  br i1 %.not6.i.i345, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bbf = load i32, ptr %i.anq, align 4, !alias.scope !1024, !noalias !1005, !noundef !6
  %i.bbg = sext i32 %i.bbf to i64
  %i.bbh = icmp eq i64 %i.bah, %i.bbg
  br i1 %i.bbh, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367, label %bb.ls

bb.mi:                                            ; preds = %bb.mg
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1025
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i367: ; preds = %bb.mh, %bb.me, %bb.md, %bb.mb, %bb.ly, %bb.ls
  %.sroa.0.0.i.i368 = phi i64 [ %i.bai, %bb.ls ], [ 3, %bb.mh ], [ %i.bax, %bb.mb ], [ %i.bbb, %bb.md ], [ 1, %bb.ly ], [ 2, %bb.me ] ; 3 uses
  %i.bbi = icmp ne i64 %.sroa.0.0.i.i368, 0
  %or.cond.i369 = and i1 %.not.i.i366, %i.bbi
  br i1 %or.cond.i369, label %bb.mn, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370

bb.mj:                                            ; preds = %bb.lq
  %i.bbj = load i64, ptr %i.anl, align 8, !noalias !1006, !noundef !6
  %i.bbk = load i64, ptr %i.amz, align 8, !noalias !1006, !noundef !6
  %i.bbl = add i64 %i.bbk, 175
  %.not71.i383 = icmp ult i64 %i.bbj, %i.bbl
  br i1 %.not71.i383, label %bb.lr, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.bbm = add i64 %.sroa.034.2.i358, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !1006
  %i.bbn = icmp samesign ult i32 %.sroa.049.0.i356, 3
  %i.bbo = add i64 %.sroa.0.2.i359, 5
  %i.bbp = icmp ult i64 %i.bbo, %i.amn
  %or.cond5.i384 = and i1 %i.bbn, %i.bbp
  br i1 %or.cond5.i384, label %bb.ml, label %bb.lr

bb.ml:                                            ; preds = %bb.mk
  %i.bbq = add nuw nsw i32 %.sroa.049.0.i356, 1
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
  br i1 %i.ano, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  br i1 %.not6.i.i345, label %bb.mr, label %bb.mq

bb.mp:                                            ; preds = %bb.mn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1027
  unreachable

bb.mq:                                            ; preds = %bb.mo
  %i.bbr = load i32, ptr %i.anp, align 4, !alias.scope !998, !noalias !1005, !noundef !6
  store i32 %i.bbr, ptr %i.anq, align 4, !alias.scope !998, !noalias !1005
  %i.bbs = load <2 x i32>, ptr %9, align 4, !alias.scope !998, !noalias !1005
  store <2 x i32> %i.bbs, ptr %i.ann, align 4, !alias.scope !998, !noalias !1005
  %i.bbt = trunc i64 %i.bah to i32
  store i32 %i.bbt, ptr %9, align 4, !alias.scope !998, !noalias !1005
  %.val.i380 = load i32, ptr %i.amt, align 8, !alias.scope !997, !noalias !1004, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i380), !noalias !1028
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370

bb.mr:                                            ; preds = %bb.mo
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1027
  unreachable

bb.ms:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i370
  %i.bbu = getelementptr inbounds nuw i8, ptr %.sroa.031.0986.i, i64 16
  %i.bbv = add nsw i64 %.sroa.4.0985.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0986.i) ]
  %i.bbw = add i64 %.sroa.032.0984.i, 1
  %i.bbx = load i64, ptr %i.v, align 8, !noalias !1006, !noundef !6 ; 2 uses
  %i.bby = load i64, ptr %i.amx, align 8, !noalias !1006, !noundef !6
  %i.bbz = xor i64 %i.bby, %i.bbx
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0986.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ana, i64 noundef %.sroa.034.3.i363, i64 noundef %i.bbx, i64 noundef %i.bbz, i64 noundef %.sroa.0.0.i3.i371), !noalias !1027
  %i.bca = load i64, ptr %15, align 8, !alias.scope !1001, !noalias !1029, !noundef !6
  %i.bcb = add i64 %i.bca, %.sroa.034.3.i363
  store i64 %i.bcb, ptr %15, align 8, !alias.scope !1001, !noalias !1029
  %i.bcc = add i64 %.sroa.0.3.i364, 2             ; 4 uses
  %i.bcd = load i64, ptr %i.v, align 8, !noalias !1006, !noundef !6
  %i.bce = add i64 %i.bcd, %.sroa.0.3.i364
  %spec.store.select4.i372 = call i64 @llvm.umin.i64(i64 %i.bce, i64 %spec.select.i336) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1034
  %i.bcf = add i64 %.sroa.0.3.i364, 10
  %.not.i.i.i373 = icmp ult i64 %spec.store.select4.i372, %i.bcf
  br i1 %.not.i.i.i373, label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %.val54.i.i.i = load ptr, ptr %i.amc, align 8, !alias.scope !1035, !noalias !1036, !nonnull !6, !noundef !6 ; 4 uses
  %.val55.i.i.i = load i64, ptr %i.anf, align 8, !alias.scope !1035, !noalias !1036, !noundef !6 ; 11 uses
  %.val.i.i.i = load ptr, ptr %i.ang, align 8, !alias.scope !1035, !noalias !1036, !nonnull !6, !noundef !6 ; 4 uses
  %.val49.i.i.i = load i64, ptr %i.anh, align 8, !alias.scope !1035, !noalias !1036, !noundef !6 ; 10 uses
  store i64 %.val55.i.i.i, ptr %i.t, align 8, !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1037
  %.val62.i.i.i = load i32, ptr %i.anr, align 4, !alias.scope !1035, !noalias !1036, !noundef !6
  %i.bcg = zext i32 %.val62.i.i.i to i64          ; 2 uses
  store i64 %i.bcg, ptr %i.s, align 8, !noalias !1037
  %i.bch = icmp eq i64 %.val55.i.i.i, %i.bcg
  br i1 %i.bch, label %bb.mv, label %bb.mu, !prof !8

bb.mu:                                            ; preds = %bb.mt
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1038
  unreachable

bb.mv:                                            ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1037
  store i64 %.val49.i.i.i, ptr %i.r, align 8, !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1037
  %.val56.i.i.i = load i32, ptr %i.anj, align 4, !alias.scope !1035, !noalias !1036, !noundef !6 ; 2 uses
  %i.bci = and i32 %.val56.i.i.i, 31
  %i.bcj = zext nneg i32 %i.bci to i64
  %i.bck = shl nuw nsw i64 %.val55.i.i.i, %i.bcj  ; 2 uses
  store i64 %i.bck, ptr %i.q, align 8, !noalias !1037
  %i.bcl = icmp eq i64 %.val49.i.i.i, %i.bck
  br i1 %i.bcl, label %bb.mx, label %bb.mw, !prof !8

bb.mw:                                            ; preds = %bb.mv
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16, !noalias !1038
  unreachable

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1037
  %i.bcm = sub i64 %spec.store.select4.i372, %i.bcc ; 2 uses
  %i.bcn = lshr i64 %i.bcm, 2                     ; 2 uses
  %.not195.i.i.i = icmp eq i64 %i.bcn, 0
  br i1 %.not195.i.i.i, label %._crit_edge.i.i.i376, label %.lr.ph.i.i.i374

.lr.ph.i.i.i374:                                  ; preds = %bb.mx
  %i.bco = load i32, ptr %i.ane, align 8, !alias.scope !1039, !noalias !1036, !noundef !6
  %i.bcp = and i32 %i.bco, 63
  %i.bcq = zext nneg i32 %i.bcp to i64            ; 4 uses
  %.val60.i.i.i = load i32, ptr %i.ani, align 8, !alias.scope !1035, !noalias !1036 ; 4 uses
  %i.bcr = and i32 %.val56.i.i.i, 63
  %i.bcs = zext nneg i32 %i.bcr to i64            ; 4 uses
  br label %bb.my

._crit_edge.i.i.i376:                             ; preds = %bb.ob, %bb.mx
  %i.bct = and i64 %i.bcm, -4
  %i.bcu = add i64 %i.bct, %i.bcc
  br label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i

bb.my:                                            ; preds = %bb.ob, %.lr.ph.i.i.i374
  %.sroa.014.0194.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i374 ], [ %i.bcv, %bb.ob ] ; 2 uses
  %i.bcv = add nuw nsw i64 %.sroa.014.0194.i.i.i, 1 ; 2 uses
  %i.bcw = shl nuw i64 %.sroa.014.0194.i.i.i, 2
  %i.bcx = add i64 %i.bcw, %i.bcc
  %i.bcy = and i64 %i.bcx, %6                     ; 10 uses
  %i.bcz = icmp ult i64 %i.bcy, %5
  br i1 %i.bcz, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.bda = add nuw nsw i64 %i.bcy, 1              ; 3 uses
  %i.bdb = icmp ult i64 %i.bda, %5
  br i1 %i.bdb, label %bb.nb, label %bb.nc

bb.na:                                            ; preds = %bb.my
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bcy, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #16, !noalias !1038
  unreachable

bb.nb:                                            ; preds = %bb.mz
  %i.bdc = add nuw nsw i64 %i.bcy, 2              ; 3 uses
  %i.bdd = icmp ult i64 %i.bdc, %5
  br i1 %i.bdd, label %bb.nd, label %bb.ne

bb.nc:                                            ; preds = %bb.mz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bda, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16, !noalias !1038
  unreachable

bb.nd:                                            ; preds = %bb.nb
  %i.bde = add nuw nsw i64 %i.bcy, 3              ; 3 uses
  %i.bdf = icmp ult i64 %i.bde, %5
  br i1 %i.bdf, label %bb.nf, label %bb.ng

bb.ne:                                            ; preds = %bb.nb
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdc, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !1038
  unreachable

bb.nf:                                            ; preds = %bb.nd
  %i.bdg = add nuw nsw i64 %i.bcy, 4              ; 3 uses
  %i.bdh = icmp ult i64 %i.bdg, %5
  br i1 %i.bdh, label %bb.nh, label %bb.ni

bb.ng:                                            ; preds = %bb.nd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bde, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !1038
  unreachable

bb.nh:                                            ; preds = %bb.nf
  %i.bdi = add nuw nsw i64 %i.bcy, 5              ; 3 uses
  %i.bdj = icmp ult i64 %i.bdi, %5
  br i1 %i.bdj, label %bb.nj, label %bb.nk

bb.ni:                                            ; preds = %bb.nf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdg, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16, !noalias !1038
  unreachable

bb.nj:                                            ; preds = %bb.nh
  %i.bdk = add nuw nsw i64 %i.bcy, 6              ; 3 uses
  %i.bdl = icmp ult i64 %i.bdk, %5
  br i1 %i.bdl, label %bb.nl, label %bb.nm

bb.nk:                                            ; preds = %bb.nh
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdi, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #16, !noalias !1038
  unreachable

bb.nl:                                            ; preds = %bb.nj
  %i.bdm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bcy
  %i.bdn = load i32, ptr %i.bdm, align 1
  %i.bdo = zext i32 %i.bdn to i64                 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdg
  %i.bdq = load i8, ptr %i.bdp, align 1, !alias.scope !1040, !noalias !1041, !noundef !6
  %i.bdr = zext i8 %i.bdq to i64
  %i.bds = shl nuw nsw i64 %i.bdr, 32
  %i.bdt = or disjoint i64 %i.bds, %i.bdo         ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdi
  %i.bdv = load i8, ptr %i.bdu, align 1, !alias.scope !1040, !noalias !1041, !noundef !6
  %i.bdw = zext i8 %i.bdv to i64
  %i.bdx = shl nuw nsw i64 %i.bdw, 40
  %i.bdy = getelementptr inbounds nuw i8, ptr %4, i64 %i.bdk
  %i.bdz = load i8, ptr %i.bdy, align 1, !alias.scope !1040, !noalias !1041, !noundef !6
  %i.bea = zext i8 %i.bdz to i64
  %i.beb = shl nuw nsw i64 %i.bea, 48
  %i.bec = or disjoint i64 %i.bdx, %i.beb
  %i.bed = or disjoint i64 %i.bec, %i.bdt         ; 2 uses
  %i.bee = mul nuw nsw i64 %i.bdo, 506832829
  %i.bef = and i64 %i.bee, 4294967295
  %i.beg = lshr i64 %i.bef, %i.bcq                ; 4 uses
  %i.beh = lshr i64 %i.bdt, 8
  %i.bei = mul nuw nsw i64 %i.beh, 506832829
  %i.bej = and i64 %i.bei, 4294967295
  %i.bek = lshr i64 %i.bej, %i.bcq                ; 4 uses
  %i.bel = lshr i64 %i.bed, 16
  %i.bem = mul i64 %i.bel, 506832829
  %i.ben = and i64 %i.bem, 4294967295
  %i.beo = lshr i64 %i.ben, %i.bcq                ; 4 uses
  %i.bep = lshr i64 %i.bed, 24
  %i.beq = mul nuw nsw i64 %i.bep, 506832829
  %i.ber = and i64 %i.beq, 4294967295
  %i.bes = lshr i64 %i.ber, %i.bcq                ; 4 uses
  %i.bet = icmp ult i64 %i.beg, %.val55.i.i.i
  br i1 %i.bet, label %bb.nn, label %bb.no

bb.nm:                                            ; preds = %bb.nj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdk, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16, !noalias !1038
  unreachable

bb.nn:                                            ; preds = %bb.nl
  %i.beu = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.beg ; 2 uses
  %i.bev = load i16, ptr %i.beu, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bew = zext i16 %i.bev to i32
  %i.bex = add i16 %i.bev, 1
  store i16 %i.bex, ptr %i.beu, align 2, !noalias !1038
  %i.bey = and i32 %.val60.i.i.i, %i.bew
  %i.bez = icmp ult i64 %i.bek, %.val55.i.i.i
  br i1 %i.bez, label %bb.np, label %bb.nq

bb.no:                                            ; preds = %bb.nl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.beg, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #16, !noalias !1038
  unreachable

bb.np:                                            ; preds = %bb.nn
  %i.bfa = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.bek ; 2 uses
  %i.bfb = load i16, ptr %i.bfa, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bfc = zext i16 %i.bfb to i32
  %i.bfd = add i16 %i.bfb, 1
  store i16 %i.bfd, ptr %i.bfa, align 2, !noalias !1038
  %i.bfe = and i32 %.val60.i.i.i, %i.bfc
  %i.bff = icmp ult i64 %i.beo, %.val55.i.i.i
  br i1 %i.bff, label %bb.nr, label %bb.ns

bb.nq:                                            ; preds = %bb.nn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bek, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #16, !noalias !1038
  unreachable

bb.nr:                                            ; preds = %bb.np
  %i.bfg = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.beo ; 2 uses
  %i.bfh = load i16, ptr %i.bfg, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bfi = add i16 %i.bfh, 1
  store i16 %i.bfi, ptr %i.bfg, align 2, !noalias !1038
  %i.bfj = icmp ult i64 %i.bes, %.val55.i.i.i
  br i1 %i.bfj, label %bb.nt, label %bb.nu

bb.ns:                                            ; preds = %bb.np
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.beo, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #16, !noalias !1038
  unreachable

bb.nt:                                            ; preds = %bb.nr
  %i.bfk = zext i16 %i.bfh to i32
  %i.bfl = and i32 %.val60.i.i.i, %i.bfk
  %i.bfm = getelementptr inbounds nuw [2 x i8], ptr %.val54.i.i.i, i64 %i.bes ; 2 uses
  %i.bfn = load i16, ptr %i.bfm, align 2, !noalias !1038, !noundef !6 ; 2 uses
  %i.bfo = zext i16 %i.bfn to i32
  %i.bfp = add i16 %i.bfn, 1
  store i16 %i.bfp, ptr %i.bfm, align 2, !noalias !1038
  %i.bfq = and i32 %.val60.i.i.i, %i.bfo
  %i.bfr = shl i64 %i.beg, %i.bcs
  %i.bfs = zext nneg i32 %i.bey to i64
  %i.bft = add i64 %i.bfr, %i.bfs                 ; 3 uses
  %i.bfu = shl i64 %i.bek, %i.bcs
  %i.bfv = zext nneg i32 %i.bfe to i64
  %i.bfw = add i64 %i.bfu, %i.bfv                 ; 3 uses
  %i.bfx = shl i64 %i.beo, %i.bcs
  %i.bfy = zext nneg i32 %i.bfl to i64
  %i.bfz = add i64 %i.bfx, %i.bfy                 ; 3 uses
  %i.bga = shl i64 %i.bes, %i.bcs
  %i.bgb = zext nneg i32 %i.bfq to i64
  %i.bgc = add i64 %i.bga, %i.bgb                 ; 3 uses
  %i.bgd = icmp ult i64 %i.bft, %.val49.i.i.i
  br i1 %i.bgd, label %bb.nv, label %bb.nw

bb.nu:                                            ; preds = %bb.nr
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bes, i64 noundef %.val55.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #16, !noalias !1038
  unreachable

bb.nv:                                            ; preds = %bb.nt
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bft
  %i.bgf = trunc i64 %i.bcy to i32
  store i32 %i.bgf, ptr %i.bge, align 4, !noalias !1038
  %i.bgg = icmp ult i64 %i.bfw, %.val49.i.i.i
  br i1 %i.bgg, label %bb.nx, label %bb.ny

bb.nw:                                            ; preds = %bb.nt
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bft, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #16, !noalias !1038
  unreachable

bb.nx:                                            ; preds = %bb.nv
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bfw
  %i.bgi = trunc i64 %i.bda to i32
  store i32 %i.bgi, ptr %i.bgh, align 4, !noalias !1038
  %i.bgj = icmp ult i64 %i.bfz, %.val49.i.i.i
  br i1 %i.bgj, label %bb.nz, label %bb.oa

bb.ny:                                            ; preds = %bb.nv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bfw, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #16, !noalias !1038
  unreachable

bb.nz:                                            ; preds = %bb.nx
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bfz
  %i.bgl = trunc i64 %i.bdc to i32
  store i32 %i.bgl, ptr %i.bgk, align 4, !noalias !1038
  %i.bgm = icmp ult i64 %i.bgc, %.val49.i.i.i
  br i1 %i.bgm, label %bb.ob, label %bb.oc

bb.oa:                                            ; preds = %bb.nx
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bfz, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #16, !noalias !1038
  unreachable

bb.ob:                                            ; preds = %bb.nz
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.bgc
  %i.bgo = trunc i64 %i.bde to i32
  store i32 %i.bgo, ptr %i.bgn, align 4, !noalias !1038
  %exitcond.not.i.i.i375 = icmp eq i64 %i.bcv, %i.bcn
  br i1 %exitcond.not.i.i.i375, label %._crit_edge.i.i.i376, label %bb.my

bb.oc:                                            ; preds = %bb.nz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bgc, i64 noundef %.val49.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #16, !noalias !1038
  unreachable

_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i376, %bb.ms
  %.sroa.0.0.i.i.i377 = phi i64 [ %i.bcu, %._crit_edge.i.i.i376 ], [ %i.bcc, %bb.ms ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1034
  %i.bgp = icmp ult i64 %.sroa.0.0.i.i.i377, %spec.store.select4.i372
  br i1 %i.bgp, label %.lr.ph.i.i378, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i378:                                    ; preds = %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i
  %.sroa.01.0149.i.i = phi i64 [ %i.bgq, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.0.i.i.i377, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i ] ; 3 uses
  %i.bgq = add nuw i64 %.sroa.01.0149.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.bgr = and i64 %.sroa.01.0149.i.i, %6         ; 3 uses
  %.not.i.i77.i = icmp ugt i64 %i.bgr, %5
  br i1 %.not.i.i77.i, label %bb.od, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.od:                                            ; preds = %.lr.ph.i.i378
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1043
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %.lr.ph.i.i378
  %i.bgs = getelementptr inbounds nuw i8, ptr %4, i64 %i.bgr
  %i.bgt = sub nuw nsw i64 %5, %i.bgr
  %i.bgu = load i32, ptr %i.ane, align 8, !alias.scope !1044, !noalias !1045, !noundef !6
  %i.bgv = call noundef i64 @_RNvXsk_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesNtB5_5H5SubNtB5_21AdvHashSpecialization17load_and_mix_word(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ane, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bgs, i64 noundef range(i64 0, -9223372036854775808) %i.bgt), !noalias !1027
  %i.bgw = and i32 %i.bgu, 63
  %i.bgx = zext nneg i32 %i.bgw to i64
  %i.bgy = lshr i64 %i.bgv, %i.bgx                ; 2 uses
  %i.bgz = and i64 %i.bgy, 4294967295             ; 6 uses
  %.val11.i.i = load i64, ptr %i.anf, align 8, !alias.scope !1046, !noalias !1047, !noundef !6 ; 2 uses
  %i.bha = icmp ult i64 %i.bgz, %.val11.i.i
  br i1 %i.bha, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i
  %.val10.i.i = load ptr, ptr %i.amc, align 8, !alias.scope !1046, !noalias !1047, !nonnull !6, !noundef !6
  %i.bhb = trunc i64 %i.bgy to i32
  %i.bhc = getelementptr inbounds nuw [2 x i8], ptr %.val10.i.i, i64 %i.bgz
  %i.bhd = load i16, ptr %i.bhc, align 2, !noalias !1027, !noundef !6
  %i.bhe = zext i16 %i.bhd to i32
  %.val9.i.i = load i32, ptr %i.ani, align 8, !alias.scope !1046, !noalias !1047, !noundef !6
  %i.bhf = and i32 %.val9.i.i, %i.bhe
  %i.bhg = zext nneg i32 %i.bhf to i64
  %.val6.i.i = load i32, ptr %i.anj, align 4, !alias.scope !1046, !noalias !1047, !noundef !6
  %i.bhh = and i32 %.val6.i.i, 31
  %i.bhi = shl i32 %i.bhb, %i.bhh
  %i.bhj = zext i32 %i.bhi to i64
  %i.bhk = add nuw nsw i64 %i.bhj, %i.bhg         ; 3 uses
  %.val5.i.i = load i64, ptr %i.anh, align 8, !alias.scope !1046, !noalias !1047, !noundef !6 ; 2 uses
  %i.bhl = icmp ult i64 %i.bhk, %.val5.i.i
  br i1 %i.bhl, label %bb.og, label %bb.oh

bb.of:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bgz, i64 noundef %.val11.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1027
  unreachable

bb.og:                                            ; preds = %bb.oe
  %.val.i78.i = load ptr, ptr %i.ang, align 8, !alias.scope !1046, !noalias !1047, !nonnull !6, !noundef !6
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %.val.i78.i, i64 %i.bhk
  %i.bhn = trunc i64 %.sroa.01.0149.i.i to i32
  store i32 %i.bhn, ptr %i.bhm, align 4, !noalias !1027
  %.val8.i.i = load i64, ptr %i.anf, align 8, !alias.scope !1046, !noalias !1047, !noundef !6 ; 2 uses
  %i.bho = icmp ult i64 %i.bgz, %.val8.i.i
  br i1 %i.bho, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.oi

bb.oh:                                            ; preds = %bb.oe
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhk, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1027
  unreachable

bb.oi:                                            ; preds = %bb.og
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bgz, i64 noundef %.val8.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #16, !noalias !1027
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.og
  %.val7.i.i = load ptr, ptr %i.amc, align 8, !alias.scope !1046, !noalias !1047, !nonnull !6, !noundef !6
  %i.bhp = getelementptr inbounds nuw [2 x i8], ptr %.val7.i.i, i64 %i.bgz ; 2 uses
  %i.bhq = load i16, ptr %i.bhp, align 2, !noalias !1027, !noundef !6
  %i.bhr = add i16 %i.bhq, 1
  store i16 %i.bhr, ptr %i.bhp, align 2, !noalias !1027
  %exitcond.not.i.i379 = icmp eq i64 %i.bgq, %spec.store.select4.i372
  br i1 %exitcond.not.i.i379, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i378

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %i.bhs = load i64, ptr %i.v, align 8, !noalias !1006, !noundef !6
  %i.bht = add i64 %i.bhs, %.sroa.0.3.i364
  br label %bb.lo

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.lo, %bb.ic
  %.sroa.034.0.lcssa.i339 = phi i64 [ %i.amm, %bb.ic ], [ %.sroa.034.1.i348, %bb.lo ]
  %.sroa.032.0.lcssa.i340 = phi i64 [ 0, %bb.ic ], [ %.sroa.032.1.i349, %bb.lo ]
  %.sroa.0.0.lcssa.i341 = phi i64 [ %3, %bb.ic ], [ %.sroa.0.1.i352, %bb.lo ]
  %i.bhu = add i64 %.sroa.034.0.lcssa.i339, %i.amn
  %i.bhv = sub i64 %i.bhu, %.sroa.0.0.lcssa.i341
  store i64 %i.bhv, ptr %11, align 8, !alias.scope !999, !noalias !1003
  %i.bhw = load i64, ptr %14, align 8, !alias.scope !1000, !noalias !1048, !noundef !6
  %i.bhx = add i64 %i.bhw, %.sroa.032.0.lcssa.i340
  store i64 %i.bhx, ptr %14, align 8, !alias.scope !1000, !noalias !1048
  br label %bb.acw

bb.oj:                                            ; preds = %bb.a
  %i.bhy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.bia = load i8, ptr %i.bhz, align 1, !range !702, !noundef !6
  %i.bib = trunc nuw i8 %i.bia to i1
  %.15 = select i1 %i.bib, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.bic = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.bid = load i32, ptr %i.bic, align 4, !alias.scope !1050, !noalias !1056, !noundef !6
  %i.bie = and i32 %i.bid, 63
  %i.bif = zext nneg i32 %i.bie to i64
  %i.big = shl nuw i64 1, %i.bif
  %i.bih = add i64 %i.big, -16                    ; 3 uses
  %i.bii = load i64, ptr %11, align 8, !alias.scope !1053, !noalias !1057, !noundef !6 ; 2 uses
  %i.bij = add i64 %3, %2                         ; 9 uses
  %i.bik = icmp ugt i64 %2, 3
  %i.bil = add i64 %i.bij, -3
  %spec.select.i386 = select i1 %i.bik, i64 %i.bil, i64 %3
  %i.bim = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bin = load i32, ptr %i.bim, align 8, !alias.scope !1050, !noalias !1056, !noundef !6 ; 2 uses
  %i.bio = icmp slt i32 %i.bin, 9
  %..i387 = select i1 %i.bio, i64 64, i64 512     ; 3 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i388 = load i32, ptr %i.bip, align 8, !alias.scope !1051, !noalias !1058, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i388), !noalias !1059
  %i.biq = add i64 %3, 4
  %i.bir = icmp ult i64 %i.biq, %i.bij
  br i1 %i.bir, label %.lr.ph.i392, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i392:                                      ; preds = %bb.oj
  %i.bis = add i64 %..i387, %3
  %i.bit = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.biu = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.biv = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bix = load i64, ptr %i.biw, align 8, !alias.scope !1050, !noalias !1056, !noundef !6 ; 2 uses
  %i.biy = add i64 %i.bij, -4
  %i.biz = shl nuw nsw i64 %..i387, 2
  %i.bja = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bje = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.bjf = icmp slt i32 %i.bin, 5
  %.not4.i.i393 = icmp eq i64 %10, 0
  %.not5.i.i394 = icmp eq i64 %10, 1
  %i.bjg = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bjh = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i395 = icmp eq i64 %10, 3              ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.ok

bb.ok:                                            ; preds = %bb.rv, %.lr.ph.i392
  %.sroa.0.0814.i = phi i64 [ %3, %.lr.ph.i392 ], [ %.sroa.0.1.i402, %bb.rv ] ; 9 uses
  %.sroa.031.0813.i = phi ptr [ %12, %.lr.ph.i392 ], [ %.sroa.031.1.i401, %bb.rv ] ; 7 uses
  %.sroa.4.0812.i = phi i64 [ %13, %.lr.ph.i392 ], [ %.sroa.4.1.i400, %bb.rv ] ; 6 uses
  %.sroa.032.0811.i = phi i64 [ 0, %.lr.ph.i392 ], [ %.sroa.032.1.i399, %bb.rv ] ; 5 uses
  %.sroa.034.0810.i = phi i64 [ %i.bii, %.lr.ph.i392 ], [ %.sroa.034.1.i398, %bb.rv ] ; 4 uses
  %.sroa.053.0809.i = phi i64 [ %i.bis, %.lr.ph.i392 ], [ %.sroa.053.1.i397, %bb.rv ] ; 6 uses
  %i.bjk = sub i64 %i.bij, %.sroa.0.0814.i        ; 2 uses
  %spec.store.select.i396 = call i64 @llvm.umin.i64(i64 %.sroa.0.0814.i, i64 %i.bih)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1060
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !1060
  store i64 2020, ptr %i.biv, align 8, !noalias !1060
  %i.bjl = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bhy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0814.i, i64 noundef %i.bjk, i64 noundef %spec.store.select.i396, i64 noundef %i.bix, ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
  br i1 %i.bjl, label %.preheader.i409, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bjm = add i64 %.sroa.034.0810.i, 1           ; 2 uses
  %i.bjn = add i64 %.sroa.0.0814.i, 1             ; 6 uses
  %i.bjo = icmp ugt i64 %i.bjn, %.sroa.053.0809.i
  br i1 %i.bjo, label %bb.om, label %bb.rv

bb.om:                                            ; preds = %bb.ol
  %i.bjp = add i64 %.sroa.0.0814.i, 17            ; 2 uses
  %.not.i403 = icmp ult i64 %i.bjp, %i.biy
  br i1 %.not.i403, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.bjq = add i64 %.sroa.053.0809.i, %i.biz
  %i.bjr = icmp ugt i64 %i.bjn, %i.bjq
  %i.bjs = and i64 %i.bjn, %6                     ; 19 uses
  %i.bjt = icmp ult i64 %i.bjs, %5                ; 2 uses
  br i1 %i.bjr, label %bb.pz, label %bb.op

bb.oo:                                            ; preds = %bb.om
  %.neg.i404 = xor i64 %.sroa.0.0814.i, -1
  %i.bju = add i64 %i.bij, %.neg.i404
  %i.bjv = add i64 %i.bju, %i.bjm
  br label %bb.rv

bb.op:                                            ; preds = %bb.on
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %.val54.i.i = load ptr, ptr %i.bhy, align 8, !alias.scope !1063, !noalias !1064, !nonnull !6, !noundef !6 ; 4 uses
  %.val55.i.i = load i64, ptr %i.bja, align 8, !alias.scope !1063, !noalias !1064, !noundef !6 ; 8 uses
  %.val.i.i405 = load ptr, ptr %i.bjb, align 8, !alias.scope !1063, !noalias !1064, !nonnull !6, !noundef !6 ; 4 uses
  %.val53.i.i406 = load i64, ptr %i.bjc, align 8, !alias.scope !1063, !noalias !1064, !noundef !6 ; 8 uses
  br i1 %i.bjt, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.bjw = add nuw nsw i64 %i.bjs, 1              ; 3 uses
  %i.bjx = icmp samesign ult i64 %i.bjw, %5
  br i1 %i.bjx, label %bb.os, label %bb.ot

bb.or:                                            ; preds = %bb.op
end_hunk_6
begin_hunk_7_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a

bb.sf:                                            ; preds = %bb.sd
  %i.bvr = icmp eq i64 %i.bvh, %i.bvo
  br i1 %i.bvr, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bvs = icmp ult i64 %i.bvm, 7
  br i1 %i.bvs, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bvt = icmp ult i64 %i.bvp, 7
  br i1 %i.bvt, label %bb.sk, label %bb.sj

bb.si:                                            ; preds = %bb.sg
  %.tr7.i.i445 = trunc nuw nsw i64 %i.bvm to i32
  %i.bvu = shl nuw nsw i32 %.tr7.i.i445, 2
  %i.bvv = lshr i32 158663784, %i.bvu
  %i.bvw = and i32 %i.bvv, 15
  %i.bvx = zext nneg i32 %i.bvw to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421

bb.sj:                                            ; preds = %bb.sh
  br i1 %i.bjh, label %bb.sl, label %bb.sm

bb.sk:                                            ; preds = %bb.sh
  %.tr.i.i444 = trunc nuw nsw i64 %i.bvp to i32
  %i.bvy = shl nuw nsw i32 %.tr.i.i444, 2
  %i.bvz = lshr i32 266017486, %i.bvy
  %i.bwa = and i32 %i.bvz, 15
  %i.bwb = zext nneg i32 %i.bwa to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421

bb.sl:                                            ; preds = %bb.sj
  %i.bwc = load i32, ptr %i.bji, align 4, !alias.scope !1076, !noalias !1059, !noundef !6
  %i.bwd = sext i32 %i.bwc to i64
  %i.bwe = icmp eq i64 %i.bvh, %i.bwd
  br i1 %i.bwe, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, label %bb.sn

bb.sm:                                            ; preds = %bb.sj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1077
  unreachable

bb.sn:                                            ; preds = %bb.sl
  br i1 %.not6.i.i395, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bwf = load i32, ptr %i.bjj, align 4, !alias.scope !1076, !noalias !1059, !noundef !6
  %i.bwg = sext i32 %i.bwf to i64
  %i.bwh = icmp eq i64 %i.bvh, %i.bwg
  br i1 %i.bwh, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421, label %bb.rz

bb.sp:                                            ; preds = %bb.sn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1077
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i421: ; preds = %bb.so, %bb.sl, %bb.sk, %bb.si, %bb.sf, %bb.rz
  %.sroa.0.0.i.i422 = phi i64 [ %i.bvi, %bb.rz ], [ 3, %bb.so ], [ %i.bvx, %bb.si ], [ %i.bwb, %bb.sk ], [ 1, %bb.sf ], [ 2, %bb.sl ] ; 3 uses
  %i.bwi = icmp ne i64 %.sroa.0.0.i.i422, 0
  %or.cond.i423 = and i1 %.not.i.i420, %i.bwi
  br i1 %or.cond.i423, label %bb.su, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424

bb.sq:                                            ; preds = %bb.rx
  %i.bwj = load i64, ptr %i.bje, align 8, !noalias !1060, !noundef !6
  %i.bwk = load i64, ptr %i.biv, align 8, !noalias !1060, !noundef !6
  %i.bwl = add i64 %i.bwk, 175
  %.not71.i446 = icmp ult i64 %i.bwj, %i.bwl
  br i1 %.not71.i446, label %bb.ry, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.bwm = add i64 %.sroa.034.2.i412, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !1060
  %i.bwn = icmp samesign ult i32 %.sroa.049.0.i410, 3
  %i.bwo = add i64 %.sroa.0.2.i413, 5
  %i.bwp = icmp ult i64 %i.bwo, %i.bij
  %or.cond5.i447 = and i1 %i.bwn, %i.bwp
  br i1 %or.cond5.i447, label %bb.ss, label %bb.ry

bb.ss:                                            ; preds = %bb.sr
  %i.bwq = add nuw nsw i32 %.sroa.049.0.i410, 1
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
  br i1 %i.bjh, label %bb.sv, label %bb.sw

bb.sv:                                            ; preds = %bb.su
  br i1 %.not6.i.i395, label %bb.sy, label %bb.sx

bb.sw:                                            ; preds = %bb.su
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1079
  unreachable

bb.sx:                                            ; preds = %bb.sv
  %i.bwr = load i32, ptr %i.bji, align 4, !alias.scope !1052, !noalias !1059, !noundef !6
  store i32 %i.bwr, ptr %i.bjj, align 4, !alias.scope !1052, !noalias !1059
  %i.bws = load <2 x i32>, ptr %9, align 4, !alias.scope !1052, !noalias !1059
  store <2 x i32> %i.bws, ptr %i.bjg, align 4, !alias.scope !1052, !noalias !1059
  %i.bwt = trunc i64 %i.bvh to i32
  store i32 %i.bwt, ptr %9, align 4, !alias.scope !1052, !noalias !1059
  %.val.i443 = load i32, ptr %i.bip, align 8, !alias.scope !1051, !noalias !1058, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i443), !noalias !1080
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424

bb.sy:                                            ; preds = %bb.sv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1079
  unreachable

bb.sz:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i424
  %i.bwu = getelementptr inbounds nuw i8, ptr %.sroa.031.0813.i, i64 16
  %i.bwv = add nsw i64 %.sroa.4.0812.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0813.i) ]
  %i.bww = add i64 %.sroa.032.0811.i, 1
  %i.bwx = load i64, ptr %i.p, align 8, !noalias !1060, !noundef !6 ; 2 uses
  %i.bwy = load i64, ptr %i.bit, align 8, !noalias !1060, !noundef !6
  %i.bwz = xor i64 %i.bwy, %i.bwx
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0813.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.biw, i64 noundef %.sroa.034.3.i417, i64 noundef %i.bwx, i64 noundef %i.bwz, i64 noundef %.sroa.0.0.i3.i425), !noalias !1079
  %i.bxa = load i64, ptr %15, align 8, !alias.scope !1055, !noalias !1081, !noundef !6
  %i.bxb = add i64 %i.bxa, %.sroa.034.3.i417
  store i64 %i.bxb, ptr %15, align 8, !alias.scope !1055, !noalias !1081
  %i.bxc = add i64 %.sroa.0.3.i418, 2             ; 4 uses
  %i.bxd = load i64, ptr %i.p, align 8, !noalias !1060, !noundef !6
  %i.bxe = add i64 %i.bxd, %.sroa.0.3.i418
  %spec.store.select4.i427 = call i64 @llvm.umin.i64(i64 %i.bxe, i64 %spec.select.i386) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1086
  %i.bxf = add i64 %.sroa.0.3.i418, 10
  %.not.i.i.i428 = icmp ult i64 %spec.store.select4.i427, %i.bxf
  br i1 %.not.i.i.i428, label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %.val53.i.i.i = load ptr, ptr %i.bhy, align 8, !alias.scope !1087, !noalias !1088, !nonnull !6, !noundef !6 ; 4 uses
  %.val54.i.i.i429 = load i64, ptr %i.bja, align 8, !alias.scope !1087, !noalias !1088, !noundef !6 ; 2 uses
  %.val.i.i.i430 = load ptr, ptr %i.bjb, align 8, !alias.scope !1087, !noalias !1088, !nonnull !6, !noundef !6 ; 4 uses
  %.val52.i.i.i = load i64, ptr %i.bjc, align 8, !alias.scope !1087, !noalias !1088, !noundef !6 ; 2 uses
  store i64 %.val54.i.i.i429, ptr %i.n, align 8, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1089
  store i64 32768, ptr %i.m, align 8, !noalias !1089
  %i.bxg = icmp eq i64 %.val54.i.i.i429, 32768
  br i1 %i.bxg, label %bb.tc, label %bb.tb, !prof !8

bb.tb:                                            ; preds = %bb.ta
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1090
  unreachable

bb.tc:                                            ; preds = %bb.ta
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1089
  store i64 %.val52.i.i.i, ptr %i.l, align 8, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1089
  store i64 2097152, ptr %i.k, align 8, !noalias !1089
  %i.bxh = icmp eq i64 %.val52.i.i.i, 2097152
  br i1 %i.bxh, label %bb.te, label %bb.td, !prof !8

bb.td:                                            ; preds = %bb.tc
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16, !noalias !1090
  unreachable

bb.te:                                            ; preds = %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1089
  %i.bxi = sub i64 %spec.store.select4.i427, %i.bxc ; 2 uses
  %i.bxj = lshr i64 %i.bxi, 2                     ; 2 uses
  %.not83.i.i.i = icmp eq i64 %i.bxj, 0
  br i1 %.not83.i.i.i, label %._crit_edge.i.i.i433, label %.lr.ph.i.i.i431

._crit_edge.i.i.i433:                             ; preds = %bb.tr, %bb.te
  %i.bxk = and i64 %i.bxi, -4
  %i.bxl = add i64 %i.bxk, %i.bxc
  br label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i431:                                  ; preds = %bb.te, %bb.tr
  %.sroa.014.082.i.i.i = phi i64 [ %i.bxm, %bb.tr ], [ 0, %bb.te ] ; 2 uses
  %i.bxm = add nuw nsw i64 %.sroa.014.082.i.i.i, 1 ; 2 uses
  %i.bxn = shl nuw i64 %.sroa.014.082.i.i.i, 2
  %i.bxo = add i64 %i.bxn, %i.bxc
  %i.bxp = and i64 %i.bxo, %6                     ; 10 uses
  %i.bxq = icmp ult i64 %i.bxp, %5
  br i1 %i.bxq, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %.lr.ph.i.i.i431
  %i.bxr = add nuw nsw i64 %i.bxp, 1              ; 4 uses
  %i.bxs = icmp ult i64 %i.bxr, %5
  br i1 %i.bxs, label %bb.th, label %bb.ti

bb.tg:                                            ; preds = %.lr.ph.i.i.i431
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxp, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #16, !noalias !1090
  unreachable

bb.th:                                            ; preds = %bb.tf
  %i.bxt = add nuw nsw i64 %i.bxp, 2              ; 4 uses
  %i.bxu = icmp ult i64 %i.bxt, %5
  br i1 %i.bxu, label %bb.tj, label %bb.tk

bb.ti:                                            ; preds = %bb.tf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxr, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16, !noalias !1090
  unreachable

bb.tj:                                            ; preds = %bb.th
  %i.bxv = add nuw nsw i64 %i.bxp, 3              ; 4 uses
  %i.bxw = icmp ult i64 %i.bxv, %5
  br i1 %i.bxw, label %bb.tl, label %bb.tm

bb.tk:                                            ; preds = %bb.th
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxt, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !1090
  unreachable

bb.tl:                                            ; preds = %bb.tj
  %i.bxx = add nuw nsw i64 %i.bxp, 4              ; 3 uses
  %i.bxy = icmp ult i64 %i.bxx, %5
  br i1 %i.bxy, label %bb.tn, label %bb.to

bb.tm:                                            ; preds = %bb.tj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxv, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !1090
  unreachable

bb.tn:                                            ; preds = %bb.tl
  %i.bxz = add nuw nsw i64 %i.bxp, 5              ; 3 uses
  %i.bya = icmp ult i64 %i.bxz, %5
  br i1 %i.bya, label %bb.tp, label %bb.tq

bb.to:                                            ; preds = %bb.tl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxx, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16, !noalias !1090
  unreachable

bb.tp:                                            ; preds = %bb.tn
  %i.byb = add nuw nsw i64 %i.bxp, 6              ; 3 uses
  %i.byc = icmp ult i64 %i.byb, %5
  br i1 %i.byc, label %bb.tr, label %bb.ts

bb.tq:                                            ; preds = %bb.tn
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bxz, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #16, !noalias !1090
  unreachable

bb.tr:                                            ; preds = %bb.tp
  %i.byd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxr
  %i.bye = load i8, ptr %i.byd, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byf = zext i8 %i.bye to i64
  %i.byg = shl nuw nsw i64 %i.byf, 8
  %i.byh = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxp
  %i.byi = load i8, ptr %i.byh, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byj = zext i8 %i.byi to i64
  %i.byk = or disjoint i64 %i.byg, %i.byj
  %i.byl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxt
  %i.bym = load i8, ptr %i.byl, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byn = zext i8 %i.bym to i64
  %i.byo = shl nuw nsw i64 %i.byn, 16
  %i.byp = or disjoint i64 %i.byk, %i.byo
  %i.byq = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxv
  %i.byr = load i8, ptr %i.byq, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.bys = zext i8 %i.byr to i64
  %i.byt = shl nuw nsw i64 %i.bys, 24
  %i.byu = or disjoint i64 %i.byp, %i.byt         ; 2 uses
  %i.byv = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxx
  %i.byw = load i8, ptr %i.byv, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.byx = zext i8 %i.byw to i64
  %i.byy = shl nuw nsw i64 %i.byx, 32
  %i.byz = or disjoint i64 %i.byu, %i.byy         ; 2 uses
  %i.bza = getelementptr inbounds nuw i8, ptr %4, i64 %i.bxz
  %i.bzb = load i8, ptr %i.bza, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.bzc = zext i8 %i.bzb to i64
  %i.bzd = shl nuw nsw i64 %i.bzc, 40
  %i.bze = getelementptr inbounds nuw i8, ptr %4, i64 %i.byb
  %i.bzf = load i8, ptr %i.bze, align 1, !alias.scope !1091, !noalias !1092, !noundef !6
  %i.bzg = zext i8 %i.bzf to i64
  %i.bzh = shl nuw nsw i64 %i.bzg, 48
  %i.bzi = or disjoint i64 %i.bzd, %i.bzh
  %i.bzj = or i64 %i.bzi, %i.byz                  ; 2 uses
  %i.bzk = mul nuw nsw i64 %i.byu, 506832829
  %i.bzl = lshr i64 %i.bzk, 17
  %i.bzm = and i64 %i.bzl, 32767                  ; 2 uses
  %i.bzn = lshr i64 %i.byz, 8
  %i.bzo = mul nuw nsw i64 %i.bzn, 506832829
  %i.bzp = lshr i64 %i.bzo, 17
  %i.bzq = and i64 %i.bzp, 32767                  ; 2 uses
  %i.bzr = lshr i64 %i.bzj, 16
  %i.bzs = mul i64 %i.bzr, 506832829
  %i.bzt = lshr i64 %i.bzs, 17
  %i.bzu = and i64 %i.bzt, 32767                  ; 2 uses
  %i.bzv = lshr i64 %i.bzj, 24
  %i.bzw = mul nuw nsw i64 %i.bzv, 506832829
  %i.bzx = lshr i64 %i.bzw, 17
  %i.bzy = and i64 %i.bzx, 32767                  ; 2 uses
  %i.bzz = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.bzm ; 2 uses
  %i.caa = load i16, ptr %i.bzz, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.cab = add i16 %i.caa, 1
  store i16 %i.cab, ptr %i.bzz, align 2, !noalias !1090
  %i.cac = and i16 %i.caa, 63
  %i.cad = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.bzq ; 2 uses
  %i.cae = load i16, ptr %i.cad, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.caf = add i16 %i.cae, 1
  store i16 %i.caf, ptr %i.cad, align 2, !noalias !1090
  %i.cag = and i16 %i.cae, 63
  %i.cah = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.bzu ; 2 uses
  %i.cai = load i16, ptr %i.cah, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.caj = add i16 %i.cai, 1
  store i16 %i.caj, ptr %i.cah, align 2, !noalias !1090
  %i.cak = and i16 %i.cai, 63
  %i.cal = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i, i64 %i.bzy ; 2 uses
  %i.cam = load i16, ptr %i.cal, align 2, !noalias !1090, !noundef !6 ; 2 uses
  %i.can = add i16 %i.cam, 1
  store i16 %i.can, ptr %i.cal, align 2, !noalias !1090
  %i.cao = and i16 %i.cam, 63
  %i.cap = zext nneg i16 %i.cag to i64
  %i.caq = zext nneg i16 %i.cak to i64
  %i.car = zext nneg i16 %i.cao to i64
  %i.cas = zext nneg i16 %i.cac to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bzm, 8
  %i.cat = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx.i.i.i
  %i.cau = getelementptr inbounds nuw [4 x i8], ptr %i.cat, i64 %i.cas
  %i.cav = trunc i64 %i.bxp to i32
  store i32 %i.cav, ptr %i.cau, align 4, !noalias !1090
  %.idx49.i.i.i = shl nuw nsw i64 %i.bzq, 8
  %i.caw = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx49.i.i.i
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %i.caw, i64 %i.cap
  %i.cay = trunc i64 %i.bxr to i32
  store i32 %i.cay, ptr %i.cax, align 4, !noalias !1090
  %.idx50.i.i.i = shl nuw nsw i64 %i.bzu, 8
  %i.caz = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx50.i.i.i
  %i.cba = getelementptr inbounds nuw [4 x i8], ptr %i.caz, i64 %i.caq
  %i.cbb = trunc i64 %i.bxt to i32
  store i32 %i.cbb, ptr %i.cba, align 4, !noalias !1090
  %.idx51.i.i.i = shl nuw nsw i64 %i.bzy, 8
  %i.cbc = getelementptr inbounds nuw i8, ptr %.val.i.i.i430, i64 %.idx51.i.i.i
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %i.cbc, i64 %i.car
  %i.cbe = trunc i64 %i.bxv to i32
  store i32 %i.cbe, ptr %i.cbd, align 4, !noalias !1090
  %exitcond.not.i.i.i432 = icmp eq i64 %i.bxm, %i.bxj
  br i1 %exitcond.not.i.i.i432, label %._crit_edge.i.i.i433, label %.lr.ph.i.i.i431

bb.ts:                                            ; preds = %bb.tp
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.byb, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16, !noalias !1090
  unreachable

_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i433, %bb.sz
  %.sroa.0.0.i.i.i434 = phi i64 [ %i.bxl, %._crit_edge.i.i.i433 ], [ %i.bxc, %bb.sz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1086
  %i.cbf = icmp ult i64 %.sroa.0.0.i.i.i434, %spec.store.select4.i427
  br i1 %i.cbf, label %.lr.ph.i.preheader.i, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %.val9.i.i435 = load i64, ptr %i.bja, align 8, !alias.scope !1051, !noalias !1058 ; 2 uses
  %.val8.i.i436 = load ptr, ptr %i.bhy, align 8, !alias.scope !1051, !noalias !1058, !nonnull !6
  %.val5.i.i437 = load i64, ptr %i.bjc, align 8, !alias.scope !1051, !noalias !1058 ; 2 uses
  %.val.i78.i438 = load ptr, ptr %i.bjb, align 8, !alias.scope !1051, !noalias !1058, !nonnull !6
  br label %.lr.ph.i.i439

.lr.ph.i.i439:                                    ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i
  %.sroa.01.037.i.i = phi i64 [ %i.cbg, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.0.i.i.i434, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.cbg = add nuw i64 %.sroa.01.037.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %i.cbh = and i64 %.sroa.01.037.i.i, %6          ; 3 uses
  %.not.i.i77.i440 = icmp ugt i64 %i.cbh, %5
  br i1 %.not.i.i77.i440, label %bb.tt, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441, !prof !10

bb.tt:                                            ; preds = %.lr.ph.i.i439
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1094
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441: ; preds = %.lr.ph.i.i439
  %i.cbi = sub nuw nsw i64 %5, %i.cbh
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %.not.i.i.i.i = icmp samesign ult i64 %i.cbi, 4
  br i1 %.not.i.i.i.i, label %bb.tu, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.tu:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !1096
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i441
  %i.cbj = getelementptr inbounds nuw i8, ptr %4, i64 %i.cbh
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cbj, align 1, !alias.scope !1097, !noalias !1098
  %i.cbk = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.cbl = mul nuw nsw i64 %i.cbk, 506832829
  %i.cbm = lshr i64 %i.cbl, 17
  %i.cbn = and i64 %i.cbm, 32767                  ; 4 uses
  %i.cbo = icmp ult i64 %i.cbn, %.val9.i.i435
  br i1 %i.cbo, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cbp = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i436, i64 %i.cbn ; 3 uses
  %i.cbq = load i16, ptr %i.cbp, align 2, !noalias !1099, !noundef !6
  %i.cbr = and i16 %i.cbq, 63
  %i.cbs = zext nneg i16 %i.cbr to i64
  %i.cbt = shl nuw nsw i64 %i.cbn, 6
  %i.cbu = or disjoint i64 %i.cbt, %i.cbs         ; 3 uses
  %i.cbv = icmp ult i64 %i.cbu, %.val5.i.i437
  br i1 %i.cbv, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.tx

bb.tw:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cbn, i64 noundef %.val9.i.i435, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1099
  unreachable

bb.tx:                                            ; preds = %bb.tv
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cbu, i64 noundef %.val5.i.i437, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1099
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.tv
  %i.cbw = getelementptr inbounds nuw [4 x i8], ptr %.val.i78.i438, i64 %i.cbu
  %i.cbx = trunc i64 %.sroa.01.037.i.i to i32
  store i32 %i.cbx, ptr %i.cbw, align 4, !noalias !1099
  %i.cby = load i16, ptr %i.cbp, align 2, !noalias !1099, !noundef !6
  %i.cbz = add i16 %i.cby, 1
  store i16 %i.cbz, ptr %i.cbp, align 2, !noalias !1099
  %exitcond.not.i.i442 = icmp eq i64 %i.cbg, %spec.store.select4.i427
  br i1 %exitcond.not.i.i442, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i439

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cca = load i64, ptr %i.p, align 8, !noalias !1060, !noundef !6
  %i.ccb = add i64 %i.cca, %.sroa.0.3.i418
  br label %bb.rv

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.rv, %bb.oj
  %.sroa.034.0.lcssa.i389 = phi i64 [ %i.bii, %bb.oj ], [ %.sroa.034.1.i398, %bb.rv ]
  %.sroa.032.0.lcssa.i390 = phi i64 [ 0, %bb.oj ], [ %.sroa.032.1.i399, %bb.rv ]
  %.sroa.0.0.lcssa.i391 = phi i64 [ %3, %bb.oj ], [ %.sroa.0.1.i402, %bb.rv ]
  %i.ccc = add i64 %.sroa.034.0.lcssa.i389, %i.bij
  %i.ccd = sub i64 %i.ccc, %.sroa.0.0.lcssa.i391
  store i64 %i.ccd, ptr %11, align 8, !alias.scope !1053, !noalias !1057
  %i.cce = load i64, ptr %14, align 8, !alias.scope !1054, !noalias !1100, !noundef !6
  %i.ccf = add i64 %i.cce, %.sroa.032.0.lcssa.i390
  store i64 %i.ccf, ptr %14, align 8, !alias.scope !1054, !noalias !1100
  br label %bb.acw

bb.ty:                                            ; preds = %bb.a
  %i.ccg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.cci = load i8, ptr %i.cch, align 1, !range !702, !noundef !6
  %i.ccj = trunc nuw i8 %i.cci to i1
  %.16 = select i1 %i.ccj, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.cck = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.ccl = load i32, ptr %i.cck, align 4, !alias.scope !1102, !noalias !1108, !noundef !6
  %i.ccm = and i32 %i.ccl, 63
  %i.ccn = zext nneg i32 %i.ccm to i64
  %i.cco = shl nuw i64 1, %i.ccn
  %i.ccp = add i64 %i.cco, -16                    ; 3 uses
  %i.ccq = load i64, ptr %11, align 8, !alias.scope !1105, !noalias !1109, !noundef !6 ; 2 uses
  %i.ccr = add i64 %3, %2                         ; 9 uses
  %i.ccs = icmp ugt i64 %2, 3
  %i.cct = add i64 %i.ccr, -3
  %spec.select.i449 = select i1 %i.ccs, i64 %i.cct, i64 %3
  %i.ccu = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ccv = load i32, ptr %i.ccu, align 8, !alias.scope !1102, !noalias !1108, !noundef !6 ; 2 uses
  %i.ccw = icmp slt i32 %i.ccv, 9
  %..i450 = select i1 %i.ccw, i64 64, i64 512     ; 3 uses
  %i.ccx = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i451 = load i32, ptr %i.ccx, align 8, !alias.scope !1103, !noalias !1110, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i451), !noalias !1111
  %i.ccy = add i64 %3, 4
  %i.ccz = icmp ult i64 %i.ccy, %i.ccr
  br i1 %i.ccz, label %.lr.ph.i455, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i455:                                      ; preds = %bb.ty
  %i.cda = add i64 %..i450, %3
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cdf = load i64, ptr %i.cde, align 8, !alias.scope !1102, !noalias !1108, !noundef !6 ; 2 uses
  %i.cdg = add i64 %i.ccr, -4
  %i.cdh = shl nuw nsw i64 %..i450, 2
  %i.cdi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.cdn = icmp slt i32 %i.ccv, 5
  %.not4.i.i456 = icmp eq i64 %10, 0
  %.not5.i.i457 = icmp eq i64 %10, 1
  %i.cdo = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cdp = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i458 = icmp eq i64 %10, 3              ; 2 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br label %bb.tz

bb.tz:                                            ; preds = %bb.xk, %.lr.ph.i455
  %.sroa.0.0814.i459 = phi i64 [ %3, %.lr.ph.i455 ], [ %.sroa.0.1.i471, %bb.xk ] ; 9 uses
  %.sroa.031.0813.i460 = phi ptr [ %12, %.lr.ph.i455 ], [ %.sroa.031.1.i470, %bb.xk ] ; 7 uses
  %.sroa.4.0812.i461 = phi i64 [ %13, %.lr.ph.i455 ], [ %.sroa.4.1.i469, %bb.xk ] ; 6 uses
  %.sroa.032.0811.i462 = phi i64 [ 0, %.lr.ph.i455 ], [ %.sroa.032.1.i468, %bb.xk ] ; 5 uses
  %.sroa.034.0810.i463 = phi i64 [ %i.ccq, %.lr.ph.i455 ], [ %.sroa.034.1.i467, %bb.xk ] ; 4 uses
  %.sroa.053.0809.i464 = phi i64 [ %i.cda, %.lr.ph.i455 ], [ %.sroa.053.1.i466, %bb.xk ] ; 6 uses
  %i.cds = sub i64 %i.ccr, %.sroa.0.0814.i459     ; 2 uses
  %spec.store.select.i465 = call i64 @llvm.umin.i64(i64 %.sroa.0.0814.i459, i64 %i.ccp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !1112
  store i64 2020, ptr %i.cdd, align 8, !noalias !1112
  %i.cdt = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ccg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.0814.i459, i64 noundef %i.cds, i64 noundef %spec.store.select.i465, i64 noundef %i.cdf, ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
  br i1 %i.cdt, label %.preheader.i482, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.cdu = add i64 %.sroa.034.0810.i463, 1        ; 2 uses
  %i.cdv = add i64 %.sroa.0.0814.i459, 1          ; 6 uses
  %i.cdw = icmp ugt i64 %i.cdv, %.sroa.053.0809.i464
  br i1 %i.cdw, label %bb.ub, label %bb.xk

bb.ub:                                            ; preds = %bb.ua
  %i.cdx = add i64 %.sroa.0.0814.i459, 17         ; 2 uses
  %.not.i472 = icmp ult i64 %i.cdx, %i.cdg
  br i1 %.not.i472, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.cdy = add i64 %.sroa.053.0809.i464, %i.cdh
  %i.cdz = icmp ugt i64 %i.cdv, %i.cdy
  %i.cea = and i64 %i.cdv, %6                     ; 19 uses
  %i.ceb = icmp ult i64 %i.cea, %5                ; 2 uses
  br i1 %i.cdz, label %bb.vo, label %bb.ue

bb.ud:                                            ; preds = %bb.ub
  %.neg.i473 = xor i64 %.sroa.0.0814.i459, -1
  %i.cec = add i64 %i.ccr, %.neg.i473
  %i.ced = add i64 %i.cec, %i.cdu
  br label %bb.xk

bb.ue:                                            ; preds = %bb.uc
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %.val54.i.i474 = load ptr, ptr %i.ccg, align 8, !alias.scope !1115, !noalias !1116, !nonnull !6, !noundef !6 ; 4 uses
  %.val55.i.i475 = load i64, ptr %i.cdi, align 8, !alias.scope !1115, !noalias !1116, !noundef !6 ; 8 uses
  %.val.i.i476 = load ptr, ptr %i.cdj, align 8, !alias.scope !1115, !noalias !1116, !nonnull !6, !noundef !6 ; 4 uses
  %.val53.i.i477 = load i64, ptr %i.cdk, align 8, !alias.scope !1115, !noalias !1116, !noundef !6 ; 8 uses
  br i1 %i.ceb, label %bb.uf, label %bb.ug

bb.uf:                                            ; preds = %bb.ue
  %i.cee = add nuw nsw i64 %i.cea, 1              ; 3 uses
  %i.cef = icmp samesign ult i64 %i.cee, %5
  br i1 %i.cef, label %bb.uh, label %bb.ui

bb.ug:                                            ; preds = %bb.ue
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cea, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #16, !noalias !1117
  unreachable

bb.uh:                                            ; preds = %bb.uf
  %i.ceg = add nuw nsw i64 %i.cea, 2              ; 3 uses
  %i.ceh = icmp samesign ult i64 %i.ceg, %5
  br i1 %i.ceh, label %bb.uj, label %bb.uk

bb.ui:                                            ; preds = %bb.uf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cee, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #16, !noalias !1117
  unreachable

bb.uj:                                            ; preds = %bb.uh
end_hunk_7
begin_hunk_8_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a

bb.xu:                                            ; preds = %bb.xs
  %i.cpz = icmp eq i64 %i.cpp, %i.cpw
  br i1 %i.cpz, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.cqa = icmp ult i64 %i.cpu, 7
  br i1 %i.cqa, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cqb = icmp ult i64 %i.cpx, 7
  br i1 %i.cqb, label %bb.xz, label %bb.xy

bb.xx:                                            ; preds = %bb.xv
  %.tr7.i.i530 = trunc nuw nsw i64 %i.cpu to i32
  %i.cqc = shl nuw nsw i32 %.tr7.i.i530, 2
  %i.cqd = lshr i32 158663784, %i.cqc
  %i.cqe = and i32 %i.cqd, 15
  %i.cqf = zext nneg i32 %i.cqe to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494

bb.xy:                                            ; preds = %bb.xw
  br i1 %i.cdp, label %bb.ya, label %bb.yb

bb.xz:                                            ; preds = %bb.xw
  %.tr.i.i529 = trunc nuw nsw i64 %i.cpx to i32
  %i.cqg = shl nuw nsw i32 %.tr.i.i529, 2
  %i.cqh = lshr i32 266017486, %i.cqg
  %i.cqi = and i32 %i.cqh, 15
  %i.cqj = zext nneg i32 %i.cqi to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494

bb.ya:                                            ; preds = %bb.xy
  %i.cqk = load i32, ptr %i.cdq, align 4, !alias.scope !1128, !noalias !1111, !noundef !6
  %i.cql = sext i32 %i.cqk to i64
  %i.cqm = icmp eq i64 %i.cpp, %i.cql
  br i1 %i.cqm, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, label %bb.yc

bb.yb:                                            ; preds = %bb.xy
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1129
  unreachable

bb.yc:                                            ; preds = %bb.ya
  br i1 %.not6.i.i458, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cqn = load i32, ptr %i.cdr, align 4, !alias.scope !1128, !noalias !1111, !noundef !6
  %i.cqo = sext i32 %i.cqn to i64
  %i.cqp = icmp eq i64 %i.cpp, %i.cqo
  br i1 %i.cqp, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494, label %bb.xo

bb.ye:                                            ; preds = %bb.yc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1129
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i494: ; preds = %bb.yd, %bb.ya, %bb.xz, %bb.xx, %bb.xu, %bb.xo
  %.sroa.0.0.i.i495 = phi i64 [ %i.cpq, %bb.xo ], [ 3, %bb.yd ], [ %i.cqf, %bb.xx ], [ %i.cqj, %bb.xz ], [ 1, %bb.xu ], [ 2, %bb.ya ] ; 3 uses
  %i.cqq = icmp ne i64 %.sroa.0.0.i.i495, 0
  %or.cond.i496 = and i1 %.not.i.i493, %i.cqq
  br i1 %or.cond.i496, label %bb.yj, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497

bb.yf:                                            ; preds = %bb.xm
  %i.cqr = load i64, ptr %i.cdm, align 8, !noalias !1112, !noundef !6
  %i.cqs = load i64, ptr %i.cdd, align 8, !noalias !1112, !noundef !6
  %i.cqt = add i64 %i.cqs, 175
  %.not71.i531 = icmp ult i64 %i.cqr, %i.cqt
  br i1 %.not71.i531, label %bb.xn, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cqu = add i64 %.sroa.034.2.i485, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1112
  %i.cqv = icmp samesign ult i32 %.sroa.049.0.i483, 3
  %i.cqw = add i64 %.sroa.0.2.i486, 5
  %i.cqx = icmp ult i64 %i.cqw, %i.ccr
  %or.cond5.i532 = and i1 %i.cqv, %i.cqx
  br i1 %or.cond5.i532, label %bb.yh, label %bb.xn

bb.yh:                                            ; preds = %bb.yg
  %i.cqy = add nuw nsw i32 %.sroa.049.0.i483, 1
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
  br i1 %i.cdp, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  br i1 %.not6.i.i458, label %bb.yn, label %bb.ym

bb.yl:                                            ; preds = %bb.yj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1131
  unreachable

bb.ym:                                            ; preds = %bb.yk
  %i.cqz = load i32, ptr %i.cdq, align 4, !alias.scope !1104, !noalias !1111, !noundef !6
  store i32 %i.cqz, ptr %i.cdr, align 4, !alias.scope !1104, !noalias !1111
  %i.cra = load <2 x i32>, ptr %9, align 4, !alias.scope !1104, !noalias !1111
  store <2 x i32> %i.cra, ptr %i.cdo, align 4, !alias.scope !1104, !noalias !1111
  %i.crb = trunc i64 %i.cpp to i32
  store i32 %i.crb, ptr %9, align 4, !alias.scope !1104, !noalias !1111
  %.val.i528 = load i32, ptr %i.ccx, align 8, !alias.scope !1103, !noalias !1110, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i528), !noalias !1132
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497

bb.yn:                                            ; preds = %bb.yk
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1131
  unreachable

bb.yo:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i497
  %i.crc = getelementptr inbounds nuw i8, ptr %.sroa.031.0813.i460, i64 16
  %i.crd = add nsw i64 %.sroa.4.0812.i461, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0813.i460) ]
  %i.cre = add i64 %.sroa.032.0811.i462, 1
  %i.crf = load i64, ptr %i.j, align 8, !noalias !1112, !noundef !6 ; 2 uses
  %i.crg = load i64, ptr %i.cdb, align 8, !noalias !1112, !noundef !6
  %i.crh = xor i64 %i.crg, %i.crf
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.0813.i460, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cde, i64 noundef %.sroa.034.3.i490, i64 noundef %i.crf, i64 noundef %i.crh, i64 noundef %.sroa.0.0.i3.i498), !noalias !1131
  %i.cri = load i64, ptr %15, align 8, !alias.scope !1107, !noalias !1133, !noundef !6
  %i.crj = add i64 %i.cri, %.sroa.034.3.i490
  store i64 %i.crj, ptr %15, align 8, !alias.scope !1107, !noalias !1133
  %i.crk = add i64 %.sroa.0.3.i491, 2             ; 4 uses
  %i.crl = load i64, ptr %i.j, align 8, !noalias !1112, !noundef !6
  %i.crm = add i64 %i.crl, %.sroa.0.3.i491
  %spec.store.select4.i500 = call i64 @llvm.umin.i64(i64 %i.crm, i64 %spec.select.i449) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1138
  %i.crn = add i64 %.sroa.0.3.i491, 10
  %.not.i.i.i501 = icmp ult i64 %spec.store.select4.i500, %i.crn
  br i1 %.not.i.i.i501, label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %.val53.i.i.i502 = load ptr, ptr %i.ccg, align 8, !alias.scope !1139, !noalias !1140, !nonnull !6, !noundef !6 ; 4 uses
  %.val54.i.i.i503 = load i64, ptr %i.cdi, align 8, !alias.scope !1139, !noalias !1140, !noundef !6 ; 2 uses
  %.val.i.i.i504 = load ptr, ptr %i.cdj, align 8, !alias.scope !1139, !noalias !1140, !nonnull !6, !noundef !6 ; 4 uses
  %.val52.i.i.i505 = load i64, ptr %i.cdk, align 8, !alias.scope !1139, !noalias !1140, !noundef !6 ; 2 uses
  store i64 %.val54.i.i.i503, ptr %i.h, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1141
  store i64 16384, ptr %i.g, align 8, !noalias !1141
  %i.cro = icmp eq i64 %.val54.i.i.i503, 16384
  br i1 %i.cro, label %bb.yr, label %bb.yq, !prof !8

bb.yq:                                            ; preds = %bb.yp
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1142
  unreachable

bb.yr:                                            ; preds = %bb.yp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1141
  store i64 %.val52.i.i.i505, ptr %i.f, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1141
  store i64 262144, ptr %i.e, align 8, !noalias !1141
  %i.crp = icmp eq i64 %.val52.i.i.i505, 262144
  br i1 %i.crp, label %bb.yt, label %bb.ys, !prof !8

bb.ys:                                            ; preds = %bb.yr
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16, !noalias !1142
  unreachable

bb.yt:                                            ; preds = %bb.yr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1141
  %i.crq = sub i64 %spec.store.select4.i500, %i.crk ; 2 uses
  %i.crr = lshr i64 %i.crq, 2                     ; 2 uses
  %.not83.i.i.i506 = icmp eq i64 %i.crr, 0
  br i1 %.not83.i.i.i506, label %._crit_edge.i.i.i514, label %.lr.ph.i.i.i507

._crit_edge.i.i.i514:                             ; preds = %bb.zg, %bb.yt
  %i.crs = and i64 %i.crq, -4
  %i.crt = add i64 %i.crs, %i.crk
  br label %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i

.lr.ph.i.i.i507:                                  ; preds = %bb.yt, %bb.zg
  %.sroa.014.082.i.i.i508 = phi i64 [ %i.cru, %bb.zg ], [ 0, %bb.yt ] ; 2 uses
  %i.cru = add nuw nsw i64 %.sroa.014.082.i.i.i508, 1 ; 2 uses
  %i.crv = shl nuw i64 %.sroa.014.082.i.i.i508, 2
  %i.crw = add i64 %i.crv, %i.crk
  %i.crx = and i64 %i.crw, %6                     ; 10 uses
  %i.cry = icmp ult i64 %i.crx, %5
  br i1 %i.cry, label %bb.yu, label %bb.yv

bb.yu:                                            ; preds = %.lr.ph.i.i.i507
  %i.crz = add nuw nsw i64 %i.crx, 1              ; 4 uses
  %i.csa = icmp ult i64 %i.crz, %5
  br i1 %i.csa, label %bb.yw, label %bb.yx

bb.yv:                                            ; preds = %.lr.ph.i.i.i507
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.crx, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #16, !noalias !1142
  unreachable

bb.yw:                                            ; preds = %bb.yu
  %i.csb = add nuw nsw i64 %i.crx, 2              ; 4 uses
  %i.csc = icmp ult i64 %i.csb, %5
  br i1 %i.csc, label %bb.yy, label %bb.yz

bb.yx:                                            ; preds = %bb.yu
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.crz, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16, !noalias !1142
  unreachable

bb.yy:                                            ; preds = %bb.yw
  %i.csd = add nuw nsw i64 %i.crx, 3              ; 4 uses
  %i.cse = icmp ult i64 %i.csd, %5
  br i1 %i.cse, label %bb.za, label %bb.zb

bb.yz:                                            ; preds = %bb.yw
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csb, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !1142
  unreachable

bb.za:                                            ; preds = %bb.yy
  %i.csf = add nuw nsw i64 %i.crx, 4              ; 3 uses
  %i.csg = icmp ult i64 %i.csf, %5
  br i1 %i.csg, label %bb.zc, label %bb.zd

bb.zb:                                            ; preds = %bb.yy
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csd, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !1142
  unreachable

bb.zc:                                            ; preds = %bb.za
  %i.csh = add nuw nsw i64 %i.crx, 5              ; 3 uses
  %i.csi = icmp ult i64 %i.csh, %5
  br i1 %i.csi, label %bb.ze, label %bb.zf

bb.zd:                                            ; preds = %bb.za
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csf, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16, !noalias !1142
  unreachable

bb.ze:                                            ; preds = %bb.zc
  %i.csj = add nuw nsw i64 %i.crx, 6              ; 3 uses
  %i.csk = icmp ult i64 %i.csj, %5
  br i1 %i.csk, label %bb.zg, label %bb.zh

bb.zf:                                            ; preds = %bb.zc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csh, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #16, !noalias !1142
  unreachable

bb.zg:                                            ; preds = %bb.ze
  %i.csl = getelementptr inbounds nuw i8, ptr %4, i64 %i.crz
  %i.csm = load i8, ptr %i.csl, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.csn = zext i8 %i.csm to i64
  %i.cso = shl nuw nsw i64 %i.csn, 8
  %i.csp = getelementptr inbounds nuw i8, ptr %4, i64 %i.crx
  %i.csq = load i8, ptr %i.csp, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.csr = zext i8 %i.csq to i64
  %i.css = or disjoint i64 %i.cso, %i.csr
  %i.cst = getelementptr inbounds nuw i8, ptr %4, i64 %i.csb
  %i.csu = load i8, ptr %i.cst, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.csv = zext i8 %i.csu to i64
  %i.csw = shl nuw nsw i64 %i.csv, 16
  %i.csx = or disjoint i64 %i.css, %i.csw
  %i.csy = getelementptr inbounds nuw i8, ptr %4, i64 %i.csd
  %i.csz = load i8, ptr %i.csy, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.cta = zext i8 %i.csz to i64
  %i.ctb = shl nuw nsw i64 %i.cta, 24
  %i.ctc = or disjoint i64 %i.csx, %i.ctb         ; 2 uses
  %i.ctd = getelementptr inbounds nuw i8, ptr %4, i64 %i.csf
  %i.cte = load i8, ptr %i.ctd, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.ctf = zext i8 %i.cte to i64
  %i.ctg = shl nuw nsw i64 %i.ctf, 32
  %i.cth = or disjoint i64 %i.ctc, %i.ctg         ; 2 uses
  %i.cti = getelementptr inbounds nuw i8, ptr %4, i64 %i.csh
  %i.ctj = load i8, ptr %i.cti, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.ctk = zext i8 %i.ctj to i64
  %i.ctl = shl nuw nsw i64 %i.ctk, 40
  %i.ctm = getelementptr inbounds nuw i8, ptr %4, i64 %i.csj
  %i.ctn = load i8, ptr %i.ctm, align 1, !alias.scope !1143, !noalias !1144, !noundef !6
  %i.cto = zext i8 %i.ctn to i64
  %i.ctp = shl nuw nsw i64 %i.cto, 48
  %i.ctq = or disjoint i64 %i.ctl, %i.ctp
  %i.ctr = or i64 %i.ctq, %i.cth                  ; 2 uses
  %i.cts = mul nuw nsw i64 %i.ctc, 506832829
  %i.ctt = lshr i64 %i.cts, 18
  %i.ctu = and i64 %i.ctt, 16383                  ; 2 uses
  %i.ctv = lshr i64 %i.cth, 8
  %i.ctw = mul nuw nsw i64 %i.ctv, 506832829
  %i.ctx = lshr i64 %i.ctw, 18
  %i.cty = and i64 %i.ctx, 16383                  ; 2 uses
  %i.ctz = lshr i64 %i.ctr, 16
  %i.cua = mul i64 %i.ctz, 506832829
  %i.cub = lshr i64 %i.cua, 18
  %i.cuc = and i64 %i.cub, 16383                  ; 2 uses
  %i.cud = lshr i64 %i.ctr, 24
  %i.cue = mul nuw nsw i64 %i.cud, 506832829
  %i.cuf = lshr i64 %i.cue, 18
  %i.cug = and i64 %i.cuf, 16383                  ; 2 uses
  %i.cuh = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.ctu ; 2 uses
  %i.cui = load i16, ptr %i.cuh, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cuj = add i16 %i.cui, 1
  store i16 %i.cuj, ptr %i.cuh, align 2, !noalias !1142
  %i.cuk = and i16 %i.cui, 15
  %i.cul = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cty ; 2 uses
  %i.cum = load i16, ptr %i.cul, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cun = add i16 %i.cum, 1
  store i16 %i.cun, ptr %i.cul, align 2, !noalias !1142
  %i.cuo = and i16 %i.cum, 15
  %i.cup = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cuc ; 2 uses
  %i.cuq = load i16, ptr %i.cup, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cur = add i16 %i.cuq, 1
  store i16 %i.cur, ptr %i.cup, align 2, !noalias !1142
  %i.cus = and i16 %i.cuq, 15
  %i.cut = getelementptr inbounds nuw [2 x i8], ptr %.val53.i.i.i502, i64 %i.cug ; 2 uses
  %i.cuu = load i16, ptr %i.cut, align 2, !noalias !1142, !noundef !6 ; 2 uses
  %i.cuv = add i16 %i.cuu, 1
  store i16 %i.cuv, ptr %i.cut, align 2, !noalias !1142
  %i.cuw = and i16 %i.cuu, 15
  %i.cux = zext nneg i16 %i.cuo to i64
  %i.cuy = zext nneg i16 %i.cus to i64
  %i.cuz = zext nneg i16 %i.cuw to i64
  %i.cva = zext nneg i16 %i.cuk to i64
  %.idx.i.i.i509 = shl nuw nsw i64 %i.ctu, 6
  %i.cvb = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx.i.i.i509
  %i.cvc = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %i.cva
  %i.cvd = trunc i64 %i.crx to i32
  store i32 %i.cvd, ptr %i.cvc, align 4, !noalias !1142
  %.idx49.i.i.i510 = shl nuw nsw i64 %i.cty, 6
  %i.cve = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx49.i.i.i510
  %i.cvf = getelementptr inbounds nuw [4 x i8], ptr %i.cve, i64 %i.cux
  %i.cvg = trunc i64 %i.crz to i32
  store i32 %i.cvg, ptr %i.cvf, align 4, !noalias !1142
  %.idx50.i.i.i511 = shl nuw nsw i64 %i.cuc, 6
  %i.cvh = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx50.i.i.i511
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %i.cuy
  %i.cvj = trunc i64 %i.csb to i32
  store i32 %i.cvj, ptr %i.cvi, align 4, !noalias !1142
  %.idx51.i.i.i512 = shl nuw nsw i64 %i.cug, 6
  %i.cvk = getelementptr inbounds nuw i8, ptr %.val.i.i.i504, i64 %.idx51.i.i.i512
  %i.cvl = getelementptr inbounds nuw [4 x i8], ptr %i.cvk, i64 %i.cuz
  %i.cvm = trunc i64 %i.csd to i32
  store i32 %i.cvm, ptr %i.cvl, align 4, !noalias !1142
  %exitcond.not.i.i.i513 = icmp eq i64 %i.cru, %i.crr
  br i1 %exitcond.not.i.i.i513, label %._crit_edge.i.i.i514, label %.lr.ph.i.i.i507

bb.zh:                                            ; preds = %bb.ze
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.csj, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16, !noalias !1142
  unreachable

_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %._crit_edge.i.i.i514, %bb.yo
  %.sroa.0.0.i.i.i515 = phi i64 [ %i.crt, %._crit_edge.i.i.i514 ], [ %i.crk, %bb.yo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1138
  %i.cvn = icmp ult i64 %.sroa.0.0.i.i.i515, %spec.store.select4.i500
  br i1 %i.cvn, label %.lr.ph.i.preheader.i516, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i516:                          ; preds = %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %.val9.i.i517 = load i64, ptr %i.cdi, align 8, !alias.scope !1103, !noalias !1110 ; 2 uses
  %.val8.i.i518 = load ptr, ptr %i.ccg, align 8, !alias.scope !1103, !noalias !1110, !nonnull !6
  %.val5.i.i519 = load i64, ptr %i.cdk, align 8, !alias.scope !1103, !noalias !1110 ; 2 uses
  %.val.i78.i520 = load ptr, ptr %i.cdj, align 8, !alias.scope !1103, !noalias !1110, !nonnull !6
  br label %.lr.ph.i.i521

.lr.ph.i.i521:                                    ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i516
  %.sroa.01.037.i.i522 = phi i64 [ %i.cvo, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.0.i.i.i515, %.lr.ph.i.preheader.i516 ] ; 3 uses
  %i.cvo = add nuw i64 %.sroa.01.037.i.i522, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.cvp = and i64 %.sroa.01.037.i.i522, %6       ; 3 uses
  %.not.i.i77.i523 = icmp ugt i64 %i.cvp, %5
  br i1 %.not.i.i77.i523, label %bb.zi, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524, !prof !10

bb.zi:                                            ; preds = %.lr.ph.i.i521
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1146
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524: ; preds = %.lr.ph.i.i521
  %i.cvq = sub nuw nsw i64 %5, %i.cvp
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %.not.i.i.i.i525 = icmp samesign ult i64 %i.cvq, 4
  br i1 %.not.i.i.i.i525, label %bb.zj, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.zj:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !1148
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i524
  %i.cvr = getelementptr inbounds nuw i8, ptr %4, i64 %i.cvp
  %.sroa.0.0.copyload.i.i.i526 = load i32, ptr %i.cvr, align 1, !alias.scope !1149, !noalias !1150
  %i.cvs = zext i32 %.sroa.0.0.copyload.i.i.i526 to i64
  %i.cvt = mul nuw nsw i64 %i.cvs, 506832829
  %i.cvu = lshr i64 %i.cvt, 18
  %i.cvv = and i64 %i.cvu, 16383                  ; 4 uses
  %i.cvw = icmp ult i64 %i.cvv, %.val9.i.i517
  br i1 %i.cvw, label %bb.zk, label %bb.zl

bb.zk:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cvx = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i518, i64 %i.cvv ; 3 uses
  %i.cvy = load i16, ptr %i.cvx, align 2, !noalias !1151, !noundef !6
  %i.cvz = and i16 %i.cvy, 15
  %i.cwa = zext nneg i16 %i.cvz to i64
  %i.cwb = shl nuw nsw i64 %i.cvv, 4
  %i.cwc = or disjoint i64 %i.cwb, %i.cwa         ; 3 uses
  %i.cwd = icmp ult i64 %i.cwc, %.val5.i.i519
  br i1 %i.cwd, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.zm

bb.zl:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cvv, i64 noundef %.val9.i.i517, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1151
  unreachable

bb.zm:                                            ; preds = %bb.zk
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cwc, i64 noundef %.val5.i.i519, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1151
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.zk
  %i.cwe = getelementptr inbounds nuw [4 x i8], ptr %.val.i78.i520, i64 %i.cwc
  %i.cwf = trunc i64 %.sroa.01.037.i.i522 to i32
  store i32 %i.cwf, ptr %i.cwe, align 4, !noalias !1151
  %i.cwg = load i16, ptr %i.cvx, align 2, !noalias !1151, !noundef !6
  %i.cwh = add i16 %i.cwg, 1
  store i16 %i.cwh, ptr %i.cvx, align 2, !noalias !1151
  %exitcond.not.i.i527 = icmp eq i64 %i.cvo, %spec.store.select4.i500
  br i1 %exitcond.not.i.i527, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i521

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %_RNvMsm_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE18StoreRangeOptBatchCskeugdADtBsi_12pingora_core.exit.i.i
  %i.cwi = load i64, ptr %i.j, align 8, !noalias !1112, !noundef !6
  %i.cwj = add i64 %i.cwi, %.sroa.0.3.i491
  br label %bb.xk

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.xk, %bb.ty
  %.sroa.034.0.lcssa.i452 = phi i64 [ %i.ccq, %bb.ty ], [ %.sroa.034.1.i467, %bb.xk ]
  %.sroa.032.0.lcssa.i453 = phi i64 [ 0, %bb.ty ], [ %.sroa.032.1.i468, %bb.xk ]
  %.sroa.0.0.lcssa.i454 = phi i64 [ %3, %bb.ty ], [ %.sroa.0.1.i471, %bb.xk ]
  %i.cwk = add i64 %.sroa.034.0.lcssa.i452, %i.ccr
  %i.cwl = sub i64 %i.cwk, %.sroa.0.0.lcssa.i454
  store i64 %i.cwl, ptr %11, align 8, !alias.scope !1105, !noalias !1109
  %i.cwm = load i64, ptr %14, align 8, !alias.scope !1106, !noalias !1152, !noundef !6
  %i.cwn = add i64 %i.cwm, %.sroa.032.0.lcssa.i453
  store i64 %i.cwn, ptr %14, align 8, !alias.scope !1106, !noalias !1152
  br label %bb.acw

bb.zn:                                            ; preds = %bb.a
  %i.cwo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  %i.cwp = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.cwq = load i8, ptr %i.cwp, align 1, !range !702, !noundef !6
  %i.cwr = trunc nuw i8 %i.cwq to i1
  %.17 = select i1 %i.cwr, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.cws = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.cwt = load i32, ptr %i.cws, align 4, !alias.scope !1154, !noalias !1160, !noundef !6
  %i.cwu = and i32 %i.cwt, 63
  %i.cwv = zext nneg i32 %i.cwu to i64
  %i.cww = shl nuw i64 1, %i.cwv
  %i.cwx = add i64 %i.cww, -16                    ; 3 uses
  %i.cwy = load i64, ptr %11, align 8, !alias.scope !1157, !noalias !1161, !noundef !6 ; 2 uses
  %i.cwz = add i64 %3, %2                         ; 8 uses
  %i.cxa = icmp ugt i64 %2, 7
  %i.cxb = add i64 %i.cwz, -7                     ; 2 uses
  %spec.select.i534 = select i1 %i.cxa, i64 %i.cxb, i64 %3
  %i.cxc = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cxd = load i32, ptr %i.cxc, align 8, !alias.scope !1154, !noalias !1160, !noundef !6 ; 2 uses
  %i.cxe = icmp slt i32 %i.cxd, 9
  %..i535 = select i1 %i.cxe, i64 64, i64 512     ; 3 uses
  %i.cxf = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.val74.i536 = load i32, ptr %i.cxf, align 8, !alias.scope !1155, !noalias !1162, !noundef !6
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val74.i536), !noalias !1163
  %i.cxg = add i64 %3, 8
  %i.cxh = icmp ult i64 %i.cxg, %i.cwz
  br i1 %i.cxh, label %.lr.ph.i540, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i540:                                      ; preds = %bb.zn
  %i.cxi = add i64 %..i535, %3
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.cxm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cxn = load i64, ptr %i.cxm, align 8, !alias.scope !1154, !noalias !1160, !noundef !6 ; 2 uses
  %i.cxo = shl nuw nsw i64 %..i535, 2
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.cxr = icmp slt i32 %i.cxd, 5
  %.not4.i.i541 = icmp eq i64 %10, 0
  %.not5.i.i542 = icmp eq i64 %10, 1
  %i.cxs = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cxt = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.cxu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i543 = icmp eq i64 %10, 3              ; 2 uses
  %i.cxv = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.cxw = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.cxx = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.cxy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cxz = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.cya = getelementptr inbounds nuw i8, ptr %8, i64 108
  %i.cyb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cyc = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.zo

bb.zo:                                            ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i540
  %.sroa.0.051.i = phi i64 [ %3, %.lr.ph.i540 ], [ %.sroa.0.1.i550, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.050.i = phi ptr [ %12, %.lr.ph.i540 ], [ %.sroa.031.1.i549, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.049.i = phi i64 [ %13, %.lr.ph.i540 ], [ %.sroa.4.1.i548, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.048.i = phi i64 [ 0, %.lr.ph.i540 ], [ %.sroa.032.1.i547, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.047.i = phi i64 [ %i.cwy, %.lr.ph.i540 ], [ %.sroa.034.1.i546, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.046.i = phi i64 [ %i.cxi, %.lr.ph.i540 ], [ %.sroa.053.1.i545, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.cyd = sub i64 %i.cwz, %.sroa.0.051.i         ; 2 uses
  %spec.store.select.i544 = call i64 @llvm.umin.i64(i64 %.sroa.0.051.i, i64 %i.cwx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !1164
  store i64 2020, ptr %i.cxl, align 8, !noalias !1164
  %i.cye = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.051.i, i64 noundef %i.cyd, i64 noundef %spec.store.select.i544, i64 noundef %i.cxn, ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br i1 %i.cye, label %.preheader.i553, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.cyf = add i64 %.sroa.034.047.i, 1            ; 2 uses
  %i.cyg = add i64 %.sroa.0.051.i, 1              ; 4 uses
  %i.cyh = icmp ugt i64 %i.cyg, %.sroa.053.046.i
  br i1 %i.cyh, label %bb.zq, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.zq:                                            ; preds = %bb.zp
  %i.cyi = add i64 %.sroa.0.051.i, 17             ; 2 uses
  %.not.i551 = icmp ult i64 %i.cyi, %i.cxb
  br i1 %.not.i551, label %bb.zr, label %bb.zs

bb.zr:                                            ; preds = %bb.zq
  %i.cyj = add i64 %.sroa.053.046.i, %i.cxo
  %i.cyk = icmp ugt i64 %i.cyg, %i.cyj
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyg), !noalias !1165
  br i1 %i.cyk, label %bb.zu, label %bb.zt

bb.zs:                                            ; preds = %bb.zq
  %.neg.i552 = xor i64 %.sroa.0.051.i, -1
  %i.cyl = add i64 %i.cwz, %.neg.i552
  %i.cym = add i64 %i.cyl, %i.cyf
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.zt:                                            ; preds = %bb.zr
  %i.cyn = add i64 %.sroa.0.051.i, 3
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyn), !noalias !1165
  %i.cyo = add i64 %.sroa.0.051.i, 5
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyo), !noalias !1165
  %i.cyp = add i64 %.sroa.0.051.i, 7
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyp), !noalias !1165
  %i.cyq = add i64 %.sroa.034.047.i, 9
  %i.cyr = add i64 %.sroa.0.051.i, 9
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.zu:                                            ; preds = %bb.zr
  %i.cys = add i64 %.sroa.0.051.i, 5
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cys), !noalias !1165
  %i.cyt = add i64 %.sroa.0.051.i, 9
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyt), !noalias !1165
  %i.cyu = add i64 %.sroa.0.051.i, 13
  call fastcc void @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.cyu), !noalias !1165
  %i.cyv = add i64 %.sroa.034.047.i, 17
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, %bb.aay, %bb.zu, %bb.zt, %bb.zs, %bb.zp
  %.sroa.053.1.i545 = phi i64 [ %.sroa.053.046.i, %bb.zp ], [ %.sroa.053.046.i, %bb.zs ], [ %.sroa.053.046.i, %bb.zu ], [ %.sroa.053.046.i, %bb.zt ], [ %i.czf, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.czf, %bb.aay ]
  %.sroa.034.1.i546 = phi i64 [ %i.cyf, %bb.zp ], [ %i.cym, %bb.zs ], [ %i.cyv, %bb.zu ], [ %i.cyq, %bb.zt ], [ 0, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ 0, %bb.aay ] ; 2 uses
  %.sroa.032.1.i547 = phi i64 [ %.sroa.032.048.i, %bb.zp ], [ %.sroa.032.048.i, %bb.zs ], [ %.sroa.032.048.i, %bb.zu ], [ %.sroa.032.048.i, %bb.zt ], [ %i.dav, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dav, %bb.aay ] ; 2 uses
  %.sroa.4.1.i548 = phi i64 [ %.sroa.4.049.i, %bb.zp ], [ %.sroa.4.049.i, %bb.zs ], [ %.sroa.4.049.i, %bb.zu ], [ %.sroa.4.049.i, %bb.zt ], [ %i.dau, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dau, %bb.aay ]
end_hunk_8
begin_hunk_9_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cxp, i8 0, i64 16, i1 false), !noalias !1164
  store i64 2020, ptr %i.cxq, align 8, !noalias !1164
  %i.cza = add i64 %.sroa.0.2.i557, 1             ; 4 uses
  %spec.store.select2.i560 = call i64 @llvm.umin.i64(i64 %i.cza, i64 %i.cwx)
  %i.czb = call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.cwo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %i.cza, i64 noundef %.sroa.044.0.i558, i64 noundef %spec.store.select2.i560, i64 noundef %i.cxn, ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  br i1 %i.czb, label %bb.aap, label %bb.zx

bb.zx:                                            ; preds = %bb.aaq, %bb.aap, %bb.zw
  %.sroa.034.3.i561 = phi i64 [ %.sroa.034.2.i556, %bb.zw ], [ %i.dal, %bb.aaq ], [ %.sroa.034.2.i556, %bb.aap ] ; 2 uses
  %.sroa.0.3.i562 = phi i64 [ %.sroa.0.2.i557, %bb.zw ], [ %i.cza, %bb.aaq ], [ %.sroa.0.2.i557, %bb.aap ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1164
  %i.czc = load i64, ptr %i.d, align 8, !noalias !1164, !noundef !6
  %i.czd = shl i64 %i.czc, 1
  %i.cze = add i64 %.sroa.0.3.i562, %..i535
  %i.czf = add i64 %i.cze, %i.czd                 ; 2 uses
  %spec.store.select3.i563 = call i64 @llvm.umin.i64(i64 %.sroa.0.3.i562, i64 %i.cwx)
  %i.czg = load i64, ptr %i.cxk, align 8, !noalias !1164, !noundef !6 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %.not.i.i564 = icmp ule i64 %i.czg, %spec.store.select3.i563 ; 2 uses
  br i1 %.not.i.i564, label %bb.zz, label %bb.zy

bb.zy:                                            ; preds = %bb.aan, %bb.zx
  %i.czh = add i64 %i.czg, 15
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565

bb.zz:                                            ; preds = %bb.zx
  %i.czi = add i64 %i.czg, 3                      ; 2 uses
  br i1 %.not4.i.i541, label %bb.aab, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.czj = load i32, ptr %9, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.czk = sext i32 %i.czj to i64                 ; 2 uses
  %i.czl = sub i64 %i.czi, %i.czk                 ; 2 uses
  br i1 %.not5.i.i542, label %bb.aad, label %bb.aac

bb.aab:                                           ; preds = %bb.zz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #16, !noalias !1168
  unreachable

bb.aac:                                           ; preds = %bb.aaa
  %i.czm = load i32, ptr %i.cxs, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.czn = sext i32 %i.czm to i64                 ; 2 uses
  %i.czo = sub i64 %i.czi, %i.czn                 ; 2 uses
  %i.czp = icmp eq i64 %i.czg, %i.czk
  br i1 %i.czp, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568, label %bb.aae

bb.aad:                                           ; preds = %bb.aaa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #16, !noalias !1168
  unreachable

bb.aae:                                           ; preds = %bb.aac
  %i.czq = icmp eq i64 %i.czg, %i.czn
  br i1 %i.czq, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.czr = icmp ult i64 %i.czl, 7
  br i1 %i.czr, label %bb.aah, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.czs = icmp ult i64 %i.czo, 7
  br i1 %i.czs, label %bb.aaj, label %bb.aai

bb.aah:                                           ; preds = %bb.aaf
  %.tr7.i.i586 = trunc nuw nsw i64 %i.czl to i32
  %i.czt = shl nuw nsw i32 %.tr7.i.i586, 2
  %i.czu = lshr i32 158663784, %i.czt
  %i.czv = and i32 %i.czu, 15
  %i.czw = zext nneg i32 %i.czv to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565

bb.aai:                                           ; preds = %bb.aag
  br i1 %i.cxt, label %bb.aak, label %bb.aal

bb.aaj:                                           ; preds = %bb.aag
  %.tr.i.i585 = trunc nuw nsw i64 %i.czo to i32
  %i.czx = shl nuw nsw i32 %.tr.i.i585, 2
  %i.czy = lshr i32 266017486, %i.czx
  %i.czz = and i32 %i.czy, 15
  %i.daa = zext nneg i32 %i.czz to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565

bb.aak:                                           ; preds = %bb.aai
  %i.dab = load i32, ptr %i.cxu, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.dac = sext i32 %i.dab to i64
  %i.dad = icmp eq i64 %i.czg, %i.dac
  br i1 %i.dad, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, label %bb.aam

bb.aal:                                           ; preds = %bb.aai
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1168
  unreachable

bb.aam:                                           ; preds = %bb.aak
  br i1 %.not6.i.i543, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.dae = load i32, ptr %i.cxv, align 4, !alias.scope !1167, !noalias !1163, !noundef !6
  %i.daf = sext i32 %i.dae to i64
  %i.dag = icmp eq i64 %i.czg, %i.daf
  br i1 %i.dag, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565, label %bb.zy

bb.aao:                                           ; preds = %bb.aam
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1168
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i565: ; preds = %bb.aan, %bb.aak, %bb.aaj, %bb.aah, %bb.aae, %bb.zy
  %.sroa.0.0.i.i566 = phi i64 [ %i.czh, %bb.zy ], [ 3, %bb.aan ], [ %i.czw, %bb.aah ], [ %i.daa, %bb.aaj ], [ 1, %bb.aae ], [ 2, %bb.aak ] ; 3 uses
  %i.dah = icmp ne i64 %.sroa.0.0.i.i566, 0
  %or.cond.i567 = and i1 %.not.i.i564, %i.dah
  br i1 %or.cond.i567, label %bb.aat, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568

bb.aap:                                           ; preds = %bb.zw
  %i.dai = load i64, ptr %i.cxq, align 8, !noalias !1164, !noundef !6
  %i.daj = load i64, ptr %i.cxl, align 8, !noalias !1164, !noundef !6
  %i.dak = add i64 %i.daj, 175
  %.not71.i587 = icmp ult i64 %i.dai, %i.dak
  br i1 %.not71.i587, label %bb.zx, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.dal = add i64 %.sroa.034.2.i556, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1164
  %i.dam = icmp samesign ult i32 %.sroa.049.0.i554, 3
  %i.dan = add i64 %.sroa.0.2.i557, 9
  %i.dao = icmp ult i64 %i.dan, %i.cwz
  %or.cond5.i588 = and i1 %i.dam, %i.dao
  br i1 %or.cond5.i588, label %bb.aar, label %bb.zx

bb.aar:                                           ; preds = %bb.aaq
  %i.dap = add nuw nsw i32 %.sroa.049.0.i554, 1
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
  br i1 %i.cxt, label %bb.aau, label %bb.aav

bb.aau:                                           ; preds = %bb.aat
  br i1 %.not6.i.i543, label %bb.aax, label %bb.aaw

bb.aav:                                           ; preds = %bb.aat
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1170
  unreachable

bb.aaw:                                           ; preds = %bb.aau
  %i.daq = load i32, ptr %i.cxu, align 4, !alias.scope !1156, !noalias !1163, !noundef !6
  store i32 %i.daq, ptr %i.cxv, align 4, !alias.scope !1156, !noalias !1163
  %i.dar = load <2 x i32>, ptr %9, align 4, !alias.scope !1156, !noalias !1163
  store <2 x i32> %i.dar, ptr %i.cxs, align 4, !alias.scope !1156, !noalias !1163
  %i.das = trunc i64 %i.czg to i32
  store i32 %i.das, ptr %9, align 4, !alias.scope !1156, !noalias !1163
  %.val.i584 = load i32, ptr %i.cxf, align 8, !alias.scope !1155, !noalias !1162, !noundef !6
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef %.val.i584), !noalias !1171
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568

bb.aax:                                           ; preds = %bb.aau
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1170
  unreachable

bb.aay:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i568
  %i.dat = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i, i64 16 ; 2 uses
  %i.dau = add nsw i64 %.sroa.4.049.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.050.i) ]
  %i.dav = add i64 %.sroa.032.048.i, 1            ; 2 uses
  %i.daw = load i64, ptr %i.d, align 8, !noalias !1164, !noundef !6 ; 2 uses
  %i.dax = load i64, ptr %i.cxj, align 8, !noalias !1164, !noundef !6
  %i.day = xor i64 %i.dax, %i.daw
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.050.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cxm, i64 noundef %.sroa.034.3.i561, i64 noundef %i.daw, i64 noundef %i.day, i64 noundef %.sroa.0.0.i3.i569), !noalias !1170
  %i.daz = load i64, ptr %15, align 8, !alias.scope !1159, !noalias !1172, !noundef !6
  %i.dba = add i64 %i.daz, %.sroa.034.3.i561
  store i64 %i.dba, ptr %15, align 8, !alias.scope !1159, !noalias !1172
  %i.dbb = add i64 %.sroa.0.3.i562, 2             ; 2 uses
  %i.dbc = load i64, ptr %i.d, align 8, !noalias !1164, !noundef !6
  %i.dbd = add i64 %i.dbc, %.sroa.0.3.i562        ; 2 uses
  %spec.store.select4.i570 = call i64 @llvm.umin.i64(i64 %i.dbd, i64 %spec.select.i534) ; 2 uses
  %i.dbe = icmp ult i64 %i.dbb, %spec.store.select4.i570
  br i1 %i.dbe, label %.lr.ph.i.preheader.i571, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i571:                          ; preds = %bb.aay
  %.val10.i.i572 = load i64, ptr %i.cxw, align 8, !alias.scope !1155, !noalias !1162
  %.val11.i.i573 = load i32, ptr %i.cxx, align 8, !alias.scope !1155, !noalias !1162
  %i.dbf = and i32 %.val11.i.i573, 63
  %i.dbg = zext nneg i32 %i.dbf to i64
  %.val9.i.i574 = load i64, ptr %i.cxy, align 8, !alias.scope !1155, !noalias !1162 ; 2 uses
  %.val8.i.i575 = load ptr, ptr %i.cwo, align 8, !alias.scope !1155, !noalias !1162, !nonnull !6
  %i.dbh = load i32, ptr %i.cxz, align 8, !alias.scope !1155, !noalias !1162
  %.val12.i.i = load i32, ptr %i.cya, align 4, !alias.scope !1155, !noalias !1162
  %i.dbi = and i32 %.val12.i.i, 31
  %.val5.i.i576 = load i64, ptr %i.cyb, align 8, !alias.scope !1155, !noalias !1162 ; 2 uses
  %.val.i.i577 = load ptr, ptr %i.cyc, align 8, !alias.scope !1155, !noalias !1162, !nonnull !6
  br label %.lr.ph.i.i578

.lr.ph.i.i578:                                    ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i571
  %.sroa.01.03.i.i = phi i64 [ %i.dbj, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %i.dbb, %.lr.ph.i.preheader.i571 ] ; 3 uses
  %i.dbj = add nuw i64 %.sroa.01.03.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.dbk = and i64 %.sroa.01.03.i.i, %6           ; 3 uses
  %.not.i.i.i579 = icmp ugt i64 %i.dbk, %5
  br i1 %.not.i.i.i579, label %bb.aaz, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580, !prof !10

bb.aaz:                                           ; preds = %.lr.ph.i.i578
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #16, !noalias !1174
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580: ; preds = %.lr.ph.i.i578
  %i.dbl = sub nuw nsw i64 %5, %i.dbk
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %.not.i.i.i.i581 = icmp samesign ult i64 %i.dbl, 8
  br i1 %.not.i.i.i.i581, label %bb.aba, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

bb.aba:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #16, !noalias !1176
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i580
  %i.dbm = getelementptr inbounds nuw i8, ptr %4, i64 %i.dbk
  %.sroa.0.0.copyload.i.i.i582 = load i64, ptr %i.dbm, align 1, !alias.scope !1177, !noalias !1178
  %i.dbn = and i64 %.sroa.0.0.copyload.i.i.i582, %.val10.i.i572
  %i.dbo = mul i64 %i.dbn, 2297779722762296275
  %i.dbp = lshr i64 %i.dbo, %i.dbg                ; 2 uses
  %i.dbq = and i64 %i.dbp, 4294967295             ; 3 uses
  %i.dbr = icmp ult i64 %i.dbq, %.val9.i.i574
  br i1 %i.dbr, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  %i.dbs = trunc i64 %i.dbp to i32
  %i.dbt = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i575, i64 %i.dbq ; 3 uses
  %i.dbu = load i16, ptr %i.dbt, align 2, !noalias !1179, !noundef !6
  %i.dbv = zext i16 %i.dbu to i32
  %i.dbw = and i32 %i.dbh, %i.dbv
  %i.dbx = zext nneg i32 %i.dbw to i64
  %i.dby = shl i32 %i.dbs, %i.dbi
  %i.dbz = zext i32 %i.dby to i64
  %i.dca = add nuw nsw i64 %i.dbx, %i.dbz         ; 3 uses
  %i.dcb = icmp ult i64 %i.dca, %.val5.i.i576
  br i1 %i.dcb, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.abd

bb.abc:                                           ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCskeugdADtBsi_12pingora_core.exit.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dbq, i64 noundef %.val9.i.i574, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #16, !noalias !1179
  unreachable

bb.abd:                                           ; preds = %bb.abb
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dca, i64 noundef %.val5.i.i576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #16, !noalias !1179
  unreachable

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.abb
  %i.dcc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i577, i64 %i.dca
  %i.dcd = trunc i64 %.sroa.01.03.i.i to i32
  store i32 %i.dcd, ptr %i.dcc, align 4, !noalias !1179
  %i.dce = load i16, ptr %i.dbt, align 2, !noalias !1179, !noundef !6
  %i.dcf = add i16 %i.dce, 1
  store i16 %i.dcf, ptr %i.dbt, align 2, !noalias !1179
  %exitcond.not.i.i583 = icmp eq i64 %i.dbj, %spec.store.select4.i570
  br i1 %exitcond.not.i.i583, label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, label %.lr.ph.i.i578

_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i
  %.pre.i = load i64, ptr %i.d, align 8, !noalias !1164
  %.pre64.i = add i64 %.pre.i, %.sroa.0.3.i562
  br label %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.zn
  %.sroa.034.0.lcssa.i537 = phi i64 [ %i.cwy, %bb.zn ], [ %.sroa.034.1.i546, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i538 = phi i64 [ 0, %bb.zn ], [ %.sroa.032.1.i547, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i539 = phi i64 [ %3, %bb.zn ], [ %.sroa.0.1.i550, %_RNvXsn_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.dcg = add i64 %.sroa.034.0.lcssa.i537, %i.cwz
  %i.dch = sub i64 %i.dcg, %.sroa.0.0.lcssa.i539
  store i64 %i.dch, ptr %11, align 8, !alias.scope !1157, !noalias !1161
  %i.dci = load i64, ptr %14, align 8, !alias.scope !1158, !noalias !1180, !noundef !6
  %i.dcj = add i64 %i.dci, %.sroa.032.0.lcssa.i538
  store i64 %i.dcj, ptr %14, align 8, !alias.scope !1158, !noalias !1180
  br label %bb.acw

bb.abe:                                           ; preds = %bb.a
  %i.dck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  %i.dcl = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.dcm = load i8, ptr %i.dcl, align 1, !range !702, !noundef !6
  %i.dcn = trunc nuw i8 %i.dcm to i1
  %.18 = select i1 %i.dcn, ptr %1, ptr null       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %i.dco = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.dcp = load i32, ptr %i.dco, align 4, !alias.scope !1182, !noalias !1188, !noundef !6
  %i.dcq = and i32 %i.dcp, 63
  %i.dcr = zext nneg i32 %i.dcq to i64
  %i.dcs = shl nuw i64 1, %i.dcr
  %i.dct = add i64 %i.dcs, -16                    ; 3 uses
  %i.dcu = load i64, ptr %11, align 8, !alias.scope !1185, !noalias !1189, !noundef !6 ; 2 uses
  %i.dcv = add i64 %3, %2                         ; 9 uses
  %i.dcw = icmp ugt i64 %2, 3
  %i.dcx = add i64 %i.dcv, -3
  %spec.select.i590 = select i1 %i.dcw, i64 %i.dcx, i64 %3
  %i.dcy = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dcz = load i32, ptr %i.dcy, align 8, !alias.scope !1182, !noalias !1188, !noundef !6 ; 2 uses
  %i.dda = icmp slt i32 %i.dcz, 9
  %..i591 = select i1 %i.dda, i64 64, i64 512     ; 3 uses
  tail call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef 16), !noalias !1190
  %i.ddb = add i64 %3, 4
  %i.ddc = icmp ult i64 %i.ddb, %i.dcv
  br i1 %i.ddc, label %.lr.ph.i595, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

.lr.ph.i595:                                      ; preds = %bb.abe
  %i.ddd = add i64 %..i591, %3
  %i.dde = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ddh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ddi = load i64, ptr %i.ddh, align 8, !alias.scope !1182, !noalias !1188, !noundef !6 ; 2 uses
  %i.ddj = add i64 %i.dcv, -4
  %i.ddk = shl nuw nsw i64 %..i591, 2
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ddn = icmp slt i32 %i.dcz, 5
  %.not4.i.i596 = icmp eq i64 %10, 0
  %.not5.i.i597 = icmp eq i64 %10, 1
  %i.ddo = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.ddp = icmp samesign ugt i64 %10, 2           ; 2 uses
  %i.ddq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not6.i.i598 = icmp eq i64 %10, 3              ; 2 uses
  %i.ddr = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.dds = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ddt = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ddu = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.abf

bb.abf:                                           ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i595
  %.sroa.0.051.i599 = phi i64 [ %3, %.lr.ph.i595 ], [ %.sroa.0.1.i611, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.031.050.i600 = phi ptr [ %12, %.lr.ph.i595 ], [ %.sroa.031.1.i610, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 7 uses
  %.sroa.4.049.i601 = phi i64 [ %13, %.lr.ph.i595 ], [ %.sroa.4.1.i609, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %.sroa.032.048.i602 = phi i64 [ 0, %.lr.ph.i595 ], [ %.sroa.032.1.i608, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 5 uses
  %.sroa.034.047.i603 = phi i64 [ %i.dcu, %.lr.ph.i595 ], [ %.sroa.034.1.i607, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.053.046.i604 = phi i64 [ %i.ddd, %.lr.ph.i595 ], [ %.sroa.053.1.i606, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ] ; 6 uses
  %i.ddv = sub i64 %i.dcv, %.sroa.0.051.i599      ; 2 uses
  %spec.store.select.i605 = call i64 @llvm.umin.i64(i64 %.sroa.0.051.i599, i64 %i.dct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !1191
  store i64 2020, ptr %i.ddg, align 8, !noalias !1191
  %i.ddw = call fastcc noundef zeroext i1 @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %.sroa.0.051.i599, i64 noundef %i.ddv, i64 noundef %spec.store.select.i605, i64 noundef %i.ddi, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  br i1 %i.ddw, label %.preheader.i614, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.ddx = add i64 %.sroa.034.047.i603, 1         ; 2 uses
  %i.ddy = add i64 %.sroa.0.051.i599, 1           ; 4 uses
  %i.ddz = icmp ugt i64 %i.ddy, %.sroa.053.046.i604
  br i1 %i.ddz, label %bb.abh, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.abh:                                           ; preds = %bb.abg
  %i.dea = add i64 %.sroa.0.051.i599, 17          ; 2 uses
  %.not.i612 = icmp ult i64 %i.dea, %i.ddj
  br i1 %.not.i612, label %bb.abi, label %bb.abj

bb.abi:                                           ; preds = %bb.abh
  %i.deb = add i64 %.sroa.053.046.i604, %i.ddk
  %i.dec = icmp ugt i64 %i.ddy, %i.deb
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.ddy), !noalias !1192
  br i1 %i.dec, label %bb.abl, label %bb.abk

bb.abj:                                           ; preds = %bb.abh
  %.neg.i613 = xor i64 %.sroa.0.051.i599, -1
  %i.ded = add i64 %i.dcv, %.neg.i613
  %i.dee = add i64 %i.ded, %i.ddx
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.abk:                                           ; preds = %bb.abi
  %i.def = add i64 %.sroa.0.051.i599, 3
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.def), !noalias !1192
  %i.deg = add i64 %.sroa.0.051.i599, 5
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.deg), !noalias !1192
  %i.deh = add i64 %.sroa.0.051.i599, 7
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.deh), !noalias !1192
  %i.dei = add i64 %.sroa.034.047.i603, 9
  %i.dej = add i64 %.sroa.0.051.i599, 9
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

bb.abl:                                           ; preds = %bb.abi
  %i.dek = add i64 %.sroa.0.051.i599, 5
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.dek), !noalias !1192
  %i.del = add i64 %.sroa.0.051.i599, 9
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.del), !noalias !1192
  %i.dem = add i64 %.sroa.0.051.i599, 13
  call fastcc void @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %i.dem), !noalias !1192
  %i.den = add i64 %.sroa.034.047.i603, 17
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, %bb.acp, %bb.abl, %bb.abk, %bb.abj, %bb.abg
  %.sroa.053.1.i606 = phi i64 [ %.sroa.053.046.i604, %bb.abg ], [ %.sroa.053.046.i604, %bb.abj ], [ %.sroa.053.046.i604, %bb.abl ], [ %.sroa.053.046.i604, %bb.abk ], [ %i.dex, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dex, %bb.acp ]
  %.sroa.034.1.i607 = phi i64 [ %i.ddx, %bb.abg ], [ %i.dee, %bb.abj ], [ %i.den, %bb.abl ], [ %i.dei, %bb.abk ], [ 0, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ 0, %bb.acp ] ; 2 uses
  %.sroa.032.1.i608 = phi i64 [ %.sroa.032.048.i602, %bb.abg ], [ %.sroa.032.048.i602, %bb.abj ], [ %.sroa.032.048.i602, %bb.abl ], [ %.sroa.032.048.i602, %bb.abk ], [ %i.dgn, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgn, %bb.acp ] ; 2 uses
  %.sroa.4.1.i609 = phi i64 [ %.sroa.4.049.i601, %bb.abg ], [ %.sroa.4.049.i601, %bb.abj ], [ %.sroa.4.049.i601, %bb.abl ], [ %.sroa.4.049.i601, %bb.abk ], [ %i.dgm, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgm, %bb.acp ]
  %.sroa.031.1.i610 = phi ptr [ %.sroa.031.050.i600, %bb.abg ], [ %.sroa.031.050.i600, %bb.abj ], [ %.sroa.031.050.i600, %bb.abl ], [ %.sroa.031.050.i600, %bb.abk ], [ %i.dgl, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgl, %bb.acp ]
  %.sroa.0.1.i611 = phi i64 [ %i.ddy, %bb.abg ], [ %i.dcv, %bb.abj ], [ %i.dea, %bb.abl ], [ %i.dej, %bb.abk ], [ %.pre64.i642, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i ], [ %i.dgv, %bb.acp ] ; 3 uses
end_hunk_9
begin_hunk_10_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.deq = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6
  %i.der = add i64 %i.deq, -1
  %spec.store.select1.i647 = call i64 @llvm.umin.i64(i64 %i.der, i64 %.sroa.044.0.i619)
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %.preheader.i614
  %.sroa.051.0.i620 = phi i64 [ %spec.store.select1.i647, %bb.abm ], [ 0, %.preheader.i614 ]
  store i64 %.sroa.051.0.i620, ptr %i.a, align 8, !noalias !1191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ddl, i8 0, i64 16, i1 false), !noalias !1191
  store i64 2020, ptr %i.ddm, align 8, !noalias !1191
  %i.des = add i64 %.sroa.0.2.i618, 1             ; 4 uses
  %spec.store.select2.i621 = call i64 @llvm.umin.i64(i64 %i.des, i64 %i.dct)
  %i.det = call fastcc noundef zeroext i1 @_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.dck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %i.des, i64 noundef %.sroa.044.0.i619, i64 noundef %spec.store.select2.i621, i64 noundef %i.ddi, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
  br i1 %i.det, label %bb.acg, label %bb.abo

bb.abo:                                           ; preds = %bb.ach, %bb.acg, %bb.abn
  %.sroa.034.3.i622 = phi i64 [ %.sroa.034.2.i617, %bb.abn ], [ %i.dgd, %bb.ach ], [ %.sroa.034.2.i617, %bb.acg ] ; 2 uses
  %.sroa.0.3.i623 = phi i64 [ %.sroa.0.2.i618, %bb.abn ], [ %i.des, %bb.ach ], [ %.sroa.0.2.i618, %bb.acg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1191
  %i.deu = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6
  %i.dev = shl i64 %i.deu, 1
  %i.dew = add i64 %.sroa.0.3.i623, %..i591
  %i.dex = add i64 %i.dew, %i.dev                 ; 2 uses
  %spec.store.select3.i624 = call i64 @llvm.umin.i64(i64 %.sroa.0.3.i623, i64 %i.dct)
  %i.dey = load i64, ptr %i.ddf, align 8, !noalias !1191, !noundef !6 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %.not.i.i625 = icmp ule i64 %i.dey, %spec.store.select3.i624 ; 2 uses
  br i1 %.not.i.i625, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.ace, %bb.abo
  %i.dez = add i64 %i.dey, 15
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626

bb.abq:                                           ; preds = %bb.abo
  %i.dfa = add i64 %i.dey, 3                      ; 2 uses
  br i1 %.not4.i.i596, label %bb.abs, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.dfb = load i32, ptr %9, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dfc = sext i32 %i.dfb to i64                 ; 2 uses
  %i.dfd = sub i64 %i.dfa, %i.dfc                 ; 2 uses
  br i1 %.not5.i.i597, label %bb.abu, label %bb.abt

bb.abs:                                           ; preds = %bb.abq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #16, !noalias !1195
  unreachable

bb.abt:                                           ; preds = %bb.abr
  %i.dfe = load i32, ptr %i.ddo, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dff = sext i32 %i.dfe to i64                 ; 2 uses
  %i.dfg = sub i64 %i.dfa, %i.dff                 ; 2 uses
  %i.dfh = icmp eq i64 %i.dey, %i.dfc
  br i1 %i.dfh, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629, label %bb.abv

bb.abu:                                           ; preds = %bb.abr
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #16, !noalias !1195
  unreachable

bb.abv:                                           ; preds = %bb.abt
  %i.dfi = icmp eq i64 %i.dey, %i.dff
  br i1 %i.dfi, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.dfj = icmp ult i64 %i.dfd, 7
  br i1 %i.dfj, label %bb.aby, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.dfk = icmp ult i64 %i.dfg, 7
  br i1 %i.dfk, label %bb.aca, label %bb.abz

bb.aby:                                           ; preds = %bb.abw
  %.tr7.i.i644 = trunc nuw nsw i64 %i.dfd to i32
  %i.dfl = shl nuw nsw i32 %.tr7.i.i644, 2
  %i.dfm = lshr i32 158663784, %i.dfl
  %i.dfn = and i32 %i.dfm, 15
  %i.dfo = zext nneg i32 %i.dfn to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626

bb.abz:                                           ; preds = %bb.abx
  br i1 %i.ddp, label %bb.acb, label %bb.acc

bb.aca:                                           ; preds = %bb.abx
  %.tr.i.i643 = trunc nuw nsw i64 %i.dfg to i32
  %i.dfp = shl nuw nsw i32 %.tr.i.i643, 2
  %i.dfq = lshr i32 266017486, %i.dfp
  %i.dfr = and i32 %i.dfq, 15
  %i.dfs = zext nneg i32 %i.dfr to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626

bb.acb:                                           ; preds = %bb.abz
  %i.dft = load i32, ptr %i.ddq, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dfu = sext i32 %i.dft to i64
  %i.dfv = icmp eq i64 %i.dey, %i.dfu
  br i1 %i.dfv, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, label %bb.acd

bb.acc:                                           ; preds = %bb.abz
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16, !noalias !1195
  unreachable

bb.acd:                                           ; preds = %bb.acb
  br i1 %.not6.i.i598, label %bb.acf, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  %i.dfw = load i32, ptr %i.ddr, align 4, !alias.scope !1194, !noalias !1190, !noundef !6
  %i.dfx = sext i32 %i.dfw to i64
  %i.dfy = icmp eq i64 %i.dey, %i.dfx
  br i1 %i.dfy, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626, label %bb.abp

bb.acf:                                           ; preds = %bb.acd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16, !noalias !1195
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.i626: ; preds = %bb.ace, %bb.acb, %bb.aca, %bb.aby, %bb.abv, %bb.abp
  %.sroa.0.0.i.i627 = phi i64 [ %i.dez, %bb.abp ], [ 3, %bb.ace ], [ %i.dfo, %bb.aby ], [ %i.dfs, %bb.aca ], [ 1, %bb.abv ], [ 2, %bb.acb ] ; 3 uses
  %i.dfz = icmp ne i64 %.sroa.0.0.i.i627, 0
  %or.cond.i628 = and i1 %.not.i.i625, %i.dfz
  br i1 %or.cond.i628, label %bb.ack, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629

bb.acg:                                           ; preds = %bb.abn
  %i.dga = load i64, ptr %i.ddm, align 8, !noalias !1191, !noundef !6
  %i.dgb = load i64, ptr %i.ddg, align 8, !noalias !1191, !noundef !6
  %i.dgc = add i64 %i.dgb, 175
  %.not71.i645 = icmp ult i64 %i.dga, %i.dgc
  br i1 %.not71.i645, label %bb.abo, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.dgd = add i64 %.sroa.034.2.i617, 1           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1191
  %i.dge = icmp samesign ult i32 %.sroa.049.0.i615, 3
  %i.dgf = add i64 %.sroa.0.2.i618, 5
  %i.dgg = icmp ult i64 %i.dgf, %i.dcv
  %or.cond5.i646 = and i1 %i.dge, %i.dgg
  br i1 %or.cond5.i646, label %bb.aci, label %bb.abo

bb.aci:                                           ; preds = %bb.ach
  %i.dgh = add nuw nsw i32 %.sroa.049.0.i615, 1
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
  br i1 %i.ddp, label %bb.acl, label %bb.acm

bb.acl:                                           ; preds = %bb.ack
  br i1 %.not6.i.i598, label %bb.aco, label %bb.acn

bb.acm:                                           ; preds = %bb.ack
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16, !noalias !1197
  unreachable

bb.acn:                                           ; preds = %bb.acl
  %i.dgi = load i32, ptr %i.ddq, align 4, !alias.scope !1184, !noalias !1190, !noundef !6
  store i32 %i.dgi, ptr %i.ddr, align 4, !alias.scope !1184, !noalias !1190
  %i.dgj = load <2 x i32>, ptr %9, align 4, !alias.scope !1184, !noalias !1190
  store <2 x i32> %i.dgj, ptr %i.ddo, align 4, !alias.scope !1184, !noalias !1190
  %i.dgk = trunc i64 %i.dey to i32
  store i32 %i.dgk, ptr %9, align 4, !alias.scope !1184, !noalias !1190
  call fastcc void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references26adv_prepare_distance_cache(ptr noalias nofree noundef nonnull align 4 %9, i64 noundef range(i64 0, 2305843009213693952) %10, i32 noundef 16), !noalias !1198
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629

bb.aco:                                           ; preds = %bb.acl
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16, !noalias !1197
  unreachable

bb.acp:                                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19ComputeDistanceCode.exit.thread.i629
  %i.dgl = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i600, i64 16 ; 2 uses
  %i.dgm = add nsw i64 %.sroa.4.049.i601, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.050.i600) ]
  %i.dgn = add i64 %.sroa.032.048.i602, 1         ; 2 uses
  %i.dgo = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6 ; 2 uses
  %i.dgp = load i64, ptr %i.dde, align 8, !noalias !1191, !noundef !6
  %i.dgq = xor i64 %i.dgp, %i.dgo
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command11InitCommand(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %.sroa.031.050.i600, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ddh, i64 noundef %.sroa.034.3.i622, i64 noundef %i.dgo, i64 noundef %i.dgq, i64 noundef %.sroa.0.0.i3.i630), !noalias !1197
  %i.dgr = load i64, ptr %15, align 8, !alias.scope !1187, !noalias !1199, !noundef !6
  %i.dgs = add i64 %i.dgr, %.sroa.034.3.i622
  store i64 %i.dgs, ptr %15, align 8, !alias.scope !1187, !noalias !1199
  %i.dgt = add i64 %.sroa.0.3.i623, 2             ; 2 uses
  %i.dgu = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !6
  %i.dgv = add i64 %i.dgu, %.sroa.0.3.i623        ; 2 uses
  %spec.store.select4.i631 = call i64 @llvm.umin.i64(i64 %i.dgv, i64 %spec.select.i590) ; 2 uses
  %i.dgw = icmp ult i64 %i.dgt, %spec.store.select4.i631
  br i1 %i.dgw, label %.lr.ph.i.preheader.i632, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.preheader.i632:                          ; preds = %bb.acp
  %.val7.i.i633 = load i64, ptr %i.dds, align 8, !alias.scope !1183, !noalias !1200 ; 2 uses
  %.val6.i.i634 = load ptr, ptr %i.dck, align 8, !alias.scope !1183, !noalias !1200, !nonnull !6
  %.val5.i.i635 = load i64, ptr %i.ddt, align 8, !alias.scope !1183, !noalias !1200 ; 2 uses
  %.val.i.i636 = load ptr, ptr %i.ddu, align 8, !alias.scope !1183, !noalias !1200, !nonnull !6
  br label %.lr.ph.i.i637

.lr.ph.i.i637:                                    ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, %.lr.ph.i.preheader.i632
  %.sroa.0.03.i.i = phi i64 [ %i.dgx, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i ], [ %i.dgt, %.lr.ph.i.preheader.i632 ] ; 3 uses
  %i.dgx = add nuw i64 %.sroa.0.03.i.i, 1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.dgy = and i64 %.sroa.0.03.i.i, %6            ; 3 uses
  %.not.i.i.i638 = icmp ugt i64 %i.dgy, %5
  br i1 %.not.i.i.i638, label %bb.acq, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639, !prof !10

bb.acq:                                           ; preds = %.lr.ph.i.i637
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #16, !noalias !1202
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639: ; preds = %.lr.ph.i.i637
  %i.dgz = sub nuw nsw i64 %5, %i.dgy
  %.not.i8.i.i = icmp samesign ult i64 %i.dgz, 4
  br i1 %.not.i8.i.i, label %bb.acr, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i, !prof !10

bb.acr:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !1203
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit.i.i639
  %i.dha = getelementptr inbounds nuw i8, ptr %4, i64 %i.dgy
  %.sroa.013.0.copyload.i.i = load i32, ptr %i.dha, align 1, !alias.scope !1204, !noalias !1205
  %i.dhb = zext i32 %.sroa.013.0.copyload.i.i to i64
  %i.dhc = mul nuw nsw i64 %i.dhb, 506832829
  %i.dhd = lshr i64 %i.dhc, 17
  %i.dhe = and i64 %i.dhd, 32767                  ; 4 uses
  %i.dhf = icmp ugt i64 %.val7.i.i633, %i.dhe
  br i1 %i.dhf, label %bb.acs, label %bb.act

bb.acs:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i
  %i.dhg = getelementptr inbounds nuw [2 x i8], ptr %.val6.i.i634, i64 %i.dhe ; 3 uses
  %i.dhh = load i16, ptr %i.dhg, align 2, !noalias !1206, !noundef !6
  %i.dhi = and i16 %i.dhh, 255
  %i.dhj = zext nneg i16 %i.dhi to i64
  %i.dhk = shl nuw nsw i64 %i.dhe, 8
  %i.dhl = or disjoint i64 %i.dhk, %i.dhj         ; 3 uses
  %i.dhm = icmp ult i64 %i.dhl, %.val5.i.i635
  br i1 %i.dhm, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i, label %bb.acu

bb.act:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit12.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dhe, i64 noundef %.val7.i.i633, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #16, !noalias !1206
  unreachable

bb.acu:                                           ; preds = %bb.acs
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dhl, i64 noundef %.val5.i.i635, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #16, !noalias !1206
  unreachable

_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.acs
  %i.dhn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i636, i64 %i.dhl
  %i.dho = trunc i64 %.sroa.0.03.i.i to i32
  store i32 %i.dho, ptr %i.dhn, align 4, !noalias !1206
  %i.dhp = load i16, ptr %i.dhg, align 2, !noalias !1206, !noundef !6
  %i.dhq = add i16 %i.dhp, 1
  store i16 %i.dhq, ptr %i.dhg, align 2, !noalias !1206
  %exitcond.not.i.i640 = icmp eq i64 %i.dgx, %spec.store.select4.i631
  br i1 %exitcond.not.i.i640, label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i, label %.lr.ph.i.i637

_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.loopexit.i: ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCskeugdADtBsi_12pingora_core.exit.i
  %.pre.i641 = load i64, ptr %i.b, align 8, !noalias !1191
  %.pre64.i642 = add i64 %.pre.i641, %.sroa.0.3.i623
  br label %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i, %bb.abe
  %.sroa.034.0.lcssa.i592 = phi i64 [ %i.dcu, %bb.abe ], [ %.sroa.034.1.i607, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.032.0.lcssa.i593 = phi i64 [ 0, %bb.abe ], [ %.sroa.032.1.i608, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.0.0.lcssa.i594 = phi i64 [ %3, %bb.abe ], [ %.sroa.0.1.i611, %_RNvXsg_NtNtCsiRgJJXJ4lb7_6brotli3enc19backward_referencesINtB5_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher10StoreRangeCskeugdADtBsi_12pingora_core.exit.i ]
  %i.dhr = add i64 %.sroa.034.0.lcssa.i592, %i.dcv
  %i.dhs = sub i64 %i.dhr, %.sroa.0.0.lcssa.i594
  store i64 %i.dhs, ptr %11, align 8, !alias.scope !1185, !noalias !1189
  %i.dht = load i64, ptr %14, align 8, !alias.scope !1186, !noalias !1207, !noundef !6
  %i.dhu = add i64 %i.dht, %.sroa.032.0.lcssa.i593
  store i64 %i.dhu, ptr %14, align 8, !alias.scope !1186, !noalias !1207
  br label %bb.acw

bb.acv:                                           ; preds = %bb.a
  %i.dhv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dhw = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dhx = load i32, ptr %i.dhw, align 8, !noundef !6
  %i.dhy = icmp sgt i32 %i.dhx, 10
  %i.dhz = getelementptr inbounds nuw i8, ptr %7, i64 101
  %i.dia = load i8, ptr %i.dhz, align 1, !range !702, !noundef !6
  %i.dib = trunc nuw i8 %i.dia to i1
  %.20 = select i1 %i.dib, ptr %1, ptr null       ; 2 uses
  br i1 %i.dhy, label %bb.acy, label %bb.acx

bb.acw:                                           ; preds = %bb.acx, %bb.acy, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_2H9NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H6SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_9AdvHasherNtB2_5H5SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_6H54SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H4SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H3SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references24CreateBackwardReferencesINtB2_11BasicHasherINtB2_5H2SubNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEECskeugdADtBsi_12pingora_core.exit
  ret void

bb.acx:                                           ; preds = %bb.acv
  tail call void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1x_ENtB2v_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.20, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.dhv, ptr noalias nofree noundef nonnull align 4 %9, i64 noundef %10, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noalias nofree noundef nonnull align 4 %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15)
  br label %bb.acw

bb.acy:                                           ; preds = %bb.acv
  tail call void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1z_ENtB2x_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.20, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.dhv, ptr noalias nofree noundef nonnull align 4 %9, i64 noundef %10, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noalias nofree noundef nonnull align 4 %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15)
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
