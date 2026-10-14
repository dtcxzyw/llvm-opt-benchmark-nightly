Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFRaBitQFastScan?download=true
inline.NumInlined: 863
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5faiss22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS7_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingE:bb.a
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.aa

bb.s:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !153
  %i.ay = icmp eq i64 %i.ax, 16
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !155
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS7_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingE, ptr noundef nonnull @.str.2, i32 noundef 613) #37 ; 0 uses
  tail call void @abort() #36
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !99  ; 2 uses
  %.not = icmp eq i8 %i.bc, 0                     ; 2 uses
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !76
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bf = phi i8 [ %i.be, %bb.v ], [ %i.bc, %bb.u ]
  store i8 %i.bf, ptr %i.d, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 401
  %.in.in = select i1 %.not, ptr %i.bh, ptr %i.bg
  %.in = load i8, ptr %.in.in, align 1, !tbaa !68, !range !32, !noundef !33
  store i8 %.in, ptr %i.e, align 1, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.bi = load i64, ptr %3, align 8, !tbaa !101   ; 2 uses
  store i64 %i.bi, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !131
  %i.bl = shl i64 %i.bk, 4
  store i64 %i.bl, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !138
  %i.bo = shl i64 %i.bn, 4                        ; 2 uses
  store i64 %i.bo, ptr %i.h, align 8, !tbaa !23
  %i.bp = mul i64 %i.bi, %1                       ; 2 uses
  %i.bq = mul i64 %i.bp, %i.bo
  tail call void @_ZN5faiss12AlignedTableIhLi32EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bq)
  tail call void @_ZN5faiss12AlignedTableItLi32EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bp)
  %i.br = icmp ugt i64 %1, 1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZNK5faiss22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS7_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingE.omp_outlined, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %3, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %7, ptr nonnull %4, ptr nonnull %i.h, ptr nonnull %5, ptr nonnull %i.c)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.j)
  store i32 %i.j, ptr %i.i, align 4, !tbaa !66
  call void @_ZNK5faiss22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS7_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingE.omp_outlined(ptr nonnull %i.i, ptr nonnull poison, ptr %i.f, ptr %i.g, ptr nonnull %0, ptr %i.a, ptr %i.b, ptr %3, ptr %i.d, ptr %i.e, ptr %7, ptr %4, ptr %i.h, ptr %5, ptr %i.c) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.j)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn25.pn

bb.ab:                                            ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss22IndexIVFRaBitQFastScan16make_knn_scannerEbllPfPlPKNS_10IDSelectorEiRKNS_30FastScanDistancePostProcessingE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(402) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 %8, ptr noundef nonnull align 8 dereferenceable(26) %9) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74
  %i.c = icmp ne i64 %i.b, 1
  tail call void @_ZN5faiss27rabitq_ivf_make_knn_scannerEbPKNS_22IndexIVFRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, i1 noundef zeroext %2, ptr noundef nonnull %1, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %9, i1 noundef zeroext %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -268435455, 268435456) i64 @_ZNK5faiss22IndexIVFRaBitQFastScan19fast_scan_code_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(402) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = add nsw i32 %i.b, 7
  %i.d = sdiv i32 %i.c, 8
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK5faiss22IndexIVFRaBitQFastScan19code_packing_strideEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(402) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss22IndexIVFRaBitQFastScan24postprocess_packed_codesElmmPKh(ptr noundef nonnull align 8 dereferenceable(402) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN5faiss13InvertedListsE, ptr nonnull @_ZTIN5faiss18BlockInvertedListsE, i64 0) #18 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !22
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !21
  %i.l = load i64, ptr %i.f, align 8, !tbaa !35
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.i)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %.thread
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss22IndexIVFRaBitQFastScan24postprocess_packed_codesElmmPKh, ptr noundef nonnull @.str.2, i32 noundef 226)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #34
          to label %bb.l unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.p, %bb.h ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = load i64, ptr %i.y, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !60
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call noundef i64 @_ZN5faiss12rabitq_utils31compute_per_vector_storage_sizeEmm(i64 noundef %i.z, i64 noundef %i.ac) ; 6 uses
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !60
  %i.af = add nsw i32 %i.ae, 7
  %i.ag = sdiv i32 %i.af, 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !138
  %i.ak = add i64 %i.aj, 1
  %i.al = lshr i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !147
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao
  %i.aq = tail call noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %0) ; 3 uses
  %invariant.gep = getelementptr i8, ptr %4, i64 %i.ah ; 3 uses
  %invariant.gep30 = getelementptr i8, ptr %i.x, i64 %i.ap ; 3 uses
  %.not33 = icmp eq i64 %3, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %xtraiter = and i64 %3, 1
  %7 = icmp eq i64 %3, 1
  br i1 %7, label %.lr.ph.a, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %3, -2
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.032.epil.init = phi i64 [ 0, %.lr.ph ], [ %28, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %8 = load i64, ptr %6, align 8, !tbaa !59
  %9 = mul i64 %8, %.032.epil.init
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %9
  %10 = add i64 %.032.epil.init, %2               ; 2 uses
  %11 = load i32, ptr %i.am, align 4, !tbaa !147
  %12 = sext i32 %11 to i64                       ; 2 uses
  %13 = udiv i64 %10, %12
  %14 = mul i64 %13, %i.aq
  %gep31.epil = getelementptr i8, ptr %invariant.gep30, i64 %14
  %15 = urem i64 %10, %12
  %16 = mul i64 %15, %i.ad
  %i.ar = getelementptr inbounds nuw i8, ptr %gep31.epil, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %gep.epil, i64 %i.ad, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.a, %._crit_edge.loopexit.unr-lcssa, %bb.j
  ret void

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %.032 = phi i64 [ 0, %.lr.ph.new ], [ %28, %bb.k ] ; 4 uses
  %.032.a = phi i64 [ 0, %.lr.ph.new ], [ %i.bc, %bb.k ]
  %17 = load i64, ptr %6, align 8, !tbaa !59
  %18 = mul i64 %17, %.032
  %gep = getelementptr i8, ptr %invariant.gep, i64 %18
  %19 = add i64 %.032, %2                         ; 2 uses
  %20 = load i32, ptr %i.am, align 4, !tbaa !147
  %21 = sext i32 %20 to i64                       ; 2 uses
  %22 = udiv i64 %19, %21
  %23 = mul i64 %22, %i.aq
  %gep31 = getelementptr i8, ptr %invariant.gep30, i64 %23
  %24 = urem i64 %19, %21
  %25 = mul i64 %24, %i.ad
  %26 = getelementptr inbounds nuw i8, ptr %gep31, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %gep, i64 %i.ad, i1 false)
  %27 = or disjoint i64 %.032, 1                  ; 2 uses
  %i.as = load i64, ptr %6, align 8, !tbaa !59
  %i.at = mul i64 %i.as, %27
  %gep.a = getelementptr i8, ptr %invariant.gep, i64 %i.at
  %i.au = add i64 %27, %2                         ; 2 uses
  %i.av = load i32, ptr %i.am, align 4, !tbaa !147
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = udiv i64 %i.au, %i.aw
  %i.ay = mul i64 %i.ax, %i.aq
  %gep31.a = getelementptr i8, ptr %invariant.gep30, i64 %i.ay
  %i.az = urem i64 %i.au, %i.aw
  %i.ba = mul i64 %i.az, %i.ad
  %i.bb = getelementptr inbounds nuw i8, ptr %gep31.a, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %gep.a, i64 %i.ad, i1 false)
  %28 = add nuw i64 %.032, 2                      ; 2 uses
  %i.bc = add nuw i64 %.032.a, 2                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %unroll_iter
  br i1 %exitcond.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !188

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: uwtable
define void @_ZThn40_NK5faiss22IndexIVFRaBitQFastScan18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr nofree noundef readnone captures(address_is_null) %10) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZNK5faiss22IndexIVFRaBitQFastScan18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(402) %i.a, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10)
  ret void
}

