Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/chunk_encode?download=true
inline.NumInlined: 3534
inline.NumDeleted: 1349
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZZN5boost5beast4http17chunk_encode_test24testParseChunkExtensionsEvENKUlNS_4core17basic_string_viewIcEEE1_clES5_:bb.a
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !46
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #35
  br label %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEED2Ev.exit

_ZN5boost5beast4http22basic_chunk_extensionsISaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

bb.i:                                             ; preds = %_ZN5boost5beast4test9fuzz_randC2Ev.exit.i, %.noexc6, %.noexc7, %bb.c, %bb.b, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost5beast4http22basic_chunk_extensionsISaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE5parseENS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = tail call noundef ptr @_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !174  ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !206
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread15, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread15: ; preds = %bb.a, %_ZNK5boost6system10error_codecvbEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !47
  %i.i = load ptr, ptr %0, align 8, !tbaa !45
  store i8 0, ptr %i.i, align 1, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45, !noalias !745 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47, !noalias !746 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %.not1731 = icmp samesign eq i64 %i.m, 0
  br i1 %.not1731, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread15, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratorppEv.exit
  %.sroa.010.032 = phi ptr [ %i.by, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratorppEv.exit ], [ %i.k, %_ZNK5boost6system10error_codecvbEv.exit.thread15 ] ; 6 uses
  %i.o = load i8, ptr %.sroa.010.032, align 1, !tbaa !46 ; 3 uses
  %.not9.i.i = icmp sgt i8 %i.o, -1
  br i1 %.not9.i.i, label %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.p = phi i8 [ %i.x, %.lr.ph.i.i ], [ %i.o, %.lr.ph ]
  %.011.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ 1, %.lr.ph ] ; 2 uses
  %.0810.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ 0, %.lr.ph ]
  %i.q = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.sroa.010.032, %.lr.ph ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %i.s = and i8 %i.p, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = mul i64 %.011.i.i, %i.t
  %i.v = add i64 %i.u, %.0810.i.i                 ; 2 uses
  %i.w = shl i64 %.011.i.i, 7                     ; 2 uses
  %i.x = load i8, ptr %i.r, align 1, !tbaa !46    ; 3 uses
  %.not.i.i9 = icmp sgt i8 %i.x, -1
  br i1 %.not.i.i9, label %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i, label %.lr.ph.i.i, !llvm.loop !28

