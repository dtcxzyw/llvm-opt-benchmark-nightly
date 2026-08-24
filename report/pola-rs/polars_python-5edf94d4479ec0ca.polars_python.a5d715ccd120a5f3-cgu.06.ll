Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.06?download=true
inline.NumInlined: 16129
inline.NumDeleted: 4865
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 67
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20disconnect_receiversB10_:bb.a
  %i.be = and i64 %.sroa.05.0.lcssa.i, -2, !dbg !84170
  store atomic i64 %i.be, ptr %0 release, align 128, !dbg !84171
  br label %bb.q, !dbg !84175

bb.q:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20discard_all_messagesB10_.exit
  ret i1 %i.d, !dbg !84176
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !84177 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [40 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !84178
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !84179
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !84179
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !84179
  br label %bb.b, !dbg !84182

bb.b:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !84184), !dbg !84187
  br label %.backedge.i, !dbg !84188

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ], !dbg !84194 ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !dbg !84195, !noalias !84184 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !dbg !84199, !noalias !84184 ; 9 uses
  %i.r = lshr i64 %i.p, 1, !dbg !84203            ; 2 uses
  %i.s = and i64 %i.r, 31, !dbg !84203            ; 6 uses
  %i.t = icmp eq i64 %i.s, 31, !dbg !84204
  br i1 %i.t, label %bb.c, label %bb.f, !dbg !84204

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.037.i, 7, !dbg !84206
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !84206

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !84208, !noalias !84184
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !84208

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0, !dbg !84209
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !84213

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.v = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i, !dbg !84214 ; 2 uses
  %xtraiter93 = and i32 %i.v, 7, !dbg !84213      ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3, !dbg !84213
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !84213

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter97 = and i32 %i.v, 56, !dbg !84213
  br label %.lr.ph.i.i, !dbg !84213

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter98.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  %niter98.next.7 = add i32 %niter98, 8, !dbg !84213 ; 2 uses
  %niter98.ncmp.7 = icmp eq i32 %niter98.next.7, %unroll_iter97, !dbg !84213
  br i1 %niter98.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !84213

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod95.not = icmp eq i32 %xtraiter93, 0, !dbg !84213
  br i1 %lcmp.mod95.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !84213

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod96 = icmp ne i32 %xtraiter93, 0, !dbg !84213
  call void @llvm.assume(i1 %lcmp.mod96), !dbg !84213
  br label %.lr.ph.i.i.epil, !dbg !84213

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter94 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter94.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !84216, !noalias !84184
  %epil.iter94.next = add i32 %epil.iter94, 1, !dbg !84213 ; 2 uses
  %epil.iter94.cmp.not = icmp eq i32 %epil.iter94.next, %xtraiter93, !dbg !84213
  br i1 %epil.iter94.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !84213, !llvm.loop !84219

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.x = add i32 %.sroa.0.037.i, 1, !dbg !84220
  br label %.backedge.i.backedge, !dbg !84221

bb.f:                                             ; preds = %.backedge.i
  %i.y = add i64 %i.p, 2, !dbg !84223             ; 2 uses
  %i.z = and i64 %i.p, 1, !dbg !84224
  %i.aa = icmp eq i64 %i.z, 0, !dbg !84224
  br i1 %i.aa, label %bb.g, label %bb.j, !dbg !84224

bb.g:                                             ; preds = %bb.f
  fence seq_cst, !dbg !84226
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !dbg !84228, !noalias !84184 ; 3 uses
  %i.ac = lshr i64 %i.ab, 1, !dbg !84231
  %i.ad = icmp eq i64 %i.r, %i.ac, !dbg !84233
  br i1 %i.ad, label %bb.i, label %bb.h, !dbg !84233

bb.h:                                             ; preds = %bb.g
  %.not.unshifted.i = xor i64 %i.ab, %i.p, !dbg !84234
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63, !dbg !84234
  %i.ae = zext i1 %.not.i to i64, !dbg !84234
  %spec.select.i = or disjoint i64 %i.y, %i.ae, !dbg !84234
  br label %bb.j, !dbg !84234

bb.i:                                             ; preds = %bb.g
  %i.af = and i64 %i.ab, 1, !dbg !84235
  %i.ag = icmp eq i64 %i.af, 0, !dbg !84235
  br i1 %i.ag, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread, !dbg !84235

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ], !dbg !84236 ; 2 uses
  %i.ah = icmp eq ptr %i.q, null, !dbg !84237
  br i1 %i.ah, label %bb.k, label %bb.n, !dbg !84237

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.037.i, 7, !dbg !84238
  br i1 %i.ai, label %bb.m, label %bb.l, !dbg !84238

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !84240, !noalias !84184
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, !dbg !84240

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0, !dbg !84241
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader, !dbg !84245

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.aj = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i, !dbg !84246 ; 2 uses
  %xtraiter87 = and i32 %i.aj, 7, !dbg !84245     ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.037.i, 3, !dbg !84245
  br i1 %i.ak, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new, !dbg !84245

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter91 = and i32 %i.aj, 56, !dbg !84245
  br label %.lr.ph.i19.i, !dbg !84245

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter92 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter92.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  %niter92.next.7 = add i32 %niter92, 8, !dbg !84245 ; 2 uses
  %niter92.ncmp.7 = icmp eq i32 %niter92.next.7, %unroll_iter91, !dbg !84245
  br i1 %niter92.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i, !dbg !84245

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod89.not = icmp eq i32 %xtraiter87, 0, !dbg !84245
  br i1 %lcmp.mod89.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader, !dbg !84245

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod90 = icmp ne i32 %xtraiter87, 0, !dbg !84245
  call void @llvm.assume(i1 %lcmp.mod90), !dbg !84245
  br label %.lr.ph.i19.i.epil, !dbg !84245

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter88 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter88.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !84248, !noalias !84184
  %epil.iter88.next = add i32 %epil.iter88, 1, !dbg !84245 ; 2 uses
  %epil.iter88.cmp.not = icmp eq i32 %epil.iter88.next, %xtraiter87, !dbg !84245
  br i1 %epil.iter88.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !dbg !84245, !llvm.loop !84251

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.037.i, 1, !dbg !84252
  br label %.backedge.i.backedge, !dbg !84221

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !dbg !84253, !noalias !84184
  %i.an = extractvalue { i64, i1 } %i.am, 1, !dbg !84253
  br i1 %i.an, label %bb.p, label %bb.o, !dbg !84258

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6), !dbg !84259 ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !84264 ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0, !dbg !84267
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader, !dbg !84276

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %4, 5, !dbg !84276          ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3, !dbg !84276
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new, !dbg !84276

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %4, 56, !dbg !84276
  br label %.lr.ph.i24.i, !dbg !84276

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !84276
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader, !dbg !84276

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod86 = icmp ne i32 %xtraiter, 0, !dbg !84276
  call void @llvm.assume(i1 %lcmp.mod86), !dbg !84276
  br label %.lr.ph.i24.i.epil, !dbg !84276

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !84276 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !84276
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !dbg !84276, !llvm.loop !84282

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.037.i, 1, !dbg !84283
  br label %.backedge.i.backedge, !dbg !84284

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.037.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i, !dbg !84195

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84277, !noalias !84184
  %niter.next.7 = add i32 %niter, 8, !dbg !84276  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !84276
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i, !dbg !84276

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30, !dbg !84287
  br i1 %i.aq, label %bb.q, label %bb.t, !dbg !84287

bb.q:                                             ; preds = %bb.p
  %i.ar = load atomic ptr, ptr %i.q acquire, align 8, !dbg !84288, !noalias !84184 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null, !dbg !84292
  br i1 %i.as, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE9wait_nextBX_.exit.i, !dbg !84292

.lr.ph.i29.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i30.i, 7, !dbg !84293
  br i1 %i.at, label %bb.s, label %bb.r, !dbg !84293

bb.r:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !84295, !noalias !84184
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !84295

bb.s:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0, !dbg !84296
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !84300

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.au = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i, !dbg !84301 ; 2 uses
  %xtraiter99 = and i32 %i.au, 7, !dbg !84300     ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i30.i, 3, !dbg !84300
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !84300

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter103 = and i32 %i.au, 56, !dbg !84300
  br label %.lr.ph.i.i.i, !dbg !84300

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  %niter104.next.7 = add i32 %niter104, 8, !dbg !84300 ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103, !dbg !84300
  br i1 %niter104.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !84300

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0, !dbg !84300
  br i1 %lcmp.mod101.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !84300

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0, !dbg !84300
  call void @llvm.assume(i1 %lcmp.mod102), !dbg !84300
  br label %.lr.ph.i.i.i.epil, !dbg !84300

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !84303, !noalias !84184
  %epil.iter100.next = add i32 %epil.iter100, 1, !dbg !84300 ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99, !dbg !84300
  br i1 %epil.iter100.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !84300, !llvm.loop !84306

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i30.i, 1, !dbg !84307
  %i.ax = load atomic ptr, ptr %i.q acquire, align 8, !dbg !84288, !noalias !84184 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null, !dbg !84292
  br i1 %i.ay, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE9wait_nextBX_.exit.i, !dbg !84292

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE9wait_nextBX_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], !dbg !84288 ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2, !dbg !84308
  %i.ba = add i64 %i.az, 2, !dbg !84310
  %i.bb = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !dbg !84313, !noalias !84184
  %i.bc = icmp ne ptr %i.bb, null, !dbg !84317
  %i.bd = zext i1 %i.bc to i64, !dbg !84317
  %spec.select17.i = or disjoint i64 %i.ba, %i.bd, !dbg !84317
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !dbg !84318, !noalias !84184
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !dbg !84323, !noalias !84184
  br label %bb.t, !dbg !84327

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit: ; preds = %bb.i
  %i.be = load i32, ptr %i.i, align 8, !dbg !84328, !range !76884, !noundef !11 ; 2 uses
  %.not = icmp eq i32 %i.be, 1000000000, !dbg !84328
  br i1 %.not, label %bb.ae, label %bb.ad, !dbg !84330

