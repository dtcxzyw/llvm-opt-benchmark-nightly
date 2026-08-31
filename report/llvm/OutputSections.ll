Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OutputSections?download=true
inline.NumInlined: 710
inline.NumDeleted: 307
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3lld4wasm11CodeSection7writeToEPh:bb.a
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
  %.not83 = icmp eq i64 %i.cc, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvmplERKNS_5TwineES2_.exit82
  ret void

.lr.ph:                                           ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit82, %.lr.ph
  %.084 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ca, %_ZN4llvmplERKNS_5TwineES2_.exit82 ] ; 2 uses
  %i.ce = load ptr, ptr %.084, align 8, !tbaa !91
  call void @_ZNK3lld4wasm10InputChunk7writeToEPh(ptr noundef nonnull align 8 dereferenceable(128) %i.ce, ptr noundef %i.bw) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %.084, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.cd
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK3lld4wasm10InputChunk7writeToEPh(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK3lld4wasm11CodeSection17getNumRelocationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.d, 2305843009213693951
  %i.f = and i64 %i.e, 2305843009213693951        ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 7
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 4611686018427387896
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ]
  %.0911.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.012.epil = phi i32 [ %i.m, %.lr.ph.epil ], [ %.012.epil.init, %.lr.ph.epil.preheader ]
  %.0911.epil = phi ptr [ %i.n, %.lr.ph.epil ], [ %.0911.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.i = load ptr, ptr %.0911.epil, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !145
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %.012.epil, %i.l                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !146

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.012 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bi, %.lr.ph ]
  %.0911 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.o = load ptr, ptr %.0911, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !145
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %.012, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.0911, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load i64, ptr %i.v, align 8, !tbaa !145
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.0911, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !145
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add i32 %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0911, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !145
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.0911, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !145
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.ak, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = load i64, ptr %i.at, align 8, !tbaa !145
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !145
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add i32 %i.aw, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !145
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = add i32 %i.bc, %i.bh                    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911, i64 64 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK3lld4wasm11CodeSection16writeRelocationsERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.010, align 8, !tbaa !91
  tail call void @_ZNK3lld4wasm10InputChunk16writeRelocationsERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZNK3lld4wasm10InputChunk16writeRelocationsERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm11DataSection16finalizeContentsEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::raw_string_ostream", align 8 ; 19 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"struct.llvm::wasm::WasmInitExpr", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.d, align 4, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %1, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.a, ptr %i.f, align 8, !tbaa !47
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef null, i64 noundef 0, i32 noundef 0) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val37 = load i64, ptr %i.h, align 8, !tbaa !151 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.val37, 0
  br i1 %.not6.i.i.i, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1050), align 2, !range !152
  %20 = zext nneg i8 %i.i to i64                  ; 5 uses
  %i.j = add i64 %.val37, 2305843009213693951
  %i.k = and i64 %i.j, 2305843009213693951        ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = icmp samesign ult i64 %i.k, 3
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.l, 4611686018427387900
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.new
  %.08.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.3, %bb.b ]
  %.057.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.new ], [ %i.y, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.b ]
  %.05.val.i.i.i = load ptr, ptr %.057.i.i.i, align 8, !tbaa !153
  %i.n = getelementptr i8, ptr %.05.val.i.i.i, i64 16
  %.05.val.val.i.i.i = load i8, ptr %i.n, align 8, !tbaa !154, !range !152, !noundef !161
  %i.o = trunc nuw i8 %.05.val.val.i.i.i to i1
  %21 = select i1 %i.o, i64 %20, i64 1
  %spec.select.i.i.i = add nuw nsw i64 %21, %.08.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8
  %.05.val.i.i.i.1 = load ptr, ptr %i.p, align 8, !tbaa !153
  %i.q = getelementptr i8, ptr %.05.val.i.i.i.1, i64 16
  %.05.val.val.i.i.i.1 = load i8, ptr %i.q, align 8, !tbaa !154, !range !152, !noundef !161
  %i.r = trunc nuw i8 %.05.val.val.i.i.i.1 to i1
  %22 = select i1 %i.r, i64 %20, i64 1
  %spec.select.i.i.i.1 = add nuw nsw i64 %22, %spec.select.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 16
  %.05.val.i.i.i.2 = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.t = getelementptr i8, ptr %.05.val.i.i.i.2, i64 16
  %.05.val.val.i.i.i.2 = load i8, ptr %i.t, align 8, !tbaa !154, !range !152, !noundef !161
  %i.u = trunc nuw i8 %.05.val.val.i.i.i.2 to i1
  %23 = select i1 %i.u, i64 %20, i64 1
  %spec.select.i.i.i.2 = add nuw nsw i64 %23, %spec.select.i.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 24
  %.05.val.i.i.i.3 = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.w = getelementptr i8, ptr %.05.val.i.i.i.3, i64 16
  %.05.val.val.i.i.i.3 = load i8, ptr %i.w, align 8, !tbaa !154, !range !152, !noundef !161
  %i.x = trunc nuw i8 %.05.val.val.i.i.i.3 to i1
  %24 = select i1 %i.x, i64 %20, i64 1
  %spec.select.i.i.i.3 = add nuw nsw i64 %24, %spec.select.i.i.i.2 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa", label %bb.b, !llvm.loop !162

