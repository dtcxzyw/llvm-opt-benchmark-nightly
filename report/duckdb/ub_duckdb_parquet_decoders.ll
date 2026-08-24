Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parquet_decoders?download=true
inline.NumInlined: 1554
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6duckdb24DeltaBinaryPackedDecoder4SkipEPhm:bb.a
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.28)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.k, %bb.g
  %.sink = phi ptr [ %i.bn, %bb.n ], [ %i.bl, %bb.k ], [ %i.bb, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bm, %bb.k ], [ %i.bc, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb10DbpDecoder4SkipIiEEvm.exit:           ; preds = %bb.d
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !273
  tail call void @_ZN6duckdb10DbpDecoder16GetBatchInternalIiLb1EEEvPhm(ptr noundef nonnull align 8 dereferenceable(368) %i.au, ptr noundef null, i64 noundef %.013.i)
  br label %bb.o

bb.h:                                             ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !273
  %i.bh = add i64 %i.bg, %.013.i                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !275
  %i.bk = icmp ugt i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN6duckdb10DbpDecoder4SkipIlEEvm.exit

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.28)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb10DbpDecoder4SkipIlEEvm.exit:           ; preds = %bb.h
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !273
  tail call void @_ZN6duckdb10DbpDecoder16GetBatchInternalIlLb1EEEvPhm(ptr noundef nonnull align 8 dereferenceable(368) %i.be, ptr noundef null, i64 noundef %.013.i)
  br label %bb.o

bb.l:                                             ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull @.str.1)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %_ZN6duckdb10DbpDecoder4SkipIlEEvm.exit, %_ZN6duckdb10DbpDecoder4SkipIiEEvm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb21DeltaByteArrayDecoderC2ERNS_12ColumnReaderE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.b = tail call noalias noundef nonnull dereferenceable(368) ptr @_Znwm(i64 noundef 368) #21, !noalias !280 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !32, !noalias !280
  %i.d = load i64, ptr %i.a, align 8, !tbaa !266, !noalias !280
  %i.e = trunc i64 %i.d to i32
  invoke void @_ZN6duckdb10DbpDecoderC2EPhj(ptr noundef nonnull align 8 dereferenceable(368) %i.b, ptr noundef %i.c, i32 noundef %i.e)
          to label %_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !280

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit27, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit27 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22, !noalias !280
  br label %common.resume

_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %5, align 8, !tbaa !267, !alias.scope !280
  %i.g = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !275
  store i64 %i.i, ptr %3, align 8, !tbaa !266
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !230
  store ptr %i.k, ptr %2, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !233  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !25
  %i.o = load i64, ptr %3, align 8, !tbaa !266
  %i.p = shl i64 %i.o, 2                          ; 4 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !25
  %i.q = icmp ne i64 %i.p, 0
  %i.r = icmp ugt i64 %i.p, %i.m
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.p)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.d
  store i64 %i.s, ptr %i.l, align 8, !tbaa !233
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.u = load i64, ptr %i.l, align 8, !tbaa !233  ; 2 uses
  %i.v = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u)
          to label %.noexc15 unwind label %bb.q

.noexc15:                                         ; preds = %.noexc14
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.v, i64 noundef %i.u)
          to label %.noexc16 unwind label %bb.q

.noexc16:                                         ; preds = %.noexc15
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %4) #23 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !230
  store ptr %i.x, ptr %2, align 8, !tbaa !33
  br label %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit

_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit: ; preds = %.noexc16, %bb.c
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.q       ; 3 uses

bb.e:                                             ; preds = %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit
  %i.z = load i64, ptr %3, align 8, !tbaa !266    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !273
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !275
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.28)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %.noexc17 unwind label %bb.q

.noexc17:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #23
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %2, align 8, !tbaa !33
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !273
  invoke void @_ZN6duckdb10DbpDecoder16GetBatchInternalIjLb0EEEvPhm(ptr noundef nonnull align 8 dereferenceable(368) %i.y, ptr noundef %i.ai, i64 noundef %i.z)
          to label %_ZN6duckdb10DbpDecoder8GetBatchIjEEvPhm.exit unwind label %bb.q

_ZN6duckdb10DbpDecoder8GetBatchIjEEvPhm.exit:     ; preds = %bb.i
  %i.aj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.q       ; 3 uses