bb.t:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE9wait_nextBX_.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !dbg !84331, !alias.scope !84184
  store i64 %i.s, ptr %i.k, align 8, !dbg !84332, !alias.scope !84184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !84333
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.s, !dbg !84338 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !dbg !84343, !noalias !84348
  %i.bj = and i64 %i.bi, 1, !dbg !84351
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !84351
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_.exit.i, !dbg !84351

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7, !dbg !84352
  br i1 %i.bl, label %bb.v, label %bb.u, !dbg !84352

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !84354, !noalias !84348
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, !dbg !84354

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0, !dbg !84355
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader, !dbg !84359

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.bm = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4, !dbg !84360 ; 2 uses
  %xtraiter105 = and i32 %i.bm, 7, !dbg !84359    ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i4, 3, !dbg !84359
  br i1 %i.bn, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new, !dbg !84359

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter109 = and i32 %i.bm, 56, !dbg !84359
  br label %.lr.ph.i.i.i7, !dbg !84359

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter110.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  %niter110.next.7 = add i32 %niter110, 8, !dbg !84359 ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109, !dbg !84359
  br i1 %niter110.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7, !dbg !84359

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0, !dbg !84359
  br i1 %lcmp.mod107.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader, !dbg !84359

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0, !dbg !84359
  call void @llvm.assume(i1 %lcmp.mod108), !dbg !84359
  br label %.lr.ph.i.i.i7.epil, !dbg !84359

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !84362, !noalias !84348
  %epil.iter106.next = add i32 %epil.iter106, 1, !dbg !84359 ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105, !dbg !84359
  br i1 %epil.iter106.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !dbg !84359, !llvm.loop !84365

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1, !dbg !84366
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !dbg !84343, !noalias !84348
  %i.bq = and i64 %i.bp, 1, !dbg !84351
  %i.br = icmp eq i64 %i.bq, 0, !dbg !84351
  br i1 %i.br, label %.lr.ph.i.i3, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_.exit.i, !dbg !84351

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.t
  %.sroa.018.0.copyload = load i64, ptr %i.bg, align 8, !dbg !84367, !noalias !84348 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !84367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.419, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.419.0..sroa_idx, i64 40, i1 false), !dbg !84367
  %i.bs = add nuw nsw i64 %i.s, 1, !dbg !84372    ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 31, !dbg !84372
  br i1 %i.bt, label %.lr.ph.i2.i, label %bb.z, !dbg !84372

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_.exit.i, %bb.y
  %.sroa.0.04.i.i = phi i64 [ %i.cc, %bb.y ], [ 0, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_.exit.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.0.04.i.i, !dbg !84374
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56, !dbg !84383 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !dbg !84391, !noalias !84348
  %i.bx = and i64 %i.bw, 2, !dbg !84393
  %i.by = icmp eq i64 %i.bx, 0, !dbg !84393
  br i1 %i.by, label %bb.w, label %.lr.ph.i2.i.1, !dbg !84393

bb.w:                                             ; preds = %.lr.ph.i2.i
  %i.bz = atomicrmw or ptr %i.bv, i64 4 acq_rel, align 8, !dbg !84394, !noalias !84348
  %i.ca = and i64 %i.bz, 2, !dbg !84399
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !84399
  br i1 %i.cb, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit, label %.lr.ph.i2.i.1, !dbg !84399

.lr.ph.i2.i.1:                                    ; preds = %bb.w, %.lr.ph.i2.i
  %i.cc = add nuw nsw i64 %.sroa.0.04.i.i, 2, !dbg !84400 ; 2 uses
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.0.04.i.i, !dbg !84374
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112, !dbg !84383 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !dbg !84391, !noalias !84348
  %i.cg = and i64 %i.cf, 2, !dbg !84393
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !84393
  br i1 %i.ch, label %bb.x, label %bb.y, !dbg !84393

bb.x:                                             ; preds = %.lr.ph.i2.i.1
  %i.ci = atomicrmw or ptr %i.ce, i64 4 acq_rel, align 8, !dbg !84394, !noalias !84348
  %i.cj = and i64 %i.ci, 2, !dbg !84399
  %i.ck = icmp eq i64 %i.cj, 0, !dbg !84399
  br i1 %i.ck, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit, label %bb.y, !dbg !84399

bb.y:                                             ; preds = %bb.x, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.cc, 30, !dbg !84411
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE7destroyBX_.exit.sink.split.i, label %.lr.ph.i2.i, !dbg !84414

bb.z:                                             ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_.exit.i
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_:bb.a

bb.aq:                                            ; preds = %bb.ap
  fence acquire, !dbg !84658
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #59
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.ak, !dbg !84660, !noalias !84472

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0uEB3w_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs0_0B1E_(ptr nonnull %i.f), !dbg !84661, !noalias !84472
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, !dbg !84661

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0uEB3w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !84665, !noalias !84472
  br label %bb.b, !dbg !84182

.split:                                           ; preds = %bb.ad
  %i.ea = extractvalue { i64, i32 } %i.da, 1, !dbg !84460 ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000, !dbg !84666
  call void @llvm.assume(i1 %i.eb), !dbg !84666
  %.not26 = icmp samesign ult i32 %i.ea, %i.be, !dbg !84679
  br i1 %.not26, label %bb.ae, label %bb.as, !dbg !84460

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz, !dbg !84679
  br i1 %.not25, label %bb.ae, label %bb.as, !dbg !84460

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !84687
  store i8 0, ptr %i.ec, align 8, !dbg !84687
  br label %bb.at, !dbg !84688

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775806, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775806, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread ], !dbg !84690
  store i64 %storemerge, ptr %0, align 8, !dbg !84690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !84691
  ret void, !dbg !84692

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !84693
  store i8 1, ptr %i.ed, align 8, !dbg !84693
  br label %bb.at, !dbg !84695

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !84696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.419, i64 40, i1 false), !dbg !84698
  br label %bb.at, !dbg !84699
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !84700 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !84701 ; 5 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !dbg !84712, !noalias !84714 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !84717 ; 5 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !dbg !84725, !noalias !84714
  %i.h = and i64 %i.e, 1, !dbg !84727
  %i.i = icmp eq i64 %i.h, 0, !dbg !84727
  br i1 %i.i, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread, !dbg !84727

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !84730
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !84731
  %.sroa.016.0.copyload36 = load i64, ptr %2, align 8, !dbg !84731
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx37, i64 40, i1 false), !dbg !84731
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit, !dbg !84732

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i, !dbg !84727

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph80.i = phi i64 [ %i.e, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph79.i = phi ptr [ %i.g, %.lr.ph.lr.ph.i ], [ %i.am, %.outer.backedge.i ]
  %.sroa.0.0.ph78.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.037.0.ph77.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.037.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.0.ph80.i, 1, !dbg !84735
  %i.l = and i64 %i.k, 31, !dbg !84735            ; 2 uses
  %i.m = icmp eq i64 %i.l, 31, !dbg !84736
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !dbg !84736

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.073.i77, 1, !dbg !84738 ; 2 uses
  %i.o = lshr exact i64 %i.v, 1, !dbg !84735
  %i.p = and i64 %i.o, 31, !dbg !84735            ; 2 uses
  %i.q = icmp eq i64 %i.p, 31, !dbg !84736
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !dbg !84736

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.073.i77 = phi i32 [ %i.n, %bb.b ], [ %.sroa.0.0.ph78.i, %.lr.ph.i ] ; 6 uses
  %i.r = icmp ult i32 %.sroa.0.073.i77, 7, !dbg !84740
  br i1 %i.r, label %bb.d, label %bb.c, !dbg !84740

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit58.i, !dbg !84741, !noalias !84714

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.073.i77, 0, !dbg !84742
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !84746

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.s = mul nuw i32 %.sroa.0.073.i77, %.sroa.0.073.i77, !dbg !84747 ; 2 uses
  %xtraiter = and i32 %i.s, 7, !dbg !84746        ; 3 uses
  %i.t = icmp ult i32 %.sroa.0.073.i77, 3, !dbg !84746
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !84746

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.s, 56, !dbg !84746
  br label %.lr.ph.i.i, !dbg !84746

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  %niter.next.7 = add i32 %niter, 8, !dbg !84746  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !84746
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !84746

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.075.i.lcssa = phi i64 [ %.sroa.03.0.ph80.i, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %.sroa.07.074.i.lcssa = phi ptr [ %.sroa.07.0.ph79.i, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %.sroa.0.073.i.lcssa = phi i32 [ %.sroa.0.0.ph78.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa54 = phi i64 [ %i.l, %.lr.ph.i ], [ %i.p, %bb.b ], !dbg !84735 ; 2 uses
  %i.u = icmp eq i64 %.lcssa54, 30, !dbg !84752   ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.0.ph77.i, null
  %or.cond.i = select i1 %i.u, i1 %.not.i, i1 false, !dbg !84752
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_.exit.i, !dbg !84752

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !84746
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader, !dbg !84746

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0, !dbg !84746
  tail call void @llvm.assume(i1 %lcmp.mod185), !dbg !84746
  br label %.lr.ph.i.i.epil, !dbg !84746

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !84749, !noalias !84714
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !84746 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !84746
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !dbg !84746, !llvm.loop !84753

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.v = load atomic i64, ptr %i.d acquire, align 128, !dbg !84754, !noalias !84714 ; 3 uses
  %i.w = load atomic ptr, ptr %i.f acquire, align 8, !dbg !84757, !noalias !84714
  %i.x = and i64 %i.v, 1, !dbg !84727
  %i.y = icmp eq i64 %i.x, 0, !dbg !84727
  br i1 %i.y, label %bb.b, label %.outer._crit_edge.i, !dbg !84727

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.037.2.i = phi ptr [ %.sroa.037.0.ph77.i, %._crit_edge ], [ %i.aa, %bb.e ], !dbg !84760 ; 9 uses
  %i.z = icmp eq ptr %.sroa.07.074.i.lcssa, null, !dbg !84761
  br i1 %i.z, label %bb.f, label %bb.k, !dbg !84761

bb.e:                                             ; preds = %._crit_edge
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13new_zeroed_inB1w_()
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_.exit.i unwind label %.body.loopexit, !dbg !84762

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_.exit.i
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13new_zeroed_inB1w_()
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !84767, !noalias !84714 ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = cmpxchg ptr %i.f, ptr null, ptr %i.ab release monotonic, align 8, !dbg !84771, !noalias !84714
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1, !dbg !84771
  br i1 %i.ad, label %bb.h, label %bb.i, !dbg !84777

bb.h:                                             ; preds = %bb.g
  store atomic ptr %i.ab, ptr %i.j release, align 8, !dbg !84778, !noalias !84714
  br label %bb.k, !dbg !84782

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.037.2.i, null, !dbg !84783
  br i1 %i.ae, label %.outer.backedge.i, label %bb.j, !dbg !84783

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.2.i, i64 noundef 1744, i64 noundef 8) #51, !dbg !84786, !noalias !84714
  br label %.outer.backedge.i, !dbg !84783

bb.k:                                             ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.074.i.lcssa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_.exit.i ], [ %i.ab, %bb.h ], !dbg !84793 ; 3 uses
  %i.af = add i64 %.sroa.03.075.i.lcssa, 2, !dbg !84794
  %i.ag = cmpxchg weak ptr %i.d, i64 %.sroa.03.075.i.lcssa, i64 %i.af seq_cst acquire, align 8, !dbg !84795, !noalias !84714
  %i.ah = extractvalue { i64, i1 } %i.ag, 1, !dbg !84795
  br i1 %i.ah, label %bb.m, label %bb.l, !dbg !84800

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %.sroa.0.073.i.lcssa, i32 6), !dbg !84801 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !84804 ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.073.i.lcssa, 0, !dbg !84806
  br i1 %.not.i26.i, label %.outer.backedge.i, label %.lr.ph.i27.i.preheader, !dbg !84810

.lr.ph.i27.i.preheader:                           ; preds = %bb.l
  %xtraiter186 = and i32 %5, 5, !dbg !84810       ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.073.i.lcssa, 3, !dbg !84810
  br i1 %i.ai, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new, !dbg !84810

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter190 = and i32 %5, 56, !dbg !84810
  br label %.lr.ph.i27.i, !dbg !84810

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0, !dbg !84810
  br i1 %lcmp.mod188.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader, !dbg !84810

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod189 = icmp ne i32 %xtraiter186, 0, !dbg !84810
  tail call void @llvm.assume(i1 %lcmp.mod189), !dbg !84810
  br label %.lr.ph.i27.i.epil, !dbg !84810

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter187 = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter187.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  %epil.iter187.next = add i32 %epil.iter187, 1, !dbg !84810 ; 2 uses
  %epil.iter187.cmp.not = icmp eq i32 %epil.iter187.next, %xtraiter186, !dbg !84810
  br i1 %epil.iter187.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !dbg !84810, !llvm.loop !84814

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aj = add i32 %.sroa.0.073.i.lcssa, 1, !dbg !84815
  br label %.outer.backedge.i, !dbg !84816

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter191 = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter191.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  tail call void @llvm.x86.sse2.pause(), !dbg !84811, !noalias !84714
  %niter191.next.7 = add i32 %niter191, 8, !dbg !84810 ; 2 uses
  %niter191.ncmp.7 = icmp eq i32 %niter191.next.7, %unroll_iter190, !dbg !84810
  br i1 %niter191.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i, !dbg !84810

bb.m:                                             ; preds = %bb.k
  br i1 %i.u, label %bb.n, label %.outer._crit_edge.i, !dbg !84818

bb.n:                                             ; preds = %bb.m
  %.not16.i = icmp eq ptr %.sroa.037.2.i, null, !dbg !84819
  br i1 %.not16.i, label %bb.o, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread39, !dbg !84822, !prof !54

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #56
          to label %.noexc5 unwind label %.body.loopexit.split-lp, !dbg !84823

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread39: ; preds = %bb.n
  store atomic ptr %.sroa.037.2.i, ptr %i.f release, align 8, !dbg !84824, !noalias !84714
  %i.ak = atomicrmw add ptr %i.d, i64 2 release, align 8, !dbg !84828, !noalias !84714 ; 0 uses
  store atomic ptr %.sroa.037.2.i, ptr %.sroa.07.1.i release, align 8, !dbg !84833, !noalias !84714
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !84730
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !84731
  %.sroa.016.0.copyload42 = load i64, ptr %2, align 8, !dbg !84731
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx43, i64 40, i1 false), !dbg !84731
  br label %bb.r, !dbg !84732

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.l, %bb.j, %bb.i
  %.sroa.037.0.ph.be.i = phi ptr [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %.sroa.037.2.i, %bb.l ], [ %.sroa.037.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.073.i.lcssa, %bb.j ], [ %.sroa.0.073.i.lcssa, %bb.i ], [ 1, %bb.l ], [ %i.aj, %._crit_edge.loopexit.i.i ]
  %i.al = load atomic i64, ptr %i.d acquire, align 128, !dbg !84836, !noalias !84714 ; 2 uses
  %i.am = load atomic ptr, ptr %i.f acquire, align 8, !dbg !84839, !noalias !84714
  %i.an = and i64 %i.al, 1, !dbg !84727
  %i.ao = icmp eq i64 %i.an, 0, !dbg !84727
  br i1 %i.ao, label %.lr.ph.i, label %.outer._crit_edge.i, !dbg !84727

.loopexit58.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit58.i
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.0.ph77.i, %.loopexit58.i ], [ %.sroa.037.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit58.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.037.1.ph.i, null, !dbg !84841
  br i1 %i.ap, label %.body.thread, label %.thread49.i, !dbg !84841

.thread49.i:                                      ; preds = %bb.p
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1744, i64 noundef 8) #51, !dbg !84843, !noalias !84714
  br label %.body.thread, !dbg !84841

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.m
  %.sroa.9.0 = phi i64 [ %.lcssa54, %bb.m ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ], !dbg !84850
  %.sroa.412.0 = phi ptr [ %.sroa.07.1.i, %bb.m ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ], !dbg !84851 ; 2 uses
  %.sroa.037.3.i = phi ptr [ %.sroa.037.2.i, %bb.m ], [ %.sroa.037.0.ph77.i, %.loopexit.i ], [ %.sroa.037.0.ph.be.i, %.outer.backedge.i ], !dbg !84760 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.037.3.i, null, !dbg !84852
  br i1 %i.aq, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit, label %bb.q, !dbg !84852

bb.q:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1744, i64 noundef 8) #51, !dbg !84854, !noalias !84714
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit, !dbg !84852