"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa": ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa", %.lr.ph.i.i.i
  %.08.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.3, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ]
  %.057.i.i.i.epil.init = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.y, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.08.i.i.i.epil = phi i64 [ %.08.i.i.i.epil.init, %.epil.preheader ], [ %spec.select.i.i.i.epil, %bb.c ]
  %.057.i.i.i.epil = phi ptr [ %.057.i.i.i.epil.init, %.epil.preheader ], [ %i.ab, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.05.val.i.i.i.epil = load ptr, ptr %.057.i.i.i.epil, align 8, !tbaa !153
  %i.z = getelementptr i8, ptr %.05.val.i.i.i.epil, i64 16
  %.05.val.val.i.i.i.epil = load i8, ptr %i.z, align 8, !tbaa !154, !range !152, !noundef !161
  %i.aa = trunc nuw i8 %.05.val.val.i.i.i.epil to i1
  %25 = select i1 %i.aa, i64 %20, i64 1
  %spec.select.i.i.i.epil = add nuw nsw i64 %25, %.08.i.i.i.epil ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.057.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit", label %bb.c, !llvm.loop !163

"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit": ; preds = %bb.c, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa"
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.3, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ], [ %spec.select.i.i.i.epil, %bb.c ]
  %i.ac = and i64 %spec.select.i.i.i.lcssa, 4294967295
  br label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit"

"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit": ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit", %bb.a
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit.loopexit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ae, align 1, !tbaa !23
  store ptr @.str.16, ptr %2, align 8, !tbaa !24
  store i8 3, ptr %i.ad, align 8, !tbaa !17
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.0.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !164
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 116), align 4, !tbaa !166, !range !152, !noundef !161
  %i.aj = trunc nuw i8 %i.ai to i1
  %.val.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 115), align 1, !range !152
  %i.ak = trunc nuw i8 %.val.i to i1
  %.0.i = select i1 %i.aj, i1 %i.ak, i1 false     ; 4 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %i.am = load i64, ptr %i.h, align 8, !tbaa !151 ; 2 uses
  %.idx = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %.not137 = icmp eq i64 %i.am, 0
  br i1 %.not137, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %.sink.i = select i1 %.0.i, i8 66, i8 65
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 33
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 33
  %i.be = select i1 %.0.i, i8 124, i8 106
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 33
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 33
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 33
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 33
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 33
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.2.0..sroa_idx.i.i.i96 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.pre191 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1050), align 2, !range !152
  br label %bb.d