_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph
  %i.y = phi i8 [ %i.o, %.lr.ph ], [ %i.x, %.lr.ph.i.i ]
  %.08.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.v, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %.lr.ph ], [ %i.w, %.lr.ph.i.i ]
  %.lcssa.i.i = phi ptr [ %.sroa.010.032, %.lr.ph ], [ %i.r, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1 ; 2 uses
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = mul i64 %.0.lcssa.i.i, %i.aa
  %i.ac = add i64 %i.ab, %.08.lcssa.i.i           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !46  ; 3 uses
  %.not9.i4.i = icmp sgt i8 %i.ae, -1
  br i1 %.not9.i4.i, label %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i, %.lr.ph.i5.i
  %i.af = phi i8 [ %i.an, %.lr.ph.i5.i ], [ %i.ae, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ]
  %.011.i6.i = phi i64 [ %i.am, %.lr.ph.i5.i ], [ 1, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ] ; 2 uses
  %.0810.i7.i = phi i64 [ %i.al, %.lr.ph.i5.i ], [ 0, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ]
  %i.ag = phi ptr [ %i.ah, %.lr.ph.i5.i ], [ %i.ad, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 3 uses
  %i.ai = and i8 %i.af, 127
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = mul i64 %.011.i6.i, %i.aj
  %i.al = add i64 %i.ak, %.0810.i7.i              ; 2 uses
  %i.am = shl i64 %.011.i6.i, 7                   ; 2 uses
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !46  ; 3 uses
  %.not.i8.i = icmp sgt i8 %i.an, -1
  br i1 %.not.i8.i, label %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit, label %.lr.ph.i5.i, !llvm.loop !28

_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit: ; preds = %.lr.ph.i5.i, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i
  %i.ao = phi i8 [ %i.ae, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ], [ %i.an, %.lr.ph.i5.i ]
  %.08.lcssa.i9.i = phi i64 [ 0, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ], [ %i.al, %.lr.ph.i5.i ]
  %.0.lcssa.i10.i = phi i64 [ 1, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ], [ %i.am, %.lr.ph.i5.i ]
  %.lcssa.i11.i = phi ptr [ %i.ad, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i ], [ %i.ah, %.lr.ph.i5.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i11.i, i64 1
  %i.aq = zext nneg i8 %i.ao to i64
  %i.ar = mul i64 %.0.lcssa.i10.i, %i.aq
  %i.as = add i64 %i.ar, %.08.lcssa.i9.i
  tail call void @_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE9do_insertENS_4core17basic_string_viewIcEES7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull %i.z, i64 %i.ac, ptr nonnull %i.ap, i64 %i.as)
  %i.at = load i8, ptr %.sroa.010.032, align 1, !tbaa !46 ; 3 uses
  %.not9.i.i.i = icmp sgt i8 %i.at, -1
  br i1 %.not9.i.i.i, label %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit, %.lr.ph.i.i.i
  %i.au = phi i8 [ %i.bc, %.lr.ph.i.i.i ], [ %i.at, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ]
  %.011.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i ], [ 1, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ] ; 2 uses
  %.0810.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ 0, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ]
  %i.av = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.sroa.010.032, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  %i.ax = and i8 %i.au, 127
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = mul i64 %.011.i.i.i, %i.ay
  %i.ba = add i64 %i.az, %.0810.i.i.i             ; 2 uses
  %i.bb = shl i64 %.011.i.i.i, 7                  ; 2 uses
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !46  ; 3 uses
  %.not.i.i.i = icmp sgt i8 %i.bc, -1
  br i1 %.not.i.i.i, label %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit
  %i.bd = phi i8 [ %i.at, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ], [ %i.bc, %.lr.ph.i.i.i ]
  %.08.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ], [ %i.ba, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ 1, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ], [ %i.bb, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %.sroa.010.032, %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratordeEv.exit ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 1
  %i.bf = zext nneg i8 %i.bd to i64
  %i.bg = mul i64 %.0.lcssa.i.i.i, %i.bf
  %i.bh = getelementptr i8, ptr %i.be, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.08.lcssa.i.i.i ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46  ; 3 uses
  %.not9.i3.i.i = icmp sgt i8 %i.bj, -1
  br i1 %.not9.i3.i.i, label %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratorppEv.exit, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i, %.lr.ph.i4.i.i
  %i.bk = phi i8 [ %i.bs, %.lr.ph.i4.i.i ], [ %i.bj, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ]
  %.011.i5.i.i = phi i64 [ %i.br, %.lr.ph.i4.i.i ], [ 1, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ] ; 2 uses
  %.0810.i6.i.i = phi i64 [ %i.bq, %.lr.ph.i4.i.i ], [ 0, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ]
  %i.bl = phi ptr [ %i.bm, %.lr.ph.i4.i.i ], [ %i.bi, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  %i.bn = and i8 %i.bk, 127
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = mul i64 %.011.i5.i.i, %i.bo
  %i.bq = add i64 %i.bp, %.0810.i6.i.i            ; 2 uses
  %i.br = shl i64 %.011.i5.i.i, 7                 ; 2 uses
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !46  ; 3 uses
  %.not.i7.i.i = icmp sgt i8 %i.bs, -1
  br i1 %.not.i7.i.i, label %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratorppEv.exit, label %.lr.ph.i4.i.i, !llvm.loop !28

_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratorppEv.exit: ; preds = %.lr.ph.i4.i.i, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i
  %i.bt = phi i8 [ %i.bj, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ], [ %i.bs, %.lr.ph.i4.i.i ]
  %.08.lcssa.i8.i.i = phi i64 [ 0, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ], [ %i.bq, %.lr.ph.i4.i.i ]
  %.0.lcssa.i9.i.i = phi i64 [ 1, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ], [ %i.br, %.lr.ph.i4.i.i ]
  %.lcssa.i10.i.i = phi ptr [ %i.bi, %_ZN5boost5beast6detail11varint_readIPKcEEmRT_.exit.i.i ], [ %i.bm, %.lr.ph.i4.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.lcssa.i10.i.i, i64 1
  %i.bv = zext nneg i8 %i.bt to i64
  %i.bw = mul i64 %.0.lcssa.i9.i.i, %i.bv
  %i.bx = getelementptr i8, ptr %i.bu, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 %.08.lcssa.i8.i.i ; 2 uses
  %.not17 = icmp eq ptr %i.by, %i.n
  br i1 %.not17, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %.lr.ph

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE14const_iteratorppEv.exit, %_ZNK5boost6system10error_codecvbEv.exit.thread15, %bb.b, %_ZNK5boost6system10error_codecvbEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %6 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %8 = alloca %class.anon.149, align 8            ; 6 uses
  %.sroa.0213 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.0211 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %10 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.0209 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %.sroa.0 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %11 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %12 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %13 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %14 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sitofp i64 %i.d to double
  %i.f = fmul nnan double %i.e, 1.200000e+00
  %i.g = fptoui double %i.f to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.g)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %0, ptr %8, align 8, !tbaa !252
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %._crit_edge319, label %.lr.ph318

.lr.ph318:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.b

._crit_edge319:                                   ; preds = %bb.ah, %bb.a
  %.0107.lcssa = phi ptr [ %1, %bb.a ], [ %.14, %bb.ah ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.thread221

bb.b:                                             ; preds = %.lr.ph318, %bb.ah
  %.0107316 = phi ptr [ %1, %.lr.ph318 ], [ %.14, %bb.ah ] ; 5 uses
  %i.j = load i8, ptr %.0107316, align 1, !tbaa !46 ; 2 uses
  switch i8 %i.j, label %.loopexit227 [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0107316, i64 1 ; 3 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.0107316410.le = ptrtoaddr ptr %.0107316 to i64
  %scevgep.le = getelementptr i8, ptr %.0107316, i64 %i.b
  %i.m = sub i64 0, %.0107316410.le
  %scevgep411.le = getelementptr i8, ptr %scevgep.le, i64 %i.m
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %.lcssa230 = phi ptr [ %scevgep411.le, %._crit_edge.loopexit ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0213)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 22)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #33
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0213, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !201
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5214.0.copyload = load i64, ptr %.sroa.5214.0..sroa_idx, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %switch.i.i = icmp ult i64 %.sroa.5214.0.copyload, 2
  %i.p = and i64 %.sroa.5214.0.copyload, 1
  %i.q = or disjoint i64 %i.p, ptrtoint (ptr @_ZZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5214.0.copyload, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0213, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0213)
  br label %.thread221

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.r = phi ptr [ %i.t, %bb.e ], [ %i.k, %bb.c ] ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !46    ; 2 uses
  switch i8 %i.s, label %.loopexit227 [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !747

.loopexit227:                                     ; preds = %.lr.ph, %bb.b
  %i.v = phi i8 [ %i.j, %bb.b ], [ %i.s, %.lr.ph ]
  %.2109 = phi ptr [ %.0107316, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %.not133 = icmp eq i8 %i.v, 59
  br i1 %.not133, label %.preheader226, label %bb.f

.preheader226:                                    ; preds = %.loopexit227
  %.4111289297 = getelementptr inbounds nuw i8, ptr %.2109, i64 1 ; 3 uses
  %i.w = icmp eq ptr %.4111289297, %2
  br i1 %i.w, label %._crit_edge293, label %.lr.ph292

bb.f:                                             ; preds = %.loopexit227
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 22, ptr noundef null) #32
  %.sroa.5.0..sroa_idx3.i148 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.5.0.copyload4.i149 = load i64, ptr %.sroa.5.0..sroa_idx3.i148, align 8, !tbaa !43 ; 3 uses
  %switch.i.i150 = icmp ult i64 %.sroa.5.0.copyload4.i149, 2
  %i.x = and i64 %.sroa.5.0.copyload4.i149, 1
  %i.y = or disjoint i64 %i.x, ptrtoint (ptr @_ZZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i151 = select i1 %switch.i.i150, i64 %.sroa.5.0.copyload4.i149, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i151, ptr %.sroa.5.0..sroa_idx.i152, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.thread221

.lr.ph292:                                        ; preds = %.preheader226, %bb.r
  %.4111289298 = phi ptr [ %.4111289, %bb.r ], [ %.4111289297, %.preheader226 ] ; 7 uses
  br label %bb.h

._crit_edge293.loopexit:                          ; preds = %bb.i
  %scevgep412.le = getelementptr i8, ptr %.4111289298, i64 %i.b
  %.4111289298413.le557 = ptrtoaddr ptr %.4111289298 to i64
  %i.z = sub i64 0, %.4111289298413.le557
  %scevgep414.le550 = getelementptr i8, ptr %scevgep412.le, i64 %i.z
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %.preheader226, %bb.r, %._crit_edge293.loopexit
  %.4111.lcssa = phi ptr [ %scevgep414.le550, %._crit_edge293.loopexit ], [ %.4111289, %bb.r ], [ %.4111289297, %.preheader226 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0211)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %6, i32 noundef 22)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit153 unwind label %bb.g

bb.g:                                             ; preds = %._crit_edge293
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit153: ; preds = %._crit_edge293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0211, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !201
  %.sroa.5212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5212.0.copyload = load i64, ptr %.sroa.5212.0..sroa_idx, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %switch.i.i156 = icmp ult i64 %.sroa.5212.0.copyload, 2
  %i.ac = and i64 %.sroa.5212.0.copyload, 1
  %i.ad = or disjoint i64 %i.ac, ptrtoint (ptr @_ZZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeEE7loc_bb__1 to i64)
  %.sroa.5.0.i157 = select i1 %switch.i.i156, i64 %.sroa.5212.0.copyload, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0211, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i157, ptr %.sroa.5.0..sroa_idx.i158, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0211)
  br label %.thread221

bb.h:                                             ; preds = %.lr.ph292, %bb.i
  %.4111290 = phi ptr [ %.4111289298, %.lr.ph292 ], [ %.4111, %bb.i ] ; 8 uses
  %i.ae = load i8, ptr %.4111290, align 1, !tbaa !46 ; 2 uses
  switch i8 %i.ae, label %bb.j [
    i8 32, label %bb.i
    i8 9, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %.4111 = getelementptr inbounds nuw i8, ptr %.4111290, i64 1 ; 2 uses
  %i.af = icmp eq ptr %.4111, %2
  br i1 %i.af, label %._crit_edge293.loopexit, label %bb.h, !llvm.loop !748

bb.j:                                             ; preds = %bb.h
  %i.ag = call noundef signext i8 @_ZN5boost5beast4http6detail13is_token_charEc(i8 noundef signext %i.ae)
  %.not136 = icmp eq i8 %i.ag, 0
  br i1 %.not136, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.4111290, i64 1 ; 3 uses
  %.not138682 = icmp eq ptr %i.ah, %2
  br i1 %.not138682, label %.preheader.preheader._crit_edge, label %.lr.ph683

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 22, ptr noundef null) #32
  %.sroa.5.0..sroa_idx3.i159 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.5.0.copyload4.i160 = load i64, ptr %.sroa.5.0..sroa_idx3.i159, align 8, !tbaa !43 ; 3 uses
  %switch.i.i161 = icmp ult i64 %.sroa.5.0.copyload4.i160, 2
  %i.ai = and i64 %.sroa.5.0.copyload4.i160, 1
  %i.aj = or disjoint i64 %i.ai, ptrtoint (ptr @_ZZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeEE7loc_bb__2 to i64)
  %.sroa.5.0.i162 = select i1 %switch.i.i161, i64 %.sroa.5.0.copyload4.i160, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i162, ptr %.sroa.5.0..sroa_idx.i163, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.thread221

.preheader:                                       ; preds = %.lr.ph683
  %i.ak = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 3 uses
  %.not138 = icmp eq ptr %i.ak, %2
  br i1 %.not138, label %.preheader.preheader._crit_edge, label %.lr.ph683, !llvm.loop !749

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader, %.preheader
  %.lcssa586 = phi ptr [ %i.ak, %.preheader ], [ %i.ah, %.preheader.preheader ]
  %i.al = ptrtoint ptr %.4111290 to i64
  %i.am = sub i64 %i.b, %i.al                     ; 7 uses
  %i.an = load i64, ptr %i.i, align 8, !tbaa !47  ; 2 uses
  %i.ao = icmp ugt i64 %i.am, 127                 ; 2 uses
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZN5boost5beast6detail11varint_sizeEm.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.preheader._crit_edge, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 1, %.preheader.preheader._crit_edge ]
  %.045.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %i.am, %.preheader.preheader._crit_edge ] ; 2 uses
  %i.ap = add nuw nsw i64 %.06.i.i, 1             ; 2 uses
  %i.aq = lshr i64 %.045.i.i, 7
  %i.ar = icmp ugt i64 %.045.i.i, 16383
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN5boost5beast6detail11varint_sizeEm.exit.i, !llvm.loop !8

_ZN5boost5beast6detail11varint_sizeEm.exit.i:     ; preds = %.lr.ph.i.i, %.preheader.preheader._crit_edge
  %.0.lcssa.i.i = phi i64 [ 1, %.preheader.preheader._crit_edge ], [ %i.ap, %.lr.ph.i.i ]
  %i.as = add i64 %i.am, 1
  %i.at = add i64 %i.as, %i.an
  %i.au = add i64 %i.at, %.0.lcssa.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.au, i8 noundef signext 0)
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an ; 3 uses
  br i1 %i.ao, label %.lr.ph.i12.i, label %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i

