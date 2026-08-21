Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson7haswell25dom_parser_implementation19parse_wobbly_stringEPKhPh:bb.a
  %i.ej = and i32 %i.ei, %i.eh
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %.lr.ph, label %.noexc2

_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit: ; preds = %bb.l, %bb.j, %.noexc2
  %.5.i.ph = phi ptr [ %i.k, %.noexc2 ], [ null, %bb.j ], [ null, %bb.l ]
  ret ptr %.5.i.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson7haswell25dom_parser_implementation5parseEPKhmRNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #41 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK8simdjson7icelake14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(96) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 96, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8simdjson7icelake25dom_parser_implementationE, i64 16), ptr %i.a, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !84     ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !84
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #41, !inline_history !86
  %.pr = load ptr, ptr %3, align 8, !tbaa !84
  br label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  %i.l = phi ptr [ %i.a, %bb.c ], [ %.pr, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i ] ; 3 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i64 noundef %1) #41 ; 2 uses
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(49) %i.q, i64 noundef %2) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %.2 = phi i32 [ 2, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.u, %bb.e ], [ %i.p, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZNK8simdjson7icelake14implementation6minifyEPKhmPhRm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 128)
  %.not.i = icmp ult i64 %2, 129
  br i1 %.not.i, label %._crit_edge.i, label %.noexc45.i

.noexc45.i:                                       ; preds = %bb.a, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i
  %.sroa.32.0363.i = phi i64 [ %i.ax, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ]
  %.sroa.41.0362.i = phi ptr [ %i.bj, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ %3, %bb.a ] ; 2 uses
  %.sroa.12.0361.i = phi i64 [ %.sroa.12.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.11.0360.i = phi i64 [ %i.bk, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0360.i ; 2 uses
  %i.d = load <64 x i8>, ptr %i.c, align 1, !tbaa !9 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load <64 x i8>, ptr %i.e, align 1, !tbaa !9 ; 5 uses
  %i.g = icmp eq <64 x i8> %i.d, splat (i8 92)
  %i.h = bitcast <64 x i1> %i.g to i64            ; 4 uses
  %.not.i70.i = icmp eq i64 %i.h, 0
  br i1 %.not.i70.i, label %.noexc48.i, label %bb.b

bb.b:                                             ; preds = %.noexc45.i
  %i.i = xor i64 %.sroa.12.0361.i, -1
  %i.j = and i64 %i.h, %i.i                       ; 2 uses
  %i.k = shl i64 %i.j, 1
  %i.l = or i64 %i.k, -6148914691236517206
  %i.m = sub i64 %i.l, %i.j
  %i.n = xor i64 %i.m, -6148914691236517206       ; 2 uses
  %i.o = or i64 %.sroa.12.0361.i, %i.h
  %i.p = xor i64 %i.n, %i.o
  %i.q = and i64 %i.n, %i.h
  %i.r = lshr i64 %i.q, 63
  br label %.noexc48.i

.noexc48.i:                                       ; preds = %bb.b, %.noexc45.i
  %.sroa.12.2.i = phi i64 [ %i.r, %bb.b ], [ 0, %.noexc45.i ] ; 3 uses
  %.sroa.0.0.i71.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.12.0361.i, %.noexc45.i ]
  %i.s = icmp eq <64 x i8> %i.d, splat (i8 34)
  %i.t = bitcast <64 x i1> %i.s to i64
  %i.u = xor i64 %.sroa.0.0.i71.i, -1
  %i.v = and i64 %i.u, %i.t
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.w, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.y = extractelement <2 x i64> %i.x, i64 0
  %i.z = xor i64 %i.y, %.sroa.32.0363.i           ; 2 uses
  %i.aa = ashr i64 %i.z, 63
  %i.ab = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.d)
  %i.ac = icmp ne <64 x i8> %i.d, %i.ab
  %i.ad = icmp eq <64 x i8> %i.f, splat (i8 92)
  %i.ae = bitcast <64 x i1> %i.ad to i64          ; 5 uses
  %.not.i67.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i67.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, label %bb.c