.body.loopexit:                                   ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit: ; preds = %bb.q, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !84730
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !84731
  %.sroa.016.0.copyload = load i64, ptr %2, align 8, !dbg !84731 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false), !dbg !84731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84861), !dbg !84864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84865), !dbg !84864
  %i.ar = icmp eq ptr %.sroa.412.0, null, !dbg !84732
  br i1 %i.ar, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit, label %bb.r, !dbg !84732

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread39, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit
  %.sroa.016.0.copyload46 = phi i64 [ %.sroa.016.0.copyload42, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread39 ], [ %.sroa.016.0.copyload, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit ]
  %.sroa.412.145 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread39 ], [ %.sroa.412.0, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit ]
  %.sroa.9.144 = phi i64 [ 30, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.thread39 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.412.145, i64 8, !dbg !84867
  %i.at = icmp samesign ult i64 %.sroa.9.144, 31, !dbg !84870
  tail call void @llvm.assume(i1 %i.at), !dbg !84875
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %.sroa.9.144, !dbg !84876 ; 3 uses
  store i64 %.sroa.016.0.copyload46, ptr %i.au, align 8, !dbg !84877, !noalias !84861
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !84877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !dbg !84877, !noalias !84861
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48, !dbg !84883
  %i.aw = atomicrmw or ptr %i.av, i64 1 release, align 8, !dbg !84890, !noalias !84893 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !84894 ; 3 uses
  %i.ay = load atomic i8, ptr %i.ax seq_cst, align 8, !dbg !84901, !noalias !84893
  %i.az = icmp eq i8 %i.ay, 0, !dbg !84903
  br i1 %i.az, label %.noexc6, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.thread, !dbg !84903

.noexc6:                                          ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !84904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !84905, !noalias !84893
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.ba), !dbg !84906
  call void @llvm.experimental.noalias.scope.decl(metadata !84907), !dbg !84910
  %i.bb = load i64, ptr %i.c, align 8, !dbg !84911, !range !375, !alias.scope !84907, !noalias !84913, !noundef !11
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !84915
  br i1 %i.bc, label %bb.s, label %bb.x, !dbg !84915, !prof !54

bb.s:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84916, !noalias !84917
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !84916
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !84916, !alias.scope !84907, !noalias !84913, !nonnull !11, !align !200, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !84916
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !84916, !range !6506, !alias.scope !84907, !noalias !84913, !noundef !11
  store ptr %i.be, ptr %i.a, align 8, !dbg !84916, !noalias !84917
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !84916
  store i8 %i.bg, ptr %i.bh, align 8, !dbg !84916, !noalias !84917
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #56
          to label %bb.u unwind label %bb.t, !dbg !84918, !noalias !84919

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #55
          to label %.body.thread27 unwind label %bb.v, !dbg !84920, !noalias !84919

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !84921, !noalias !84919
  unreachable, !dbg !84921

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseeLknQCOKOd_13polars_python.exit.i.i, %bb.af, %.noexc5.i.i, %bb.ad, %.lr.ph.i.preheader.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECseeLknQCOKOd_13polars_python(ptr nonnull %i.bm, i8 %i.bo) #55
          to label %.body.thread27 unwind label %bb.an, !dbg !84922, !noalias !84893

bb.x:                                             ; preds = %.noexc6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !84923
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !84923, !alias.scope !84907, !noalias !84913, !nonnull !11, !align !200, !noundef !11 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !84923
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !84923, !range !6506, !alias.scope !84907, !noalias !84913, !noundef !11 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1, !dbg !84923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !84924, !noalias !84893
  %i.bq = load atomic i8, ptr %i.ax seq_cst, align 8, !dbg !84925, !noalias !84893
  %i.br = icmp eq i8 %i.bq, 0, !dbg !84929
  br i1 %i.br, label %bb.y, label %bb.aj, !dbg !84929

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !84930, !noalias !84893
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !84931 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84936), !dbg !84939
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !84940 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !84940, !alias.scope !84936, !noalias !84947, !noundef !11 ; 4 uses
  %i.bv = icmp ult i64 %i.bu, 384307168202282326, !dbg !84949
  call void @llvm.assume(i1 %i.bv), !dbg !84951
  %i.bw = icmp eq i64 %i.bu, 0, !dbg !84952
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseeLknQCOKOd_13polars_python.exit.i.i, label %.lr.ph.i.preheader.i.i.i, !dbg !84952

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.y
  %i.bx = invoke noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @355)
          to label %.noexc.i.i unwind label %bb.w, !dbg !84953, !noalias !84893

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !84956
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !84956, !alias.scope !84936, !noalias !84947, !nonnull !11, !noundef !11 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.bu, 24, !dbg !84970
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i, !dbg !84970
  br label %.lr.ph.i.i.i.i, !dbg !84979

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i.i.i, %.noexc.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ %i.cu, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.cb = phi ptr [ %i.cc, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.bz, %.noexc.i.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24, !dbg !84988 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84995), !dbg !84998
  %i.cd = load ptr, ptr %i.cb, align 8, !dbg !84999, !alias.scope !84995, !noalias !85008, !nonnull !11, !noundef !11 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40, !dbg !85012
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !85012, !noalias !85013, !noundef !11
  %.not.i.i.i.i.i = icmp eq i64 %i.cf, %i.bx, !dbg !84979
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.z, !dbg !84979

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !85014
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !85014, !alias.scope !84995, !noalias !85008, !noundef !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24, !dbg !85015
  %i.cj = cmpxchg ptr %i.ci, i64 0, i64 %i.ch acq_rel acquire, align 8, !dbg !85020, !noalias !85013
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.cj, 1, !dbg !85022
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.aa, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !85023