; Function Attrs: uwtable
declare void @_ZThn40_NK5faiss8IndexIVF24range_search_preassignedElPKffPKlS2_PNS_17RangeSearchResultEbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef, i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #5 align 2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N5faiss22IndexIVFRaBitQFastScanD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN5faiss16IndexIVFFastScanD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(402) %i.a) #18
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N5faiss22IndexIVFRaBitQFastScanD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  tail call void @_ZN5faiss16IndexIVFFastScanD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(402) %i.a) #18
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(402) %i.a, i64 noundef 408) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss22IndexIVFRaBitQFastScanC2Ev(ptr noundef nonnull align 8 dereferenceable(402) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5faiss16IndexIVFFastScanC2Ev(ptr noundef nonnull align 8 dereferenceable(352) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN5faiss22IndexIVFRaBitQFastScanE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss22IndexIVFRaBitQFastScanE, i64 424), ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke void @_ZN5faiss14RaBitQuantizerC1EmNS_10MetricTypeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 0, i32 noundef 1, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 8, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 401
  store i8 0, ptr %i.d, align 1, !tbaa !77
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss16IndexIVFFastScanD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) #18
  resume { ptr, i32 } %i.e
}

declare void @_ZN5faiss16IndexIVFFastScanC2Ev(ptr noundef nonnull align 8 dereferenceable(352)) unnamed_addr #1

declare void @_ZN5faiss14RaBitQuantizerC1EmNS_10MetricTypeEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i32 noundef, i64 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN5faiss16IndexIVFFastScanD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss22IndexIVFRaBitQFastScanC2EPNS_5IndexEmmNS_10MetricTypeEibh(ptr noundef nonnull align 8 dereferenceable(402) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN5faiss16IndexIVFFastScanC2EPNS_5IndexEmmmNS_10MetricTypeEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %4, i1 noundef zeroext %6)
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN5faiss22IndexIVFRaBitQFastScanE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss22IndexIVFRaBitQFastScanE, i64 424), ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.c = zext i8 %7 to i64
  invoke void @_ZN5faiss14RaBitQuantizerC1EmNS_10MetricTypeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %2, i32 noundef %4, i64 noundef %i.c)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store i8 8, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 401 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !77
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !35
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.k)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %8, align 8, !tbaa !21
  %i.m = load i64, ptr %i.g, align 8, !tbaa !35
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.l, i64 noundef %i.m, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.j)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %bb.i, %bb.e, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss22IndexIVFRaBitQFastScanC2EPNS_5IndexEmmNS_10MetricTypeEibh, ptr noundef nonnull @.str.2, i32 noundef 63)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #34
          to label %bb.av unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.r, %bb.j ]
  %i.s = load ptr, ptr %8, align 8, !tbaa !21     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.f, align 8, !tbaa !22
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.au

bb.l:                                             ; preds = %bb.b
  %or.cond = icmp ult i32 %4, 2
  br i1 %or.cond, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !35
  store i8 0, ptr %i.w, align 8, !tbaa !22
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #18 ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ab)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %9, align 8, !tbaa !21
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !35
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.aa)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o, %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.ag = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss22IndexIVFRaBitQFastScanC2EPNS_5IndexEmmNS_10MetricTypeEibh, ptr noundef nonnull @.str.2, i32 noundef 66)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #34
          to label %bb.av unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
end_hunk_0