bb.c:                                             ; preds = %.noexc48.i
  %i.af = xor i64 %.sroa.12.2.i, -1
  %i.ag = and i64 %i.af, %i.ae
  %i.ah = shl i64 %i.ae, 1
  %i.ai = or i64 %i.ah, -6148914691236517206
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = xor i64 %i.aj, -6148914691236517206     ; 2 uses
  %i.al = or i64 %.sroa.12.2.i, %i.ae
  %i.am = xor i64 %i.ak, %i.al
  %i.an = and i64 %i.ak, %i.ae
  %i.ao = lshr i64 %i.an, 63
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i: ; preds = %bb.c, %.noexc48.i
  %.sroa.12.1.i = phi i64 [ %i.ao, %bb.c ], [ 0, %.noexc48.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.am, %bb.c ], [ %.sroa.12.2.i, %.noexc48.i ]
  %i.ap = icmp eq <64 x i8> %i.f, splat (i8 34)
  %i.aq = bitcast <64 x i1> %i.ap to i64
  %i.ar = xor i64 %.sroa.0.0.i.i, -1
  %i.as = and i64 %i.ar, %i.aq
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.at, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.av = extractelement <2 x i64> %i.au, i64 0
  %i.aw = xor i64 %i.av, %i.aa                    ; 2 uses
  %i.ax = ashr i64 %i.aw, 63                      ; 2 uses
  %i.ay = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.f)
  %i.az = icmp ne <64 x i8> %i.ay, %i.f
  %.not374.i = bitcast <64 x i1> %i.ac to i64
  %i.ba = or i64 %i.z, %.not374.i                 ; 2 uses
  %i.bb = bitcast i64 %i.ba to <64 x i1>
  %i.bc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.d, <64 x i8> zeroinitializer, <64 x i1> %i.bb)
  store <64 x i8> %i.bc, ptr %.sroa.41.0362.i, align 1, !tbaa !9
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.41.0362.i, i64 %i.bd ; 2 uses
  %.not375.i = bitcast <64 x i1> %i.az to i64
  %i.bf = or i64 %i.aw, %.not375.i                ; 2 uses
  %i.bg = bitcast i64 %i.bf to <64 x i1>
  %i.bh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.f, <64 x i8> zeroinitializer, <64 x i1> %i.bg)
  store <64 x i8> %i.bh, ptr %i.be, align 1, !tbaa !9
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 2 uses
  %i.bk = add nuw i64 %.sroa.11.0360.i, 128       ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %spec.select.i.i
  br i1 %i.bl, label %.noexc45.i, label %._crit_edge.i, !llvm.loop !137

._crit_edge.i:                                    ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, %bb.a
  %.sroa.11.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.bk, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.12.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.41.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.bj, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.32.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ax, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = icmp eq i64 %2, %.sroa.11.0.lcssa.i
  br i1 %i.bm, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit, label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i
  %i.bo = sub i64 %2, %.sroa.11.0.lcssa.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.bn, i64 %i.bo, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %.0..0..0..0..0.358.i = load <64 x i8>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64.359.i = load <64 x i8>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %i.bp = icmp eq <64 x i8> %.0..0..0..0..0.358.i, splat (i8 92)
  %i.bq = bitcast <64 x i1> %i.bp to i64          ; 4 uses
  %.not.i82.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i82.i, label %.noexc42.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.br = xor i64 %.sroa.12.0.lcssa.i, -1
  %i.bs = and i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = shl i64 %i.bs, 1
  %i.bu = or i64 %i.bt, -6148914691236517206
  %i.bv = sub i64 %i.bu, %i.bs
  %i.bw = xor i64 %i.bv, -6148914691236517206     ; 2 uses
  %i.bx = or i64 %.sroa.12.0.lcssa.i, %i.bq
  %i.by = xor i64 %i.bw, %i.bx
  %i.bz = and i64 %i.bw, %i.bq
  %i.ca = lshr i64 %i.bz, 63
  br label %.noexc42.i