bb.aa:                                            ; preds = %bb.z
end_hunk_1
begin_hunk_2_@memcmp
!84059 = distinct !DILocation(line: 572, column: 41, scope: !84036, inlinedAt: !83998)
!84060 = !DILocation(line: 570, column: 19, scope: !84036, inlinedAt: !83998)
!84061 = !DILocation(line: 0, scope: !84001, inlinedAt: !83998)
!84062 = !DILocation(line: 605, column: 17, scope: !84036, inlinedAt: !83998)
!84063 = !DILocation(line: 585, column: 30, scope: !84036, inlinedAt: !83998)
!84064 = !DILocation(line: 587, column: 20, scope: !84065, inlinedAt: !83998)
!84065 = distinct !DILexicalBlock(scope: !84036, file: !76668, line: 585, column: 17)
!84066 = !DILocation(line: 128, column: 14, scope: !1116, inlinedAt: !84067)
!84067 = distinct !DILocation(line: 229, column: 22, scope: !1118, inlinedAt: !84068)
!84068 = distinct !DILocation(line: 344, column: 9, scope: !1120, inlinedAt: !84069)
!84069 = distinct !DILocation(line: 462, column: 23, scope: !1122, inlinedAt: !84070)
!84070 = distinct !DILocation(line: 1921, column: 24, scope: !84071, inlinedAt: !84074)
!84071 = distinct !DILexicalBlock(scope: !84072, file: !1088, line: 1919, column: 13)
!84072 = distinct !DILexicalBlock(scope: !84073, file: !1088, line: 1916, column: 9)
!84073 = distinct !DISubprogram(name: "drop<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1x_", scope: !1127, file: !1088, line: 1913, type: !52, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84074 = distinct !DILocation(line: 810, column: 1, scope: !84075, inlinedAt: !84076)
!84075 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEB25_", scope: !74, file: !73, line: 810, type: !52, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84076 = distinct !DILocation(line: 1003, column: 1, scope: !84077, inlinedAt: !84078)
!84077 = distinct !DISubprogram(name: "drop<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEB1V_", scope: !649, file: !7441, line: 999, type: !10, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84078 = distinct !DILocation(line: 606, column: 17, scope: !84036, inlinedAt: !83998)
!84079 = !DILocation(line: 605, column: 13, scope: !84036, inlinedAt: !83998)
!84080 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84082)
!84081 = distinct !DISubprogram(name: "atomic_load<*mut std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1F_", scope: !675, file: !674, line: 3900, type: !10, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84082 = distinct !DILocation(line: 1732, column: 18, scope: !84083, inlinedAt: !84084)
!84083 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE4loadB1I_", scope: !679, file: !674, line: 1730, type: !10, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84084 = distinct !DILocation(line: 80, column: 34, scope: !84085, inlinedAt: !84087)
!84085 = distinct !DILexicalBlock(scope: !84086, file: !76668, line: 78, column: 9)
!84086 = distinct !DISubprogram(name: "wait_next<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE9wait_nextBX_", scope: !83713, file: !76668, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84087 = distinct !DILocation(line: 594, column: 30, scope: !84065, inlinedAt: !83998)
!84088 = !DILocation(line: 81, column: 17, scope: !84089, inlinedAt: !84087)
!84089 = distinct !DILexicalBlock(scope: !84085, file: !76668, line: 80, column: 13)
!84090 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84091)
!84091 = distinct !DILocation(line: 84, column: 21, scope: !84089, inlinedAt: !84087)
!84092 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84091)
!84093 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84094)
!84094 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84095)
!84095 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84096)
!84096 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84091)
!84097 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84095)
!84098 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84099)
!84099 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84091)
!84100 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84101)
!84101 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84102)
!84102 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84091)
!84103 = distinct !{!84103, !20201}
!84104 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84091)
!84105 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84106)
!84106 = distinct !DILocation(line: 1732, column: 18, scope: !84107, inlinedAt: !84108)
!84107 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE4loadB1I_", scope: !679, file: !674, line: 1730, type: !10, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84108 = distinct !DILocation(line: 596, column: 46, scope: !84065, inlinedAt: !83998)
!84109 = !DILocation(line: 128, column: 14, scope: !1116, inlinedAt: !84110)
!84110 = distinct !DILocation(line: 229, column: 22, scope: !1118, inlinedAt: !84111)
!84111 = distinct !DILocation(line: 344, column: 9, scope: !1120, inlinedAt: !84112)
!84112 = distinct !DILocation(line: 462, column: 23, scope: !1122, inlinedAt: !84113)
!84113 = distinct !DILocation(line: 1921, column: 24, scope: !84071, inlinedAt: !84114)
!84114 = distinct !DILocation(line: 810, column: 1, scope: !84075, inlinedAt: !84115)
!84115 = distinct !DILocation(line: 1003, column: 1, scope: !84077, inlinedAt: !84116)
!84116 = distinct !DILocation(line: 597, column: 21, scope: !84117, inlinedAt: !83998)
!84117 = distinct !DILexicalBlock(scope: !84065, file: !76668, line: 596, column: 21)
!84118 = !DILocation(line: 587, column: 17, scope: !84065, inlinedAt: !83998)
!84119 = !DILocation(line: 589, column: 32, scope: !84065, inlinedAt: !83998)
!84120 = !DILocation(line: 253, column: 13, scope: !84121, inlinedAt: !84122)
!84121 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1N_", scope: !1799, file: !1798, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84122 = distinct !DILocation(line: 646, column: 26, scope: !84123, inlinedAt: !84124)
!84123 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1k_", scope: !824, file: !823, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84124 = distinct !DILocation(line: 589, column: 47, scope: !84065, inlinedAt: !83998)
!84125 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84126)
!84126 = distinct !DILocation(line: 2870, column: 26, scope: !84127, inlinedAt: !84128)
!84127 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !679, file: !674, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84128 = distinct !DILocation(line: 47, column: 26, scope: !84129, inlinedAt: !84131)
!84129 = distinct !DILexicalBlock(scope: !84130, file: !76668, line: 46, column: 9)
!84130 = distinct !DISubprogram(name: "wait_write<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_writeBU_", scope: !83757, file: !76668, line: 45, type: !10, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84131 = distinct !DILocation(line: 590, column: 26, scope: !84132, inlinedAt: !83998)
!84132 = distinct !DILexicalBlock(scope: !84065, file: !76668, line: 589, column: 21)
!84133 = !DILocation(line: 47, column: 15, scope: !84129, inlinedAt: !84131)
!84134 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84135)
!84135 = distinct !DILocation(line: 48, column: 21, scope: !84129, inlinedAt: !84131)
!84136 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84135)
!84137 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84138)
!84138 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84139)
!84139 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84140)
!84140 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84135)
!84141 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84139)
!84142 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84143)
!84143 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84135)
!84144 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84145)
!84145 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84146)
!84146 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84135)
!84147 = distinct !{!84147, !20201}
!84148 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84135)
!84149 = !DILocation(line: 810, column: 1, scope: !29123, inlinedAt: !84150)
!84150 = distinct !DILocation(line: 1400, column: 18, scope: !84151, inlinedAt: !84152)
!84151 = distinct !DISubprogram(name: "drop_in_place<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequest13drop_in_placeBG_", scope: !172, file: !171, line: 1395, type: !10, scopeLine: 1395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84152 = distinct !DILocation(line: 592, column: 36, scope: !84153, inlinedAt: !83998)
!84153 = distinct !DILexicalBlock(scope: !84132, file: !76668, line: 591, column: 21)
!84154 = !{!84155}
!84155 = distinct !{!84155, !84156, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_: argument 0"}
!84156 = distinct !{!84156, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_"}
!84157 = !DILocation(line: 810, column: 1, scope: !85, inlinedAt: !84158)
!84158 = distinct !DILocation(line: 810, column: 1, scope: !87, inlinedAt: !84159)
!84159 = distinct !DILocation(line: 810, column: 1, scope: !22955, inlinedAt: !84160)
!84160 = distinct !DILocation(line: 810, column: 1, scope: !29123, inlinedAt: !84150)
!84161 = !DILocation(line: 810, column: 1, scope: !90, inlinedAt: !84162)
!84162 = distinct !DILocation(line: 810, column: 1, scope: !85, inlinedAt: !84158)
!84163 = !DILocation(line: 810, column: 1, scope: !90, inlinedAt: !84164)
!84164 = distinct !DILocation(line: 810, column: 1, scope: !85, inlinedAt: !84158)
!84165 = !DILocation(line: 810, column: 1, scope: !22955, inlinedAt: !84160)
!84166 = !DILocation(line: 0, scope: !84036, inlinedAt: !83998)
!84167 = !DILocation(line: 2511, column: 13, scope: !84168, inlinedAt: !84169)
!84168 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1789, file: !1788, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84169 = distinct !DILocation(line: 601, column: 29, scope: !84065, inlinedAt: !83998)
!84170 = !DILocation(line: 610, column: 9, scope: !84036, inlinedAt: !83998)
!84171 = !DILocation(line: 3890, column: 24, scope: !83790, inlinedAt: !84172)
!84172 = distinct !DILocation(line: 2898, column: 26, scope: !84173, inlinedAt: !84174)
!84173 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !679, file: !674, line: 2896, type: !10, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84174 = distinct !DILocation(line: 611, column: 25, scope: !84036, inlinedAt: !83998)
!84175 = !DILocation(line: 529, column: 9, scope: !83991)
!84176 = !DILocation(line: 537, column: 6, scope: !83979)
!84177 = distinct !DISubprogram(name: "recv<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_", scope: !76846, file: !76668, line: 426, type: !10, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84178 = !DILocation(line: 427, column: 26, scope: !84177)
!84179 = !DILocation(line: 5, column: 17, scope: !84180, inlinedAt: !84178)
!84180 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !84181, file: !76675, line: 5, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84181 = !DINamespace(name: "{impl#4}", scope: !76677)
!84182 = !DILocation(line: 428, column: 9, scope: !84183)
!84183 = distinct !DILexicalBlock(scope: !84177, file: !76668, line: 427, column: 9)
!84184 = !{!84185}
!84185 = distinct !{!84185, !84186, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_: argument 0"}
!84186 = distinct !{!84186, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_"}
!84187 = !DILocation(line: 429, column: 21, scope: !84183)
!84188 = !DILocation(line: 289, column: 9, scope: !84189, inlinedAt: !84193)
!84189 = distinct !DILexicalBlock(scope: !84190, file: !76668, line: 287, column: 9)
!84190 = distinct !DILexicalBlock(scope: !84191, file: !76668, line: 286, column: 9)
!84191 = distinct !DILexicalBlock(scope: !84192, file: !76668, line: 285, column: 9)
!84192 = distinct !DISubprogram(name: "start_recv<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_", scope: !76846, file: !76668, line: 284, type: !10, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84193 = distinct !DILocation(line: 429, column: 21, scope: !84183)
!84194 = !DILocation(line: 0, scope: !84192, inlinedAt: !84193)
!84195 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84196)
!84196 = !DILocation(line: 2870, column: 26, scope: !84197, inlinedAt: !84198)
!84197 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !679, file: !674, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84198 = !DILocation(line: 0, scope: !84191, inlinedAt: !84193)
!84199 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84200)
!84200 = !DILocation(line: 1732, column: 18, scope: !84201, inlinedAt: !84202)
!84201 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE4loadB1I_", scope: !679, file: !674, line: 1730, type: !10, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84202 = !DILocation(line: 0, scope: !84190, inlinedAt: !84193)
!84203 = !DILocation(line: 291, column: 26, scope: !84189, inlinedAt: !84193)
!84204 = !DILocation(line: 294, column: 16, scope: !84205, inlinedAt: !84193)
!84205 = distinct !DILexicalBlock(scope: !84189, file: !76668, line: 291, column: 13)
!84206 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84207)
!84207 = distinct !DILocation(line: 295, column: 25, scope: !84205, inlinedAt: !84193)
!84208 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84207)
!84209 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84210)
!84210 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84211)
!84211 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84212)
!84212 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84207)
!84213 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84211)
!84214 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84215)
!84215 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84207)
!84216 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84217)
!84217 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84218)
!84218 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84207)
!84219 = distinct !{!84219, !20201}
!84220 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84207)
!84221 = !DILocation(line: 0, scope: !84222, inlinedAt: !84193)
!84222 = !DILexicalBlockFile(scope: !84205, file: !576, discriminator: 0)
!84223 = !DILocation(line: 301, column: 32, scope: !84205, inlinedAt: !84193)
!84224 = !DILocation(line: 303, column: 16, scope: !84225, inlinedAt: !84193)
!84225 = distinct !DILexicalBlock(scope: !84205, file: !76668, line: 301, column: 13)
!84226 = !DILocation(line: 4390, column: 23, scope: !684, inlinedAt: !84227)
!84227 = distinct !DILocation(line: 304, column: 17, scope: !84225, inlinedAt: !84193)
!84228 = !DILocation(line: 3904, column: 24, scope: !2868, inlinedAt: !84229)
!84229 = distinct !DILocation(line: 2870, column: 26, scope: !84197, inlinedAt: !84230)
!84230 = distinct !DILocation(line: 305, column: 44, scope: !84225, inlinedAt: !84193)
!84231 = !DILocation(line: 308, column: 37, scope: !84232, inlinedAt: !84193)
!84232 = distinct !DILexicalBlock(scope: !84225, file: !76668, line: 305, column: 17)
!84233 = !DILocation(line: 308, column: 20, scope: !84232, inlinedAt: !84193)
!84234 = !DILocation(line: 321, column: 20, scope: !84232, inlinedAt: !84193)
!84235 = !DILocation(line: 310, column: 24, scope: !84232, inlinedAt: !84193)
!84236 = !DILocation(line: 0, scope: !84205, inlinedAt: !84193)
!84237 = !DILocation(line: 328, column: 16, scope: !84225, inlinedAt: !84193)
!84238 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84239)
!84239 = distinct !DILocation(line: 329, column: 25, scope: !84225, inlinedAt: !84193)
!84240 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84239)
!84241 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84242)
!84242 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84243)
!84243 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84244)
!84244 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84239)
!84245 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84243)
!84246 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84247)
!84247 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84239)
!84248 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84249)
!84249 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84250)
!84250 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84239)
!84251 = distinct !{!84251, !20201}
!84252 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84239)
!84253 = !DILocation(line: 4084, column: 17, scope: !84254, inlinedAt: !84255)
!84254 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECseeLknQCOKOd_13polars_python", scope: !675, file: !674, line: 4034, type: !10, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84255 = distinct !DILocation(line: 3130, column: 21, scope: !84256, inlinedAt: !84257)
!84256 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !679, file: !674, line: 3123, type: !10, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84257 = distinct !DILocation(line: 336, column: 35, scope: !84225, inlinedAt: !84193)
!84258 = !DILocation(line: 336, column: 13, scope: !84225, inlinedAt: !84193)
!84259 = !DILocation(line: 1077, column: 12, scope: !84260, inlinedAt: !84261)
!84260 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCseeLknQCOKOd_13polars_python", scope: !116, file: !115, line: 1073, type: !10, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84261 = distinct !DILocation(line: 114, column: 36, scope: !84262, inlinedAt: !84263)
!84262 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !83616, file: !83615, line: 113, type: !10, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84263 = distinct !DILocation(line: 360, column: 29, scope: !84225, inlinedAt: !84193)
!84264 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84265)
!84265 = distinct !DILocation(line: 115, column: 26, scope: !84266, inlinedAt: !84263)
!84266 = distinct !DILexicalBlock(scope: !84262, file: !83615, line: 114, column: 9)
!84267 = !DILocation(line: 1917, column: 50, scope: !84268, inlinedAt: !84269)
!84268 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !83622, file: !115, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84269 = distinct !DILocation(line: 781, column: 12, scope: !84270, inlinedAt: !84271)
!84270 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !20159, file: !20158, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84271 = distinct !DILocation(line: 866, column: 14, scope: !84272, inlinedAt: !84273)
!84272 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !20163, file: !20158, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84273 = distinct !DILocation(line: 115, column: 18, scope: !84274, inlinedAt: !84263)
!84274 = !DILexicalBlockFile(scope: !84275, file: !83615, discriminator: 2)
!84275 = distinct !DILexicalBlock(scope: !84266, file: !83615, line: 115, column: 9)
!84276 = !DILocation(line: 781, column: 12, scope: !84270, inlinedAt: !84271)
!84277 = !DILocation(line: 25, column: 14, scope: !84278, inlinedAt: !84279)
!84278 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !8168, file: !8166, line: 22, type: !10, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84279 = distinct !DILocation(line: 287, column: 13, scope: !84280, inlinedAt: !84281)
!84280 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !17152, file: !17151, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84281 = distinct !DILocation(line: 116, column: 13, scope: !84275, inlinedAt: !84263)
!84282 = distinct !{!84282, !20201}
!84283 = !DILocation(line: 119, column: 23, scope: !84266, inlinedAt: !84263)
!84284 = !DILocation(line: 555, column: 18, scope: !84285, inlinedAt: !84286)
!84285 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCseeLknQCOKOd_13polars_python", scope: !7430, file: !6461, line: 552, type: !10, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84286 = distinct !DILocation(line: 119, column: 33, scope: !84266, inlinedAt: !84263)
!84287 = !DILocation(line: 344, column: 24, scope: !84225, inlinedAt: !84193)
!84288 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84289)
!84289 = distinct !DILocation(line: 1732, column: 18, scope: !84083, inlinedAt: !84290)
!84290 = distinct !DILocation(line: 80, column: 34, scope: !84085, inlinedAt: !84291)
!84291 = distinct !DILocation(line: 345, column: 45, scope: !84225, inlinedAt: !84193)
!84292 = !DILocation(line: 81, column: 17, scope: !84089, inlinedAt: !84291)
!84293 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84294)
!84294 = distinct !DILocation(line: 84, column: 21, scope: !84089, inlinedAt: !84291)
!84295 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84294)
!84296 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84297)
!84297 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84298)
!84298 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84299)
!84299 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84294)
!84300 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84298)
!84301 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84302)
!84302 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84294)
!84303 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84304)
!84304 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84305)
!84305 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84294)
!84306 = distinct !{!84306, !20201}
!84307 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84294)
!84308 = !DILocation(line: 346, column: 46, scope: !84309, inlinedAt: !84193)
!84309 = distinct !DILexicalBlock(scope: !84225, file: !76668, line: 345, column: 25)
!84310 = !DILocation(line: 2511, column: 13, scope: !84311, inlinedAt: !84312)
!84311 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1789, file: !1788, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84312 = distinct !DILocation(line: 346, column: 69, scope: !84309, inlinedAt: !84193)
!84313 = !DILocation(line: 3904, column: 24, scope: !84081, inlinedAt: !84314)
!84314 = distinct !DILocation(line: 1732, column: 18, scope: !84201, inlinedAt: !84315)
!84315 = distinct !DILocation(line: 347, column: 42, scope: !84316, inlinedAt: !84193)
!84316 = distinct !DILexicalBlock(scope: !84309, file: !76668, line: 346, column: 25)
!84317 = !DILocation(line: 347, column: 29, scope: !84316, inlinedAt: !84193)
!84318 = !DILocation(line: 3890, column: 24, scope: !84319, inlinedAt: !84320)
!84319 = distinct !DISubprogram(name: "atomic_store<*mut std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1G_", scope: !675, file: !674, line: 3885, type: !10, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84320 = distinct !DILocation(line: 1763, column: 13, scope: !84321, inlinedAt: !84322)
!84321 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE5storeB1I_", scope: !679, file: !674, line: 1760, type: !10, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84322 = distinct !DILocation(line: 351, column: 41, scope: !84316, inlinedAt: !84193)
!84323 = !DILocation(line: 3890, column: 24, scope: !83790, inlinedAt: !84324)
!84324 = distinct !DILocation(line: 2898, column: 26, scope: !84325, inlinedAt: !84326)
!84325 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !679, file: !674, line: 2896, type: !10, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84326 = distinct !DILocation(line: 352, column: 41, scope: !84316, inlinedAt: !84193)
!84327 = !DILocation(line: 344, column: 21, scope: !84225, inlinedAt: !84193)
!84328 = !DILocation(line: 435, column: 30, scope: !84329)
!84329 = distinct !DILexicalBlock(scope: !84183, file: !76668, line: 435, column: 39)
!84330 = !DILocation(line: 435, column: 20, scope: !84329)
!84331 = !DILocation(line: 355, column: 21, scope: !84225, inlinedAt: !84193)
!84332 = !DILocation(line: 356, column: 21, scope: !84225, inlinedAt: !84193)
!84333 = !DILocation(line: 379, column: 24, scope: !84334, inlinedAt: !84337)
!84334 = distinct !DILexicalBlock(scope: !84335, file: !76668, line: 377, column: 9)
!84335 = distinct !DILexicalBlock(scope: !84336, file: !76668, line: 376, column: 9)
!84336 = distinct !DISubprogram(name: "read<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_", scope: !76846, file: !76668, line: 369, type: !52, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84337 = distinct !DILocation(line: 431, column: 33, scope: !84183)
!84338 = !DILocation(line: 253, column: 13, scope: !84339, inlinedAt: !84340)
!84339 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1N_", scope: !1799, file: !1798, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84340 = distinct !DILocation(line: 646, column: 26, scope: !84341, inlinedAt: !84342)
!84341 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1k_", scope: !824, file: !823, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84342 = distinct !DILocation(line: 379, column: 39, scope: !84334, inlinedAt: !84337)
!84343 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84344)
!84344 = distinct !DILocation(line: 2870, column: 26, scope: !84127, inlinedAt: !84345)
!84345 = distinct !DILocation(line: 47, column: 26, scope: !84129, inlinedAt: !84346)
!84346 = distinct !DILocation(line: 380, column: 18, scope: !84347, inlinedAt: !84337)
!84347 = distinct !DILexicalBlock(scope: !84334, file: !76668, line: 379, column: 13)
!84348 = !{!84349}
!84349 = distinct !{!84349, !84350, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_: argument 0"}
!84350 = distinct !{!84350, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_"}
!84351 = !DILocation(line: 47, column: 15, scope: !84129, inlinedAt: !84346)
!84352 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84353)
!84353 = distinct !DILocation(line: 48, column: 21, scope: !84129, inlinedAt: !84346)
!84354 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84353)
!84355 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84356)
!84356 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84357)
!84357 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84358)
!84358 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84353)
!84359 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84357)
!84360 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84361)
!84361 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84353)
!84362 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84363)
!84363 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84364)
!84364 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84353)
!84365 = distinct !{!84365, !20201}
!84366 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84353)
!84367 = !DILocation(line: 1721, column: 9, scope: !84368, inlinedAt: !84369)
!84368 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1f_", scope: !74, file: !73, line: 1682, type: !10, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84369 = distinct !DILocation(line: 1263, column: 18, scope: !84370, inlinedAt: !84371)
!84370 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB1l_", scope: !172, file: !171, line: 1258, type: !10, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84371 = distinct !DILocation(line: 381, column: 38, scope: !84347, inlinedAt: !84337)
!84372 = !DILocation(line: 385, column: 16, scope: !84373, inlinedAt: !84337)
!84373 = distinct !DILexicalBlock(scope: !84347, file: !76668, line: 381, column: 13)
!84374 = !DILocation(line: 253, column: 13, scope: !84375, inlinedAt: !84376)
!84375 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1N_", scope: !1799, file: !1798, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84376 = distinct !DILocation(line: 646, column: 26, scope: !84377, inlinedAt: !84378)
!84377 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1k_", scope: !824, file: !823, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84378 = distinct !DILocation(line: 93, column: 47, scope: !84379, inlinedAt: !84382)
!84379 = distinct !DILexicalBlock(scope: !84380, file: !76668, line: 92, column: 9)
!84380 = distinct !DILexicalBlock(scope: !84381, file: !76668, line: 92, column: 9)
!84381 = distinct !DISubprogram(name: "destroy<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE7destroyBX_", scope: !83713, file: !76668, line: 89, type: !10, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84382 = distinct !DILocation(line: 386, column: 17, scope: !84373, inlinedAt: !84337)
!84383 = !DILocation(line: 2447, column: 9, scope: !84384, inlinedAt: !84385)
!84384 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !6462, file: !6461, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84385 = distinct !DILocation(line: 3615, column: 24, scope: !84386, inlinedAt: !84387)
!84386 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !679, file: !674, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84387 = distinct !DILocation(line: 2870, column: 43, scope: !84388, inlinedAt: !84389)
!84388 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !679, file: !674, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84389 = distinct !DILocation(line: 96, column: 27, scope: !84390, inlinedAt: !84382)
!84390 = distinct !DILexicalBlock(scope: !84379, file: !76668, line: 93, column: 13)
!84391 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84392)
!84392 = distinct !DILocation(line: 2870, column: 26, scope: !84388, inlinedAt: !84389)
!84393 = !DILocation(line: 96, column: 16, scope: !84390, inlinedAt: !84382)
!84394 = !DILocation(line: 4138, column: 23, scope: !84395, inlinedAt: !84396)
!84395 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseeLknQCOKOd_13polars_python", scope: !675, file: !674, line: 4131, type: !10, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84396 = distinct !DILocation(line: 3295, column: 26, scope: !84397, inlinedAt: !84398)
!84397 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !679, file: !674, line: 3293, type: !10, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84398 = distinct !DILocation(line: 97, column: 31, scope: !84390, inlinedAt: !84382)
!84399 = !DILocation(line: 97, column: 20, scope: !84390, inlinedAt: !84382)
!84400 = !DILocation(line: 898, column: 17, scope: !84401, inlinedAt: !84402)
!84401 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1789, file: !1788, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84402 = distinct !DILocation(line: 214, column: 28, scope: !84403, inlinedAt: !84404)
!84403 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !20173, file: !20158, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84404 = distinct !DILocation(line: 784, column: 35, scope: !84405, inlinedAt: !84407)
!84405 = distinct !DILexicalBlock(scope: !84406, file: !20158, line: 782, column: 13)
!84406 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !20159, file: !20158, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84407 = distinct !DILocation(line: 866, column: 14, scope: !84408, inlinedAt: !84409)
!84408 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !20163, file: !20158, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84409 = distinct !DILocation(line: 92, column: 18, scope: !84410, inlinedAt: !84382)
!84410 = !DILexicalBlockFile(scope: !84380, file: !76668, discriminator: 2)
!84411 = !DILocation(line: 1917, column: 50, scope: !84412, inlinedAt: !84413)
!84412 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !20155, file: !115, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84413 = distinct !DILocation(line: 781, column: 12, scope: !84406, inlinedAt: !84407)
!84414 = !DILocation(line: 781, column: 12, scope: !84406, inlinedAt: !84407)
!84415 = !DILocation(line: 4138, column: 23, scope: !84416, inlinedAt: !84417)
!84416 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseeLknQCOKOd_13polars_python", scope: !675, file: !674, line: 4131, type: !10, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84417 = distinct !DILocation(line: 3295, column: 26, scope: !84418, inlinedAt: !84419)
!84418 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !679, file: !674, line: 3293, type: !10, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84419 = distinct !DILocation(line: 387, column: 34, scope: !84373, inlinedAt: !84337)
!84420 = !DILocation(line: 387, column: 23, scope: !84373, inlinedAt: !84337)
!84421 = !DILocation(line: 128, column: 14, scope: !1116, inlinedAt: !84422)
!84422 = distinct !DILocation(line: 229, column: 22, scope: !1118, inlinedAt: !84423)
!84423 = distinct !DILocation(line: 344, column: 9, scope: !1120, inlinedAt: !84424)
!84424 = distinct !DILocation(line: 462, column: 23, scope: !1122, inlinedAt: !84425)
!84425 = distinct !DILocation(line: 1921, column: 24, scope: !84071, inlinedAt: !84426)
!84426 = distinct !DILocation(line: 810, column: 1, scope: !84075, inlinedAt: !84427)
!84427 = distinct !DILocation(line: 1003, column: 1, scope: !84428, inlinedAt: !84429)
!84428 = distinct !DISubprogram(name: "drop<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEB1V_", scope: !649, file: !7441, line: 999, type: !10, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84429 = distinct !DILocation(line: 105, column: 9, scope: !84381, inlinedAt: !84430)
!84430 = distinct !DILocation(line: 0, scope: !84373, inlinedAt: !84337)
!84431 = !DILocation(line: 391, column: 13, scope: !84373, inlinedAt: !84337)
!84432 = !DILocation(line: 1917, column: 50, scope: !84412, inlinedAt: !84433)
!84433 = distinct !DILocation(line: 781, column: 12, scope: !84406, inlinedAt: !84434)
!84434 = distinct !DILocation(line: 866, column: 14, scope: !84408, inlinedAt: !84435)
!84435 = distinct !DILocation(line: 92, column: 18, scope: !84410, inlinedAt: !84436)
!84436 = distinct !DILocation(line: 388, column: 17, scope: !84373, inlinedAt: !84337)
!84437 = !DILocation(line: 781, column: 12, scope: !84406, inlinedAt: !84434)
!84438 = !DILocation(line: 898, column: 17, scope: !84401, inlinedAt: !84439)
!84439 = distinct !DILocation(line: 214, column: 28, scope: !84403, inlinedAt: !84440)
!84440 = distinct !DILocation(line: 784, column: 35, scope: !84405, inlinedAt: !84434)
!84441 = !DILocation(line: 253, column: 13, scope: !84375, inlinedAt: !84442)
!84442 = distinct !DILocation(line: 646, column: 26, scope: !84377, inlinedAt: !84443)
!84443 = distinct !DILocation(line: 93, column: 47, scope: !84379, inlinedAt: !84436)
!84444 = !DILocation(line: 2447, column: 9, scope: !84384, inlinedAt: !84445)
!84445 = distinct !DILocation(line: 3615, column: 24, scope: !84386, inlinedAt: !84446)
!84446 = distinct !DILocation(line: 2870, column: 43, scope: !84388, inlinedAt: !84447)
!84447 = distinct !DILocation(line: 96, column: 27, scope: !84390, inlinedAt: !84436)
!84448 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84449)
!84449 = distinct !DILocation(line: 2870, column: 26, scope: !84388, inlinedAt: !84447)
!84450 = !DILocation(line: 96, column: 16, scope: !84390, inlinedAt: !84436)
!84451 = !DILocation(line: 4138, column: 23, scope: !84395, inlinedAt: !84452)
!84452 = distinct !DILocation(line: 3295, column: 26, scope: !84397, inlinedAt: !84453)
!84453 = distinct !DILocation(line: 97, column: 31, scope: !84390, inlinedAt: !84436)
!84454 = !DILocation(line: 97, column: 20, scope: !84390, inlinedAt: !84436)
!84455 = !DILocation(line: 966, column: 15, scope: !84456, inlinedAt: !84457)
!84456 = distinct !DISubprogram(name: "map_err<polars_python::timeout::TimeoutRequest, (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::list::{impl#3}::recv::{closure_env#0}<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs1_NtNtB1R_4mpmc4listINtB2L_7ChannelBI_E4recv0EBM_", scope: !50, file: !49, line: 962, type: !10, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84457 = !DILocation(line: 431, column: 45, scope: !84183)
!84458 = !DILocation(line: 966, column: 9, scope: !84456, inlinedAt: !84457)
!84459 = !DILocation(line: 435, column: 25, scope: !84329)
!84460 = !DILocation(line: 436, column: 20, scope: !84329)
!84461 = !DILocation(line: 25, column: 38, scope: !84462, inlinedAt: !84463)
!84462 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !76903, file: !76902, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84463 = !DILocation(line: 49, column: 38, scope: !84464, inlinedAt: !84465)
!84464 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !76910, file: !76909, line: 49, type: !10, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84465 = !DILocation(line: 154, column: 38, scope: !84466, inlinedAt: !84467)
!84466 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !76916, file: !76915, line: 154, type: !10, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84467 = !DILocation(line: 1466, column: 14, scope: !84468, inlinedAt: !84460)
!84468 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCseeLknQCOKOd_13polars_python", scope: !76920, file: !115, line: 1465, type: !10, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84469 = !DILocation(line: 46, column: 13, scope: !84470, inlinedAt: !84471)
!84470 = distinct !DISubprogram(name: "with<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_", scope: !76870, file: !7474, line: 37, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84471 = distinct !DILocation(line: 442, column: 13, scope: !84183)
!84472 = !{!84473}
!84473 = distinct !{!84473, !84474, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_: argument 0"}
!84474 = distinct !{!84474, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_"}
!84475 = !DILocation(line: 46, column: 21, scope: !84470, inlinedAt: !84471)
!84476 = !DILocation(line: 555, column: 18, scope: !84477, inlinedAt: !84478)
!84477 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<()>>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy5StateuEE3getCseeLknQCOKOd_13polars_python", scope: !7430, file: !6461, line: 552, type: !10, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84478 = distinct !DILocation(line: 59, column: 42, scope: !84479, inlinedAt: !84481)
!84479 = distinct !DILexicalBlock(scope: !84480, file: !7421, line: 59, column: 48)
!84480 = distinct !DISubprogram(name: "get_or_init<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, (), fn() -> core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python", scope: !7422, file: !7421, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84481 = distinct !DILocation(line: 97, column: 49, scope: !84482, inlinedAt: !84484)
!84482 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseeLknQCOKOd_13polars_python", scope: !84483, file: !7476, line: 92, type: !52, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84483 = !DINamespace(name: "{constant#0}", scope: !7477)
!84484 = distinct !DILocation(line: 250, column: 5, scope: !84485, inlinedAt: !84486)
!84485 = distinct !DISubprogram(name: "call_once<std::sync::mpmc::context::{impl#0}::with::CONTEXT::{constant#0}::{closure_env#0}, (core::option::Option<&mut core::option::Option<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>>)>", linkageName: "_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python", scope: !7446, file: !1975, line: 250, type: !10, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84486 = distinct !DILocation(line: 461, column: 37, scope: !84487, inlinedAt: !84488)
end_hunk_2
begin_hunk_3_@memcmp
!84601 = distinct !DISubprogram(name: "atomic_store<*mut ()>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOuECseeLknQCOKOd_13polars_python", scope: !675, file: !674, line: 3885, type: !10, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84602 = distinct !DILocation(line: 1763, column: 13, scope: !84598, inlinedAt: !84599)
!84603 = !DILocation(line: 57, column: 31, scope: !84590, inlinedAt: !84511)
!84604 = !DILocation(line: 1015, column: 18, scope: !84520, inlinedAt: !84605)
!84605 = distinct !DILocation(line: 48, column: 30, scope: !84606, inlinedAt: !84607)
!84606 = !DILexicalBlockFile(scope: !84522, file: !7474, discriminator: 2)
!84607 = distinct !DILocation(line: 57, column: 31, scope: !84590, inlinedAt: !84511)
!84608 = !DILocation(line: 49, column: 13, scope: !84609, inlinedAt: !84607)
!84609 = distinct !DILexicalBlock(scope: !84522, file: !7474, line: 48, column: 13)
!84610 = !DILocation(line: 437, column: 9, scope: !84611, inlinedAt: !84612)
!84611 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCseeLknQCOKOd_13polars_python", scope: !7430, file: !6461, line: 433, type: !10, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84612 = distinct !DILocation(line: 58, column: 26, scope: !84613, inlinedAt: !84511)
!84613 = distinct !DILexicalBlock(scope: !84590, file: !7474, line: 57, column: 21)
!84614 = !DILocation(line: 929, column: 22, scope: !84504, inlinedAt: !84615)
!84615 = distinct !DILocation(line: 513, column: 9, scope: !84616, inlinedAt: !84617)
!84616 = !DILexicalBlockFile(scope: !84506, file: !6461, discriminator: 2)
!84617 = distinct !DILocation(line: 437, column: 14, scope: !84611, inlinedAt: !84612)
!84618 = !DILocation(line: 930, column: 49, scope: !84619, inlinedAt: !84615)
!84619 = distinct !DILexicalBlock(scope: !84504, file: !7441, line: 929, column: 9)
!84620 = !DILocation(line: 810, column: 1, scope: !7494, inlinedAt: !84621)
!84621 = distinct !DILocation(line: 437, column: 26, scope: !84611, inlinedAt: !84612)
!84622 = !DILocation(line: 3956, column: 24, scope: !7503, inlinedAt: !84623)
!84623 = distinct !DILocation(line: 3193, column: 26, scope: !7505, inlinedAt: !84624)
!84624 = distinct !DILocation(line: 2814, column: 32, scope: !7507, inlinedAt: !84625)
!84625 = distinct !DILocation(line: 810, column: 1, scope: !7509, inlinedAt: !84626)
!84626 = distinct !DILocation(line: 810, column: 1, scope: !7511, inlinedAt: !84627)
!84627 = distinct !DILocation(line: 810, column: 1, scope: !7494, inlinedAt: !84621)
!84628 = !{!84629, !84631, !84633, !84635, !84473}
!84629 = distinct !{!84629, !84630, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!84630 = distinct !{!84630, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!84631 = distinct !{!84631, !84632, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!84632 = distinct !{!84632, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!84633 = distinct !{!84633, !84634, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!84634 = distinct !{!84634, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!84635 = distinct !{!84635, !84636, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python: argument 0"}
!84636 = distinct !{!84636, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python"}
!84637 = !DILocation(line: 2814, column: 12, scope: !7507, inlinedAt: !84625)
!84638 = !DILocation(line: 4387, column: 24, scope: !684, inlinedAt: !84639)
!84639 = distinct !DILocation(line: 64, column: 9, scope: !7507, inlinedAt: !84625)
!84640 = !DILocation(line: 2857, column: 18, scope: !7507, inlinedAt: !84625)
!84641 = !DILocation(line: 437, column: 26, scope: !84611, inlinedAt: !84612)
!84642 = !DILocation(line: 60, column: 17, scope: !84510, inlinedAt: !84511)
!84643 = !DILocation(line: 61, column: 13, scope: !84510, inlinedAt: !84511)
!84644 = !DILocation(line: 3956, column: 24, scope: !7503, inlinedAt: !84645)
!84645 = distinct !DILocation(line: 3193, column: 26, scope: !7505, inlinedAt: !84646)
!84646 = distinct !DILocation(line: 2814, column: 32, scope: !7507, inlinedAt: !84647)
!84647 = distinct !DILocation(line: 810, column: 1, scope: !7509, inlinedAt: !84648)
!84648 = distinct !DILocation(line: 810, column: 1, scope: !7511, inlinedAt: !84649)
!84649 = distinct !DILocation(line: 60, column: 17, scope: !84510, inlinedAt: !84511)
!84650 = !{!84651, !84653, !84655, !84473}
!84651 = distinct !{!84651, !84652, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!84652 = distinct !{!84652, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!84653 = distinct !{!84653, !84654, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!84654 = distinct !{!84654, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!84655 = distinct !{!84655, !84656, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!84656 = distinct !{!84656, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!84657 = !DILocation(line: 2814, column: 12, scope: !7507, inlinedAt: !84647)
!84658 = !DILocation(line: 4387, column: 24, scope: !684, inlinedAt: !84659)
!84659 = distinct !DILocation(line: 64, column: 9, scope: !7507, inlinedAt: !84647)
!84660 = !DILocation(line: 2857, column: 18, scope: !7507, inlinedAt: !84647)
!84661 = !DILocation(line: 1622, column: 23, scope: !84662, inlinedAt: !84664)
!84662 = distinct !DILexicalBlock(scope: !84663, file: !49, line: 1622, column: 13)
!84663 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs1_NtB1W_4listINtB2M_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs0_0EB3g_", scope: !50, file: !49, line: 1616, type: !10, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84664 = distinct !DILocation(line: 62, column: 14, scope: !84489, inlinedAt: !84471)
!84665 = !DILocation(line: 63, column: 5, scope: !84470, inlinedAt: !84471)
!84666 = !DILocation(line: 49, column: 26, scope: !84667, inlinedAt: !84671)
!84667 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !84669, file: !84668, line: 46, type: !10, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84668 = !DIFile(filename: "library/core/src/num/niche_types.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b3871eb21e61251a8509e6d07911f9fb")
!84669 = !DINamespace(name: "Nanoseconds", scope: !84670)
!84670 = !DINamespace(name: "niche_types", scope: !1790)
!84671 = !DILocation(line: 70, column: 32, scope: !84672, inlinedAt: !84674)
!84672 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !84673, file: !84668, line: 69, type: !10, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84673 = !DINamespace(name: "{impl#12}", scope: !84670)
!84674 = !DILocation(line: 77, column: 22, scope: !84675, inlinedAt: !84677)
!84675 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !84676, file: !84668, line: 76, type: !10, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84676 = !DINamespace(name: "{impl#13}", scope: !84670)
!84677 = !DILocation(line: 25, column: 38, scope: !84678, inlinedAt: !84463)
!84678 = !DILexicalBlockFile(scope: !84462, file: !76902, discriminator: 2)
!84679 = !DILocation(line: 539, column: 9, scope: !84680, inlinedAt: !84681)
!84680 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !76925, file: !115, line: 538, type: !10, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84681 = !DILocation(line: 250, column: 5, scope: !84682, inlinedAt: !84683)
!84682 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCseeLknQCOKOd_13polars_python", scope: !7446, file: !1975, line: 250, type: !10, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84683 = !DILocation(line: 664, column: 24, scope: !84684, inlinedAt: !84686)
!84684 = distinct !DILexicalBlock(scope: !84685, file: !236, line: 664, column: 13)
!84685 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECseeLknQCOKOd_13polars_python", scope: !237, file: !236, line: 661, type: !10, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84686 = !DILocation(line: 1466, column: 33, scope: !84468, inlinedAt: !84460)
!84687 = !DILocation(line: 437, column: 28, scope: !84329)
!84688 = !DILocation(line: 0, scope: !84689)
!84689 = !DILexicalBlockFile(scope: !84183, file: !576, discriminator: 0)
!84690 = !DILocation(line: 0, scope: !84183)
!84691 = !DILocation(line: 466, column: 5, scope: !84177)
!84692 = !DILocation(line: 466, column: 6, scope: !84177)
!84693 = !DILocation(line: 968, column: 23, scope: !84694, inlinedAt: !84457)
!84694 = distinct !DILexicalBlock(scope: !84456, file: !49, line: 968, column: 13)
!84695 = !DILocation(line: 968, column: 32, scope: !84456, inlinedAt: !84457)
!84696 = !DILocation(line: 967, column: 22, scope: !84697, inlinedAt: !84457)
!84697 = distinct !DILexicalBlock(scope: !84456, file: !49, line: 967, column: 13)
!84698 = !DILocation(line: 967, column: 16, scope: !84456, inlinedAt: !84457)
!84699 = !DILocation(line: 970, column: 5, scope: !84456, inlinedAt: !84457)
!84700 = distinct !DISubprogram(name: "send<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_", scope: !76846, file: !76668, line: 404, type: !10, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84701 = !DILocation(line: 2447, column: 9, scope: !84702, inlinedAt: !84703)
!84702 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !6462, file: !6461, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84703 = distinct !DILocation(line: 3615, column: 24, scope: !84704, inlinedAt: !84705)
!84704 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !679, file: !674, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84705 = distinct !DILocation(line: 2870, column: 43, scope: !84706, inlinedAt: !84707)
!84706 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !679, file: !674, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84707 = distinct !DILocation(line: 177, column: 40, scope: !84708, inlinedAt: !84710)
!84708 = distinct !DILexicalBlock(scope: !84709, file: !76668, line: 176, column: 9)
!84709 = distinct !DISubprogram(name: "start_send<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_", scope: !76846, file: !76668, line: 175, type: !10, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84710 = distinct !DILocation(line: 410, column: 22, scope: !84711)
!84711 = distinct !DILexicalBlock(scope: !84700, file: !76668, line: 409, column: 9)
!84712 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84713)
!84713 = distinct !DILocation(line: 2870, column: 26, scope: !84706, inlinedAt: !84707)
!84714 = !{!84715}
!84715 = distinct !{!84715, !84716, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_: argument 0"}
!84716 = distinct !{!84716, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_"}
!84717 = !DILocation(line: 2447, column: 9, scope: !84718, inlinedAt: !84719)
!84718 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEE3getB2h_", scope: !6462, file: !6461, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84719 = distinct !DILocation(line: 2500, column: 16, scope: !84720, inlinedAt: !84721)
!84720 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE6as_ptrB1I_", scope: !679, file: !674, line: 2499, type: !10, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84721 = distinct !DILocation(line: 1732, column: 35, scope: !84722, inlinedAt: !84723)
!84722 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE4loadB1I_", scope: !679, file: !674, line: 1730, type: !10, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84723 = distinct !DILocation(line: 178, column: 41, scope: !84724, inlinedAt: !84710)
!84724 = distinct !DILexicalBlock(scope: !84708, file: !76668, line: 177, column: 9)
!84725 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84726)
!84726 = distinct !DILocation(line: 1732, column: 18, scope: !84722, inlinedAt: !84723)
!84727 = !DILocation(line: 183, column: 16, scope: !84728, inlinedAt: !84710)
!84728 = distinct !DILexicalBlock(scope: !84729, file: !76668, line: 179, column: 9)
!84729 = distinct !DILexicalBlock(scope: !84724, file: !76668, line: 178, column: 9)
!84730 = !DILocation(line: 411, column: 18, scope: !84711)
!84731 = !DILocation(line: 411, column: 36, scope: !84711)
!84732 = !DILocation(line: 265, column: 12, scope: !84733, inlinedAt: !84734)
!84733 = distinct !DISubprogram(name: "write<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_", scope: !76846, file: !76668, line: 263, type: !52, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84734 = distinct !DILocation(line: 411, column: 23, scope: !84711)
!84735 = !DILocation(line: 189, column: 26, scope: !84728, inlinedAt: !84710)
!84736 = !DILocation(line: 192, column: 16, scope: !84737, inlinedAt: !84710)
!84737 = distinct !DILexicalBlock(scope: !84728, file: !76668, line: 189, column: 13)
!84738 = !DILocation(line: 135, column: 23, scope: !83614, inlinedAt: !84739)
!84739 = distinct !DILocation(line: 193, column: 25, scope: !84737, inlinedAt: !84710)
!84740 = !DILocation(line: 127, column: 12, scope: !83614, inlinedAt: !84739)
!84741 = !DILocation(line: 132, column: 13, scope: !83614, inlinedAt: !84739)
!84742 = !DILocation(line: 1917, column: 50, scope: !83621, inlinedAt: !84743)
!84743 = distinct !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84744)
!84744 = distinct !DILocation(line: 866, column: 14, scope: !83626, inlinedAt: !84745)
!84745 = distinct !DILocation(line: 128, column: 22, scope: !83628, inlinedAt: !84739)
!84746 = !DILocation(line: 781, column: 12, scope: !83624, inlinedAt: !84744)
!84747 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84748)
!84748 = distinct !DILocation(line: 128, column: 41, scope: !83614, inlinedAt: !84739)
!84749 = !DILocation(line: 25, column: 14, scope: !83637, inlinedAt: !84750)
!84750 = distinct !DILocation(line: 287, column: 13, scope: !83639, inlinedAt: !84751)
!84751 = distinct !DILocation(line: 129, column: 17, scope: !83629, inlinedAt: !84739)
!84752 = !DILocation(line: 201, column: 16, scope: !84737, inlinedAt: !84710)
!84753 = distinct !{!84753, !20201}
!84754 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84755)
!84755 = distinct !DILocation(line: 2870, column: 26, scope: !84706, inlinedAt: !84756)
!84756 = distinct !DILocation(line: 194, column: 40, scope: !84737, inlinedAt: !84710)
!84757 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84758)
!84758 = distinct !DILocation(line: 1732, column: 18, scope: !84722, inlinedAt: !84759)
!84759 = distinct !DILocation(line: 195, column: 41, scope: !84737, inlinedAt: !84710)
!84760 = !DILocation(line: 0, scope: !84729, inlinedAt: !84710)
!84761 = !DILocation(line: 207, column: 16, scope: !84737, inlinedAt: !84710)
!84762 = !DILocation(line: 341, column: 9, scope: !84763, inlinedAt: !84764)
!84763 = distinct !DISubprogram(name: "new_zeroed<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE10new_zeroedB1u_", scope: !1092, file: !1088, line: 340, type: !10, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84764 = distinct !DILocation(line: 73, column: 18, scope: !84765, inlinedAt: !84766)
!84765 = distinct !DISubprogram(name: "new<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE3newBX_", scope: !83713, file: !76668, line: 66, type: !10, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84766 = distinct !DILocation(line: 202, column: 35, scope: !84737, inlinedAt: !84710)
!84767 = !DILocation(line: 341, column: 9, scope: !84763, inlinedAt: !84768)
!84768 = distinct !DILocation(line: 73, column: 18, scope: !84769, inlinedAt: !84770)
!84769 = !DILexicalBlockFile(scope: !84765, file: !76668, discriminator: 2)
!84770 = distinct !DILocation(line: 208, column: 41, scope: !84737, inlinedAt: !84710)
!84771 = !DILocation(line: 3998, column: 17, scope: !84772, inlinedAt: !84773)
!84772 = distinct !DISubprogram(name: "atomic_compare_exchange<*mut std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1R_", scope: !675, file: !674, line: 3969, type: !10, scopeLine: 3969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84773 = distinct !DILocation(line: 1920, column: 18, scope: !84774, inlinedAt: !84775)
!84774 = distinct !DISubprogram(name: "compare_exchange<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE16compare_exchangeB1I_", scope: !679, file: !674, line: 1912, type: !10, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84775 = distinct !DILocation(line: 213, column: 22, scope: !84776, inlinedAt: !84710)
!84776 = distinct !DILexicalBlock(scope: !84737, file: !76668, line: 208, column: 17)
!84777 = !DILocation(line: 210, column: 20, scope: !84776, inlinedAt: !84710)
!84778 = !DILocation(line: 3890, column: 24, scope: !84319, inlinedAt: !84779)
!84779 = distinct !DILocation(line: 1763, column: 13, scope: !84780, inlinedAt: !84781)
!84780 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE5storeB1I_", scope: !679, file: !674, line: 1760, type: !10, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84781 = distinct !DILocation(line: 221, column: 37, scope: !84776, inlinedAt: !84710)
!84782 = !DILocation(line: 3896, column: 2, scope: !84319, inlinedAt: !84779)
!84783 = !DILocation(line: 810, column: 1, scope: !84784, inlinedAt: !84785)
!84784 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEEEB2r_", scope: !74, file: !73, line: 810, type: !52, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84785 = distinct !DILocation(line: 224, column: 21, scope: !84776, inlinedAt: !84710)
!84786 = !DILocation(line: 128, column: 14, scope: !1116, inlinedAt: !84787)
!84787 = distinct !DILocation(line: 229, column: 22, scope: !1118, inlinedAt: !84788)
!84788 = distinct !DILocation(line: 344, column: 9, scope: !1120, inlinedAt: !84789)
!84789 = distinct !DILocation(line: 462, column: 23, scope: !1122, inlinedAt: !84790)
!84790 = distinct !DILocation(line: 1921, column: 24, scope: !84071, inlinedAt: !84791)
!84791 = distinct !DILocation(line: 810, column: 1, scope: !84075, inlinedAt: !84792)
!84792 = distinct !DILocation(line: 810, column: 1, scope: !84784, inlinedAt: !84785)
!84793 = !DILocation(line: 0, scope: !84724, inlinedAt: !84710)
!84794 = !DILocation(line: 231, column: 28, scope: !84737, inlinedAt: !84710)
!84795 = !DILocation(line: 4084, column: 17, scope: !84254, inlinedAt: !84796)
!84796 = distinct !DILocation(line: 3130, column: 21, scope: !84797, inlinedAt: !84798)
!84797 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !679, file: !674, line: 3123, type: !10, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84798 = distinct !DILocation(line: 234, column: 35, scope: !84799, inlinedAt: !84710)
!84799 = distinct !DILexicalBlock(scope: !84737, file: !76668, line: 231, column: 13)
!84800 = !DILocation(line: 234, column: 13, scope: !84799, inlinedAt: !84710)
!84801 = !DILocation(line: 1077, column: 12, scope: !84260, inlinedAt: !84802)
!84802 = distinct !DILocation(line: 114, column: 36, scope: !84262, inlinedAt: !84803)
!84803 = distinct !DILocation(line: 254, column: 29, scope: !84799, inlinedAt: !84710)
!84804 = !DILocation(line: 3558, column: 28, scope: !83632, inlinedAt: !84805)
!84805 = distinct !DILocation(line: 115, column: 26, scope: !84266, inlinedAt: !84803)
!84806 = !DILocation(line: 1917, column: 50, scope: !84268, inlinedAt: !84807)
!84807 = distinct !DILocation(line: 781, column: 12, scope: !84270, inlinedAt: !84808)
!84808 = distinct !DILocation(line: 866, column: 14, scope: !84272, inlinedAt: !84809)
!84809 = distinct !DILocation(line: 115, column: 18, scope: !84274, inlinedAt: !84803)
!84810 = !DILocation(line: 781, column: 12, scope: !84270, inlinedAt: !84808)
!84811 = !DILocation(line: 25, column: 14, scope: !84278, inlinedAt: !84812)
!84812 = distinct !DILocation(line: 287, column: 13, scope: !84280, inlinedAt: !84813)
!84813 = distinct !DILocation(line: 116, column: 13, scope: !84275, inlinedAt: !84803)
!84814 = distinct !{!84814, !20201}
!84815 = !DILocation(line: 119, column: 23, scope: !84266, inlinedAt: !84803)
!84816 = !DILocation(line: 555, column: 18, scope: !84285, inlinedAt: !84817)
!84817 = distinct !DILocation(line: 119, column: 33, scope: !84266, inlinedAt: !84803)
!84818 = !DILocation(line: 242, column: 24, scope: !84799, inlinedAt: !84710)
!84819 = !DILocation(line: 1014, column: 15, scope: !84820, inlinedAt: !84821)
!84820 = distinct !DISubprogram(name: "unwrap<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_python::timeout::TimeoutRequest>, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEE6unwrapB26_", scope: !237, file: !236, line: 1013, type: !10, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84821 = distinct !DILocation(line: 243, column: 67, scope: !84799, inlinedAt: !84710)
!84822 = !DILocation(line: 1014, column: 9, scope: !84820, inlinedAt: !84821)
!84823 = !DILocation(line: 1016, column: 21, scope: !84820, inlinedAt: !84821)
!84824 = !DILocation(line: 3890, column: 24, scope: !84319, inlinedAt: !84825)
!84825 = distinct !DILocation(line: 1763, column: 13, scope: !84780, inlinedAt: !84826)
!84826 = distinct !DILocation(line: 244, column: 41, scope: !84827, inlinedAt: !84710)
!84827 = distinct !DILexicalBlock(scope: !84799, file: !76668, line: 243, column: 25)
!84828 = !DILocation(line: 3939, column: 24, scope: !84829, inlinedAt: !84830)
!84829 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECseeLknQCOKOd_13polars_python", scope: !675, file: !674, line: 3933, type: !10, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84830 = distinct !DILocation(line: 3162, column: 26, scope: !84831, inlinedAt: !84832)
!84831 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !679, file: !674, line: 3160, type: !10, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84832 = distinct !DILocation(line: 245, column: 41, scope: !84827, inlinedAt: !84710)
!84833 = !DILocation(line: 3890, column: 24, scope: !84319, inlinedAt: !84834)
!84834 = distinct !DILocation(line: 1763, column: 13, scope: !84780, inlinedAt: !84835)
!84835 = distinct !DILocation(line: 246, column: 39, scope: !84827, inlinedAt: !84710)
!84836 = !DILocation(line: 3905, column: 24, scope: !2868, inlinedAt: !84837)
!84837 = distinct !DILocation(line: 2870, column: 26, scope: !84706, inlinedAt: !84838)
!84838 = distinct !DILocation(line: 0, scope: !84737, inlinedAt: !84710)
!84839 = !DILocation(line: 3905, column: 24, scope: !84081, inlinedAt: !84840)
!84840 = distinct !DILocation(line: 1732, column: 18, scope: !84722, inlinedAt: !84838)
!84841 = !DILocation(line: 810, column: 1, scope: !84784, inlinedAt: !84842)
!84842 = distinct !DILocation(line: 260, column: 5, scope: !84729, inlinedAt: !84710)
!84843 = !DILocation(line: 128, column: 14, scope: !1116, inlinedAt: !84844)
!84844 = distinct !DILocation(line: 229, column: 22, scope: !1118, inlinedAt: !84845)
!84845 = distinct !DILocation(line: 344, column: 9, scope: !1120, inlinedAt: !84846)
!84846 = distinct !DILocation(line: 462, column: 23, scope: !1122, inlinedAt: !84847)
!84847 = distinct !DILocation(line: 1921, column: 24, scope: !84071, inlinedAt: !84848)
!84848 = distinct !DILocation(line: 810, column: 1, scope: !84075, inlinedAt: !84849)
!84849 = distinct !DILocation(line: 810, column: 1, scope: !84784, inlinedAt: !84842)
!84850 = !DILocation(line: 0, scope: !84700)
!84851 = !DILocation(line: 0, scope: !84728, inlinedAt: !84710)
!84852 = !DILocation(line: 810, column: 1, scope: !84784, inlinedAt: !84853)
!84853 = distinct !DILocation(line: 260, column: 5, scope: !84729, inlinedAt: !84710)
!84854 = !DILocation(line: 128, column: 14, scope: !1116, inlinedAt: !84855)
!84855 = distinct !DILocation(line: 229, column: 22, scope: !1118, inlinedAt: !84856)
!84856 = distinct !DILocation(line: 344, column: 9, scope: !1120, inlinedAt: !84857)
!84857 = distinct !DILocation(line: 462, column: 23, scope: !1122, inlinedAt: !84858)
!84858 = distinct !DILocation(line: 1921, column: 24, scope: !84071, inlinedAt: !84859)
!84859 = distinct !DILocation(line: 810, column: 1, scope: !84075, inlinedAt: !84860)
!84860 = distinct !DILocation(line: 810, column: 1, scope: !84784, inlinedAt: !84853)
!84861 = !{!84862}
!84862 = distinct !{!84862, !84863, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_: argument 0"}
!84863 = distinct !{!84863, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_"}
!84864 = !DILocation(line: 411, column: 23, scope: !84711)
!84865 = !{!84866}
!84866 = distinct !{!84866, !84863, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_: argument 1"}
!84867 = !DILocation(line: 273, column: 24, scope: !84868, inlinedAt: !84734)
!84868 = distinct !DILexicalBlock(scope: !84869, file: !76668, line: 271, column: 9)
!84869 = distinct !DILexicalBlock(scope: !84733, file: !76668, line: 270, column: 9)
!84870 = !DILocation(line: 252, column: 39, scope: !84871, inlinedAt: !84872)
!84871 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1N_", scope: !1799, file: !1798, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84872 = distinct !DILocation(line: 646, column: 26, scope: !84873, inlinedAt: !84874)
!84873 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1k_", scope: !824, file: !823, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84874 = distinct !DILocation(line: 273, column: 39, scope: !84868, inlinedAt: !84734)
!84875 = !DILocation(line: 252, column: 13, scope: !84871, inlinedAt: !84872)
!84876 = !DILocation(line: 253, column: 13, scope: !84871, inlinedAt: !84872)
!84877 = !DILocation(line: 1921, column: 41, scope: !84878, inlinedAt: !84879)
!84878 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1g_", scope: !74, file: !73, line: 1898, type: !10, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84879 = distinct !DILocation(line: 1418, column: 18, scope: !84880, inlinedAt: !84881)
!84880 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB1l_", scope: !172, file: !171, line: 1413, type: !10, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84881 = distinct !DILocation(line: 274, column: 28, scope: !84882, inlinedAt: !84734)
!84882 = distinct !DILexicalBlock(scope: !84868, file: !76668, line: 273, column: 13)
!84883 = !DILocation(line: 2447, column: 9, scope: !84884, inlinedAt: !84885)
!84884 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !6462, file: !6461, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84885 = distinct !DILocation(line: 3615, column: 24, scope: !84886, inlinedAt: !84887)
!84886 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !679, file: !674, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84887 = distinct !DILocation(line: 3295, column: 41, scope: !84888, inlinedAt: !84889)
!84888 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !679, file: !674, line: 3293, type: !10, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84889 = distinct !DILocation(line: 275, column: 24, scope: !84882, inlinedAt: !84734)
!84890 = !DILocation(line: 4137, column: 24, scope: !84891, inlinedAt: !84892)
!84891 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseeLknQCOKOd_13polars_python", scope: !675, file: !674, line: 4131, type: !10, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84892 = distinct !DILocation(line: 3295, column: 26, scope: !84888, inlinedAt: !84889)
!84893 = !{!84862, !84866}
!84894 = !DILocation(line: 2447, column: 9, scope: !84895, inlinedAt: !84896)
!84895 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCseeLknQCOKOd_13polars_python", scope: !6462, file: !6461, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84896 = distinct !DILocation(line: 741, column: 37, scope: !84897, inlinedAt: !84898)
!84897 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !679, file: !674, line: 738, type: !10, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84898 = distinct !DILocation(line: 172, column: 27, scope: !84899, inlinedAt: !84900)
!84899 = distinct !DISubprogram(name: "notify", linkageName: "_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify", scope: !76685, file: !76684, line: 171, type: !10, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84900 = distinct !DILocation(line: 279, column: 24, scope: !84868, inlinedAt: !84734)
!84901 = !DILocation(line: 3906, column: 23, scope: !6472, inlinedAt: !84902)
!84902 = distinct !DILocation(line: 741, column: 18, scope: !84897, inlinedAt: !84898)
!84903 = !DILocation(line: 172, column: 13, scope: !84899, inlinedAt: !84900)
!84904 = !DILocation(line: 279, column: 9, scope: !84868, inlinedAt: !84734)
!84905 = !DILocation(line: 173, column: 29, scope: !84899, inlinedAt: !84900)
!84906 = !DILocation(line: 173, column: 40, scope: !84899, inlinedAt: !84900)
!84907 = !{!84908}
!84908 = distinct !{!84908, !84909, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python: argument 0"}
!84909 = distinct !{!84909, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python"}
!84910 = !DILocation(line: 173, column: 47, scope: !84899, inlinedAt: !84900)
!84911 = !DILocation(line: 1231, column: 15, scope: !76694, inlinedAt: !84912)
!84912 = distinct !DILocation(line: 173, column: 47, scope: !84899, inlinedAt: !84900)
!84913 = !{!84914, !84862, !84866}
!84914 = distinct !{!84914, !84909, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python: argument 1"}
!84915 = !DILocation(line: 1231, column: 9, scope: !76694, inlinedAt: !84912)
!84916 = !DILocation(line: 1233, column: 17, scope: !76694, inlinedAt: !84912)
!84917 = !{!84908, !84914, !84862, !84866}
!84918 = !DILocation(line: 1233, column: 23, scope: !76702, inlinedAt: !84912)
!84919 = !{!84908, !84862, !84866}
!84920 = !DILocation(line: 1233, column: 86, scope: !76694, inlinedAt: !84912)
!84921 = !DILocation(line: 1227, column: 5, scope: !76694, inlinedAt: !84912)
!84922 = !DILocation(line: 182, column: 9, scope: !84899, inlinedAt: !84900)
!84923 = !DILocation(line: 1232, column: 16, scope: !76694, inlinedAt: !84912)
!84924 = !DILocation(line: 173, column: 54, scope: !84899, inlinedAt: !84900)
!84925 = !DILocation(line: 3906, column: 23, scope: !6472, inlinedAt: !84926)
!84926 = distinct !DILocation(line: 741, column: 18, scope: !84897, inlinedAt: !84927)
!84927 = distinct !DILocation(line: 174, column: 31, scope: !84928, inlinedAt: !84900)
!84928 = distinct !DILexicalBlock(scope: !84899, file: !76684, line: 173, column: 13)
!84929 = !DILocation(line: 174, column: 17, scope: !84928, inlinedAt: !84900)
!84930 = !DILocation(line: 175, column: 17, scope: !84928, inlinedAt: !84900)
!84931 = !DILocation(line: 2447, column: 9, scope: !84932, inlinedAt: !84933)
!84932 = distinct !DISubprogram(name: "get<std::sync::mpmc::waker::Waker>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5WakerE3getCseeLknQCOKOd_13polars_python", scope: !6462, file: !6461, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84933 = distinct !DILocation(line: 736, column: 39, scope: !84934, inlinedAt: !84935)
!84934 = distinct !DISubprogram(name: "deref_mut<std::sync::mpmc::waker::Waker>", linkageName: "_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCseeLknQCOKOd_13polars_python", scope: !14785, file: !14394, line: 735, type: !10, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84935 = distinct !DILocation(line: 175, column: 17, scope: !84928, inlinedAt: !84900)
!84936 = !{!84937}
!84937 = distinct !{!84937, !84938, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select: argument 1"}
!84938 = distinct !{!84938, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select"}
!84939 = !DILocation(line: 175, column: 23, scope: !84928, inlinedAt: !84900)
!84940 = !DILocation(line: 3024, column: 19, scope: !84941, inlinedAt: !84942)
!84941 = distinct !DISubprogram(name: "len<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3lenCseeLknQCOKOd_13polars_python", scope: !583, file: !217, line: 3023, type: !10, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84942 = distinct !DILocation(line: 3049, column: 14, scope: !84943, inlinedAt: !84944)
!84943 = distinct !DISubprogram(name: "is_empty<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8is_emptyCseeLknQCOKOd_13polars_python", scope: !583, file: !217, line: 3048, type: !10, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84944 = distinct !DILocation(line: 68, column: 27, scope: !84945, inlinedAt: !84946)
!84945 = distinct !DISubprogram(name: "try_select", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select", scope: !76710, file: !76684, line: 67, type: !10, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84946 = distinct !DILocation(line: 175, column: 23, scope: !84928, inlinedAt: !84900)
!84947 = !{!84948, !84862, !84866}
!84948 = distinct !{!84948, !84938, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select: argument 0"}
!84949 = !DILocation(line: 3029, column: 37, scope: !84950, inlinedAt: !84942)
!84950 = distinct !DILexicalBlock(scope: !84941, file: !217, line: 3024, column: 9)
!84951 = !DILocation(line: 3029, column: 18, scope: !84950, inlinedAt: !84942)
!84952 = !DILocation(line: 68, column: 12, scope: !84945, inlinedAt: !84946)
!84953 = !DILocation(line: 208, column: 11, scope: !84954, inlinedAt: !84955)
!84954 = distinct !DISubprogram(name: "current_thread_id", linkageName: "_RNvNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker17current_thread_id", scope: !76686, file: !76684, line: 204, type: !10, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84955 = distinct !DILocation(line: 71, column: 29, scope: !84945, inlinedAt: !84946)
!84956 = !DILocation(line: 614, column: 9, scope: !84957, inlinedAt: !84958)
!84957 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python", scope: !712, file: !711, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84958 = distinct !DILocation(line: 609, column: 14, scope: !84959, inlinedAt: !84960)
!84959 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python", scope: !712, file: !711, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84960 = distinct !DILocation(line: 296, column: 20, scope: !84961, inlinedAt: !84962)
!84961 = distinct !DISubprogram(name: "ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3ptrCseeLknQCOKOd_13polars_python", scope: !718, file: !711, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84962 = distinct !DILocation(line: 1942, column: 18, scope: !84963, inlinedAt: !84964)
!84963 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6as_ptrCseeLknQCOKOd_13polars_python", scope: !583, file: !217, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84964 = distinct !DILocation(line: 1841, column: 76, scope: !84965, inlinedAt: !84966)
!84965 = distinct !DISubprogram(name: "as_slice<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8as_sliceCseeLknQCOKOd_13polars_python", scope: !583, file: !217, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84966 = distinct !DILocation(line: 3756, column: 14, scope: !84967, inlinedAt: !84968)
!84967 = distinct !DISubprogram(name: "deref<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !789, file: !217, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84968 = distinct !DILocation(line: 73, column: 13, scope: !84969, inlinedAt: !84946)
!84969 = distinct !DILexicalBlock(scope: !84945, file: !76684, line: 71, column: 13)
!84970 = !DILocation(line: 961, column: 18, scope: !84971, inlinedAt: !84972)
!84971 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry3addCseeLknQCOKOd_13polars_python", scope: !172, file: !171, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84972 = distinct !DILocation(line: 102, column: 78, scope: !84973, inlinedAt: !84976)
!84973 = distinct !DILexicalBlock(scope: !84974, file: !815, line: 98, column: 9)
!84974 = distinct !DILexicalBlock(scope: !84975, file: !815, line: 97, column: 9)
!84975 = distinct !DISubprogram(name: "new<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3newCseeLknQCOKOd_13polars_python", scope: !818, file: !815, line: 96, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84976 = distinct !DILocation(line: 1041, column: 9, scope: !84977, inlinedAt: !84978)
!84977 = distinct !DISubprogram(name: "iter<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry4iterCseeLknQCOKOd_13polars_python", scope: !824, file: !823, line: 1040, type: !10, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84978 = distinct !DILocation(line: 74, column: 18, scope: !84969, inlinedAt: !84946)
!84979 = !DILocation(line: 77, column: 21, scope: !84980, inlinedAt: !84982)
!84980 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python", scope: !84981, file: !76684, line: 75, type: !52, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84981 = !DINamespace(name: "try_select", scope: !77048)
!84982 = distinct !DILocation(line: 384, column: 24, scope: !84983, inlinedAt: !84987)
!84983 = distinct !DILexicalBlock(scope: !84984, file: !17778, line: 383, column: 49)
!84984 = distinct !DILexicalBlock(scope: !84985, file: !17778, line: 382, column: 17)
!84985 = distinct !DILexicalBlock(scope: !84986, file: !17778, line: 381, column: 17)
!84986 = distinct !DISubprogram(name: "position<std::sync::mpmc::waker::Entry, std::sync::mpmc::waker::{impl#0}::try_select::{closure_env#0}>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseeLknQCOKOd_13polars_python", scope: !17782, file: !17778, line: 377, type: !10, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84987 = distinct !DILocation(line: 75, column: 18, scope: !84969, inlinedAt: !84946)
!84988 = !DILocation(line: 659, column: 28, scope: !84989, inlinedAt: !84990)
!84989 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3addCseeLknQCOKOd_13polars_python", scope: !660, file: !659, line: 651, type: !10, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84990 = distinct !DILocation(line: 185, column: 40, scope: !84991, inlinedAt: !84994)
!84991 = distinct !DILexicalBlock(scope: !84992, file: !17778, line: 162, column: 17)
!84992 = distinct !DILexicalBlock(scope: !84993, file: !17778, line: 161, column: 17)
!84993 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !17782, file: !17778, line: 157, type: !10, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!84994 = distinct !DILocation(line: 383, column: 42, scope: !84983, inlinedAt: !84987)
!84995 = !{!84996}
!84996 = distinct !{!84996, !84997, !"_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python: argument 0"}
!84997 = distinct !{!84997, !"_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python"}
!84998 = !DILocation(line: 384, column: 24, scope: !84983, inlinedAt: !84987)
!84999 = !DILocation(line: 444, column: 20, scope: !85000, inlinedAt: !85001)
!85000 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mpmc::context::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEE6as_refCseeLknQCOKOd_13polars_python", scope: !660, file: !659, line: 440, type: !10, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!85001 = distinct !DILocation(line: 2110, column: 27, scope: !85002, inlinedAt: !85003)
!85002 = distinct !DISubprogram(name: "inner<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE5innerCseeLknQCOKOd_13polars_python", scope: !665, file: !664, line: 2104, type: !10, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!85003 = distinct !DILocation(line: 2428, column: 15, scope: !85004, inlinedAt: !85005)
!85004 = distinct !DISubprogram(name: "deref<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !776, file: !664, line: 2427, type: !10, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!85005 = distinct !DILocation(line: 157, column: 9, scope: !85006, inlinedAt: !85007)
!85006 = distinct !DISubprogram(name: "thread_id", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context9thread_id", scope: !76870, file: !7474, line: 156, type: !10, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!85007 = distinct !DILocation(line: 77, column: 33, scope: !84980, inlinedAt: !84982)
!85008 = !{!85009, !85011, !84948, !84937, !84862, !84866}
!85009 = distinct !{!85009, !85010, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseeLknQCOKOd_13polars_python: argument 0"}
!85010 = distinct !{!85010, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseeLknQCOKOd_13polars_python"}
!85011 = distinct !{!85011, !85010, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseeLknQCOKOd_13polars_python: argument 1"}
!85012 = !DILocation(line: 157, column: 9, scope: !85006, inlinedAt: !85007)
!85013 = !{!84996, !85009, !85011, !84948, !84937, !84862, !84866}
!85014 = !DILocation(line: 80, column: 61, scope: !84980, inlinedAt: !84982)
!85015 = !DILocation(line: 2447, column: 9, scope: !76863, inlinedAt: !85016)
!85016 = distinct !DILocation(line: 3615, column: 24, scope: !76865, inlinedAt: !85017)
!85017 = distinct !DILocation(line: 3065, column: 55, scope: !76867, inlinedAt: !85018)
end_hunk_3