._crit_edge140.loopexit:                          ; preds = %bb.p
  %.pre196 = load i64, ptr %i.ah, align 8, !tbaa !164
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit"
  %i.ca = phi i64 [ %.pre196, %._crit_edge140.loopexit ], [ %i.ag, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_11DataSection16finalizeContentsEvE3$_0EEDaOT_T0_.exit" ] ; 3 uses
  %i.cb = icmp ugt i64 %i.ca, 4294967295
  br i1 %i.cb, label %_ZN4llvmplERKNS_5TwineES2_.exit127, label %bb.q

bb.d:                                             ; preds = %.lr.ph139, %bb.p
  %i.cc = phi i8 [ %.pre191, %.lr.ph139 ], [ %i.el, %bb.p ]
  %.0138 = phi ptr [ %i.al, %.lr.ph139 ], [ %i.em, %bb.p ] ; 2 uses
  %i.cd = load ptr, ptr %.0138, align 8, !tbaa !153 ; 13 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !154, !range !152, !noundef !161
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = trunc nuw i8 %i.cc to i1
  %not..i = xor i1 %i.cg, true
  %i.ci = select i1 %not..i, i1 true, i1 %i.ch
  br i1 %i.ci, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  store i32 0, ptr %i.ao, align 8, !tbaa !38
  store i8 0, ptr %i.ap, align 8, !tbaa !43
  store i32 1, ptr %i.aq, align 4, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %3, align 8, !tbaa !45
  store ptr %i.cj, ptr %i.as, align 8, !tbaa !47
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 28 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !168
  %i.cm = zext i32 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i8 1, ptr %i.au, align 1, !tbaa !23
  store ptr @.str.17, ptr %4, align 8, !tbaa !24
  store i8 3, ptr %i.at, align 8, !tbaa !17
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(34) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !168 ; 2 uses
  %i.co = and i32 %i.cn, 2
  %.not35 = icmp eq i32 %i.co, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i8 1, ptr %i.aw, align 1, !tbaa !23
  store ptr @.str.18, ptr %5, align 8, !tbaa !24
  store i8 3, ptr %i.av, align 8, !tbaa !17
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.pre192 = load i32, ptr %i.ck, align 4, !tbaa !168
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cp = phi i32 [ %.pre192, %bb.f ], [ %i.cn, %bb.e ]
  %i.cq = and i32 %i.cp, 1
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.h, label %_ZN4llvmplERKNS_5TwineES2_.exit97

bb.h:                                             ; preds = %bb.g
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1048), align 8, !tbaa !169, !range !152, !noundef !161
  %i.ct = trunc nuw i8 %i.cs to i1                ; 2 uses
  %i.cu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 10), align 2, !range !152
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i8 1, ptr %i.az, align 1, !tbaa !23
  store ptr @.str.19, ptr %6, align 8, !tbaa !24
  store i8 3, ptr %i.ay, align 8, !tbaa !17
  call void @_ZN3lld4wasm7writeU8ERN4llvm11raw_ostreamEhRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 35, ptr noundef nonnull align 8 dereferenceable(34) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1016), align 8, !tbaa !256
  %i.cx = call noundef i32 @_ZNK3lld4wasm12GlobalSymbol14getGlobalIndexEv(ptr noundef nonnull align 8 dereferenceable(100) %i.cw) #16
  %i.cy = zext i32 %i.cx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i8 1, ptr %i.bb, align 1, !tbaa !23
  store ptr @.str.20, ptr %7, align 8, !tbaa !24
  store i8 3, ptr %i.ba, align 8, !tbaa !17
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(34) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !257 ; 2 uses
  %.not36 = icmp eq i64 %i.da, 0
  br i1 %.not36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i8 1, ptr %i.bd, align 1, !tbaa !23
  store ptr @.str.21, ptr %8, align 8, !tbaa !24
  store i8 3, ptr %i.bc, align 8, !tbaa !17
  call void @_ZN3lld4wasm13writePtrConstERN4llvm11raw_ostreamElbRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.da, i1 noundef zeroext %.0.i, ptr noundef nonnull align 8 dereferenceable(34) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i8 1, ptr %i.bg, align 1, !tbaa !23
  store ptr @.str.22, ptr %9, align 8, !tbaa !24
  store i8 3, ptr %i.bf, align 8, !tbaa !17
  call void @_ZN3lld4wasm7writeU8ERN4llvm11raw_ostreamEhRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %i.be, ptr noundef nonnull align 8 dereferenceable(34) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i8 1, ptr %i.bi, align 1, !tbaa !23
  store ptr @.str.23, ptr %10, align 8, !tbaa !24
  store i8 3, ptr %i.bh, align 8, !tbaa !17
  call void @_ZN3lld4wasm7writeU8ERN4llvm11raw_ostreamEhRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 11, ptr noundef nonnull align 8 dereferenceable(34) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %_ZN4llvmplERKNS_5TwineES2_.exit97

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i8 0, ptr %11, align 8, !tbaa !258
end_hunk_0