.lr.ph.i12.i:                                     ; preds = %_ZN5boost5beast6detail11varint_sizeEm.exit.i, %.lr.ph.i12.i
  %.0.i = phi ptr [ %i.az, %.lr.ph.i12.i ], [ %i.aw, %_ZN5boost5beast6detail11varint_sizeEm.exit.i ] ; 3 uses
  %.05.i.i = phi i64 [ %i.ba, %.lr.ph.i12.i ], [ %i.am, %_ZN5boost5beast6detail11varint_sizeEm.exit.i ] ; 3 uses
  %i.ax = trunc i64 %.05.i.i to i8
  %i.ay = or i8 %i.ax, -128
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.0.i, align 1, !tbaa !46
  %i.ba = lshr i64 %.05.i.i, 7                    ; 2 uses
  %i.bb = icmp ugt i64 %.05.i.i, 16383
  br i1 %i.bb, label %.lr.ph.i12.i, label %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i, !llvm.loop !9

_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i: ; preds = %.lr.ph.i12.i
  %i.bc = trunc nuw nsw i64 %i.ba to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !46
  br label %.thread

_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i: ; preds = %_ZN5boost5beast6detail11varint_sizeEm.exit.i
  %i.be = trunc nuw nsw i64 %i.am to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.be, ptr %i.aw, align 1, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i, %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i
  %i.bg = phi ptr [ %i.bd, %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i ], [ %i.bf, %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %.4111290, i64 %i.am, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.am
  store i8 0, ptr %i.bh, align 1, !tbaa !46
  br label %.thread221

.lr.ph683:                                        ; preds = %.preheader.preheader, %.preheader
  %i.bi = phi ptr [ %i.ak, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = call noundef signext i8 @_ZN5boost5beast4http6detail13is_token_charEc(i8 noundef signext %i.bj)
  %.not137 = icmp eq i8 %i.bk, 0
  br i1 %.not137, label %bb.l, label %.preheader, !llvm.loop !749

bb.l:                                             ; preds = %.lr.ph683
  %i.bl = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = ptrtoint ptr %.4111290 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !47 ; 2 uses
  %i.bs = icmp ugt i64 %i.bo, 127                 ; 2 uses
  br i1 %i.bs, label %.lr.ph.i.i170, label %_ZN5boost5beast6detail11varint_sizeEm.exit.i164

.lr.ph.i.i170:                                    ; preds = %bb.l, %.lr.ph.i.i170
  %.06.i.i171 = phi i64 [ %i.bt, %.lr.ph.i.i170 ], [ 1, %bb.l ]
  %.045.i.i172 = phi i64 [ %i.bu, %.lr.ph.i.i170 ], [ %i.bo, %bb.l ] ; 2 uses
  %i.bt = add nuw nsw i64 %.06.i.i171, 1          ; 2 uses
  %i.bu = lshr i64 %.045.i.i172, 7
  %i.bv = icmp ugt i64 %.045.i.i172, 16383
  br i1 %i.bv, label %.lr.ph.i.i170, label %_ZN5boost5beast6detail11varint_sizeEm.exit.i164, !llvm.loop !8

_ZN5boost5beast6detail11varint_sizeEm.exit.i164:  ; preds = %.lr.ph.i.i170, %bb.l
  %.0.lcssa.i.i165 = phi i64 [ 1, %bb.l ], [ %i.bt, %.lr.ph.i.i170 ]
  %i.bw = add i64 %i.br, %i.bo
  %i.bx = add i64 %i.bw, %.0.lcssa.i.i165
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 noundef %i.bx, i8 noundef signext 0)
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.br ; 3 uses
  br i1 %i.bs, label %.lr.ph.i10.i, label %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i166

.lr.ph.i10.i:                                     ; preds = %_ZN5boost5beast6detail11varint_sizeEm.exit.i164, %.lr.ph.i10.i
  %.0.i167 = phi ptr [ %i.cc, %.lr.ph.i10.i ], [ %i.bz, %_ZN5boost5beast6detail11varint_sizeEm.exit.i164 ] ; 3 uses
  %.05.i.i168 = phi i64 [ %i.cd, %.lr.ph.i10.i ], [ %i.bo, %_ZN5boost5beast6detail11varint_sizeEm.exit.i164 ] ; 3 uses
  %i.ca = trunc i64 %.05.i.i168 to i8
  %i.cb = or i8 %i.ca, -128
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i167, i64 1 ; 2 uses
  store i8 %i.cb, ptr %.0.i167, align 1, !tbaa !46
  %i.cd = lshr i64 %.05.i.i168, 7                 ; 2 uses
  %i.ce = icmp ugt i64 %.05.i.i168, 16383
  br i1 %i.ce, label %.lr.ph.i10.i, label %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i169, !llvm.loop !9

_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i169: ; preds = %.lr.ph.i10.i
  %i.cf = trunc nuw nsw i64 %i.cd to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i167, i64 2
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !46
  br label %bb.m

_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i166: ; preds = %_ZN5boost5beast6detail11varint_sizeEm.exit.i164
  %i.ch = trunc nuw nsw i64 %i.bo to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.ch, ptr %i.bz, align 1, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i166, %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i169
  %i.cj = phi ptr [ %i.cg, %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.thread.i169 ], [ %i.ci, %_ZN5boost5beast6detail12varint_writeIPcEEvRT_m.exit.i166 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, ptr noundef nonnull align 1 dereferenceable(1) %.4111290, i64 %i.bo, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  %.6113 = phi ptr [ %i.bi, %bb.m ], [ %i.cl, %bb.o ] ; 6 uses
  %i.ck = load i8, ptr %.6113, align 1, !tbaa !46
  switch i8 %i.ck, label %bb.s [
    i8 32, label %bb.o
    i8 9, label %bb.o
    i8 59, label %bb.r
    i8 61, label %.loopexit
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %.6113, i64 1 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %2
  br i1 %i.cm, label %bb.p, label %bb.n, !llvm.loop !750

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0209)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %5, i32 noundef 22)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit173 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #33
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit173: ; preds = %bb.p
  %scevgep412.le562 = getelementptr i8, ptr %.4111289298, i64 %i.b
  %.4111289298413.le = ptrtoaddr ptr %.4111289298 to i64
  %i.cp = sub i64 0, %.4111289298413.le
  %scevgep414.le = getelementptr i8, ptr %scevgep412.le562, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0209, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !201
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5210.0.copyload = load i64, ptr %.sroa.5210.0..sroa_idx, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %switch.i.i176 = icmp ult i64 %.sroa.5210.0.copyload, 2
  %i.cq = and i64 %.sroa.5210.0.copyload, 1
  %i.cr = or disjoint i64 %i.cq, ptrtoint (ptr @_ZZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeEE7loc_bb__3 to i64)
  %.sroa.5.0.i177 = select i1 %switch.i.i176, i64 %.sroa.5210.0.copyload, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0209, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i177, ptr %.sroa.5.0..sroa_idx.i178, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0209)
  br label %.thread221

bb.r:                                             ; preds = %bb.n
  %i.cs = load i64, ptr %i.i, align 8, !tbaa !47  ; 2 uses
  %i.ct = add i64 %i.cs, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ct, i8 noundef signext 0)
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !46
  %.4111289 = getelementptr inbounds nuw i8, ptr %.6113, i64 1 ; 3 uses
  %i.cw = icmp eq ptr %.4111289, %2
  br i1 %i.cw, label %._crit_edge293, label %.lr.ph292

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 22)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit179 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #33
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit179: ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !201
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %switch.i.i182 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.cz = and i64 %.sroa.5.0.copyload, 1
  %i.da = or disjoint i64 %i.cz, ptrtoint (ptr @_ZZN5boost5beast4http22basic_chunk_extensionsISaIcEE8do_parseIPKcEET_S8_S8_RNS_6system10error_codeEE7loc_bb__4 to i64)
  %.sroa.5.0.i183 = select i1 %switch.i.i182, i64 %.sroa.5.0.copyload, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i183, ptr %.sroa.5.0..sroa_idx.i184, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.thread221
end_hunk_0