bb.j:                                             ; preds = %_ZN6duckdb10DbpDecoder8GetBatchIjEEvPhm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !283
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !284 ; 3 uses
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %_ZN6duckdb10DbpDecoder8FinalizeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %i.an, 2305843009213693951
  %i.aq = shl nuw i64 %i.an, 3
  %i.ar = select i1 %i.ap, i64 -1, i64 %i.aq      ; 2 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #21
          to label %.noexc19 unwind label %bb.q   ; 4 uses

.noexc19:                                         ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false), !noalias !285
  %6 = load i64, ptr %i.am, align 8, !tbaa !284
  %7 = load i64, ptr %i.ak, align 8, !tbaa !283
  %i.at = sub i64 %6, %7
  invoke void @_ZN6duckdb10DbpDecoder16GetBatchInternalIlLb0EEEvPhm(ptr noundef nonnull align 8 dereferenceable(368) %i.aj, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit4.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %.noexc19
  call void @_ZdaPv(ptr noundef nonnull %i.as) #22
  br label %_ZN6duckdb10DbpDecoder8FinalizeEv.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit4.i: ; preds = %.noexc19
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.as) #22
  br label %.body

_ZN6duckdb10DbpDecoder8FinalizeEv.exit:           ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i, %bb.j
  %i.av = load i64, ptr %i.a, align 8, !tbaa !25
  %i.aw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN6duckdb10DbpDecoder8FinalizeEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !266
  %i.ax = sub i64 %i.av, %.sroa.2.0.copyload.i    ; 3 uses
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ax, %i.ay
  br i1 %.not.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull @.str.16)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %.noexc22 unwind label %bb.r

.noexc22:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.az) #23
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.bb = sub nuw i64 %i.ay, %i.ax
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !25
  %i.bc = load ptr, ptr %1, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ax
  store ptr %i.bd, ptr %1, align 8, !tbaa !33
  %i.be = load ptr, ptr %5, align 8, !tbaa !267   ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10DbpDecoderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10DbpDecoderEEclEPS1_.exit.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef nonnull %i.be) #22
  br label %_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p, %_ZNKSt14default_deleteIN6duckdb10DbpDecoderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.q:                                             ; preds = %bb.k, %bb.i, %bb.g, %.noexc15, %.noexc14, %.noexc, %bb.d, %_ZN6duckdb10DbpDecoder8GetBatchIjEEvPhm.exit, %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit, %_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.n, %_ZN6duckdb10DbpDecoder8FinalizeEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.o, %bb.h, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit4.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.au, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit4.i ], [ %i.ah, %bb.h ], [ %i.bf, %bb.q ], [ %i.bg, %bb.r ], [ %i.ba, %bb.o ]
  %i.bh = load ptr, ptr %5, align 8, !tbaa !267   ; 2 uses
  %.not.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit27, label %_ZNKSt14default_deleteIN6duckdb10DbpDecoderEEclEPS1_.exit.i26

_ZNKSt14default_deleteIN6duckdb10DbpDecoderEEclEPS1_.exit.i26: ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #22
  br label %_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EED2Ev.exit27: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10DbpDecoderEEclEPS1_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21DeltaByteArrayDecoder14InitializePageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !288, !nonnull !23, !align !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !288, !nonnull !23, !align !24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128, !nonnull !23, !align !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129, !nonnull !23, !align !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 464 ; 2 uses
  call void @_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.m = load i64, ptr %i.a, align 8, !tbaa !266
  %i.n = load i64, ptr %i.b, align 8, !tbaa !266
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit98

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !33   ; 5 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !33   ; 5 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !289 ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  store i32 1, ptr %i.t, align 8, !tbaa !294, !noalias !289
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  store i32 1, ptr %i.u, align 4, !tbaa !296, !noalias !289
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !242, !noalias !289
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 16, i1 false), !noalias !289
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.f unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !289

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit98, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ], [ %.pn82, %_ZNSt6vectorIhSaIhEED2Ev.exit98 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22, !noalias !289
  br label %common.resume

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.y, align 8, !tbaa !233, !noalias !289
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123, !noalias !297
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !3, !noalias !297
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !3, !noalias !297
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !297 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.h, %bb.g
  %i.ad = load atomic i64, ptr %i.t acquire, align 8, !noalias !297 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.t, align 8, !tbaa !294, !noalias !297
  store i32 0, ptr %i.u, align 4, !tbaa !296, !noalias !297
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !242, !noalias !297
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !297
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !noalias !297, !inline_history !298
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !242, !noalias !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !297
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !noalias !297, !inline_history !298
  br label %_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123, !noalias !297
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.af, -1
  store i32 %i.an, ptr %i.t, align 8, !tbaa !3, !noalias !297
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4, !noalias !297
end_hunk_0