.noexc42.i:                                       ; preds = %bb.d, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.3.i = phi i64 [ %i.ca, %bb.d ], [ 0, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i83.i = phi i64 [ %i.by, %bb.d ], [ %.sroa.12.0.lcssa.i, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.cb = icmp eq <64 x i8> %.0..0..0..0..0.358.i, splat (i8 34)
  %i.cc = bitcast <64 x i1> %i.cb to i64
  %i.cd = xor i64 %.sroa.0.0.i83.i, -1
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.cf, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.ch = extractelement <2 x i64> %i.cg, i64 0
  %i.ci = xor i64 %i.ch, %.sroa.32.0.lcssa.i      ; 2 uses
  %i.cj = ashr i64 %i.ci, 63
  %i.ck = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %.0..0..0..0..0.358.i)
  %i.cl = icmp ne <64 x i8> %.0..0..0..0..0.358.i, %i.ck
  %i.cm = icmp eq <64 x i8> %.64..64..64..64..64.359.i, splat (i8 92)
  %i.cn = bitcast <64 x i1> %i.cm to i64          ; 4 uses
  %.not.i76.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i76.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc42.i
  %i.co = xor i64 %.sroa.12.3.i, -1
  %i.cp = and i64 %i.co, %i.cn
  %i.cq = shl i64 %i.cn, 1
  %i.cr = or i64 %i.cq, -6148914691236517206
  %i.cs = sub i64 %i.cr, %i.cp
  %i.ct = or i64 %.sroa.12.3.i, %i.cn
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, -6148914691236517206
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.e, %.noexc42.i
  %.sroa.0.0.i77.i = phi i64 [ %i.cv, %bb.e ], [ %.sroa.12.3.i, %.noexc42.i ]
  %i.cw = icmp eq <64 x i8> %.64..64..64..64..64.359.i, splat (i8 34)
  %i.cx = bitcast <64 x i1> %i.cw to i64
  %i.cy = xor i64 %.sroa.0.0.i77.i, -1
  %i.cz = and i64 %i.cy, %i.cx
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.da, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.dc = extractelement <2 x i64> %i.db, i64 0
  %i.dd = xor i64 %i.dc, %i.cj                    ; 2 uses
  %i.de = ashr i64 %i.dd, 63
  %i.df = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %.64..64..64..64..64.359.i)
  %i.dg = icmp ne <64 x i8> %.64..64..64..64..64.359.i, %i.df
  %.not376.i = bitcast <64 x i1> %i.cl to i64
  %i.dh = or i64 %i.ci, %.not376.i                ; 2 uses
  %i.di = bitcast i64 %i.dh to <64 x i1>
  %i.dj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %.0..0..0..0..0.358.i, <64 x i8> zeroinitializer, <64 x i1> %i.di)
  store <64 x i8> %i.dj, ptr %i.b, align 16, !tbaa !9
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dh) ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dk
  %.not377.i = bitcast <64 x i1> %i.dg to i64
  %i.dl = or i64 %i.dd, %.not377.i                ; 2 uses
  %i.dm = bitcast i64 %i.dl to <64 x i1>
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %.64..64..64..64..64.359.i, <64 x i8> zeroinitializer, <64 x i1> %i.dm)
  store <64 x i8> %i.dn, ptr %5, align 1, !tbaa !9
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dl)
  %i.dp = add nuw nsw i64 %i.do, %i.dk
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.bo) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.41.0.lcssa.i, ptr nonnull align 16 %i.b, i64 %spec.select.i, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.41.0.lcssa.i, i64 %spec.select.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit

_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit: ; preds = %._crit_edge.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.41.1.i = phi ptr [ %.sroa.41.0.lcssa.i, %._crit_edge.i ], [ %i.dq, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ]
  %.sroa.32.1.i = phi i64 [ %.sroa.32.0.lcssa.i, %._crit_edge.i ], [ %i.de, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ]
  %.not.i111.i = icmp eq i64 %.sroa.32.1.i, 0     ; 2 uses
  %i.dr = ptrtoint ptr %.sroa.41.1.i to i64
  %i.ds = ptrtoint ptr %3 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %storemerge.i.i = select i1 %.not.i111.i, i64 %i.dt, i64 0
  %.0.i15.i = select i1 %.not.i111.i, i32 0, i32 15
  store i64 %storemerge.i.i, ptr %4, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0.i15.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson7icelake25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.c, align 8, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %3, 0                     ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %2, 3
  br i1 %i.h, label %bb.e, label %bb.i, !prof !107

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %2, 2
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = icmp ugt i8 %i.k, -65
  br i1 %i.l, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %1, align 1, !tbaa !9
  %i.n = icmp ugt i8 %i.m, -33
  br i1 %i.n, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.h:                                             ; preds = %bb.e
  %i.o = load i8, ptr %1, align 1, !tbaa !9
  %i.p = icmp ugt i8 %i.o, -65
  br i1 %i.p, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.i:                                             ; preds = %bb.d
  %i.q = add i64 %2, -1                           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = icmp ugt i8 %i.s, -65
  br i1 %i.t, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add i64 %2, -2                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = icmp ugt i8 %i.w, -33
  br i1 %i.x, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %2, -3                           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = icmp ugt i8 %i.aa, -17
  br i1 %i.ab, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i: ; preds = %bb.k
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i: ; preds = %bb.h, %bb.g, %bb.f
  %.013.ph.i = phi i64 [ 1, %bb.f ], [ 1, %bb.h ], [ 2, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  br label %._crit_edge.thread.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i: ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %bb.k, %bb.j, %bb.i, %bb.c
  %.013.i = phi i64 [ %i.y, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ %2, %bb.c ], [ %2, %bb.k ], [ %i.q, %bb.i ], [ %i.u, %bb.j ] ; 5 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.013.i, i64 128)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not921.i = icmp ult i64 %.013.i, 129
  br i1 %.not921.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i
  %.sroa.32.0891.i = phi i64 [ %i.cq, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.41175.0890.i = phi <8 x i64> [ %.sroa.41175.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ zeroinitializer, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.62.0889.i = phi <8 x i64> [ %.sroa.62.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ zeroinitializer, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.sroa.71.0888.i = phi <8 x i64> [ %.sroa.71.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ zeroinitializer, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.sroa.81.0887.i = phi ptr [ %.sroa.81.4.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ %i.ag, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 6 uses
  %.sroa.113.0886.i = phi i64 [ %i.ib, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 3 uses
  %.sroa.123.0885.i = phi i64 [ %i.ie, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.12.0884.i = phi i64 [ %.sroa.12.3.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 3 uses
  %.sroa.0.0883.i = phi i64 [ %i.de, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.11.0882.i = phi i64 [ %i.if, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0882.i ; 2 uses
  %i.ai = load <8 x i64>, ptr %i.ah, align 1, !tbaa !9 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = load <8 x i64>, ptr %i.aj, align 1, !tbaa !9 ; 5 uses
  %i.al = bitcast <8 x i64> %i.ai to <64 x i8>    ; 11 uses
  %i.am = icmp eq <64 x i8> %i.al, splat (i8 92)
  %i.an = bitcast <64 x i1> %i.am to i64          ; 4 uses
  %.not.i29.i18.i = icmp eq i64 %i.an, 0
  br i1 %.not.i29.i18.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = xor i64 %.sroa.12.0884.i, -1
  %i.ap = and i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = shl i64 %i.ap, 1
  %i.ar = or i64 %i.aq, -6148914691236517206
  %i.as = sub i64 %i.ar, %i.ap
  %i.at = xor i64 %i.as, -6148914691236517206     ; 2 uses
  %i.au = or i64 %.sroa.12.0884.i, %i.an
  %i.av = xor i64 %i.at, %i.au
  %i.aw = and i64 %i.at, %i.an
  %i.ax = lshr i64 %i.aw, 63
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i: ; preds = %bb.l, %.lr.ph.i
  %.sroa.12.2.i = phi i64 [ %i.ax, %bb.l ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.i30.i20.i = phi i64 [ %i.av, %bb.l ], [ %.sroa.12.0884.i, %.lr.ph.i ]
  %i.ay = icmp eq <64 x i8> %i.al, splat (i8 34)
  %i.az = bitcast <64 x i1> %i.ay to i64
  %i.ba = xor i64 %.sroa.0.0.i30.i20.i, -1
  %i.bb = and i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %i.bd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bc, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.be = extractelement <2 x i64> %i.bd, i64 0
  %i.bf = xor i64 %i.be, %.sroa.32.0891.i         ; 3 uses
  %i.bg = ashr i64 %i.bf, 63
  %i.bh = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.al)
  %i.bi = icmp eq <64 x i8> %i.bh, %i.al
  %i.bj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <64 x i8> %i.al)
  %i.bk = bitcast <8 x i64> %i.ai to <64 x i8>
  %i.bl = or <64 x i8> %i.bk, splat (i8 32)
  %i.bm = icmp eq <64 x i8> %i.bl, %i.bj          ; 2 uses
  %i.bn = bitcast <64 x i1> %i.bm to i64
  %i.bo = or <64 x i1> %i.bi, %i.bm
  %i.bp = bitcast <64 x i1> %i.bo to i64
  %i.bq = xor i64 %i.bp, -1                       ; 2 uses
  %i.br = xor i64 %i.bb, -1
  %i.bs = and i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = shl i64 %i.bs, 1
  %i.bu = or disjoint i64 %i.bt, %.sroa.0.0883.i
  %i.bv = bitcast <8 x i64> %i.ak to <64 x i8>    ; 11 uses
  %i.bw = icmp eq <64 x i8> %i.bv, splat (i8 92)
  %i.bx = bitcast <64 x i1> %i.bw to i64          ; 5 uses
  %.not.i.i35.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i35.i, label %.noexc67.i, label %bb.m

bb.m:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i
  %i.by = xor i64 %.sroa.12.2.i, -1
  %i.bz = and i64 %i.by, %i.bx
  %i.ca = shl i64 %i.bx, 1
  %i.cb = or i64 %i.ca, -6148914691236517206
  %i.cc = sub i64 %i.cb, %i.bz
  %i.cd = xor i64 %i.cc, -6148914691236517206     ; 2 uses
  %i.ce = or i64 %.sroa.12.2.i, %i.bx
  %i.cf = xor i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cd, %i.bx
  %i.ch = lshr i64 %i.cg, 63
  br label %.noexc67.i

.noexc67.i:                                       ; preds = %bb.m, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i
  %.sroa.12.3.i = phi i64 [ %i.ch, %bb.m ], [ 0, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i ] ; 2 uses
  %.sroa.0.0.i.i37.i = phi i64 [ %i.cf, %bb.m ], [ %.sroa.12.2.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i19.i ]
  %i.ci = icmp eq <64 x i8> %i.bv, splat (i8 34)
  %i.cj = bitcast <64 x i1> %i.ci to i64
  %i.ck = xor i64 %.sroa.0.0.i.i37.i, -1
  %i.cl = and i64 %i.ck, %i.cj                    ; 3 uses
  %i.cm = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %i.cn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.cm, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.co = extractelement <2 x i64> %i.cn, i64 0
  %i.cp = xor i64 %i.co, %i.bg                    ; 3 uses
  %i.cq = ashr i64 %i.cp, 63                      ; 2 uses
  %i.cr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.bv)
  %i.cs = icmp eq <64 x i8> %i.cr, %i.bv
  %i.ct = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <64 x i8> %i.bv)
  %i.cu = bitcast <8 x i64> %i.ak to <64 x i8>
  %i.cv = or <64 x i8> %i.cu, splat (i8 32)
  %i.cw = icmp eq <64 x i8> %i.cv, %i.ct          ; 2 uses
  %i.cx = bitcast <64 x i1> %i.cw to i64
  %i.cy = or <64 x i1> %i.cs, %i.cw
  %i.cz = bitcast <64 x i1> %i.cy to i64
end_hunk_0
