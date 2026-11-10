Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb1ELb1EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:.loopexit.i
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef %2, ptr noundef %i.b, i8 noundef signext 61) #47, !noalias !798, !inline_history !159 ; 2 uses
  %.not69.i = icmp ne ptr %i.n, %i.b              ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, 1
  %.060.i = zext i1 %.not69.i to i64
  %.059.i = select i1 %.not69.i, i64 %i.r, i64 %3 ; 3 uses
  %.0.i = select i1 %.not69.i, i64 %i.q, i64 %3   ; 5 uses
  %i.s = icmp eq i64 %.0.i, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE.exit
  store i32 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.t, i8 0, i64 17, i1 false)
  br label %bb.z

bb.g:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.v = icmp ugt i64 %.0.i, 63
  br i1 %i.v, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -64
  %.not194 = icmp slt i64 %.0.i, 64
  br i1 %.not194, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.0130.ptr198 = phi ptr [ %i.a, %.lr.ph ], [ %.0130.ptr.ptr, %bb.n ] ; 2 uses
  %.0123197 = phi ptr [ %1, %.lr.ph ], [ %.3, %bb.n ] ; 9 uses
  %.0125196 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.n ] ; 2 uses
  %.0130.idx195 = phi i64 [ 0, %.lr.ph ], [ %.2132.idx, %bb.n ] ; 2 uses
  %.0125.val187 = load <64 x i8>, ptr %.0125196, align 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0125196, i64 64 ; 4 uses
  %i.ad = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %.0125.val187, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.ae = or <64 x i8> %i.ad, %.0125.val187
  %i.af = icmp slt <64 x i8> %i.ae, zeroinitializer
  %i.ag = bitcast <64 x i1> %i.af to i64          ; 2 uses
  %.not147 = icmp eq i64 %i.ag, 0
  br i1 %.not147, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = xor i64 %i.ag, -1                       ; 2 uses
  %i.ai = bitcast i64 %i.ah to <64 x i1>
  %i.aj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ad, <64 x i8> zeroinitializer, <64 x i1> %i.ai)
  store <64 x i8> %i.aj, ptr %.0130.ptr198, align 1
  %i.ak = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not148 = icmp eq i64 %.0130.idx195, 0
  br i1 %.not148, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <64 x i8> %i.ad, ptr %.0130.ptr198, align 1
  br label %bb.m

.thread:                                          ; preds = %bb.k
  %i.al = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ad, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.am = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.al, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.an = bitcast <16 x i32> %i.am to <64 x i8>
  %i.ao = shufflevector <64 x i8> %i.an, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ao, ptr align 1 %.0123197, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0123197, i64 48
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn = phi i64 [ %i.ak, %bb.j ], [ 64, %bb.l ]
  %.1131.idx = add nsw i64 %.pn, %.0130.idx195    ; 3 uses
  %.not149 = icmp slt i64 %.1131.idx, 320
  br i1 %.not149, label %bb.n, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %.val156188 = load <64 x i8>, ptr %i.a, align 16
  %i.aq = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aq, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.as = bitcast <16 x i32> %i.ar to <64 x i8>
  %i.at = shufflevector <64 x i8> %i.as, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.at, ptr align 1 %.0123197, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.au = getelementptr inbounds nuw i8, ptr %.0123197, i64 48
  %.val156188.1 = load <64 x i8>, ptr %i.y, align 16
  %i.av = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.av, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ax = bitcast <16 x i32> %i.aw to <64 x i8>
  %i.ay = shufflevector <64 x i8> %i.ax, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ay, ptr nonnull align 1 %i.au, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.az = getelementptr inbounds nuw i8, ptr %.0123197, i64 96
  %.val156188.2 = load <64 x i8>, ptr %i.z, align 16
  %i.ba = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ba, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bc = bitcast <16 x i32> %i.bb to <64 x i8>
  %i.bd = shufflevector <64 x i8> %i.bc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bd, ptr nonnull align 1 %i.az, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.be = getelementptr inbounds nuw i8, ptr %.0123197, i64 144
  %.val156188.3 = load <64 x i8>, ptr %i.aa, align 16
  %i.bf = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bg = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bf, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bh = bitcast <16 x i32> %i.bg to <64 x i8>
  %i.bi = shufflevector <64 x i8> %i.bh, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bi, ptr nonnull align 1 %i.be, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0123197, i64 192
  %.val156188.4 = load <64 x i8>, ptr %i.ab, align 16
  %i.bk = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bk, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bm = bitcast <16 x i32> %i.bl to <64 x i8>
  %i.bn = shufflevector <64 x i8> %i.bm, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bn, ptr nonnull align 1 %i.bj, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0123197, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.x, i64 64, i1 false)
  %.1131.add = add nsw i64 %.1131.idx, -320
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.preheader.preheader, %bb.m
  %.2132.idx = phi i64 [ %.1131.add, %.preheader.preheader ], [ %.1131.idx, %bb.m ], [ 0, %.thread ] ; 3 uses
  %.3 = phi ptr [ %i.bo, %.preheader.preheader ], [ %.0123197, %bb.m ], [ %i.ap, %.thread ] ; 2 uses
  %.0130.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2132.idx
  %.not = icmp ugt ptr %i.ac, %i.w
  br i1 %.not, label %.loopexit.loopexit, label %bb.i, !llvm.loop !795

.loopexit.loopexit:                               ; preds = %bb.n
  %.pre = ptrtoint ptr %i.ac to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h, %bb.g
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.p, %bb.h ], [ %i.p, %bb.g ]
  %.3133.idx = phi i64 [ %.2132.idx, %.loopexit.loopexit ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.1126 = phi ptr [ %i.ac, %.loopexit.loopexit ], [ %2, %bb.h ], [ %2, %bb.g ] ; 3 uses
  %.4 = phi ptr [ %.3, %.loopexit.loopexit ], [ %1, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %i.bp = ptrtoint ptr %i.u to i64
  %i.bq = sub i64 %i.bp, %.pre-phi                ; 2 uses
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %.not142 = icmp eq i64 %i.br, 0
  br i1 %.not142, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.3133.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3133.idx
  %notmask = shl nsw i64 -1, %i.br                ; 2 uses
  %i.bs = xor i64 %notmask, -1
  %i.bt = bitcast i64 %i.bs to <64 x i1>
  %i.bu = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %.1126, <64 x i1> %i.bt, <64 x i8> zeroinitializer) ; 2 uses
  %i.bv = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bu, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.bw = or <64 x i8> %i.bv, %i.bu
  %i.bx = icmp slt <64 x i8> %i.bw, zeroinitializer
  %i.by = bitcast <64 x i1> %i.bx to i64
  %i.bz = or i64 %notmask, %i.by
  %sext = shl i64 %i.bq, 32
  %i.ca = ashr exact i64 %sext, 32
  %i.cb = getelementptr inbounds i8, ptr %.1126, i64 %i.ca
  %i.cc = xor i64 %i.bz, -1                       ; 2 uses
  %i.cd = bitcast i64 %i.cc to <64 x i1>
  %i.ce = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bv, <64 x i8> zeroinitializer, <64 x i1> %i.cd)
  store <64 x i8> %i.ce, ptr %.3133.ptr, align 1
  %i.cf = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cc)
  %.3133.add = add nsw i64 %.3133.idx, %i.cf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.4134.idx = phi i64 [ %.3133.add, %bb.o ], [ %.3133.idx, %.loopexit ] ; 2 uses
  %.2127 = phi ptr [ %i.cb, %bb.o ], [ %.1126, %.loopexit ] ; 2 uses
  %.4134.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4134.idx ; 3 uses
  %.not143201 = icmp slt i64 %.4134.idx, 64
  br i1 %.not143201, label %._crit_edge, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %i.ch = phi ptr [ %i.cn, %.lr.ph204 ], [ %i.cg, %.lr.ph204.preheader ] ; 3 uses
  %.0122203 = phi ptr [ %i.ch, %.lr.ph204 ], [ %i.a, %.lr.ph204.preheader ]
  %.5202 = phi ptr [ %i.cm, %.lr.ph204 ], [ %.4, %.lr.ph204.preheader ] ; 2 uses
  %.0122.val189 = load <64 x i8>, ptr %.0122203, align 1
  %i.ci = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0122.val189, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cj = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ci, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ck = bitcast <16 x i32> %i.cj to <64 x i8>
  %i.cl = shufflevector <64 x i8> %i.ck, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cl, ptr align 1 %.5202, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.cm = getelementptr inbounds nuw i8, ptr %.5202, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  %.not143 = icmp ugt ptr %i.cn, %.4134.ptr
  br i1 %.not143, label %._crit_edge, label %.lr.ph204, !llvm.loop !796

._crit_edge:                                      ; preds = %.lr.ph204, %bb.p
  %.5.lcssa = phi ptr [ %.4, %bb.p ], [ %i.cm, %.lr.ph204 ] ; 9 uses
  %.0122.lcssa = phi ptr [ %i.a, %bb.p ], [ %i.ch, %.lr.ph204 ] ; 3 uses
  %.not144 = icmp eq ptr %.4134.ptr, %.0122.lcssa
  br i1 %.not144, label %bb.y, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.co = ptrtoint ptr %.0122.lcssa to i64
  %i.cp = ptrtoint ptr %.4134.ptr to i64
  %i.cq = sub i64 %i.cp, %i.co                    ; 6 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 3                        ; 3 uses
  %notmask145 = shl nsw i64 -1, %i.cq
  %i.ct = xor i64 %notmask145, -1                 ; 2 uses
  %i.cu = bitcast i64 %i.ct to <64 x i1>
  %i.cv = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0122.lcssa, <64 x i1> %i.cu, <64 x i8> zeroinitializer)
  %i.cw = lshr i64 %i.cq, 2
  %i.cx = mul nuw i64 %i.cw, 3                    ; 5 uses
  %i.cy = sub i64 %i.cq, %i.cx
  %i.cz = lshr i64 %i.ct, %i.cy                   ; 4 uses
  %i.da = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cv, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.db = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.da, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dc = bitcast <16 x i32> %i.db to <64 x i8>
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 4 uses
  switch i64 %4, label %bb.u [
    i64 2, label %bb.r
    i64 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.de = and i64 %i.cq, 3                        ; 2 uses
  %i.df = add nuw nsw i64 %i.de, %.060.i
  %i.dg = icmp samesign ugt i64 %i.df, 3
  %i.dh = icmp samesign ult i32 %i.cs, 2
  %or.cond.not = and i1 %.not69.i, %i.dh
  %or.cond = select i1 %i.dg, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.di = icmp samesign ult i32 %i.cs, 2
  %or.cond3.not = and i1 %.not69.i, %i.di
  br i1 %or.cond3.not, label %bb.u, label %._crit_edge217

._crit_edge217:                                   ; preds = %bb.s
  %.pre218 = and i64 %i.cq, 3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge217, %bb.r
  %.pre-phi219 = phi i64 [ %.pre218, %._crit_edge217 ], [ %i.de, %bb.r ] ; 2 uses
  %i.dj = bitcast i64 %i.cz to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %.not146207 = icmp eq i64 %.pre-phi219, 0
  br i1 %.not146207, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.t, %select.unfold
  %.0209 = phi i64 [ %spec.select, %select.unfold ], [ %.pre-phi219, %bb.t ]
  %.3128208 = phi ptr [ %i.dl, %select.unfold ], [ %.2127, %bb.t ]
  %i.dl = getelementptr inbounds i8, ptr %.3128208, i64 -1 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp ult i8 %i.dp, 64
  %i.dr = sext i1 %i.dq to i64
  %spec.select = add nsw i64 %.0209, %i.dr        ; 2 uses
  %.not146 = icmp eq i64 %spec.select, 0
  br i1 %.not146, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.t
  %.3128.lcssa = phi ptr [ %.2127, %bb.t ], [ %i.dl, %select.unfold ]
  %i.ds = ptrtoint ptr %.3128.lcssa to i64
  %i.dt = sub i64 %i.ds, %i.p
  br label %bb.y

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.s
  switch i32 %i.cs, label %bb.x [
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.du = shl nuw i64 %i.cz, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = bitcast i64 %i.dv to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dz = shl i64 %i.cz, 2
  %i.ea = or disjoint i64 %i.dz, 3
  %i.eb = bitcast i64 %i.ea to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ee = bitcast i64 %i.cz to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w, %bb.x, %bb.v, %select.unfold._crit_edge
  %.sink = phi ptr [ %i.dk, %select.unfold._crit_edge ], [ %i.ef, %bb.x ], [ %i.dy, %bb.v ], [ %i.ed, %bb.w ], [ %.5.lcssa, %._crit_edge ]
  %.sink226 = phi i64 [ %i.dt, %select.unfold._crit_edge ], [ %.059.i, %bb.x ], [ %.059.i, %bb.v ], [ %.059.i, %bb.w ], [ %.0.i, %._crit_edge ]
  %i.eg = ptrtoint ptr %.sink to i64
  %i.eh = ptrtoint ptr %1 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  store i32 0, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink226, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb0ELb1EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 13, 12) %4, i64 noundef %5) unnamed_addr #15 !guid !801 {
bb.a:
  %6 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %i.a = alloca [384 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = load i64, ptr %6, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not314 = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not314, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.n = icmp ugt i64 %i.f, 63
  br i1 %i.n, label %bb.f, label %.thread390

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0264.idx.ph = phi i64 [ 0, %bb.f ], [ %.0264.idx.ph.be, %.outer.backedge ]
  %.0257.ph = phi ptr [ %2, %bb.f ], [ %i.u, %.outer.backedge ]
  %.0254.ph = phi ptr [ %1, %bb.f ], [ %.0254.ph.be, %.outer.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %.outer, %bb.l
  %.0264.idx = phi i64 [ %.1265.idx, %bb.l ], [ %.0264.idx.ph, %.outer ] ; 4 uses
  %.0257 = phi ptr [ %i.u, %bb.l ], [ %.0257.ph, %.outer ] ; 5 uses
  %.0264.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0264.idx ; 2 uses
  %.not292 = icmp ugt ptr %.0257, %i.o
  br i1 %.not292, label %.thread390, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0257.val410 = load <64 x i8>, ptr %.0257, align 1 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0257, i64 64 ; 2 uses
  %i.v = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %.0257.val410, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.w = or <64 x i8> %i.v, %.0257.val410
  %i.x = icmp slt <64 x i8> %i.w, zeroinitializer ; 2 uses
  %i.y = bitcast <64 x i1> %i.x to i64            ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.j, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit: ; preds = %bb.h
  %i.z = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %.0257.val410)
  %i.aa = icmp eq <64 x i8> %i.z, %.0257.val410
  %i.ab = xor <64 x i1> %i.x, %i.aa
  %i.ac = bitcast <64 x i1> %i.ab to i64          ; 2 uses
  %.not293 = icmp eq i64 %i.ac, 0
  br i1 %.not293, label %bb.i, label %.thread386

bb.i:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit
  %i.ad = xor i64 %i.y, -1                        ; 2 uses
  %i.ae = bitcast i64 %i.ad to <64 x i1>
  %i.af = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.v, <64 x i8> zeroinitializer, <64 x i1> %i.ae)
  store <64 x i8> %i.af, ptr %.0264.ptr.ptr, align 1
  %i.ag = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not295 = icmp eq i64 %.0264.idx, 0
  br i1 %.not295, label %.thread373, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <64 x i8> %i.v, ptr %.0264.ptr.ptr, align 1
  br label %bb.l

.thread373:                                       ; preds = %bb.j
  %i.ah = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.v, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ah, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ak, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.al = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi i64 [ %i.ag, %bb.i ], [ 64, %bb.k ]
  %.1265.idx = add nsw i64 %.pn, %.0264.idx       ; 3 uses
  %.not296 = icmp slt i64 %.1265.idx, 320
  br i1 %.not296, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.val323411 = load <64 x i8>, ptr %i.a, align 16
  %i.am = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.am, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ap, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  %.val323411.1 = load <64 x i8>, ptr %i.q, align 16
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ar, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.at = bitcast <16 x i32> %i.as to <64 x i8>
  %i.au = shufflevector <64 x i8> %i.at, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr nonnull align 1 %i.aq, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.av = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 96
  %.val323411.2 = load <64 x i8>, ptr %i.r, align 16
  %i.aw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.az, ptr nonnull align 1 %i.av, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 144
  %.val323411.3 = load <64 x i8>, ptr %i.s, align 16
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bb, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.be, ptr nonnull align 1 %i.ba, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 192
  %.val323411.4 = load <64 x i8>, ptr %i.t, align 16
  %i.bg = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bg, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bi = bitcast <16 x i32> %i.bh to <64 x i8>
  %i.bj = shufflevector <64 x i8> %i.bi, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bj, ptr nonnull align 1 %i.bf, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 64, i1 false)
  %.1265.add = add nsw i64 %.1265.idx, -320
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.preheader, %.thread373
  %.0264.idx.ph.be = phi i64 [ 0, %.thread373 ], [ %.1265.add, %.preheader ]
  %.0254.ph.be = phi ptr [ %i.al, %.thread373 ], [ %i.bk, %.preheader ]
  br label %.outer, !llvm.loop !799

.thread386:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit
  %i.bl = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ac, i1 true)
  %i.bm = ptrtoint ptr %.0257 to i64
  %i.bn = ptrtoint ptr %2 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = ptrtoint ptr %.0254.ph to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = sub i64 %i.bq, %i.br
  br label %.critedge

.thread390:                                       ; preds = %bb.g, %bb.e
  %.5269.idx = phi i64 [ 0, %bb.e ], [ %.0264.idx, %bb.g ] ; 3 uses
  %.3260 = phi ptr [ %2, %bb.e ], [ %.0257, %bb.g ] ; 4 uses
  %.6 = phi ptr [ %1, %bb.e ], [ %.0254.ph, %bb.g ] ; 3 uses
  %.5269.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5269.idx
  %i.bt = ptrtoint ptr %i.m to i64
  %i.bu = ptrtoint ptr %.3260 to i64              ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  %.not300 = icmp eq i64 %i.bw, 0
  br i1 %.not300, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread390
  %notmask = shl nsw i64 -1, %i.bw                ; 2 uses
  %i.bx = xor i64 %notmask, -1                    ; 3 uses
  %i.by = bitcast i64 %i.bx to <64 x i1>
  %i.bz = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %.3260, <64 x i1> %i.by, <64 x i8> zeroinitializer) ; 4 uses
  %i.ca = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bz, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.cb = or <64 x i8> %i.ca, %i.bz
  %i.cc = icmp slt <64 x i8> %i.cb, zeroinitializer ; 2 uses
  %i.cd = bitcast <64 x i1> %i.cc to i64          ; 2 uses
  %i.ce = and i64 %i.cd, %i.bx
  %.not.i324 = icmp eq i64 %i.ce, 0
  br i1 %.not.i324, label %.thread398, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit325

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit325: ; preds = %bb.m
  %i.cf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.bz)
  %i.cg = icmp eq <64 x i8> %i.cf, %i.bz
  %i.ch = xor <64 x i1> %i.cc, %i.cg
  %i.ci = bitcast <64 x i1> %i.ch to i64
  %i.cj = and i64 %i.ci, %i.bx                    ; 2 uses
  %.not301 = icmp eq i64 %i.cj, 0
  br i1 %.not301, label %.thread398, label %bb.n

.thread398:                                       ; preds = %bb.m, %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit325
  %i.ck = or i64 %notmask, %i.cd
  %sext = shl i64 %i.bv, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds i8, ptr %.3260, i64 %i.cl
  %i.cn = xor i64 %i.ck, -1                       ; 2 uses
  %i.co = bitcast i64 %i.cn to <64 x i1>
  %i.cp = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ca, <64 x i8> zeroinitializer, <64 x i1> %i.co)
  store <64 x i8> %i.cp, ptr %.5269.ptr, align 1
  %i.cq = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cn)
  %.5269.add = add nsw i64 %.5269.idx, %i.cq
  br label %bb.o

bb.n:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit325
  %i.cr = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cj, i1 true)
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = sub i64 %i.bu, %i.cs
  %i.cu = add i64 %i.ct, %i.cr
  %i.cv = ptrtoint ptr %.6 to i64
  %i.cw = ptrtoint ptr %1 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  br label %.critedge

bb.o:                                             ; preds = %.thread398, %.thread390
  %.7271.idx = phi i64 [ %.5269.add, %.thread398 ], [ %.5269.idx, %.thread390 ] ; 2 uses
  %.5262 = phi ptr [ %i.cm, %.thread398 ], [ %.3260, %.thread390 ] ; 7 uses
  %.7271.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.7271.idx ; 5 uses
  %.not302432 = icmp slt i64 %.7271.idx, 64
  br i1 %.not302432, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi ptr [ %i.df, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ] ; 3 uses
  %.0253434 = phi ptr [ %i.cz, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.7433 = phi ptr [ %i.de, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 2 uses
  %.0253.val412 = load <64 x i8>, ptr %.0253434, align 1
  %i.da = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0253.val412, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.db = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.da, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dc = bitcast <16 x i32> %i.db to <64 x i8>
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.7433, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.de = getelementptr inbounds nuw i8, ptr %.7433, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 2 uses
  %.not302 = icmp ugt ptr %i.df, %.7271.ptr
  br i1 %.not302, label %._crit_edge, label %.lr.ph, !llvm.loop !800

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.7.lcssa = phi ptr [ %.6, %bb.o ], [ %i.de, %.lr.ph ] ; 19 uses
  %.0253.lcssa = phi ptr [ %i.a, %bb.o ], [ %i.cz, %.lr.ph ] ; 3 uses
  %.not303 = icmp eq ptr %.7271.ptr, %.0253.lcssa
  br i1 %.not303, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dg = ptrtoint ptr %.0253.lcssa to i64
  %i.dh = ptrtoint ptr %.7271.ptr to i64
  %i.di = sub i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 3                        ; 2 uses
  %notmask306 = shl nsw i64 -1, %i.di
  %i.dl = xor i64 %notmask306, -1                 ; 2 uses
  %i.dm = bitcast i64 %i.dl to <64 x i1>
  %i.dn = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0253.lcssa, <64 x i1> %i.dm, <64 x i8> zeroinitializer)
  %i.do = lshr i64 %i.di, 2
  %i.dp = mul nuw i64 %i.do, 3                    ; 9 uses
  %i.dq = sub i64 %i.di, %i.dp
  %i.dr = lshr i64 %i.dl, %i.dq                   ; 8 uses
  %i.ds = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.dn, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dt = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ds, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.du = bitcast <16 x i32> %i.dt to <64 x i8>
  %i.dv = shufflevector <64 x i8> %i.du, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 8 uses
  %i.dw = and i64 %i.di, 3                        ; 3 uses
  %i.dx = add i64 %i.dw, %i.d                     ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 4
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = ptrtoint ptr %.5262 to i64
  %i.ea = ptrtoint ptr %2 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ptrtoint ptr %.7.lcssa to i64
  %i.ed = ptrtoint ptr %1 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ef = icmp eq i64 %5, 0
  %i.eg = icmp samesign ugt i32 %i.dk, 1          ; 3 uses
  %or.cond = select i1 %i.ef, i1 %i.eg, i1 false
  %i.eh = icmp ne i64 %i.d, 0                     ; 5 uses
  %or.cond8 = select i1 %or.cond, i1 %i.eh, i1 false
  %or.cond8.not = xor i1 %or.cond8, true
  %i.ei = and i64 %i.dx, 3
  %.not307 = icmp eq i64 %i.ei, 0                 ; 2 uses
  %or.cond315 = or i1 %.not307, %or.cond8.not
  br i1 %or.cond315, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = ptrtoint ptr %.5262 to i64
  %i.ek = ptrtoint ptr %2 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ptrtoint ptr %.7.lcssa to i64
  %i.en = ptrtoint ptr %1 to i64
  %i.eo = sub i64 %i.em, %i.en
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ep = icmp eq i64 %5, 1                       ; 3 uses
  %or.cond10 = select i1 %i.ep, i1 %i.eg, i1 false
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond316 = or i1 %.not307, %or.cond10.not
  br i1 %or.cond316, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ev = icmp eq i64 %5, 2
  %.not309 = icmp ne i64 %i.dx, 4
  %or.cond317.not414 = and i1 %i.ev, %.not309
  %.not = xor i1 %i.eh, true
  %or.cond12 = select i1 %i.eg, i1 true, i1 %.not
  %i.ew = icmp eq i64 %5, 3
  %i.ex = or i1 %i.ew, %or.cond317.not414
  %or.cond408 = select i1 %i.ex, i1 %or.cond12, i1 false
  br i1 %or.cond408, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ey = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %.not313436 = icmp eq i64 %i.dw, 0
  br i1 %.not313436, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.w, %select.unfold
  %.0438 = phi i64 [ %spec.select, %select.unfold ], [ %i.dw, %bb.w ]
  %.6263437 = phi ptr [ %i.fa, %select.unfold ], [ %.5262, %bb.w ]
  %i.fa = getelementptr inbounds i8, ptr %.6263437, i64 -1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp ult i8 %i.fe, 64
  %i.fg = sext i1 %i.ff to i64
  %spec.select = add nsw i64 %.0438, %i.fg        ; 2 uses
  %.not313 = icmp eq i64 %spec.select, 0
  br i1 %.not313, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.w
  %.6263.lcssa = phi ptr [ %.5262, %bb.w ], [ %i.fa, %select.unfold ]
  %i.fh = ptrtoint ptr %.6263.lcssa to i64
  %i.fi = ptrtoint ptr %2 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ptrtoint ptr %i.ez to i64
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  switch i32 %i.dk, label %default.unreachable [
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.ep, label %bb.z, label %.thread402

bb.z:                                             ; preds = %bb.y
  %i.fn = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = and i8 %i.fo, 15
  %.not311 = icmp eq i8 %i.fp, 0
  br i1 %.not311, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.fs = ptrtoint ptr %.5262 to i64
  %i.ft = ptrtoint ptr %2 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %1 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  br i1 %i.ep, label %bb.ac, label %.thread402

bb.ac:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = and i8 %i.fz, 3
  %.not310 = icmp eq i8 %i.ga, 0
  br i1 %.not310, label %.thread402, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gd = ptrtoint ptr %.5262 to i64
  %i.ge = ptrtoint ptr %2 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = ptrtoint ptr %1 to i64
  %i.gi = sub i64 %i.gg, %i.gh
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.gj = and i64 %5, -2
  %i.gk = icmp ne i64 %i.gj, 2
  %brmerge = select i1 %i.gk, i1 true, i1 %i.eh
  br i1 %brmerge, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.gl = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gn = ptrtoint ptr %.5262 to i64
  %i.go = ptrtoint ptr %2 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %.critedge

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ag:                                            ; preds = %bb.x
  br i1 %i.eh, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gt = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gt)
  %i.gu = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %1 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ae
  %i.gy = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  br label %._crit_edge459

.thread402:                                       ; preds = %bb.ab, %bb.ac, %bb.y, %bb.z
  %.sink502 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.sink501 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 3, %bb.ac ], [ 3, %bb.ab ]
  %i.ha = shl i64 %i.dr, %.sink502
  %i.hb = or disjoint i64 %i.ha, %.sink501
  %i.hc = bitcast i64 %i.hb to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.hc)
  %i.hd = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sink502 ; 2 uses
  %i.hf = and i64 %5, -2
  %i.hg = icmp ne i64 %i.hf, 2
  %or.cond23 = select i1 %i.hg, i1 %i.eh, i1 false
  br i1 %or.cond23, label %bb.ai, label %._crit_edge459

._crit_edge459:                                   ; preds = %.thread, %.thread402
  %.12482 = phi ptr [ %i.gz, %.thread ], [ %i.he, %.thread402 ]
  %.pre465 = ptrtoint ptr %.12482 to i64
end_hunk_0
begin_hunk_1_@_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb1ELb1ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:.loopexit.i
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef %2, ptr noundef %i.b, i8 noundef signext 61) #47, !noalias !807, !inline_history !159 ; 2 uses
  %.not69.i = icmp ne ptr %i.n, %i.b              ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, 1
  %.060.i = zext i1 %.not69.i to i64
  %.059.i = select i1 %.not69.i, i64 %i.r, i64 %3 ; 3 uses
  %.0.i = select i1 %.not69.i, i64 %i.q, i64 %3   ; 5 uses
  %i.s = icmp eq i64 %.0.i, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE.exit
  store i32 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.t, i8 0, i64 17, i1 false)
  br label %bb.z

bb.g:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.v = icmp ugt i64 %.0.i, 63
  br i1 %i.v, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -64
  %.not194 = icmp slt i64 %.0.i, 64
  br i1 %.not194, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.0130.ptr198 = phi ptr [ %i.a, %.lr.ph ], [ %.0130.ptr.ptr, %bb.n ] ; 2 uses
  %.0123197 = phi ptr [ %1, %.lr.ph ], [ %.3, %bb.n ] ; 9 uses
  %.0125196 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.n ] ; 2 uses
  %.0130.idx195 = phi i64 [ 0, %.lr.ph ], [ %.2132.idx, %bb.n ] ; 2 uses
  %.0125.val187 = load <64 x i8>, ptr %.0125196, align 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0125196, i64 64 ; 4 uses
  %i.ad = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %.0125.val187, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.ae = or <64 x i8> %i.ad, %.0125.val187
  %i.af = icmp slt <64 x i8> %i.ae, zeroinitializer
  %i.ag = bitcast <64 x i1> %i.af to i64          ; 2 uses
  %.not147 = icmp eq i64 %i.ag, 0
  br i1 %.not147, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = xor i64 %i.ag, -1                       ; 2 uses
  %i.ai = bitcast i64 %i.ah to <64 x i1>
  %i.aj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ad, <64 x i8> zeroinitializer, <64 x i1> %i.ai)
  store <64 x i8> %i.aj, ptr %.0130.ptr198, align 1
  %i.ak = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not148 = icmp eq i64 %.0130.idx195, 0
  br i1 %.not148, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <64 x i8> %i.ad, ptr %.0130.ptr198, align 1
  br label %bb.m

.thread:                                          ; preds = %bb.k
  %i.al = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ad, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.am = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.al, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.an = bitcast <16 x i32> %i.am to <64 x i8>
  %i.ao = shufflevector <64 x i8> %i.an, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ao, ptr align 1 %.0123197, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0123197, i64 48
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn = phi i64 [ %i.ak, %bb.j ], [ 64, %bb.l ]
  %.1131.idx = add nsw i64 %.pn, %.0130.idx195    ; 3 uses
  %.not149 = icmp slt i64 %.1131.idx, 320
  br i1 %.not149, label %bb.n, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %.val156188 = load <64 x i8>, ptr %i.a, align 16
  %i.aq = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aq, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.as = bitcast <16 x i32> %i.ar to <64 x i8>
  %i.at = shufflevector <64 x i8> %i.as, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.at, ptr align 1 %.0123197, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.au = getelementptr inbounds nuw i8, ptr %.0123197, i64 48
  %.val156188.1 = load <64 x i8>, ptr %i.y, align 16
  %i.av = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.av, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ax = bitcast <16 x i32> %i.aw to <64 x i8>
  %i.ay = shufflevector <64 x i8> %i.ax, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ay, ptr nonnull align 1 %i.au, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.az = getelementptr inbounds nuw i8, ptr %.0123197, i64 96
  %.val156188.2 = load <64 x i8>, ptr %i.z, align 16
  %i.ba = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ba, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bc = bitcast <16 x i32> %i.bb to <64 x i8>
  %i.bd = shufflevector <64 x i8> %i.bc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bd, ptr nonnull align 1 %i.az, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.be = getelementptr inbounds nuw i8, ptr %.0123197, i64 144
  %.val156188.3 = load <64 x i8>, ptr %i.aa, align 16
  %i.bf = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bg = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bf, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bh = bitcast <16 x i32> %i.bg to <64 x i8>
  %i.bi = shufflevector <64 x i8> %i.bh, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bi, ptr nonnull align 1 %i.be, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0123197, i64 192
  %.val156188.4 = load <64 x i8>, ptr %i.ab, align 16
  %i.bk = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bk, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bm = bitcast <16 x i32> %i.bl to <64 x i8>
  %i.bn = shufflevector <64 x i8> %i.bm, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bn, ptr nonnull align 1 %i.bj, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0123197, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.x, i64 64, i1 false)
  %.1131.add = add nsw i64 %.1131.idx, -320
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.preheader.preheader, %bb.m
  %.2132.idx = phi i64 [ %.1131.add, %.preheader.preheader ], [ %.1131.idx, %bb.m ], [ 0, %.thread ] ; 3 uses
  %.3 = phi ptr [ %i.bo, %.preheader.preheader ], [ %.0123197, %bb.m ], [ %i.ap, %.thread ] ; 2 uses
  %.0130.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2132.idx
  %.not = icmp ugt ptr %i.ac, %i.w
  br i1 %.not, label %.loopexit.loopexit, label %bb.i, !llvm.loop !804

.loopexit.loopexit:                               ; preds = %bb.n
  %.pre = ptrtoint ptr %i.ac to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h, %bb.g
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.p, %bb.h ], [ %i.p, %bb.g ]
  %.3133.idx = phi i64 [ %.2132.idx, %.loopexit.loopexit ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.1126 = phi ptr [ %i.ac, %.loopexit.loopexit ], [ %2, %bb.h ], [ %2, %bb.g ] ; 3 uses
  %.4 = phi ptr [ %.3, %.loopexit.loopexit ], [ %1, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %i.bp = ptrtoint ptr %i.u to i64
  %i.bq = sub i64 %i.bp, %.pre-phi                ; 2 uses
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %.not142 = icmp eq i64 %i.br, 0
  br i1 %.not142, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.3133.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3133.idx
  %notmask = shl nsw i64 -1, %i.br                ; 2 uses
  %i.bs = xor i64 %notmask, -1
  %i.bt = bitcast i64 %i.bs to <64 x i1>
  %i.bu = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %.1126, <64 x i1> %i.bt, <64 x i8> zeroinitializer) ; 2 uses
  %i.bv = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bu, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.bw = or <64 x i8> %i.bv, %i.bu
  %i.bx = icmp slt <64 x i8> %i.bw, zeroinitializer
  %i.by = bitcast <64 x i1> %i.bx to i64
  %i.bz = or i64 %notmask, %i.by
  %sext = shl i64 %i.bq, 32
  %i.ca = ashr exact i64 %sext, 32
  %i.cb = getelementptr inbounds i8, ptr %.1126, i64 %i.ca
  %i.cc = xor i64 %i.bz, -1                       ; 2 uses
  %i.cd = bitcast i64 %i.cc to <64 x i1>
  %i.ce = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bv, <64 x i8> zeroinitializer, <64 x i1> %i.cd)
  store <64 x i8> %i.ce, ptr %.3133.ptr, align 1
  %i.cf = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cc)
  %.3133.add = add nsw i64 %.3133.idx, %i.cf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.4134.idx = phi i64 [ %.3133.add, %bb.o ], [ %.3133.idx, %.loopexit ] ; 2 uses
  %.2127 = phi ptr [ %i.cb, %bb.o ], [ %.1126, %.loopexit ] ; 2 uses
  %.4134.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4134.idx ; 3 uses
  %.not143201 = icmp slt i64 %.4134.idx, 64
  br i1 %.not143201, label %._crit_edge, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %i.ch = phi ptr [ %i.cn, %.lr.ph204 ], [ %i.cg, %.lr.ph204.preheader ] ; 3 uses
  %.0122203 = phi ptr [ %i.ch, %.lr.ph204 ], [ %i.a, %.lr.ph204.preheader ]
  %.5202 = phi ptr [ %i.cm, %.lr.ph204 ], [ %.4, %.lr.ph204.preheader ] ; 2 uses
  %.0122.val189 = load <64 x i8>, ptr %.0122203, align 1
  %i.ci = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0122.val189, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cj = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ci, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ck = bitcast <16 x i32> %i.cj to <64 x i8>
  %i.cl = shufflevector <64 x i8> %i.ck, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cl, ptr align 1 %.5202, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.cm = getelementptr inbounds nuw i8, ptr %.5202, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  %.not143 = icmp ugt ptr %i.cn, %.4134.ptr
  br i1 %.not143, label %._crit_edge, label %.lr.ph204, !llvm.loop !805

._crit_edge:                                      ; preds = %.lr.ph204, %bb.p
  %.5.lcssa = phi ptr [ %.4, %bb.p ], [ %i.cm, %.lr.ph204 ] ; 9 uses
  %.0122.lcssa = phi ptr [ %i.a, %bb.p ], [ %i.ch, %.lr.ph204 ] ; 3 uses
  %.not144 = icmp eq ptr %.4134.ptr, %.0122.lcssa
  br i1 %.not144, label %bb.y, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.co = ptrtoint ptr %.0122.lcssa to i64
  %i.cp = ptrtoint ptr %.4134.ptr to i64
  %i.cq = sub i64 %i.cp, %i.co                    ; 6 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 3                        ; 3 uses
  %notmask145 = shl nsw i64 -1, %i.cq
  %i.ct = xor i64 %notmask145, -1                 ; 2 uses
  %i.cu = bitcast i64 %i.ct to <64 x i1>
  %i.cv = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0122.lcssa, <64 x i1> %i.cu, <64 x i8> zeroinitializer)
  %i.cw = lshr i64 %i.cq, 2
  %i.cx = mul nuw i64 %i.cw, 3                    ; 5 uses
  %i.cy = sub i64 %i.cq, %i.cx
  %i.cz = lshr i64 %i.ct, %i.cy                   ; 4 uses
  %i.da = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cv, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.db = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.da, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dc = bitcast <16 x i32> %i.db to <64 x i8>
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 4 uses
  switch i64 %4, label %bb.u [
    i64 2, label %bb.r
    i64 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.de = and i64 %i.cq, 3                        ; 2 uses
  %i.df = add nuw nsw i64 %i.de, %.060.i
  %i.dg = icmp samesign ugt i64 %i.df, 3
  %i.dh = icmp samesign ult i32 %i.cs, 2
  %or.cond.not = and i1 %.not69.i, %i.dh
  %or.cond = select i1 %i.dg, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.di = icmp samesign ult i32 %i.cs, 2
  %or.cond3.not = and i1 %.not69.i, %i.di
  br i1 %or.cond3.not, label %bb.u, label %._crit_edge217

._crit_edge217:                                   ; preds = %bb.s
  %.pre218 = and i64 %i.cq, 3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge217, %bb.r
  %.pre-phi219 = phi i64 [ %.pre218, %._crit_edge217 ], [ %i.de, %bb.r ] ; 2 uses
  %i.dj = bitcast i64 %i.cz to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %.not146207 = icmp eq i64 %.pre-phi219, 0
  br i1 %.not146207, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.t, %select.unfold
  %.0209 = phi i64 [ %spec.select, %select.unfold ], [ %.pre-phi219, %bb.t ]
  %.3128208 = phi ptr [ %i.dl, %select.unfold ], [ %.2127, %bb.t ]
  %i.dl = getelementptr inbounds i8, ptr %.3128208, i64 -1 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp ult i8 %i.dp, 64
  %i.dr = sext i1 %i.dq to i64
  %spec.select = add nsw i64 %.0209, %i.dr        ; 2 uses
  %.not146 = icmp eq i64 %spec.select, 0
  br i1 %.not146, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.t
  %.3128.lcssa = phi ptr [ %.2127, %bb.t ], [ %i.dl, %select.unfold ]
  %i.ds = ptrtoint ptr %.3128.lcssa to i64
  %i.dt = sub i64 %i.ds, %i.p
  br label %bb.y

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.s
  switch i32 %i.cs, label %bb.x [
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.du = shl nuw i64 %i.cz, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = bitcast i64 %i.dv to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dz = shl i64 %i.cz, 2
  %i.ea = or disjoint i64 %i.dz, 3
  %i.eb = bitcast i64 %i.ea to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ee = bitcast i64 %i.cz to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w, %bb.x, %bb.v, %select.unfold._crit_edge
  %.sink = phi ptr [ %i.dk, %select.unfold._crit_edge ], [ %i.ef, %bb.x ], [ %i.dy, %bb.v ], [ %i.ed, %bb.w ], [ %.5.lcssa, %._crit_edge ]
  %.sink226 = phi i64 [ %i.dt, %select.unfold._crit_edge ], [ %.059.i, %bb.x ], [ %.059.i, %bb.v ], [ %.059.i, %bb.w ], [ %.0.i, %._crit_edge ]
  %i.eg = ptrtoint ptr %.sink to i64
  %i.eh = ptrtoint ptr %1 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  store i32 0, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink226, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb1ELb0ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 6, 5) %4, i64 noundef %5) unnamed_addr #15 !guid !810 {
bb.a:
  %6 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %i.a = alloca [384 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = load i64, ptr %6, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not314 = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not314, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.n = icmp ugt i64 %i.f, 63
  br i1 %i.n, label %bb.f, label %.thread390

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0264.idx.ph = phi i64 [ 0, %bb.f ], [ %.0264.idx.ph.be, %.outer.backedge ]
  %.0257.ph = phi ptr [ %2, %bb.f ], [ %i.u, %.outer.backedge ]
  %.0254.ph = phi ptr [ %1, %bb.f ], [ %.0254.ph.be, %.outer.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %.outer, %bb.l
  %.0264.idx = phi i64 [ %.1265.idx, %bb.l ], [ %.0264.idx.ph, %.outer ] ; 4 uses
  %.0257 = phi ptr [ %i.u, %bb.l ], [ %.0257.ph, %.outer ] ; 5 uses
  %.0264.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0264.idx ; 2 uses
  %.not292 = icmp ugt ptr %.0257, %i.o
  br i1 %.not292, label %.thread390, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0257.val410 = load <64 x i8>, ptr %.0257, align 1 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0257, i64 64 ; 2 uses
  %i.v = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %.0257.val410, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.w = or <64 x i8> %i.v, %.0257.val410
  %i.x = icmp slt <64 x i8> %i.w, zeroinitializer ; 2 uses
  %i.y = bitcast <64 x i1> %i.x to i64            ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.j, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit: ; preds = %bb.h
  %i.z = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %.0257.val410)
  %i.aa = icmp eq <64 x i8> %i.z, %.0257.val410
  %i.ab = xor <64 x i1> %i.x, %i.aa
  %i.ac = bitcast <64 x i1> %i.ab to i64          ; 2 uses
  %.not293 = icmp eq i64 %i.ac, 0
  br i1 %.not293, label %bb.i, label %.thread386

bb.i:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.ad = xor i64 %i.y, -1                        ; 2 uses
  %i.ae = bitcast i64 %i.ad to <64 x i1>
  %i.af = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.v, <64 x i8> zeroinitializer, <64 x i1> %i.ae)
  store <64 x i8> %i.af, ptr %.0264.ptr.ptr, align 1
  %i.ag = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not295 = icmp eq i64 %.0264.idx, 0
  br i1 %.not295, label %.thread373, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <64 x i8> %i.v, ptr %.0264.ptr.ptr, align 1
  br label %bb.l

.thread373:                                       ; preds = %bb.j
  %i.ah = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.v, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ah, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ak, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.al = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi i64 [ %i.ag, %bb.i ], [ 64, %bb.k ]
  %.1265.idx = add nsw i64 %.pn, %.0264.idx       ; 3 uses
  %.not296 = icmp slt i64 %.1265.idx, 320
  br i1 %.not296, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.val323411 = load <64 x i8>, ptr %i.a, align 16
  %i.am = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.am, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ap, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  %.val323411.1 = load <64 x i8>, ptr %i.q, align 16
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ar, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.at = bitcast <16 x i32> %i.as to <64 x i8>
  %i.au = shufflevector <64 x i8> %i.at, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr nonnull align 1 %i.aq, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.av = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 96
  %.val323411.2 = load <64 x i8>, ptr %i.r, align 16
  %i.aw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.az, ptr nonnull align 1 %i.av, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 144
  %.val323411.3 = load <64 x i8>, ptr %i.s, align 16
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bb, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.be, ptr nonnull align 1 %i.ba, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 192
  %.val323411.4 = load <64 x i8>, ptr %i.t, align 16
  %i.bg = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bg, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bi = bitcast <16 x i32> %i.bh to <64 x i8>
  %i.bj = shufflevector <64 x i8> %i.bi, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bj, ptr nonnull align 1 %i.bf, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 64, i1 false)
  %.1265.add = add nsw i64 %.1265.idx, -320
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.preheader, %.thread373
  %.0264.idx.ph.be = phi i64 [ 0, %.thread373 ], [ %.1265.add, %.preheader ]
  %.0254.ph.be = phi ptr [ %i.al, %.thread373 ], [ %i.bk, %.preheader ]
  br label %.outer, !llvm.loop !808

.thread386:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.bl = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ac, i1 true)
  %i.bm = ptrtoint ptr %.0257 to i64
  %i.bn = ptrtoint ptr %2 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = ptrtoint ptr %.0254.ph to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = sub i64 %i.bq, %i.br
  br label %.critedge

.thread390:                                       ; preds = %bb.g, %bb.e
  %.5269.idx = phi i64 [ 0, %bb.e ], [ %.0264.idx, %bb.g ] ; 3 uses
  %.3260 = phi ptr [ %2, %bb.e ], [ %.0257, %bb.g ] ; 4 uses
  %.6 = phi ptr [ %1, %bb.e ], [ %.0254.ph, %bb.g ] ; 3 uses
  %.5269.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5269.idx
  %i.bt = ptrtoint ptr %i.m to i64
  %i.bu = ptrtoint ptr %.3260 to i64              ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  %.not300 = icmp eq i64 %i.bw, 0
  br i1 %.not300, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread390
  %notmask = shl nsw i64 -1, %i.bw                ; 2 uses
  %i.bx = xor i64 %notmask, -1                    ; 3 uses
  %i.by = bitcast i64 %i.bx to <64 x i1>
  %i.bz = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %.3260, <64 x i1> %i.by, <64 x i8> zeroinitializer) ; 4 uses
  %i.ca = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bz, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.cb = or <64 x i8> %i.ca, %i.bz
  %i.cc = icmp slt <64 x i8> %i.cb, zeroinitializer ; 2 uses
  %i.cd = bitcast <64 x i1> %i.cc to i64          ; 2 uses
  %i.ce = and i64 %i.cd, %i.bx
  %.not.i324 = icmp eq i64 %i.ce, 0
  br i1 %.not.i324, label %.thread398, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit325

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit325: ; preds = %bb.m
  %i.cf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.bz)
  %i.cg = icmp eq <64 x i8> %i.cf, %i.bz
  %i.ch = xor <64 x i1> %i.cc, %i.cg
  %i.ci = bitcast <64 x i1> %i.ch to i64
  %i.cj = and i64 %i.ci, %i.bx                    ; 2 uses
  %.not301 = icmp eq i64 %i.cj, 0
  br i1 %.not301, label %.thread398, label %bb.n

.thread398:                                       ; preds = %bb.m, %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit325
  %i.ck = or i64 %notmask, %i.cd
  %sext = shl i64 %i.bv, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds i8, ptr %.3260, i64 %i.cl
  %i.cn = xor i64 %i.ck, -1                       ; 2 uses
  %i.co = bitcast i64 %i.cn to <64 x i1>
  %i.cp = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ca, <64 x i8> zeroinitializer, <64 x i1> %i.co)
  store <64 x i8> %i.cp, ptr %.5269.ptr, align 1
  %i.cq = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cn)
  %.5269.add = add nsw i64 %.5269.idx, %i.cq
  br label %bb.o

bb.n:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit325
  %i.cr = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cj, i1 true)
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = sub i64 %i.bu, %i.cs
  %i.cu = add i64 %i.ct, %i.cr
  %i.cv = ptrtoint ptr %.6 to i64
  %i.cw = ptrtoint ptr %1 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  br label %.critedge

bb.o:                                             ; preds = %.thread398, %.thread390
  %.7271.idx = phi i64 [ %.5269.add, %.thread398 ], [ %.5269.idx, %.thread390 ] ; 2 uses
  %.5262 = phi ptr [ %i.cm, %.thread398 ], [ %.3260, %.thread390 ] ; 7 uses
  %.7271.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.7271.idx ; 5 uses
  %.not302432 = icmp slt i64 %.7271.idx, 64
  br i1 %.not302432, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi ptr [ %i.df, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ] ; 3 uses
  %.0253434 = phi ptr [ %i.cz, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.7433 = phi ptr [ %i.de, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 2 uses
  %.0253.val412 = load <64 x i8>, ptr %.0253434, align 1
  %i.da = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0253.val412, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.db = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.da, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dc = bitcast <16 x i32> %i.db to <64 x i8>
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.7433, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.de = getelementptr inbounds nuw i8, ptr %.7433, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 2 uses
  %.not302 = icmp ugt ptr %i.df, %.7271.ptr
  br i1 %.not302, label %._crit_edge, label %.lr.ph, !llvm.loop !809

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.7.lcssa = phi ptr [ %.6, %bb.o ], [ %i.de, %.lr.ph ] ; 19 uses
  %.0253.lcssa = phi ptr [ %i.a, %bb.o ], [ %i.cz, %.lr.ph ] ; 3 uses
  %.not303 = icmp eq ptr %.7271.ptr, %.0253.lcssa
  br i1 %.not303, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dg = ptrtoint ptr %.0253.lcssa to i64
  %i.dh = ptrtoint ptr %.7271.ptr to i64
  %i.di = sub i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 3                        ; 2 uses
  %notmask306 = shl nsw i64 -1, %i.di
  %i.dl = xor i64 %notmask306, -1                 ; 2 uses
  %i.dm = bitcast i64 %i.dl to <64 x i1>
  %i.dn = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0253.lcssa, <64 x i1> %i.dm, <64 x i8> zeroinitializer)
  %i.do = lshr i64 %i.di, 2
  %i.dp = mul nuw i64 %i.do, 3                    ; 9 uses
  %i.dq = sub i64 %i.di, %i.dp
  %i.dr = lshr i64 %i.dl, %i.dq                   ; 8 uses
  %i.ds = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.dn, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dt = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ds, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.du = bitcast <16 x i32> %i.dt to <64 x i8>
  %i.dv = shufflevector <64 x i8> %i.du, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 8 uses
  %i.dw = and i64 %i.di, 3                        ; 3 uses
  %i.dx = add i64 %i.dw, %i.d                     ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 4
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = ptrtoint ptr %.5262 to i64
  %i.ea = ptrtoint ptr %2 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ptrtoint ptr %.7.lcssa to i64
  %i.ed = ptrtoint ptr %1 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ef = icmp eq i64 %5, 0
  %i.eg = icmp samesign ugt i32 %i.dk, 1          ; 3 uses
  %or.cond = select i1 %i.ef, i1 %i.eg, i1 false
  %i.eh = icmp ne i64 %i.d, 0                     ; 5 uses
  %or.cond8 = select i1 %or.cond, i1 %i.eh, i1 false
  %or.cond8.not = xor i1 %or.cond8, true
  %i.ei = and i64 %i.dx, 3
  %.not307 = icmp eq i64 %i.ei, 0                 ; 2 uses
  %or.cond315 = or i1 %.not307, %or.cond8.not
  br i1 %or.cond315, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = ptrtoint ptr %.5262 to i64
  %i.ek = ptrtoint ptr %2 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ptrtoint ptr %.7.lcssa to i64
  %i.en = ptrtoint ptr %1 to i64
  %i.eo = sub i64 %i.em, %i.en
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ep = icmp eq i64 %5, 1                       ; 3 uses
  %or.cond10 = select i1 %i.ep, i1 %i.eg, i1 false
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond316 = or i1 %.not307, %or.cond10.not
  br i1 %or.cond316, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ev = icmp eq i64 %5, 2
  %.not309 = icmp ne i64 %i.dx, 4
  %or.cond317.not414 = and i1 %i.ev, %.not309
  %.not = xor i1 %i.eh, true
  %or.cond12 = select i1 %i.eg, i1 true, i1 %.not
  %i.ew = icmp eq i64 %5, 3
  %i.ex = or i1 %i.ew, %or.cond317.not414
  %or.cond408 = select i1 %i.ex, i1 %or.cond12, i1 false
  br i1 %or.cond408, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ey = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %.not313436 = icmp eq i64 %i.dw, 0
  br i1 %.not313436, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.w, %select.unfold
  %.0438 = phi i64 [ %spec.select, %select.unfold ], [ %i.dw, %bb.w ]
  %.6263437 = phi ptr [ %i.fa, %select.unfold ], [ %.5262, %bb.w ]
  %i.fa = getelementptr inbounds i8, ptr %.6263437, i64 -1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp ult i8 %i.fe, 64
  %i.fg = sext i1 %i.ff to i64
  %spec.select = add nsw i64 %.0438, %i.fg        ; 2 uses
  %.not313 = icmp eq i64 %spec.select, 0
  br i1 %.not313, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.w
  %.6263.lcssa = phi ptr [ %.5262, %bb.w ], [ %i.fa, %select.unfold ]
  %i.fh = ptrtoint ptr %.6263.lcssa to i64
  %i.fi = ptrtoint ptr %2 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ptrtoint ptr %i.ez to i64
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  switch i32 %i.dk, label %default.unreachable [
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.ep, label %bb.z, label %.thread402

bb.z:                                             ; preds = %bb.y
  %i.fn = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = and i8 %i.fo, 15
  %.not311 = icmp eq i8 %i.fp, 0
  br i1 %.not311, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.fs = ptrtoint ptr %.5262 to i64
  %i.ft = ptrtoint ptr %2 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %1 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  br i1 %i.ep, label %bb.ac, label %.thread402

bb.ac:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = and i8 %i.fz, 3
  %.not310 = icmp eq i8 %i.ga, 0
  br i1 %.not310, label %.thread402, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gd = ptrtoint ptr %.5262 to i64
  %i.ge = ptrtoint ptr %2 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = ptrtoint ptr %1 to i64
  %i.gi = sub i64 %i.gg, %i.gh
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.gj = and i64 %5, -2
  %i.gk = icmp ne i64 %i.gj, 2
  %brmerge = select i1 %i.gk, i1 true, i1 %i.eh
  br i1 %brmerge, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.gl = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gn = ptrtoint ptr %.5262 to i64
  %i.go = ptrtoint ptr %2 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %.critedge

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ag:                                            ; preds = %bb.x
  br i1 %i.eh, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gt = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gt)
  %i.gu = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %1 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ae
  %i.gy = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  br label %._crit_edge459

.thread402:                                       ; preds = %bb.ab, %bb.ac, %bb.y, %bb.z
  %.sink502 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.sink501 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 3, %bb.ac ], [ 3, %bb.ab ]
  %i.ha = shl i64 %i.dr, %.sink502
  %i.hb = or disjoint i64 %i.ha, %.sink501
  %i.hc = bitcast i64 %i.hb to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.hc)
  %i.hd = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sink502 ; 2 uses
  %i.hf = and i64 %5, -2
  %i.hg = icmp ne i64 %i.hf, 2
  %or.cond23 = select i1 %i.hg, i1 %i.eh, i1 false
  br i1 %or.cond23, label %bb.ai, label %._crit_edge459

._crit_edge459:                                   ; preds = %.thread, %.thread402
  %.12482 = phi ptr [ %i.gz, %.thread ], [ %i.he, %.thread402 ]
  %.pre465 = ptrtoint ptr %.12482 to i64
end_hunk_1
begin_hunk_2_@_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb1ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:.loopexit.i
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef %2, ptr noundef %i.b, i8 noundef signext 61) #47, !noalias !816, !inline_history !159 ; 2 uses
  %.not69.i = icmp ne ptr %i.n, %i.b              ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, 1
  %.060.i = zext i1 %.not69.i to i64
  %.059.i = select i1 %.not69.i, i64 %i.r, i64 %3 ; 3 uses
  %.0.i = select i1 %.not69.i, i64 %i.q, i64 %3   ; 5 uses
  %i.s = icmp eq i64 %.0.i, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE.exit
  store i32 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.t, i8 0, i64 17, i1 false)
  br label %bb.z

bb.g:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.v = icmp ugt i64 %.0.i, 63
  br i1 %i.v, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -64
  %.not194 = icmp slt i64 %.0.i, 64
  br i1 %.not194, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.0130.ptr198 = phi ptr [ %i.a, %.lr.ph ], [ %.0130.ptr.ptr, %bb.n ] ; 2 uses
  %.0123197 = phi ptr [ %1, %.lr.ph ], [ %.3, %bb.n ] ; 9 uses
  %.0125196 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.n ] ; 2 uses
  %.0130.idx195 = phi i64 [ 0, %.lr.ph ], [ %.2132.idx, %bb.n ] ; 2 uses
  %.0125.val187 = load <64 x i8>, ptr %.0125196, align 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0125196, i64 64 ; 4 uses
  %i.ad = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %.0125.val187, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.ae = or <64 x i8> %i.ad, %.0125.val187
  %i.af = icmp slt <64 x i8> %i.ae, zeroinitializer
  %i.ag = bitcast <64 x i1> %i.af to i64          ; 2 uses
  %.not147 = icmp eq i64 %i.ag, 0
  br i1 %.not147, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = xor i64 %i.ag, -1                       ; 2 uses
  %i.ai = bitcast i64 %i.ah to <64 x i1>
  %i.aj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ad, <64 x i8> zeroinitializer, <64 x i1> %i.ai)
  store <64 x i8> %i.aj, ptr %.0130.ptr198, align 1
  %i.ak = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not148 = icmp eq i64 %.0130.idx195, 0
  br i1 %.not148, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <64 x i8> %i.ad, ptr %.0130.ptr198, align 1
  br label %bb.m

.thread:                                          ; preds = %bb.k
  %i.al = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ad, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.am = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.al, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.an = bitcast <16 x i32> %i.am to <64 x i8>
  %i.ao = shufflevector <64 x i8> %i.an, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ao, ptr align 1 %.0123197, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0123197, i64 48
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn = phi i64 [ %i.ak, %bb.j ], [ 64, %bb.l ]
  %.1131.idx = add nsw i64 %.pn, %.0130.idx195    ; 3 uses
  %.not149 = icmp slt i64 %.1131.idx, 320
  br i1 %.not149, label %bb.n, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %.val156188 = load <64 x i8>, ptr %i.a, align 16
  %i.aq = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aq, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.as = bitcast <16 x i32> %i.ar to <64 x i8>
  %i.at = shufflevector <64 x i8> %i.as, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.at, ptr align 1 %.0123197, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.au = getelementptr inbounds nuw i8, ptr %.0123197, i64 48
  %.val156188.1 = load <64 x i8>, ptr %i.y, align 16
  %i.av = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.av, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ax = bitcast <16 x i32> %i.aw to <64 x i8>
  %i.ay = shufflevector <64 x i8> %i.ax, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ay, ptr nonnull align 1 %i.au, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.az = getelementptr inbounds nuw i8, ptr %.0123197, i64 96
  %.val156188.2 = load <64 x i8>, ptr %i.z, align 16
  %i.ba = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ba, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bc = bitcast <16 x i32> %i.bb to <64 x i8>
  %i.bd = shufflevector <64 x i8> %i.bc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bd, ptr nonnull align 1 %i.az, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.be = getelementptr inbounds nuw i8, ptr %.0123197, i64 144
  %.val156188.3 = load <64 x i8>, ptr %i.aa, align 16
  %i.bf = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bg = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bf, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bh = bitcast <16 x i32> %i.bg to <64 x i8>
  %i.bi = shufflevector <64 x i8> %i.bh, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bi, ptr nonnull align 1 %i.be, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0123197, i64 192
  %.val156188.4 = load <64 x i8>, ptr %i.ab, align 16
  %i.bk = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val156188.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bk, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bm = bitcast <16 x i32> %i.bl to <64 x i8>
  %i.bn = shufflevector <64 x i8> %i.bm, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bn, ptr nonnull align 1 %i.bj, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0123197, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.x, i64 64, i1 false)
  %.1131.add = add nsw i64 %.1131.idx, -320
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.preheader.preheader, %bb.m
  %.2132.idx = phi i64 [ %.1131.add, %.preheader.preheader ], [ %.1131.idx, %bb.m ], [ 0, %.thread ] ; 3 uses
  %.3 = phi ptr [ %i.bo, %.preheader.preheader ], [ %.0123197, %bb.m ], [ %i.ap, %.thread ] ; 2 uses
  %.0130.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2132.idx
  %.not = icmp ugt ptr %i.ac, %i.w
  br i1 %.not, label %.loopexit.loopexit, label %bb.i, !llvm.loop !813

.loopexit.loopexit:                               ; preds = %bb.n
  %.pre = ptrtoint ptr %i.ac to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h, %bb.g
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.p, %bb.h ], [ %i.p, %bb.g ]
  %.3133.idx = phi i64 [ %.2132.idx, %.loopexit.loopexit ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.1126 = phi ptr [ %i.ac, %.loopexit.loopexit ], [ %2, %bb.h ], [ %2, %bb.g ] ; 3 uses
  %.4 = phi ptr [ %.3, %.loopexit.loopexit ], [ %1, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %i.bp = ptrtoint ptr %i.u to i64
  %i.bq = sub i64 %i.bp, %.pre-phi                ; 2 uses
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %.not142 = icmp eq i64 %i.br, 0
  br i1 %.not142, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.3133.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3133.idx
  %notmask = shl nsw i64 -1, %i.br                ; 2 uses
  %i.bs = xor i64 %notmask, -1
  %i.bt = bitcast i64 %i.bs to <64 x i1>
  %i.bu = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %.1126, <64 x i1> %i.bt, <64 x i8> zeroinitializer) ; 2 uses
  %i.bv = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bu, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.bw = or <64 x i8> %i.bv, %i.bu
  %i.bx = icmp slt <64 x i8> %i.bw, zeroinitializer
  %i.by = bitcast <64 x i1> %i.bx to i64
  %i.bz = or i64 %notmask, %i.by
  %sext = shl i64 %i.bq, 32
  %i.ca = ashr exact i64 %sext, 32
  %i.cb = getelementptr inbounds i8, ptr %.1126, i64 %i.ca
  %i.cc = xor i64 %i.bz, -1                       ; 2 uses
  %i.cd = bitcast i64 %i.cc to <64 x i1>
  %i.ce = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bv, <64 x i8> zeroinitializer, <64 x i1> %i.cd)
  store <64 x i8> %i.ce, ptr %.3133.ptr, align 1
  %i.cf = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cc)
  %.3133.add = add nsw i64 %.3133.idx, %i.cf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.4134.idx = phi i64 [ %.3133.add, %bb.o ], [ %.3133.idx, %.loopexit ] ; 2 uses
  %.2127 = phi ptr [ %i.cb, %bb.o ], [ %.1126, %.loopexit ] ; 2 uses
  %.4134.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4134.idx ; 3 uses
  %.not143201 = icmp slt i64 %.4134.idx, 64
  br i1 %.not143201, label %._crit_edge, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %i.ch = phi ptr [ %i.cn, %.lr.ph204 ], [ %i.cg, %.lr.ph204.preheader ] ; 3 uses
  %.0122203 = phi ptr [ %i.ch, %.lr.ph204 ], [ %i.a, %.lr.ph204.preheader ]
  %.5202 = phi ptr [ %i.cm, %.lr.ph204 ], [ %.4, %.lr.ph204.preheader ] ; 2 uses
  %.0122.val189 = load <64 x i8>, ptr %.0122203, align 1
  %i.ci = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0122.val189, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cj = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ci, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ck = bitcast <16 x i32> %i.cj to <64 x i8>
  %i.cl = shufflevector <64 x i8> %i.ck, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cl, ptr align 1 %.5202, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.cm = getelementptr inbounds nuw i8, ptr %.5202, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  %.not143 = icmp ugt ptr %i.cn, %.4134.ptr
  br i1 %.not143, label %._crit_edge, label %.lr.ph204, !llvm.loop !814

._crit_edge:                                      ; preds = %.lr.ph204, %bb.p
  %.5.lcssa = phi ptr [ %.4, %bb.p ], [ %i.cm, %.lr.ph204 ] ; 9 uses
  %.0122.lcssa = phi ptr [ %i.a, %bb.p ], [ %i.ch, %.lr.ph204 ] ; 3 uses
  %.not144 = icmp eq ptr %.4134.ptr, %.0122.lcssa
  br i1 %.not144, label %bb.y, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.co = ptrtoint ptr %.0122.lcssa to i64
  %i.cp = ptrtoint ptr %.4134.ptr to i64
  %i.cq = sub i64 %i.cp, %i.co                    ; 6 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 3                        ; 3 uses
  %notmask145 = shl nsw i64 -1, %i.cq
  %i.ct = xor i64 %notmask145, -1                 ; 2 uses
  %i.cu = bitcast i64 %i.ct to <64 x i1>
  %i.cv = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0122.lcssa, <64 x i1> %i.cu, <64 x i8> zeroinitializer)
  %i.cw = lshr i64 %i.cq, 2
  %i.cx = mul nuw i64 %i.cw, 3                    ; 5 uses
  %i.cy = sub i64 %i.cq, %i.cx
  %i.cz = lshr i64 %i.ct, %i.cy                   ; 4 uses
  %i.da = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cv, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.db = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.da, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dc = bitcast <16 x i32> %i.db to <64 x i8>
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 4 uses
  switch i64 %4, label %bb.u [
    i64 2, label %bb.r
    i64 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.de = and i64 %i.cq, 3                        ; 2 uses
  %i.df = add nuw nsw i64 %i.de, %.060.i
  %i.dg = icmp samesign ugt i64 %i.df, 3
  %i.dh = icmp samesign ult i32 %i.cs, 2
  %or.cond.not = and i1 %.not69.i, %i.dh
  %or.cond = select i1 %i.dg, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.di = icmp samesign ult i32 %i.cs, 2
  %or.cond3.not = and i1 %.not69.i, %i.di
  br i1 %or.cond3.not, label %bb.u, label %._crit_edge217

._crit_edge217:                                   ; preds = %bb.s
  %.pre218 = and i64 %i.cq, 3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge217, %bb.r
  %.pre-phi219 = phi i64 [ %.pre218, %._crit_edge217 ], [ %i.de, %bb.r ] ; 2 uses
  %i.dj = bitcast i64 %i.cz to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %.not146207 = icmp eq i64 %.pre-phi219, 0
  br i1 %.not146207, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.t, %select.unfold
  %.0209 = phi i64 [ %spec.select, %select.unfold ], [ %.pre-phi219, %bb.t ]
  %.3128208 = phi ptr [ %i.dl, %select.unfold ], [ %.2127, %bb.t ]
  %i.dl = getelementptr inbounds i8, ptr %.3128208, i64 -1 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp ult i8 %i.dp, 64
  %i.dr = sext i1 %i.dq to i64
  %spec.select = add nsw i64 %.0209, %i.dr        ; 2 uses
  %.not146 = icmp eq i64 %spec.select, 0
  br i1 %.not146, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.t
  %.3128.lcssa = phi ptr [ %.2127, %bb.t ], [ %i.dl, %select.unfold ]
  %i.ds = ptrtoint ptr %.3128.lcssa to i64
  %i.dt = sub i64 %i.ds, %i.p
  br label %bb.y

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.s
  switch i32 %i.cs, label %bb.x [
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.du = shl nuw i64 %i.cz, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = bitcast i64 %i.dv to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dz = shl i64 %i.cz, 2
  %i.ea = or disjoint i64 %i.dz, 3
  %i.eb = bitcast i64 %i.ea to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ee = bitcast i64 %i.cz to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.5.lcssa, <64 x i1> %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cx
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w, %bb.x, %bb.v, %select.unfold._crit_edge
  %.sink = phi ptr [ %i.dk, %select.unfold._crit_edge ], [ %i.ef, %bb.x ], [ %i.dy, %bb.v ], [ %i.ed, %bb.w ], [ %.5.lcssa, %._crit_edge ]
  %.sink226 = phi i64 [ %i.dt, %select.unfold._crit_edge ], [ %.059.i, %bb.x ], [ %.059.i, %bb.v ], [ %.059.i, %bb.w ], [ %.0.i, %._crit_edge ]
  %i.eg = ptrtoint ptr %.sink to i64
  %i.eh = ptrtoint ptr %1 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  store i32 0, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink226, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb0ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 5, 4) %4, i64 noundef %5) unnamed_addr #15 !guid !819 {
bb.a:
  %6 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %i.a = alloca [384 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = load i64, ptr %6, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not314 = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not314, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.n = icmp ugt i64 %i.f, 63
  br i1 %i.n, label %bb.f, label %.thread390

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0264.idx.ph = phi i64 [ 0, %bb.f ], [ %.0264.idx.ph.be, %.outer.backedge ]
  %.0257.ph = phi ptr [ %2, %bb.f ], [ %i.u, %.outer.backedge ]
  %.0254.ph = phi ptr [ %1, %bb.f ], [ %.0254.ph.be, %.outer.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %.outer, %bb.l
  %.0264.idx = phi i64 [ %.1265.idx, %bb.l ], [ %.0264.idx.ph, %.outer ] ; 4 uses
  %.0257 = phi ptr [ %i.u, %bb.l ], [ %.0257.ph, %.outer ] ; 5 uses
  %.0264.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0264.idx ; 2 uses
  %.not292 = icmp ugt ptr %.0257, %i.o
  br i1 %.not292, label %.thread390, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0257.val410 = load <64 x i8>, ptr %.0257, align 1 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0257, i64 64 ; 2 uses
  %i.v = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %.0257.val410, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.w = or <64 x i8> %i.v, %.0257.val410
  %i.x = icmp slt <64 x i8> %i.w, zeroinitializer ; 2 uses
  %i.y = bitcast <64 x i1> %i.x to i64            ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.j, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit: ; preds = %bb.h
  %i.z = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %.0257.val410)
  %i.aa = icmp eq <64 x i8> %i.z, %.0257.val410
  %i.ab = xor <64 x i1> %i.x, %i.aa
  %i.ac = bitcast <64 x i1> %i.ab to i64          ; 2 uses
  %.not293 = icmp eq i64 %i.ac, 0
  br i1 %.not293, label %bb.i, label %.thread386

bb.i:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.ad = xor i64 %i.y, -1                        ; 2 uses
  %i.ae = bitcast i64 %i.ad to <64 x i1>
  %i.af = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.v, <64 x i8> zeroinitializer, <64 x i1> %i.ae)
  store <64 x i8> %i.af, ptr %.0264.ptr.ptr, align 1
  %i.ag = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not295 = icmp eq i64 %.0264.idx, 0
  br i1 %.not295, label %.thread373, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <64 x i8> %i.v, ptr %.0264.ptr.ptr, align 1
  br label %bb.l

.thread373:                                       ; preds = %bb.j
  %i.ah = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.v, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ah, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ak, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.al = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi i64 [ %i.ag, %bb.i ], [ 64, %bb.k ]
  %.1265.idx = add nsw i64 %.pn, %.0264.idx       ; 3 uses
  %.not296 = icmp slt i64 %.1265.idx, 320
  br i1 %.not296, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.val323411 = load <64 x i8>, ptr %i.a, align 16
  %i.am = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.am, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ap, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  %.val323411.1 = load <64 x i8>, ptr %i.q, align 16
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ar, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.at = bitcast <16 x i32> %i.as to <64 x i8>
  %i.au = shufflevector <64 x i8> %i.at, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr nonnull align 1 %i.aq, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.av = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 96
  %.val323411.2 = load <64 x i8>, ptr %i.r, align 16
  %i.aw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.az, ptr nonnull align 1 %i.av, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 144
  %.val323411.3 = load <64 x i8>, ptr %i.s, align 16
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bb, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.be, ptr nonnull align 1 %i.ba, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 192
  %.val323411.4 = load <64 x i8>, ptr %i.t, align 16
  %i.bg = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val323411.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bg, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bi = bitcast <16 x i32> %i.bh to <64 x i8>
  %i.bj = shufflevector <64 x i8> %i.bi, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bj, ptr nonnull align 1 %i.bf, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 64, i1 false)
  %.1265.add = add nsw i64 %.1265.idx, -320
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.preheader, %.thread373
  %.0264.idx.ph.be = phi i64 [ 0, %.thread373 ], [ %.1265.add, %.preheader ]
  %.0254.ph.be = phi ptr [ %i.al, %.thread373 ], [ %i.bk, %.preheader ]
  br label %.outer, !llvm.loop !817

.thread386:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.bl = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ac, i1 true)
  %i.bm = ptrtoint ptr %.0257 to i64
  %i.bn = ptrtoint ptr %2 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = ptrtoint ptr %.0254.ph to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = sub i64 %i.bq, %i.br
  br label %.critedge

.thread390:                                       ; preds = %bb.g, %bb.e
  %.5269.idx = phi i64 [ 0, %bb.e ], [ %.0264.idx, %bb.g ] ; 3 uses
  %.3260 = phi ptr [ %2, %bb.e ], [ %.0257, %bb.g ] ; 4 uses
  %.6 = phi ptr [ %1, %bb.e ], [ %.0254.ph, %bb.g ] ; 3 uses
  %.5269.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5269.idx
  %i.bt = ptrtoint ptr %i.m to i64
  %i.bu = ptrtoint ptr %.3260 to i64              ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  %.not300 = icmp eq i64 %i.bw, 0
  br i1 %.not300, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread390
  %notmask = shl nsw i64 -1, %i.bw                ; 2 uses
  %i.bx = xor i64 %notmask, -1                    ; 3 uses
  %i.by = bitcast i64 %i.bx to <64 x i1>
  %i.bz = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %.3260, <64 x i1> %i.by, <64 x i8> zeroinitializer) ; 4 uses
  %i.ca = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bz, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.cb = or <64 x i8> %i.ca, %i.bz
  %i.cc = icmp slt <64 x i8> %i.cb, zeroinitializer ; 2 uses
  %i.cd = bitcast <64 x i1> %i.cc to i64          ; 2 uses
  %i.ce = and i64 %i.cd, %i.bx
  %.not.i324 = icmp eq i64 %i.ce, 0
  br i1 %.not.i324, label %.thread398, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit325

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit325: ; preds = %bb.m
  %i.cf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.bz)
  %i.cg = icmp eq <64 x i8> %i.cf, %i.bz
  %i.ch = xor <64 x i1> %i.cc, %i.cg
  %i.ci = bitcast <64 x i1> %i.ch to i64
  %i.cj = and i64 %i.ci, %i.bx                    ; 2 uses
  %.not301 = icmp eq i64 %i.cj, 0
  br i1 %.not301, label %.thread398, label %bb.n

.thread398:                                       ; preds = %bb.m, %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit325
  %i.ck = or i64 %notmask, %i.cd
  %sext = shl i64 %i.bv, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds i8, ptr %.3260, i64 %i.cl
  %i.cn = xor i64 %i.ck, -1                       ; 2 uses
  %i.co = bitcast i64 %i.cn to <64 x i1>
  %i.cp = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ca, <64 x i8> zeroinitializer, <64 x i1> %i.co)
  store <64 x i8> %i.cp, ptr %.5269.ptr, align 1
  %i.cq = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cn)
  %.5269.add = add nsw i64 %.5269.idx, %i.cq
  br label %bb.o

bb.n:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit325
  %i.cr = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cj, i1 true)
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = sub i64 %i.bu, %i.cs
  %i.cu = add i64 %i.ct, %i.cr
  %i.cv = ptrtoint ptr %.6 to i64
  %i.cw = ptrtoint ptr %1 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  br label %.critedge

bb.o:                                             ; preds = %.thread398, %.thread390
  %.7271.idx = phi i64 [ %.5269.add, %.thread398 ], [ %.5269.idx, %.thread390 ] ; 2 uses
  %.5262 = phi ptr [ %i.cm, %.thread398 ], [ %.3260, %.thread390 ] ; 7 uses
  %.7271.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.7271.idx ; 5 uses
  %.not302432 = icmp slt i64 %.7271.idx, 64
  br i1 %.not302432, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi ptr [ %i.df, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ] ; 3 uses
  %.0253434 = phi ptr [ %i.cz, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.7433 = phi ptr [ %i.de, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 2 uses
  %.0253.val412 = load <64 x i8>, ptr %.0253434, align 1
  %i.da = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0253.val412, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.db = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.da, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dc = bitcast <16 x i32> %i.db to <64 x i8>
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dd, ptr align 1 %.7433, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.de = getelementptr inbounds nuw i8, ptr %.7433, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 2 uses
  %.not302 = icmp ugt ptr %i.df, %.7271.ptr
  br i1 %.not302, label %._crit_edge, label %.lr.ph, !llvm.loop !818

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.7.lcssa = phi ptr [ %.6, %bb.o ], [ %i.de, %.lr.ph ] ; 19 uses
  %.0253.lcssa = phi ptr [ %i.a, %bb.o ], [ %i.cz, %.lr.ph ] ; 3 uses
  %.not303 = icmp eq ptr %.7271.ptr, %.0253.lcssa
  br i1 %.not303, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dg = ptrtoint ptr %.0253.lcssa to i64
  %i.dh = ptrtoint ptr %.7271.ptr to i64
  %i.di = sub i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 3                        ; 2 uses
  %notmask306 = shl nsw i64 -1, %i.di
  %i.dl = xor i64 %notmask306, -1                 ; 2 uses
  %i.dm = bitcast i64 %i.dl to <64 x i1>
  %i.dn = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0253.lcssa, <64 x i1> %i.dm, <64 x i8> zeroinitializer)
  %i.do = lshr i64 %i.di, 2
  %i.dp = mul nuw i64 %i.do, 3                    ; 9 uses
  %i.dq = sub i64 %i.di, %i.dp
  %i.dr = lshr i64 %i.dl, %i.dq                   ; 8 uses
  %i.ds = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.dn, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dt = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ds, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.du = bitcast <16 x i32> %i.dt to <64 x i8>
  %i.dv = shufflevector <64 x i8> %i.du, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 8 uses
  %i.dw = and i64 %i.di, 3                        ; 3 uses
  %i.dx = add i64 %i.dw, %i.d                     ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 4
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = ptrtoint ptr %.5262 to i64
  %i.ea = ptrtoint ptr %2 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ptrtoint ptr %.7.lcssa to i64
  %i.ed = ptrtoint ptr %1 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ef = icmp eq i64 %5, 0
  %i.eg = icmp samesign ugt i32 %i.dk, 1          ; 3 uses
  %or.cond = select i1 %i.ef, i1 %i.eg, i1 false
  %i.eh = icmp ne i64 %i.d, 0                     ; 5 uses
  %or.cond8 = select i1 %or.cond, i1 %i.eh, i1 false
  %or.cond8.not = xor i1 %or.cond8, true
  %i.ei = and i64 %i.dx, 3
  %.not307 = icmp eq i64 %i.ei, 0                 ; 2 uses
  %or.cond315 = or i1 %.not307, %or.cond8.not
  br i1 %or.cond315, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = ptrtoint ptr %.5262 to i64
  %i.ek = ptrtoint ptr %2 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ptrtoint ptr %.7.lcssa to i64
  %i.en = ptrtoint ptr %1 to i64
  %i.eo = sub i64 %i.em, %i.en
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ep = icmp eq i64 %5, 1                       ; 3 uses
  %or.cond10 = select i1 %i.ep, i1 %i.eg, i1 false
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond316 = or i1 %.not307, %or.cond10.not
  br i1 %or.cond316, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ev = icmp eq i64 %5, 2
  %.not309 = icmp ne i64 %i.dx, 4
  %or.cond317.not414 = and i1 %i.ev, %.not309
  %.not = xor i1 %i.eh, true
  %or.cond12 = select i1 %i.eg, i1 true, i1 %.not
  %i.ew = icmp eq i64 %5, 3
  %i.ex = or i1 %i.ew, %or.cond317.not414
  %or.cond408 = select i1 %i.ex, i1 %or.cond12, i1 false
  br i1 %or.cond408, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ey = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %.not313436 = icmp eq i64 %i.dw, 0
  br i1 %.not313436, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.w, %select.unfold
  %.0438 = phi i64 [ %spec.select, %select.unfold ], [ %i.dw, %bb.w ]
  %.6263437 = phi ptr [ %i.fa, %select.unfold ], [ %.5262, %bb.w ]
  %i.fa = getelementptr inbounds i8, ptr %.6263437, i64 -1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp ult i8 %i.fe, 64
  %i.fg = sext i1 %i.ff to i64
  %spec.select = add nsw i64 %.0438, %i.fg        ; 2 uses
  %.not313 = icmp eq i64 %spec.select, 0
  br i1 %.not313, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.w
  %.6263.lcssa = phi ptr [ %.5262, %bb.w ], [ %i.fa, %select.unfold ]
  %i.fh = ptrtoint ptr %.6263.lcssa to i64
  %i.fi = ptrtoint ptr %2 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ptrtoint ptr %i.ez to i64
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  switch i32 %i.dk, label %default.unreachable [
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.ep, label %bb.z, label %.thread402

bb.z:                                             ; preds = %bb.y
  %i.fn = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = and i8 %i.fo, 15
  %.not311 = icmp eq i8 %i.fp, 0
  br i1 %.not311, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.fs = ptrtoint ptr %.5262 to i64
  %i.ft = ptrtoint ptr %2 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %1 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  br i1 %i.ep, label %bb.ac, label %.thread402

bb.ac:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = and i8 %i.fz, 3
  %.not310 = icmp eq i8 %i.ga, 0
  br i1 %.not310, label %.thread402, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gd = ptrtoint ptr %.5262 to i64
  %i.ge = ptrtoint ptr %2 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = ptrtoint ptr %1 to i64
  %i.gi = sub i64 %i.gg, %i.gh
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.gj = and i64 %5, -2
  %i.gk = icmp ne i64 %i.gj, 2
  %brmerge = select i1 %i.gk, i1 true, i1 %i.eh
  br i1 %brmerge, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.gl = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gn = ptrtoint ptr %.5262 to i64
  %i.go = ptrtoint ptr %2 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %.critedge

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ag:                                            ; preds = %bb.x
  br i1 %i.eh, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gt = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gt)
  %i.gu = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %1 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ae
  %i.gy = bitcast i64 %i.dr to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  br label %._crit_edge459

.thread402:                                       ; preds = %bb.ab, %bb.ac, %bb.y, %bb.z
  %.sink502 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.sink501 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 3, %bb.ac ], [ 3, %bb.ab ]
  %i.ha = shl i64 %i.dr, %.sink502
  %i.hb = or disjoint i64 %i.ha, %.sink501
  %i.hc = bitcast i64 %i.hb to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dv, ptr align 1 %.7.lcssa, <64 x i1> %i.hc)
  %i.hd = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.dp
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sink502 ; 2 uses
  %i.hf = and i64 %5, -2
  %i.hg = icmp ne i64 %i.hf, 2
  %or.cond23 = select i1 %i.hg, i1 %i.eh, i1 false
  br i1 %or.cond23, label %bb.ai, label %._crit_edge459

._crit_edge459:                                   ; preds = %.thread, %.thread402
  %.12482 = phi ptr [ %i.gz, %.thread ], [ %i.he, %.thread402 ]
  %.pre465 = ptrtoint ptr %.12482 to i64
end_hunk_2
begin_hunk_3_@_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb1ELb1EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.d, 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.j = icmp ugt i64 %i.d, 63
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.0130.ptr196 = phi ptr [ %i.a, %.lr.ph ], [ %.0130.ptr.ptr, %bb.i ] ; 2 uses
  %.0123195 = phi ptr [ %1, %.lr.ph ], [ %.3, %bb.i ] ; 9 uses
  %.0125194 = phi ptr [ %2, %.lr.ph ], [ %i.s, %bb.i ] ; 3 uses
  %.0130.idx193 = phi i64 [ 0, %.lr.ph ], [ %.2132.idx, %bb.i ] ; 2 uses
  %.0125.val186 = load <32 x i16>, ptr %.0125194, align 1
  %i.q = getelementptr i8, ptr %.0125194, i64 64
  %.0125.val153187 = load <32 x i16>, ptr %i.q, align 1
  %i.r = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %.0125.val186, <32 x i16> %.0125.val153187)
  %i.s = getelementptr inbounds nuw i8, ptr %.0125194, i64 128 ; 3 uses
  %i.t = shufflevector <64 x i8> %i.r, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.u = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.t, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.v = or <64 x i8> %i.u, %i.t
  %i.w = icmp slt <64 x i8> %i.v, zeroinitializer
  %i.x = bitcast <64 x i1> %i.w to i64            ; 2 uses
  %.not147 = icmp eq i64 %i.x, 0
  br i1 %.not147, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = xor i64 %i.x, -1                         ; 2 uses
  %i.z = bitcast i64 %i.y to <64 x i1>
  %i.aa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.u, <64 x i8> zeroinitializer, <64 x i1> %i.z)
  store <64 x i8> %i.aa, ptr %.0130.ptr196, align 1
  %i.ab = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not148 = icmp eq i64 %.0130.idx193, 0
  br i1 %.not148, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <64 x i8> %i.u, ptr %.0130.ptr196, align 1
  br label %bb.h

.thread:                                          ; preds = %bb.f
  %i.ac = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.u, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ad = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ac, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ae = bitcast <16 x i32> %i.ad to <64 x i8>
  %i.af = shufflevector <64 x i8> %i.ae, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.af, ptr align 1 %.0123195, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0123195, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.pn = phi i64 [ %i.ab, %bb.e ], [ 64, %bb.g ]
  %.1131.idx = add nsw i64 %.pn, %.0130.idx193    ; 3 uses
  %.not149 = icmp slt i64 %.1131.idx, 320
  br i1 %.not149, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %.val157188 = load <64 x i8>, ptr %i.a, align 16
  %i.ah = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ah, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ak, ptr align 1 %.0123195, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.al = getelementptr inbounds nuw i8, ptr %.0123195, i64 48
  %.val157188.1 = load <64 x i8>, ptr %i.m, align 16
  %i.am = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.am, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ap, ptr nonnull align 1 %i.al, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0123195, i64 96
  %.val157188.2 = load <64 x i8>, ptr %i.n, align 16
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ar, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.at = bitcast <16 x i32> %i.as to <64 x i8>
  %i.au = shufflevector <64 x i8> %i.at, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr nonnull align 1 %i.aq, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.av = getelementptr inbounds nuw i8, ptr %.0123195, i64 144
  %.val157188.3 = load <64 x i8>, ptr %i.o, align 16
  %i.aw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.az, ptr nonnull align 1 %i.av, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0123195, i64 192
  %.val157188.4 = load <64 x i8>, ptr %i.p, align 16
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bb, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.be, ptr nonnull align 1 %i.ba, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0123195, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.l, i64 64, i1 false)
  %.1131.add = add nsw i64 %.1131.idx, -320
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.preheader.preheader, %bb.h
  %.2132.idx = phi i64 [ %.1131.add, %.preheader.preheader ], [ %.1131.idx, %bb.h ], [ 0, %.thread ] ; 3 uses
  %.3 = phi ptr [ %i.bf, %.preheader.preheader ], [ %.0123195, %bb.h ], [ %i.ag, %.thread ] ; 2 uses
  %.0130.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2132.idx
  %.not = icmp ugt ptr %i.s, %i.k
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !822

.loopexit:                                        ; preds = %bb.i, %bb.c
  %.3133.idx = phi i64 [ 0, %bb.c ], [ %.2132.idx, %bb.i ] ; 3 uses
  %.1126 = phi ptr [ %2, %bb.c ], [ %i.s, %bb.i ] ; 5 uses
  %.4 = phi ptr [ %1, %bb.c ], [ %.3, %bb.i ]     ; 2 uses
  %i.bg = ptrtoint ptr %i.i to i64
  %i.bh = ptrtoint ptr %.1126 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = and i64 %i.bi, 8589934590
  %.not142 = icmp eq i64 %i.bj, 0
  br i1 %.not142, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.3133.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3133.idx
  %i.bk = lshr exact i64 %i.bi, 1
  %i.bl = and i64 %i.bk, 4294967295
  %notmask = shl nsw i64 -1, %i.bl                ; 2 uses
  %i.bm = xor i64 %notmask, -1                    ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = bitcast i32 %i.bn to <32 x i1>
  %i.bp = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr readonly align 1 %.1126, <32 x i1> %i.bo, <32 x i16> zeroinitializer)
  %i.bq = lshr i64 %i.bm, 32
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.1126, i64 64
  %i.bt = bitcast i32 %i.br to <32 x i1>
  %i.bu = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr nonnull readonly align 1 %i.bs, <32 x i1> %i.bt, <32 x i16> zeroinitializer)
  %i.bv = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.bp, <32 x i16> %i.bu)
  %i.bw = shufflevector <64 x i8> %i.bv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.bx = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bw, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.by = or <64 x i8> %i.bx, %i.bw
  %i.bz = icmp slt <64 x i8> %i.by, zeroinitializer
  %i.ca = bitcast <64 x i1> %i.bz to i64
  %i.cb = or i64 %notmask, %i.ca
  %sext = shl i64 %i.bi, 31
  %i.cc = ashr i64 %sext, 32
  %i.cd = getelementptr inbounds [2 x i8], ptr %.1126, i64 %i.cc
  %i.ce = xor i64 %i.cb, -1                       ; 2 uses
  %i.cf = bitcast i64 %i.ce to <64 x i1>
  %i.cg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bx, <64 x i8> zeroinitializer, <64 x i1> %i.cf)
  store <64 x i8> %i.cg, ptr %.3133.ptr, align 1
  %i.ch = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ce)
  %.3133.add = add nsw i64 %.3133.idx, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.4134.idx = phi i64 [ %.3133.add, %bb.j ], [ %.3133.idx, %.loopexit ] ; 2 uses
  %.2127 = phi ptr [ %i.cd, %bb.j ], [ %.1126, %.loopexit ] ; 2 uses
  %.4134.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4134.idx ; 3 uses
  %.not143199 = icmp slt i64 %.4134.idx, 64
  br i1 %.not143199, label %._crit_edge, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %i.cj = phi ptr [ %i.cp, %.lr.ph202 ], [ %i.ci, %.lr.ph202.preheader ] ; 3 uses
  %.0122201 = phi ptr [ %i.cj, %.lr.ph202 ], [ %i.a, %.lr.ph202.preheader ]
  %.5200 = phi ptr [ %i.co, %.lr.ph202 ], [ %.4, %.lr.ph202.preheader ] ; 2 uses
  %.0122.val189 = load <64 x i8>, ptr %.0122201, align 1
  %i.ck = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0122.val189, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cl = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ck, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.cm = bitcast <16 x i32> %i.cl to <64 x i8>
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cn, ptr align 1 %.5200, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.co = getelementptr inbounds nuw i8, ptr %.5200, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %.not143 = icmp ugt ptr %i.cp, %.4134.ptr
  br i1 %.not143, label %._crit_edge, label %.lr.ph202, !llvm.loop !823

._crit_edge:                                      ; preds = %.lr.ph202, %bb.k
  %.5.lcssa = phi ptr [ %.4, %bb.k ], [ %i.co, %.lr.ph202 ] ; 9 uses
  %.0122.lcssa = phi ptr [ %i.a, %bb.k ], [ %i.cj, %.lr.ph202 ] ; 3 uses
  %.not144 = icmp eq ptr %.4134.ptr, %.0122.lcssa
  br i1 %.not144, label %bb.u, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cq = ptrtoint ptr %.0122.lcssa to i64
  %i.cr = ptrtoint ptr %.4134.ptr to i64
  %i.cs = sub i64 %i.cr, %i.cq                    ; 6 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 3                        ; 3 uses
  %notmask145 = shl nsw i64 -1, %i.cs
  %i.cv = xor i64 %notmask145, -1                 ; 2 uses
  %i.cw = bitcast i64 %i.cv to <64 x i1>
  %i.cx = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0122.lcssa, <64 x i1> %i.cw, <64 x i8> zeroinitializer)
  %i.cy = lshr i64 %i.cs, 2
  %i.cz = mul nuw i64 %i.cy, 3                    ; 5 uses
  %i.da = sub i64 %i.cs, %i.cz
  %i.db = lshr i64 %i.cv, %i.da                   ; 4 uses
  %i.dc = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cx, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dd = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dc, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.de = bitcast <16 x i32> %i.dd to <64 x i8>
  %i.df = shufflevector <64 x i8> %i.de, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 4 uses
  switch i64 %4, label %bb.q [
    i64 2, label %bb.m
    i64 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.dg = and i64 %i.cs, 3                        ; 2 uses
  %i.dh = add i64 %i.dg, %i.b
  %i.di = icmp ult i64 %i.dh, 4
  br i1 %i.di, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dj = icmp samesign ugt i32 %i.cu, 1
  %i.dk = icmp eq i64 %i.b, 0
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.dl = icmp samesign ugt i32 %i.cu, 1
  %i.dm = icmp eq i64 %i.b, 0
  %or.cond3 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond3, label %._crit_edge215, label %bb.q

._crit_edge215:                                   ; preds = %bb.o
  %.pre = and i64 %i.cs, 3
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge215, %bb.n
  %.pre-phi = phi i64 [ %.pre, %._crit_edge215 ], [ %i.dg, %bb.n ] ; 2 uses
  %i.dn = bitcast i64 %i.db to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %.not146205 = icmp eq i64 %.pre-phi, 0
  br i1 %.not146205, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.p, %select.unfold
  %.0207 = phi i64 [ %spec.select, %select.unfold ], [ %.pre-phi, %bb.p ]
  %.3128206 = phi ptr [ %i.dp, %select.unfold ], [ %.2127, %bb.p ]
  %i.dp = getelementptr inbounds i8, ptr %.3128206, i64 -2 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = and i16 %i.dq, 255
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = icmp ult i16 %i.dq, 256
  %i.dw = icmp ult i8 %i.du, 64
  %or.cond6 = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dx = sext i1 %or.cond6 to i64
  %spec.select = add nsw i64 %.0207, %i.dx        ; 2 uses
  %.not146 = icmp eq i64 %spec.select, 0
  br i1 %.not146, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.p
  %.3128.lcssa = phi ptr [ %.2127, %bb.p ], [ %i.dp, %select.unfold ]
  %i.dy = ptrtoint ptr %.3128.lcssa to i64
  %i.dz = ptrtoint ptr %2 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 1
  br label %bb.u

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.o
  switch i32 %i.cu, label %bb.t [
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ec = shl nuw i64 %i.db, 1
  %i.ed = or disjoint i64 %i.ec, 1
  %i.ee = bitcast i64 %i.ed to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.eh = shl i64 %i.db, 2
  %i.ei = or disjoint i64 %i.eh, 3
  %i.ej = bitcast i64 %i.ei to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.em = bitcast i64 %i.db to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.s, %bb.t, %bb.r, %select.unfold._crit_edge
  %.sink = phi ptr [ %i.do, %select.unfold._crit_edge ], [ %i.en, %bb.t ], [ %i.eg, %bb.r ], [ %i.el, %bb.s ], [ %.5.lcssa, %._crit_edge ]
  %.sink223 = phi i64 [ %i.eb, %select.unfold._crit_edge ], [ %i.f, %bb.t ], [ %i.f, %bb.r ], [ %i.f, %bb.s ], [ %i.d, %._crit_edge ]
  %i.eo = ptrtoint ptr %.sink to i64
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  store i32 0, ptr %0, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink223, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eq, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.et, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb0ELb1EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 13, 12) %4, i64 noundef %5) unnamed_addr #15 !guid !827 {
bb.a:
  %6 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %i.a = alloca [384 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIDsEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = load i64, ptr %6, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not314 = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not314, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.n = icmp ugt i64 %i.f, 63
  br i1 %i.n, label %bb.f, label %.thread390

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -128
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0264.idx.ph = phi i64 [ 0, %bb.f ], [ %.0264.idx.ph.be, %.outer.backedge ]
  %.0257.ph = phi ptr [ %2, %bb.f ], [ %i.w, %.outer.backedge ]
  %.0254.ph = phi ptr [ %1, %bb.f ], [ %.0254.ph.be, %.outer.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %.outer, %bb.l
  %.0264.idx = phi i64 [ %.1265.idx, %bb.l ], [ %.0264.idx.ph, %.outer ] ; 4 uses
  %.0257 = phi ptr [ %i.w, %bb.l ], [ %.0257.ph, %.outer ] ; 6 uses
  %.0264.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0264.idx ; 2 uses
  %.not292 = icmp ugt ptr %.0257, %i.o
  br i1 %.not292, label %.thread390, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0257.val410 = load <32 x i16>, ptr %.0257, align 1
  %i.u = getelementptr i8, ptr %.0257, i64 64
  %.0257.val320411 = load <32 x i16>, ptr %i.u, align 1
  %i.v = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %.0257.val410, <32 x i16> %.0257.val320411)
  %i.w = getelementptr inbounds nuw i8, ptr %.0257, i64 128 ; 2 uses
  %i.x = shufflevector <64 x i8> %i.v, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 4 uses
  %i.y = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.x, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.z = or <64 x i8> %i.y, %i.x
  %i.aa = icmp slt <64 x i8> %i.z, zeroinitializer ; 2 uses
  %i.ab = bitcast <64 x i1> %i.aa to i64          ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit: ; preds = %bb.h
  %i.ac = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.x)
  %i.ad = icmp eq <64 x i8> %i.ac, %i.x
  %i.ae = xor <64 x i1> %i.aa, %i.ad
  %i.af = bitcast <64 x i1> %i.ae to i64          ; 2 uses
  %.not293 = icmp eq i64 %i.af, 0
  br i1 %.not293, label %bb.i, label %.thread386

bb.i:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit
  %i.ag = xor i64 %i.ab, -1                       ; 2 uses
  %i.ah = bitcast i64 %i.ag to <64 x i1>
  %i.ai = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.y, <64 x i8> zeroinitializer, <64 x i1> %i.ah)
  store <64 x i8> %i.ai, ptr %.0264.ptr.ptr, align 1
  %i.aj = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ag)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not295 = icmp eq i64 %.0264.idx, 0
  br i1 %.not295, label %.thread373, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <64 x i8> %i.y, ptr %.0264.ptr.ptr, align 1
  br label %bb.l

.thread373:                                       ; preds = %bb.j
  %i.ak = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.y, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.al = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ak, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.am = bitcast <16 x i32> %i.al to <64 x i8>
  %i.an = shufflevector <64 x i8> %i.am, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.an, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi i64 [ %i.aj, %bb.i ], [ 64, %bb.k ]
  %.1265.idx = add nsw i64 %.pn, %.0264.idx       ; 3 uses
  %.not296 = icmp slt i64 %.1265.idx, 320
  br i1 %.not296, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.val324412 = load <64 x i8>, ptr %i.a, align 16
  %i.ap = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.aq = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ap, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ar = bitcast <16 x i32> %i.aq to <64 x i8>
  %i.as = shufflevector <64 x i8> %i.ar, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.as, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.at = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  %.val324412.1 = load <64 x i8>, ptr %i.q, align 16
  %i.au = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.au, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aw = bitcast <16 x i32> %i.av to <64 x i8>
  %i.ax = shufflevector <64 x i8> %i.aw, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ax, ptr nonnull align 1 %i.at, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 96
  %.val324412.2 = load <64 x i8>, ptr %i.r, align 16
  %i.az = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ba = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.az, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bb = bitcast <16 x i32> %i.ba to <64 x i8>
  %i.bc = shufflevector <64 x i8> %i.bb, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bc, ptr nonnull align 1 %i.ay, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 144
  %.val324412.3 = load <64 x i8>, ptr %i.s, align 16
  %i.be = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bf = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.be, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bg = bitcast <16 x i32> %i.bf to <64 x i8>
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bh, ptr nonnull align 1 %i.bd, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 192
  %.val324412.4 = load <64 x i8>, ptr %i.t, align 16
  %i.bj = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bj, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bl = bitcast <16 x i32> %i.bk to <64 x i8>
  %i.bm = shufflevector <64 x i8> %i.bl, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bm, ptr nonnull align 1 %i.bi, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bn = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 64, i1 false)
  %.1265.add = add nsw i64 %.1265.idx, -320
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.preheader, %.thread373
  %.0264.idx.ph.be = phi i64 [ 0, %.thread373 ], [ %.1265.add, %.preheader ]
  %.0254.ph.be = phi ptr [ %i.ao, %.thread373 ], [ %i.bn, %.preheader ]
  br label %.outer, !llvm.loop !825

.thread386:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit
  %i.bo = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.af, i1 true)
  %i.bp = ptrtoint ptr %.0257 to i64
  %i.bq = ptrtoint ptr %2 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 1
  %i.bt = add nsw i64 %i.bo, %i.bs
  %i.bu = ptrtoint ptr %.0254.ph to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  br label %.critedge

.thread390:                                       ; preds = %bb.g, %bb.e
  %.5269.idx = phi i64 [ 0, %bb.e ], [ %.0264.idx, %bb.g ] ; 3 uses
  %.3260 = phi ptr [ %2, %bb.e ], [ %.0257, %bb.g ] ; 5 uses
  %.6 = phi ptr [ %1, %bb.e ], [ %.0254.ph, %bb.g ] ; 3 uses
  %.5269.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5269.idx
  %i.bx = ptrtoint ptr %i.m to i64
  %i.by = ptrtoint ptr %.3260 to i64              ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = and i64 %i.bz, 8589934590
  %.not300 = icmp eq i64 %i.ca, 0
  br i1 %.not300, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread390
  %i.cb = lshr exact i64 %i.bz, 1
  %i.cc = and i64 %i.cb, 4294967295
  %notmask = shl nsw i64 -1, %i.cc                ; 2 uses
  %i.cd = xor i64 %notmask, -1                    ; 4 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = bitcast i32 %i.ce to <32 x i1>
  %i.cg = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr readonly align 1 %.3260, <32 x i1> %i.cf, <32 x i16> zeroinitializer)
  %i.ch = lshr i64 %i.cd, 32
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.3260, i64 64
  %i.ck = bitcast i32 %i.ci to <32 x i1>
  %i.cl = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr nonnull readonly align 1 %i.cj, <32 x i1> %i.ck, <32 x i16> zeroinitializer)
  %i.cm = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.cg, <32 x i16> %i.cl)
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 4 uses
  %i.co = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 62, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.cn, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.cp = or <64 x i8> %i.co, %i.cn
  %i.cq = icmp slt <64 x i8> %i.cp, zeroinitializer ; 2 uses
  %i.cr = bitcast <64 x i1> %i.cq to i64          ; 2 uses
  %i.cs = and i64 %i.cr, %i.cd
  %.not.i325 = icmp eq i64 %i.cs, 0
  br i1 %.not.i325, label %.thread398, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit326

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit326: ; preds = %bb.m
  %i.ct = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.cn)
  %i.cu = icmp eq <64 x i8> %i.ct, %i.cn
  %i.cv = xor <64 x i1> %i.cq, %i.cu
  %i.cw = bitcast <64 x i1> %i.cv to i64
  %i.cx = and i64 %i.cw, %i.cd                    ; 2 uses
  %.not301 = icmp eq i64 %i.cx, 0
  br i1 %.not301, label %.thread398, label %bb.n

.thread398:                                       ; preds = %bb.m, %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit326
  %i.cy = or i64 %notmask, %i.cr
  %sext = shl i64 %i.bz, 31
  %i.cz = ashr i64 %sext, 32
  %i.da = getelementptr inbounds [2 x i8], ptr %.3260, i64 %i.cz
  %i.db = xor i64 %i.cy, -1                       ; 2 uses
  %i.dc = bitcast i64 %i.db to <64 x i1>
  %i.dd = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.co, <64 x i8> zeroinitializer, <64 x i1> %i.dc)
  store <64 x i8> %i.dd, ptr %.5269.ptr, align 1
  %i.de = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.db)
  %.5269.add = add nsw i64 %.5269.idx, %i.de
  br label %bb.o

bb.n:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb1EEEmPNS1_7block64EPmm.exit326
  %i.df = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cx, i1 true)
  %i.dg = ptrtoint ptr %2 to i64
  %i.dh = sub i64 %i.by, %i.dg
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = add nsw i64 %i.df, %i.di
  %i.dk = ptrtoint ptr %.6 to i64
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %.critedge

bb.o:                                             ; preds = %.thread398, %.thread390
  %.7271.idx = phi i64 [ %.5269.add, %.thread398 ], [ %.5269.idx, %.thread390 ] ; 2 uses
  %.5262 = phi ptr [ %i.da, %.thread398 ], [ %.3260, %.thread390 ] ; 7 uses
  %.7271.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.7271.idx ; 5 uses
  %.not302432 = icmp slt i64 %.7271.idx, 64
  br i1 %.not302432, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.do = phi ptr [ %i.du, %.lr.ph ], [ %i.dn, %.lr.ph.preheader ] ; 3 uses
  %.0253434 = phi ptr [ %i.do, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.7433 = phi ptr [ %i.dt, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 2 uses
  %.0253.val413 = load <64 x i8>, ptr %.0253434, align 1
  %i.dp = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0253.val413, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dq = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dp, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dr = bitcast <16 x i32> %i.dq to <64 x i8>
  %i.ds = shufflevector <64 x i8> %i.dr, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ds, ptr align 1 %.7433, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.dt = getelementptr inbounds nuw i8, ptr %.7433, i64 48 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 64 ; 2 uses
  %.not302 = icmp ugt ptr %i.du, %.7271.ptr
  br i1 %.not302, label %._crit_edge, label %.lr.ph, !llvm.loop !826

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.7.lcssa = phi ptr [ %.6, %bb.o ], [ %i.dt, %.lr.ph ] ; 19 uses
  %.0253.lcssa = phi ptr [ %i.a, %bb.o ], [ %i.do, %.lr.ph ] ; 3 uses
  %.not303 = icmp eq ptr %.7271.ptr, %.0253.lcssa
  br i1 %.not303, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dv = ptrtoint ptr %.0253.lcssa to i64
  %i.dw = ptrtoint ptr %.7271.ptr to i64
  %i.dx = sub i64 %i.dw, %i.dv                    ; 5 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3                        ; 2 uses
  %notmask306 = shl nsw i64 -1, %i.dx
  %i.ea = xor i64 %notmask306, -1                 ; 2 uses
  %i.eb = bitcast i64 %i.ea to <64 x i1>
  %i.ec = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0253.lcssa, <64 x i1> %i.eb, <64 x i8> zeroinitializer)
  %i.ed = lshr i64 %i.dx, 2
  %i.ee = mul nuw i64 %i.ed, 3                    ; 9 uses
  %i.ef = sub i64 %i.dx, %i.ee
  %i.eg = lshr i64 %i.ea, %i.ef                   ; 8 uses
  %i.eh = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ec, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ei = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eh, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ej = bitcast <16 x i32> %i.ei to <64 x i8>
  %i.ek = shufflevector <64 x i8> %i.ej, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 8 uses
  %i.el = and i64 %i.dx, 3                        ; 3 uses
  %i.em = add i64 %i.el, %i.d                     ; 3 uses
  %i.en = icmp ugt i64 %i.em, 4
  br i1 %i.en, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = ptrtoint ptr %.5262 to i64
  %i.ep = ptrtoint ptr %2 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 1
  %i.es = ptrtoint ptr %.7.lcssa to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ev = icmp eq i64 %5, 0
  %i.ew = icmp samesign ugt i32 %i.dz, 1          ; 3 uses
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp ne i64 %i.d, 0                     ; 5 uses
  %or.cond8 = select i1 %or.cond, i1 %i.ex, i1 false
  %or.cond8.not = xor i1 %or.cond8, true
  %i.ey = and i64 %i.em, 3
  %.not307 = icmp eq i64 %i.ey, 0                 ; 2 uses
  %or.cond315 = or i1 %.not307, %or.cond8.not
  br i1 %or.cond315, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = ptrtoint ptr %.5262 to i64
  %i.fa = ptrtoint ptr %2 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 1
  %i.fd = ptrtoint ptr %.7.lcssa to i64
  %i.fe = ptrtoint ptr %1 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.fg = icmp eq i64 %5, 1                       ; 3 uses
  %or.cond10 = select i1 %i.fg, i1 %i.ew, i1 false
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond316 = or i1 %.not307, %or.cond10.not
  br i1 %or.cond316, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.fm = icmp eq i64 %5, 2
  %.not309 = icmp ne i64 %i.em, 4
  %or.cond317.not415 = and i1 %i.fm, %.not309
  %.not = xor i1 %i.ex, true
  %or.cond12 = select i1 %i.ew, i1 true, i1 %.not
  %i.fn = icmp eq i64 %5, 3
  %i.fo = or i1 %i.fn, %or.cond317.not415
  %or.cond408 = select i1 %i.fo, i1 %or.cond12, i1 false
  br i1 %or.cond408, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fp = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %.not313436 = icmp eq i64 %i.el, 0
  br i1 %.not313436, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.w, %select.unfold
  %.0438 = phi i64 [ %spec.select, %select.unfold ], [ %i.el, %bb.w ]
  %.6263437 = phi ptr [ %i.fr, %select.unfold ], [ %.5262, %bb.w ]
  %i.fr = getelementptr inbounds i8, ptr %.6263437, i64 -2 ; 3 uses
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  %i.ft = and i16 %i.fs, 255
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp ult i16 %i.fs, 256
  %i.fy = icmp ult i8 %i.fw, 64
  %or.cond17 = select i1 %i.fx, i1 %i.fy, i1 false
  %i.fz = sext i1 %or.cond17 to i64
  %spec.select = add nsw i64 %.0438, %i.fz        ; 2 uses
  %.not313 = icmp eq i64 %spec.select, 0
  br i1 %.not313, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.w
  %.6263.lcssa = phi ptr [ %.5262, %bb.w ], [ %i.fr, %select.unfold ]
  %i.ga = ptrtoint ptr %.6263.lcssa to i64
  %i.gb = ptrtoint ptr %2 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 1
  %i.ge = ptrtoint ptr %i.fq to i64
  %i.gf = ptrtoint ptr %1 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  switch i32 %i.dz, label %default.unreachable [
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.fg, label %bb.z, label %.thread402

bb.z:                                             ; preds = %bb.y
  %i.gh = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = and i8 %i.gi, 15
  %.not311 = icmp eq i8 %i.gj, 0
  br i1 %.not311, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.gk)
  %i.gl = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.gm = ptrtoint ptr %.5262 to i64
  %i.gn = ptrtoint ptr %2 to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 1
  %i.gq = ptrtoint ptr %i.gl to i64
  %i.gr = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  br i1 %i.fg, label %bb.ac, label %.thread402

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = and i8 %i.gu, 3
  %.not310 = icmp eq i8 %i.gv, 0
  br i1 %.not310, label %.thread402, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gw = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.gy = ptrtoint ptr %.5262 to i64
  %i.gz = ptrtoint ptr %2 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 1
  %i.hc = ptrtoint ptr %i.gx to i64
  %i.hd = ptrtoint ptr %1 to i64
  %i.he = sub i64 %i.hc, %i.hd
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.hf = and i64 %5, -2
  %i.hg = icmp ne i64 %i.hf, 2
  %brmerge = select i1 %i.hg, i1 true, i1 %i.ex
  br i1 %brmerge, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.hh = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.hj = ptrtoint ptr %.5262 to i64
  %i.hk = ptrtoint ptr %2 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 1
  %i.hn = ptrtoint ptr %i.hi to i64
  %i.ho = ptrtoint ptr %1 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  br label %.critedge

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ag:                                            ; preds = %bb.x
  br i1 %i.ex, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hq = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %1 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ae
  %i.hv = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  br label %._crit_edge459

.thread402:                                       ; preds = %bb.ab, %bb.ac, %bb.y, %bb.z
  %.sink501 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.sink500 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 3, %bb.ac ], [ 3, %bb.ab ]
  %i.hx = shl i64 %i.eg, %.sink501
  %i.hy = or disjoint i64 %i.hx, %.sink500
  %i.hz = bitcast i64 %i.hy to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
end_hunk_3
begin_hunk_4_@_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb1ELb1ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.d, 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.j = icmp ugt i64 %i.d, 63
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.0130.ptr196 = phi ptr [ %i.a, %.lr.ph ], [ %.0130.ptr.ptr, %bb.i ] ; 2 uses
  %.0123195 = phi ptr [ %1, %.lr.ph ], [ %.3, %bb.i ] ; 9 uses
  %.0125194 = phi ptr [ %2, %.lr.ph ], [ %i.s, %bb.i ] ; 3 uses
  %.0130.idx193 = phi i64 [ 0, %.lr.ph ], [ %.2132.idx, %bb.i ] ; 2 uses
  %.0125.val186 = load <32 x i16>, ptr %.0125194, align 1
  %i.q = getelementptr i8, ptr %.0125194, i64 64
  %.0125.val153187 = load <32 x i16>, ptr %i.q, align 1
  %i.r = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %.0125.val186, <32 x i16> %.0125.val153187)
  %i.s = getelementptr inbounds nuw i8, ptr %.0125194, i64 128 ; 3 uses
  %i.t = shufflevector <64 x i8> %i.r, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.u = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.t, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.v = or <64 x i8> %i.u, %i.t
  %i.w = icmp slt <64 x i8> %i.v, zeroinitializer
  %i.x = bitcast <64 x i1> %i.w to i64            ; 2 uses
  %.not147 = icmp eq i64 %i.x, 0
  br i1 %.not147, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = xor i64 %i.x, -1                         ; 2 uses
  %i.z = bitcast i64 %i.y to <64 x i1>
  %i.aa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.u, <64 x i8> zeroinitializer, <64 x i1> %i.z)
  store <64 x i8> %i.aa, ptr %.0130.ptr196, align 1
  %i.ab = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not148 = icmp eq i64 %.0130.idx193, 0
  br i1 %.not148, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <64 x i8> %i.u, ptr %.0130.ptr196, align 1
  br label %bb.h

.thread:                                          ; preds = %bb.f
  %i.ac = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.u, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ad = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ac, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ae = bitcast <16 x i32> %i.ad to <64 x i8>
  %i.af = shufflevector <64 x i8> %i.ae, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.af, ptr align 1 %.0123195, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0123195, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.pn = phi i64 [ %i.ab, %bb.e ], [ 64, %bb.g ]
  %.1131.idx = add nsw i64 %.pn, %.0130.idx193    ; 3 uses
  %.not149 = icmp slt i64 %.1131.idx, 320
  br i1 %.not149, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %.val157188 = load <64 x i8>, ptr %i.a, align 16
  %i.ah = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ah, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ak, ptr align 1 %.0123195, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.al = getelementptr inbounds nuw i8, ptr %.0123195, i64 48
  %.val157188.1 = load <64 x i8>, ptr %i.m, align 16
  %i.am = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.am, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ap, ptr nonnull align 1 %i.al, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0123195, i64 96
  %.val157188.2 = load <64 x i8>, ptr %i.n, align 16
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ar, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.at = bitcast <16 x i32> %i.as to <64 x i8>
  %i.au = shufflevector <64 x i8> %i.at, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr nonnull align 1 %i.aq, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.av = getelementptr inbounds nuw i8, ptr %.0123195, i64 144
  %.val157188.3 = load <64 x i8>, ptr %i.o, align 16
  %i.aw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.az, ptr nonnull align 1 %i.av, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0123195, i64 192
  %.val157188.4 = load <64 x i8>, ptr %i.p, align 16
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bb, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.be, ptr nonnull align 1 %i.ba, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0123195, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.l, i64 64, i1 false)
  %.1131.add = add nsw i64 %.1131.idx, -320
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.preheader.preheader, %bb.h
  %.2132.idx = phi i64 [ %.1131.add, %.preheader.preheader ], [ %.1131.idx, %bb.h ], [ 0, %.thread ] ; 3 uses
  %.3 = phi ptr [ %i.bf, %.preheader.preheader ], [ %.0123195, %bb.h ], [ %i.ag, %.thread ] ; 2 uses
  %.0130.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2132.idx
  %.not = icmp ugt ptr %i.s, %i.k
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !828

.loopexit:                                        ; preds = %bb.i, %bb.c
  %.3133.idx = phi i64 [ 0, %bb.c ], [ %.2132.idx, %bb.i ] ; 3 uses
  %.1126 = phi ptr [ %2, %bb.c ], [ %i.s, %bb.i ] ; 5 uses
  %.4 = phi ptr [ %1, %bb.c ], [ %.3, %bb.i ]     ; 2 uses
  %i.bg = ptrtoint ptr %i.i to i64
  %i.bh = ptrtoint ptr %.1126 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = and i64 %i.bi, 8589934590
  %.not142 = icmp eq i64 %i.bj, 0
  br i1 %.not142, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.3133.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3133.idx
  %i.bk = lshr exact i64 %i.bi, 1
  %i.bl = and i64 %i.bk, 4294967295
  %notmask = shl nsw i64 -1, %i.bl                ; 2 uses
  %i.bm = xor i64 %notmask, -1                    ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = bitcast i32 %i.bn to <32 x i1>
  %i.bp = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr readonly align 1 %.1126, <32 x i1> %i.bo, <32 x i16> zeroinitializer)
  %i.bq = lshr i64 %i.bm, 32
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.1126, i64 64
  %i.bt = bitcast i32 %i.br to <32 x i1>
  %i.bu = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr nonnull readonly align 1 %i.bs, <32 x i1> %i.bt, <32 x i16> zeroinitializer)
  %i.bv = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.bp, <32 x i16> %i.bu)
  %i.bw = shufflevector <64 x i8> %i.bv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.bx = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bw, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.by = or <64 x i8> %i.bx, %i.bw
  %i.bz = icmp slt <64 x i8> %i.by, zeroinitializer
  %i.ca = bitcast <64 x i1> %i.bz to i64
  %i.cb = or i64 %notmask, %i.ca
  %sext = shl i64 %i.bi, 31
  %i.cc = ashr i64 %sext, 32
  %i.cd = getelementptr inbounds [2 x i8], ptr %.1126, i64 %i.cc
  %i.ce = xor i64 %i.cb, -1                       ; 2 uses
  %i.cf = bitcast i64 %i.ce to <64 x i1>
  %i.cg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bx, <64 x i8> zeroinitializer, <64 x i1> %i.cf)
  store <64 x i8> %i.cg, ptr %.3133.ptr, align 1
  %i.ch = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ce)
  %.3133.add = add nsw i64 %.3133.idx, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.4134.idx = phi i64 [ %.3133.add, %bb.j ], [ %.3133.idx, %.loopexit ] ; 2 uses
  %.2127 = phi ptr [ %i.cd, %bb.j ], [ %.1126, %.loopexit ] ; 2 uses
  %.4134.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4134.idx ; 3 uses
  %.not143199 = icmp slt i64 %.4134.idx, 64
  br i1 %.not143199, label %._crit_edge, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %i.cj = phi ptr [ %i.cp, %.lr.ph202 ], [ %i.ci, %.lr.ph202.preheader ] ; 3 uses
  %.0122201 = phi ptr [ %i.cj, %.lr.ph202 ], [ %i.a, %.lr.ph202.preheader ]
  %.5200 = phi ptr [ %i.co, %.lr.ph202 ], [ %.4, %.lr.ph202.preheader ] ; 2 uses
  %.0122.val189 = load <64 x i8>, ptr %.0122201, align 1
  %i.ck = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0122.val189, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cl = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ck, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.cm = bitcast <16 x i32> %i.cl to <64 x i8>
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cn, ptr align 1 %.5200, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.co = getelementptr inbounds nuw i8, ptr %.5200, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %.not143 = icmp ugt ptr %i.cp, %.4134.ptr
  br i1 %.not143, label %._crit_edge, label %.lr.ph202, !llvm.loop !829

._crit_edge:                                      ; preds = %.lr.ph202, %bb.k
  %.5.lcssa = phi ptr [ %.4, %bb.k ], [ %i.co, %.lr.ph202 ] ; 9 uses
  %.0122.lcssa = phi ptr [ %i.a, %bb.k ], [ %i.cj, %.lr.ph202 ] ; 3 uses
  %.not144 = icmp eq ptr %.4134.ptr, %.0122.lcssa
  br i1 %.not144, label %bb.u, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cq = ptrtoint ptr %.0122.lcssa to i64
  %i.cr = ptrtoint ptr %.4134.ptr to i64
  %i.cs = sub i64 %i.cr, %i.cq                    ; 6 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 3                        ; 3 uses
  %notmask145 = shl nsw i64 -1, %i.cs
  %i.cv = xor i64 %notmask145, -1                 ; 2 uses
  %i.cw = bitcast i64 %i.cv to <64 x i1>
  %i.cx = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0122.lcssa, <64 x i1> %i.cw, <64 x i8> zeroinitializer)
  %i.cy = lshr i64 %i.cs, 2
  %i.cz = mul nuw i64 %i.cy, 3                    ; 5 uses
  %i.da = sub i64 %i.cs, %i.cz
  %i.db = lshr i64 %i.cv, %i.da                   ; 4 uses
  %i.dc = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cx, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dd = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dc, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.de = bitcast <16 x i32> %i.dd to <64 x i8>
  %i.df = shufflevector <64 x i8> %i.de, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 4 uses
  switch i64 %4, label %bb.q [
    i64 2, label %bb.m
    i64 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.dg = and i64 %i.cs, 3                        ; 2 uses
  %i.dh = add i64 %i.dg, %i.b
  %i.di = icmp ult i64 %i.dh, 4
  br i1 %i.di, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dj = icmp samesign ugt i32 %i.cu, 1
  %i.dk = icmp eq i64 %i.b, 0
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.dl = icmp samesign ugt i32 %i.cu, 1
  %i.dm = icmp eq i64 %i.b, 0
  %or.cond3 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond3, label %._crit_edge215, label %bb.q

._crit_edge215:                                   ; preds = %bb.o
  %.pre = and i64 %i.cs, 3
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge215, %bb.n
  %.pre-phi = phi i64 [ %.pre, %._crit_edge215 ], [ %i.dg, %bb.n ] ; 2 uses
  %i.dn = bitcast i64 %i.db to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %.not146205 = icmp eq i64 %.pre-phi, 0
  br i1 %.not146205, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.p, %select.unfold
  %.0207 = phi i64 [ %spec.select, %select.unfold ], [ %.pre-phi, %bb.p ]
  %.3128206 = phi ptr [ %i.dp, %select.unfold ], [ %.2127, %bb.p ]
  %i.dp = getelementptr inbounds i8, ptr %.3128206, i64 -2 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = and i16 %i.dq, 255
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = icmp ult i16 %i.dq, 256
  %i.dw = icmp ult i8 %i.du, 64
  %or.cond6 = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dx = sext i1 %or.cond6 to i64
  %spec.select = add nsw i64 %.0207, %i.dx        ; 2 uses
  %.not146 = icmp eq i64 %spec.select, 0
  br i1 %.not146, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.p
  %.3128.lcssa = phi ptr [ %.2127, %bb.p ], [ %i.dp, %select.unfold ]
  %i.dy = ptrtoint ptr %.3128.lcssa to i64
  %i.dz = ptrtoint ptr %2 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 1
  br label %bb.u

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.o
  switch i32 %i.cu, label %bb.t [
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ec = shl nuw i64 %i.db, 1
  %i.ed = or disjoint i64 %i.ec, 1
  %i.ee = bitcast i64 %i.ed to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.eh = shl i64 %i.db, 2
  %i.ei = or disjoint i64 %i.eh, 3
  %i.ej = bitcast i64 %i.ei to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.em = bitcast i64 %i.db to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.s, %bb.t, %bb.r, %select.unfold._crit_edge
  %.sink = phi ptr [ %i.do, %select.unfold._crit_edge ], [ %i.en, %bb.t ], [ %i.eg, %bb.r ], [ %i.el, %bb.s ], [ %.5.lcssa, %._crit_edge ]
  %.sink223 = phi i64 [ %i.eb, %select.unfold._crit_edge ], [ %i.f, %bb.t ], [ %i.f, %bb.r ], [ %i.f, %bb.s ], [ %i.d, %._crit_edge ]
  %i.eo = ptrtoint ptr %.sink to i64
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  store i32 0, ptr %0, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink223, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eq, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.et, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb1ELb0ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 6, 5) %4, i64 noundef %5) unnamed_addr #15 !guid !833 {
bb.a:
  %6 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %i.a = alloca [384 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIDsEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = load i64, ptr %6, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not314 = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not314, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.n = icmp ugt i64 %i.f, 63
  br i1 %i.n, label %bb.f, label %.thread390

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -128
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0264.idx.ph = phi i64 [ 0, %bb.f ], [ %.0264.idx.ph.be, %.outer.backedge ]
  %.0257.ph = phi ptr [ %2, %bb.f ], [ %i.w, %.outer.backedge ]
  %.0254.ph = phi ptr [ %1, %bb.f ], [ %.0254.ph.be, %.outer.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %.outer, %bb.l
  %.0264.idx = phi i64 [ %.1265.idx, %bb.l ], [ %.0264.idx.ph, %.outer ] ; 4 uses
  %.0257 = phi ptr [ %i.w, %bb.l ], [ %.0257.ph, %.outer ] ; 6 uses
  %.0264.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0264.idx ; 2 uses
  %.not292 = icmp ugt ptr %.0257, %i.o
  br i1 %.not292, label %.thread390, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0257.val410 = load <32 x i16>, ptr %.0257, align 1
  %i.u = getelementptr i8, ptr %.0257, i64 64
  %.0257.val320411 = load <32 x i16>, ptr %i.u, align 1
  %i.v = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %.0257.val410, <32 x i16> %.0257.val320411)
  %i.w = getelementptr inbounds nuw i8, ptr %.0257, i64 128 ; 2 uses
  %i.x = shufflevector <64 x i8> %i.v, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 4 uses
  %i.y = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.x, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.z = or <64 x i8> %i.y, %i.x
  %i.aa = icmp slt <64 x i8> %i.z, zeroinitializer ; 2 uses
  %i.ab = bitcast <64 x i1> %i.aa to i64          ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit: ; preds = %bb.h
  %i.ac = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.x)
  %i.ad = icmp eq <64 x i8> %i.ac, %i.x
  %i.ae = xor <64 x i1> %i.aa, %i.ad
  %i.af = bitcast <64 x i1> %i.ae to i64          ; 2 uses
  %.not293 = icmp eq i64 %i.af, 0
  br i1 %.not293, label %bb.i, label %.thread386

bb.i:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.ag = xor i64 %i.ab, -1                       ; 2 uses
  %i.ah = bitcast i64 %i.ag to <64 x i1>
  %i.ai = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.y, <64 x i8> zeroinitializer, <64 x i1> %i.ah)
  store <64 x i8> %i.ai, ptr %.0264.ptr.ptr, align 1
  %i.aj = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ag)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not295 = icmp eq i64 %.0264.idx, 0
  br i1 %.not295, label %.thread373, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <64 x i8> %i.y, ptr %.0264.ptr.ptr, align 1
  br label %bb.l

.thread373:                                       ; preds = %bb.j
  %i.ak = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.y, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.al = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ak, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.am = bitcast <16 x i32> %i.al to <64 x i8>
  %i.an = shufflevector <64 x i8> %i.am, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.an, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi i64 [ %i.aj, %bb.i ], [ 64, %bb.k ]
  %.1265.idx = add nsw i64 %.pn, %.0264.idx       ; 3 uses
  %.not296 = icmp slt i64 %.1265.idx, 320
  br i1 %.not296, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.val324412 = load <64 x i8>, ptr %i.a, align 16
  %i.ap = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.aq = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ap, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ar = bitcast <16 x i32> %i.aq to <64 x i8>
  %i.as = shufflevector <64 x i8> %i.ar, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.as, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.at = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  %.val324412.1 = load <64 x i8>, ptr %i.q, align 16
  %i.au = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.au, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aw = bitcast <16 x i32> %i.av to <64 x i8>
  %i.ax = shufflevector <64 x i8> %i.aw, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ax, ptr nonnull align 1 %i.at, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 96
  %.val324412.2 = load <64 x i8>, ptr %i.r, align 16
  %i.az = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ba = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.az, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bb = bitcast <16 x i32> %i.ba to <64 x i8>
  %i.bc = shufflevector <64 x i8> %i.bb, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bc, ptr nonnull align 1 %i.ay, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 144
  %.val324412.3 = load <64 x i8>, ptr %i.s, align 16
  %i.be = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bf = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.be, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bg = bitcast <16 x i32> %i.bf to <64 x i8>
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bh, ptr nonnull align 1 %i.bd, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 192
  %.val324412.4 = load <64 x i8>, ptr %i.t, align 16
  %i.bj = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bj, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bl = bitcast <16 x i32> %i.bk to <64 x i8>
  %i.bm = shufflevector <64 x i8> %i.bl, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bm, ptr nonnull align 1 %i.bi, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bn = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 64, i1 false)
  %.1265.add = add nsw i64 %.1265.idx, -320
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.preheader, %.thread373
  %.0264.idx.ph.be = phi i64 [ 0, %.thread373 ], [ %.1265.add, %.preheader ]
  %.0254.ph.be = phi ptr [ %i.ao, %.thread373 ], [ %i.bn, %.preheader ]
  br label %.outer, !llvm.loop !831

.thread386:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.bo = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.af, i1 true)
  %i.bp = ptrtoint ptr %.0257 to i64
  %i.bq = ptrtoint ptr %2 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 1
  %i.bt = add nsw i64 %i.bo, %i.bs
  %i.bu = ptrtoint ptr %.0254.ph to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  br label %.critedge

.thread390:                                       ; preds = %bb.g, %bb.e
  %.5269.idx = phi i64 [ 0, %bb.e ], [ %.0264.idx, %bb.g ] ; 3 uses
  %.3260 = phi ptr [ %2, %bb.e ], [ %.0257, %bb.g ] ; 5 uses
  %.6 = phi ptr [ %1, %bb.e ], [ %.0254.ph, %bb.g ] ; 3 uses
  %.5269.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5269.idx
  %i.bx = ptrtoint ptr %i.m to i64
  %i.by = ptrtoint ptr %.3260 to i64              ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = and i64 %i.bz, 8589934590
  %.not300 = icmp eq i64 %i.ca, 0
  br i1 %.not300, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread390
  %i.cb = lshr exact i64 %i.bz, 1
  %i.cc = and i64 %i.cb, 4294967295
  %notmask = shl nsw i64 -1, %i.cc                ; 2 uses
  %i.cd = xor i64 %notmask, -1                    ; 4 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = bitcast i32 %i.ce to <32 x i1>
  %i.cg = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr readonly align 1 %.3260, <32 x i1> %i.cf, <32 x i16> zeroinitializer)
  %i.ch = lshr i64 %i.cd, 32
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.3260, i64 64
  %i.ck = bitcast i32 %i.ci to <32 x i1>
  %i.cl = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr nonnull readonly align 1 %i.cj, <32 x i1> %i.ck, <32 x i16> zeroinitializer)
  %i.cm = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.cg, <32 x i16> %i.cl)
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 4 uses
  %i.co = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.cn, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 63, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.cp = or <64 x i8> %i.co, %i.cn
  %i.cq = icmp slt <64 x i8> %i.cp, zeroinitializer ; 2 uses
  %i.cr = bitcast <64 x i1> %i.cq to i64          ; 2 uses
  %i.cs = and i64 %i.cr, %i.cd
  %.not.i325 = icmp eq i64 %i.cs, 0
  br i1 %.not.i325, label %.thread398, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit326

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit326: ; preds = %bb.m
  %i.ct = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.cn)
  %i.cu = icmp eq <64 x i8> %i.ct, %i.cn
  %i.cv = xor <64 x i1> %i.cq, %i.cu
  %i.cw = bitcast <64 x i1> %i.cv to i64
  %i.cx = and i64 %i.cw, %i.cd                    ; 2 uses
  %.not301 = icmp eq i64 %i.cx, 0
  br i1 %.not301, label %.thread398, label %bb.n

.thread398:                                       ; preds = %bb.m, %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit326
  %i.cy = or i64 %notmask, %i.cr
  %sext = shl i64 %i.bz, 31
  %i.cz = ashr i64 %sext, 32
  %i.da = getelementptr inbounds [2 x i8], ptr %.3260, i64 %i.cz
  %i.db = xor i64 %i.cy, -1                       ; 2 uses
  %i.dc = bitcast i64 %i.db to <64 x i1>
  %i.dd = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.co, <64 x i8> zeroinitializer, <64 x i1> %i.dc)
  store <64 x i8> %i.dd, ptr %.5269.ptr, align 1
  %i.de = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.db)
  %.5269.add = add nsw i64 %.5269.idx, %i.de
  br label %bb.o

bb.n:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb1ELb0ELb0EEEmPNS1_7block64EPmm.exit326
  %i.df = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cx, i1 true)
  %i.dg = ptrtoint ptr %2 to i64
  %i.dh = sub i64 %i.by, %i.dg
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = add nsw i64 %i.df, %i.di
  %i.dk = ptrtoint ptr %.6 to i64
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %.critedge

bb.o:                                             ; preds = %.thread398, %.thread390
  %.7271.idx = phi i64 [ %.5269.add, %.thread398 ], [ %.5269.idx, %.thread390 ] ; 2 uses
  %.5262 = phi ptr [ %i.da, %.thread398 ], [ %.3260, %.thread390 ] ; 7 uses
  %.7271.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.7271.idx ; 5 uses
  %.not302432 = icmp slt i64 %.7271.idx, 64
  br i1 %.not302432, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.do = phi ptr [ %i.du, %.lr.ph ], [ %i.dn, %.lr.ph.preheader ] ; 3 uses
  %.0253434 = phi ptr [ %i.do, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.7433 = phi ptr [ %i.dt, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 2 uses
  %.0253.val413 = load <64 x i8>, ptr %.0253434, align 1
  %i.dp = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0253.val413, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dq = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dp, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dr = bitcast <16 x i32> %i.dq to <64 x i8>
  %i.ds = shufflevector <64 x i8> %i.dr, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ds, ptr align 1 %.7433, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.dt = getelementptr inbounds nuw i8, ptr %.7433, i64 48 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 64 ; 2 uses
  %.not302 = icmp ugt ptr %i.du, %.7271.ptr
  br i1 %.not302, label %._crit_edge, label %.lr.ph, !llvm.loop !832

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.7.lcssa = phi ptr [ %.6, %bb.o ], [ %i.dt, %.lr.ph ] ; 19 uses
  %.0253.lcssa = phi ptr [ %i.a, %bb.o ], [ %i.do, %.lr.ph ] ; 3 uses
  %.not303 = icmp eq ptr %.7271.ptr, %.0253.lcssa
  br i1 %.not303, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dv = ptrtoint ptr %.0253.lcssa to i64
  %i.dw = ptrtoint ptr %.7271.ptr to i64
  %i.dx = sub i64 %i.dw, %i.dv                    ; 5 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3                        ; 2 uses
  %notmask306 = shl nsw i64 -1, %i.dx
  %i.ea = xor i64 %notmask306, -1                 ; 2 uses
  %i.eb = bitcast i64 %i.ea to <64 x i1>
  %i.ec = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0253.lcssa, <64 x i1> %i.eb, <64 x i8> zeroinitializer)
  %i.ed = lshr i64 %i.dx, 2
  %i.ee = mul nuw i64 %i.ed, 3                    ; 9 uses
  %i.ef = sub i64 %i.dx, %i.ee
  %i.eg = lshr i64 %i.ea, %i.ef                   ; 8 uses
  %i.eh = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ec, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ei = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eh, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ej = bitcast <16 x i32> %i.ei to <64 x i8>
  %i.ek = shufflevector <64 x i8> %i.ej, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 8 uses
  %i.el = and i64 %i.dx, 3                        ; 3 uses
  %i.em = add i64 %i.el, %i.d                     ; 3 uses
  %i.en = icmp ugt i64 %i.em, 4
  br i1 %i.en, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = ptrtoint ptr %.5262 to i64
  %i.ep = ptrtoint ptr %2 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 1
  %i.es = ptrtoint ptr %.7.lcssa to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ev = icmp eq i64 %5, 0
  %i.ew = icmp samesign ugt i32 %i.dz, 1          ; 3 uses
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp ne i64 %i.d, 0                     ; 5 uses
  %or.cond8 = select i1 %or.cond, i1 %i.ex, i1 false
  %or.cond8.not = xor i1 %or.cond8, true
  %i.ey = and i64 %i.em, 3
  %.not307 = icmp eq i64 %i.ey, 0                 ; 2 uses
  %or.cond315 = or i1 %.not307, %or.cond8.not
  br i1 %or.cond315, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = ptrtoint ptr %.5262 to i64
  %i.fa = ptrtoint ptr %2 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 1
  %i.fd = ptrtoint ptr %.7.lcssa to i64
  %i.fe = ptrtoint ptr %1 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.fg = icmp eq i64 %5, 1                       ; 3 uses
  %or.cond10 = select i1 %i.fg, i1 %i.ew, i1 false
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond316 = or i1 %.not307, %or.cond10.not
  br i1 %or.cond316, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.fm = icmp eq i64 %5, 2
  %.not309 = icmp ne i64 %i.em, 4
  %or.cond317.not415 = and i1 %i.fm, %.not309
  %.not = xor i1 %i.ex, true
  %or.cond12 = select i1 %i.ew, i1 true, i1 %.not
  %i.fn = icmp eq i64 %5, 3
  %i.fo = or i1 %i.fn, %or.cond317.not415
  %or.cond408 = select i1 %i.fo, i1 %or.cond12, i1 false
  br i1 %or.cond408, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fp = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %.not313436 = icmp eq i64 %i.el, 0
  br i1 %.not313436, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.w, %select.unfold
  %.0438 = phi i64 [ %spec.select, %select.unfold ], [ %i.el, %bb.w ]
  %.6263437 = phi ptr [ %i.fr, %select.unfold ], [ %.5262, %bb.w ]
  %i.fr = getelementptr inbounds i8, ptr %.6263437, i64 -2 ; 3 uses
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  %i.ft = and i16 %i.fs, 255
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp ult i16 %i.fs, 256
  %i.fy = icmp ult i8 %i.fw, 64
  %or.cond17 = select i1 %i.fx, i1 %i.fy, i1 false
  %i.fz = sext i1 %or.cond17 to i64
  %spec.select = add nsw i64 %.0438, %i.fz        ; 2 uses
  %.not313 = icmp eq i64 %spec.select, 0
  br i1 %.not313, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.w
  %.6263.lcssa = phi ptr [ %.5262, %bb.w ], [ %i.fr, %select.unfold ]
  %i.ga = ptrtoint ptr %.6263.lcssa to i64
  %i.gb = ptrtoint ptr %2 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 1
  %i.ge = ptrtoint ptr %i.fq to i64
  %i.gf = ptrtoint ptr %1 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  switch i32 %i.dz, label %default.unreachable [
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.fg, label %bb.z, label %.thread402

bb.z:                                             ; preds = %bb.y
  %i.gh = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = and i8 %i.gi, 15
  %.not311 = icmp eq i8 %i.gj, 0
  br i1 %.not311, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.gk)
  %i.gl = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.gm = ptrtoint ptr %.5262 to i64
  %i.gn = ptrtoint ptr %2 to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 1
  %i.gq = ptrtoint ptr %i.gl to i64
  %i.gr = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  br i1 %i.fg, label %bb.ac, label %.thread402

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = and i8 %i.gu, 3
  %.not310 = icmp eq i8 %i.gv, 0
  br i1 %.not310, label %.thread402, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gw = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.gy = ptrtoint ptr %.5262 to i64
  %i.gz = ptrtoint ptr %2 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 1
  %i.hc = ptrtoint ptr %i.gx to i64
  %i.hd = ptrtoint ptr %1 to i64
  %i.he = sub i64 %i.hc, %i.hd
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.hf = and i64 %5, -2
  %i.hg = icmp ne i64 %i.hf, 2
  %brmerge = select i1 %i.hg, i1 true, i1 %i.ex
  br i1 %brmerge, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.hh = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.hj = ptrtoint ptr %.5262 to i64
  %i.hk = ptrtoint ptr %2 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 1
  %i.hn = ptrtoint ptr %i.hi to i64
  %i.ho = ptrtoint ptr %1 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  br label %.critedge

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ag:                                            ; preds = %bb.x
  br i1 %i.ex, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hq = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %1 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ae
  %i.hv = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  br label %._crit_edge459

.thread402:                                       ; preds = %bb.ab, %bb.ac, %bb.y, %bb.z
  %.sink501 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.sink500 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 3, %bb.ac ], [ 3, %bb.ab ]
  %i.hx = shl i64 %i.eg, %.sink501
  %i.hy = or disjoint i64 %i.hx, %.sink500
  %i.hz = bitcast i64 %i.hy to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
end_hunk_4
begin_hunk_5_@_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb1ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.d, 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.j = icmp ugt i64 %i.d, 63
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.0130.ptr196 = phi ptr [ %i.a, %.lr.ph ], [ %.0130.ptr.ptr, %bb.i ] ; 2 uses
  %.0123195 = phi ptr [ %1, %.lr.ph ], [ %.3, %bb.i ] ; 9 uses
  %.0125194 = phi ptr [ %2, %.lr.ph ], [ %i.s, %bb.i ] ; 3 uses
  %.0130.idx193 = phi i64 [ 0, %.lr.ph ], [ %.2132.idx, %bb.i ] ; 2 uses
  %.0125.val186 = load <32 x i16>, ptr %.0125194, align 1
  %i.q = getelementptr i8, ptr %.0125194, i64 64
  %.0125.val153187 = load <32 x i16>, ptr %i.q, align 1
  %i.r = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %.0125.val186, <32 x i16> %.0125.val153187)
  %i.s = getelementptr inbounds nuw i8, ptr %.0125194, i64 128 ; 3 uses
  %i.t = shufflevector <64 x i8> %i.r, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.u = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.t, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.v = or <64 x i8> %i.u, %i.t
  %i.w = icmp slt <64 x i8> %i.v, zeroinitializer
  %i.x = bitcast <64 x i1> %i.w to i64            ; 2 uses
  %.not147 = icmp eq i64 %i.x, 0
  br i1 %.not147, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = xor i64 %i.x, -1                         ; 2 uses
  %i.z = bitcast i64 %i.y to <64 x i1>
  %i.aa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.u, <64 x i8> zeroinitializer, <64 x i1> %i.z)
  store <64 x i8> %i.aa, ptr %.0130.ptr196, align 1
  %i.ab = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not148 = icmp eq i64 %.0130.idx193, 0
  br i1 %.not148, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <64 x i8> %i.u, ptr %.0130.ptr196, align 1
  br label %bb.h

.thread:                                          ; preds = %bb.f
  %i.ac = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.u, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ad = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ac, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ae = bitcast <16 x i32> %i.ad to <64 x i8>
  %i.af = shufflevector <64 x i8> %i.ae, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.af, ptr align 1 %.0123195, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0123195, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.pn = phi i64 [ %i.ab, %bb.e ], [ 64, %bb.g ]
  %.1131.idx = add nsw i64 %.pn, %.0130.idx193    ; 3 uses
  %.not149 = icmp slt i64 %.1131.idx, 320
  br i1 %.not149, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %.val157188 = load <64 x i8>, ptr %i.a, align 16
  %i.ah = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ah, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ak, ptr align 1 %.0123195, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.al = getelementptr inbounds nuw i8, ptr %.0123195, i64 48
  %.val157188.1 = load <64 x i8>, ptr %i.m, align 16
  %i.am = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.am, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ap, ptr nonnull align 1 %i.al, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0123195, i64 96
  %.val157188.2 = load <64 x i8>, ptr %i.n, align 16
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ar, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.at = bitcast <16 x i32> %i.as to <64 x i8>
  %i.au = shufflevector <64 x i8> %i.at, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr nonnull align 1 %i.aq, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.av = getelementptr inbounds nuw i8, ptr %.0123195, i64 144
  %.val157188.3 = load <64 x i8>, ptr %i.o, align 16
  %i.aw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.az, ptr nonnull align 1 %i.av, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0123195, i64 192
  %.val157188.4 = load <64 x i8>, ptr %i.p, align 16
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val157188.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bb, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.be, ptr nonnull align 1 %i.ba, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0123195, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.l, i64 64, i1 false)
  %.1131.add = add nsw i64 %.1131.idx, -320
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.preheader.preheader, %bb.h
  %.2132.idx = phi i64 [ %.1131.add, %.preheader.preheader ], [ %.1131.idx, %bb.h ], [ 0, %.thread ] ; 3 uses
  %.3 = phi ptr [ %i.bf, %.preheader.preheader ], [ %.0123195, %bb.h ], [ %i.ag, %.thread ] ; 2 uses
  %.0130.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2132.idx
  %.not = icmp ugt ptr %i.s, %i.k
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !834

.loopexit:                                        ; preds = %bb.i, %bb.c
  %.3133.idx = phi i64 [ 0, %bb.c ], [ %.2132.idx, %bb.i ] ; 3 uses
  %.1126 = phi ptr [ %2, %bb.c ], [ %i.s, %bb.i ] ; 5 uses
  %.4 = phi ptr [ %1, %bb.c ], [ %.3, %bb.i ]     ; 2 uses
  %i.bg = ptrtoint ptr %i.i to i64
  %i.bh = ptrtoint ptr %.1126 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = and i64 %i.bi, 8589934590
  %.not142 = icmp eq i64 %i.bj, 0
  br i1 %.not142, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.3133.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3133.idx
  %i.bk = lshr exact i64 %i.bi, 1
  %i.bl = and i64 %i.bk, 4294967295
  %notmask = shl nsw i64 -1, %i.bl                ; 2 uses
  %i.bm = xor i64 %notmask, -1                    ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = bitcast i32 %i.bn to <32 x i1>
  %i.bp = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr readonly align 1 %.1126, <32 x i1> %i.bo, <32 x i16> zeroinitializer)
  %i.bq = lshr i64 %i.bm, 32
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.1126, i64 64
  %i.bt = bitcast i32 %i.br to <32 x i1>
  %i.bu = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr nonnull readonly align 1 %i.bs, <32 x i1> %i.bt, <32 x i16> zeroinitializer)
  %i.bv = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.bp, <32 x i16> %i.bu)
  %i.bw = shufflevector <64 x i8> %i.bv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.bx = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.bw, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.by = or <64 x i8> %i.bx, %i.bw
  %i.bz = icmp slt <64 x i8> %i.by, zeroinitializer
  %i.ca = bitcast <64 x i1> %i.bz to i64
  %i.cb = or i64 %notmask, %i.ca
  %sext = shl i64 %i.bi, 31
  %i.cc = ashr i64 %sext, 32
  %i.cd = getelementptr inbounds [2 x i8], ptr %.1126, i64 %i.cc
  %i.ce = xor i64 %i.cb, -1                       ; 2 uses
  %i.cf = bitcast i64 %i.ce to <64 x i1>
  %i.cg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bx, <64 x i8> zeroinitializer, <64 x i1> %i.cf)
  store <64 x i8> %i.cg, ptr %.3133.ptr, align 1
  %i.ch = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ce)
  %.3133.add = add nsw i64 %.3133.idx, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.4134.idx = phi i64 [ %.3133.add, %bb.j ], [ %.3133.idx, %.loopexit ] ; 2 uses
  %.2127 = phi ptr [ %i.cd, %bb.j ], [ %.1126, %.loopexit ] ; 2 uses
  %.4134.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4134.idx ; 3 uses
  %.not143199 = icmp slt i64 %.4134.idx, 64
  br i1 %.not143199, label %._crit_edge, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %i.cj = phi ptr [ %i.cp, %.lr.ph202 ], [ %i.ci, %.lr.ph202.preheader ] ; 3 uses
  %.0122201 = phi ptr [ %i.cj, %.lr.ph202 ], [ %i.a, %.lr.ph202.preheader ]
  %.5200 = phi ptr [ %i.co, %.lr.ph202 ], [ %.4, %.lr.ph202.preheader ] ; 2 uses
  %.0122.val189 = load <64 x i8>, ptr %.0122201, align 1
  %i.ck = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0122.val189, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cl = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ck, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.cm = bitcast <16 x i32> %i.cl to <64 x i8>
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cn, ptr align 1 %.5200, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.co = getelementptr inbounds nuw i8, ptr %.5200, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %.not143 = icmp ugt ptr %i.cp, %.4134.ptr
  br i1 %.not143, label %._crit_edge, label %.lr.ph202, !llvm.loop !835

._crit_edge:                                      ; preds = %.lr.ph202, %bb.k
  %.5.lcssa = phi ptr [ %.4, %bb.k ], [ %i.co, %.lr.ph202 ] ; 9 uses
  %.0122.lcssa = phi ptr [ %i.a, %bb.k ], [ %i.cj, %.lr.ph202 ] ; 3 uses
  %.not144 = icmp eq ptr %.4134.ptr, %.0122.lcssa
  br i1 %.not144, label %bb.u, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cq = ptrtoint ptr %.0122.lcssa to i64
  %i.cr = ptrtoint ptr %.4134.ptr to i64
  %i.cs = sub i64 %i.cr, %i.cq                    ; 6 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 3                        ; 3 uses
  %notmask145 = shl nsw i64 -1, %i.cs
  %i.cv = xor i64 %notmask145, -1                 ; 2 uses
  %i.cw = bitcast i64 %i.cv to <64 x i1>
  %i.cx = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0122.lcssa, <64 x i1> %i.cw, <64 x i8> zeroinitializer)
  %i.cy = lshr i64 %i.cs, 2
  %i.cz = mul nuw i64 %i.cy, 3                    ; 5 uses
  %i.da = sub i64 %i.cs, %i.cz
  %i.db = lshr i64 %i.cv, %i.da                   ; 4 uses
  %i.dc = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cx, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dd = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dc, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.de = bitcast <16 x i32> %i.dd to <64 x i8>
  %i.df = shufflevector <64 x i8> %i.de, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 4 uses
  switch i64 %4, label %bb.q [
    i64 2, label %bb.m
    i64 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.dg = and i64 %i.cs, 3                        ; 2 uses
  %i.dh = add i64 %i.dg, %i.b
  %i.di = icmp ult i64 %i.dh, 4
  br i1 %i.di, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dj = icmp samesign ugt i32 %i.cu, 1
  %i.dk = icmp eq i64 %i.b, 0
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.dl = icmp samesign ugt i32 %i.cu, 1
  %i.dm = icmp eq i64 %i.b, 0
  %or.cond3 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond3, label %._crit_edge215, label %bb.q

._crit_edge215:                                   ; preds = %bb.o
  %.pre = and i64 %i.cs, 3
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge215, %bb.n
  %.pre-phi = phi i64 [ %.pre, %._crit_edge215 ], [ %i.dg, %bb.n ] ; 2 uses
  %i.dn = bitcast i64 %i.db to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %.not146205 = icmp eq i64 %.pre-phi, 0
  br i1 %.not146205, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.p, %select.unfold
  %.0207 = phi i64 [ %spec.select, %select.unfold ], [ %.pre-phi, %bb.p ]
  %.3128206 = phi ptr [ %i.dp, %select.unfold ], [ %.2127, %bb.p ]
  %i.dp = getelementptr inbounds i8, ptr %.3128206, i64 -2 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = and i16 %i.dq, 255
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = icmp ult i16 %i.dq, 256
  %i.dw = icmp ult i8 %i.du, 64
  %or.cond6 = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dx = sext i1 %or.cond6 to i64
  %spec.select = add nsw i64 %.0207, %i.dx        ; 2 uses
  %.not146 = icmp eq i64 %spec.select, 0
  br i1 %.not146, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.p
  %.3128.lcssa = phi ptr [ %.2127, %bb.p ], [ %i.dp, %select.unfold ]
  %i.dy = ptrtoint ptr %.3128.lcssa to i64
  %i.dz = ptrtoint ptr %2 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 1
  br label %bb.u

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.o
  switch i32 %i.cu, label %bb.t [
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ec = shl nuw i64 %i.db, 1
  %i.ed = or disjoint i64 %i.ec, 1
  %i.ee = bitcast i64 %i.ed to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.eh = shl i64 %i.db, 2
  %i.ei = or disjoint i64 %i.eh, 3
  %i.ej = bitcast i64 %i.ei to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.em = bitcast i64 %i.db to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.df, ptr align 1 %.5.lcssa, <64 x i1> %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.s, %bb.t, %bb.r, %select.unfold._crit_edge
  %.sink = phi ptr [ %i.do, %select.unfold._crit_edge ], [ %i.en, %bb.t ], [ %i.eg, %bb.r ], [ %i.el, %bb.s ], [ %.5.lcssa, %._crit_edge ]
  %.sink223 = phi i64 [ %i.eb, %select.unfold._crit_edge ], [ %i.f, %bb.t ], [ %i.f, %bb.r ], [ %i.f, %bb.s ], [ %i.d, %._crit_edge ]
  %i.eo = ptrtoint ptr %.sink to i64
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  store i32 0, ptr %0, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink223, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eq, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.et, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7simdutf7icelake12_GLOBAL__N_122compress_decode_base64ILb0ELb0ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 5, 4) %4, i64 noundef %5) unnamed_addr #15 !guid !839 {
bb.a:
  %6 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %i.a = alloca [384 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIDsEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = load i64, ptr %6, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not314 = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not314, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.n = icmp ugt i64 %i.f, 63
  br i1 %i.n, label %bb.f, label %.thread390

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -128
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.f
  %.0264.idx.ph = phi i64 [ 0, %bb.f ], [ %.0264.idx.ph.be, %.outer.backedge ]
  %.0257.ph = phi ptr [ %2, %bb.f ], [ %i.w, %.outer.backedge ]
  %.0254.ph = phi ptr [ %1, %bb.f ], [ %.0254.ph.be, %.outer.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %.outer, %bb.l
  %.0264.idx = phi i64 [ %.1265.idx, %bb.l ], [ %.0264.idx.ph, %.outer ] ; 4 uses
  %.0257 = phi ptr [ %i.w, %bb.l ], [ %.0257.ph, %.outer ] ; 6 uses
  %.0264.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0264.idx ; 2 uses
  %.not292 = icmp ugt ptr %.0257, %i.o
  br i1 %.not292, label %.thread390, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0257.val410 = load <32 x i16>, ptr %.0257, align 1
  %i.u = getelementptr i8, ptr %.0257, i64 64
  %.0257.val320411 = load <32 x i16>, ptr %i.u, align 1
  %i.v = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %.0257.val410, <32 x i16> %.0257.val320411)
  %i.w = getelementptr inbounds nuw i8, ptr %.0257, i64 128 ; 2 uses
  %i.x = shufflevector <64 x i8> %i.v, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 4 uses
  %i.y = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.x, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 4 uses
  %i.z = or <64 x i8> %i.y, %i.x
  %i.aa = icmp slt <64 x i8> %i.z, zeroinitializer ; 2 uses
  %i.ab = bitcast <64 x i1> %i.aa to i64          ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit: ; preds = %bb.h
  %i.ac = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.x)
  %i.ad = icmp eq <64 x i8> %i.ac, %i.x
  %i.ae = xor <64 x i1> %i.aa, %i.ad
  %i.af = bitcast <64 x i1> %i.ae to i64          ; 2 uses
  %.not293 = icmp eq i64 %i.af, 0
  br i1 %.not293, label %bb.i, label %.thread386

bb.i:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.ag = xor i64 %i.ab, -1                       ; 2 uses
  %i.ah = bitcast i64 %i.ag to <64 x i1>
  %i.ai = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.y, <64 x i8> zeroinitializer, <64 x i1> %i.ah)
  store <64 x i8> %i.ai, ptr %.0264.ptr.ptr, align 1
  %i.aj = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ag)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not295 = icmp eq i64 %.0264.idx, 0
  br i1 %.not295, label %.thread373, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <64 x i8> %i.y, ptr %.0264.ptr.ptr, align 1
  br label %bb.l

.thread373:                                       ; preds = %bb.j
  %i.ak = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.y, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.al = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ak, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.am = bitcast <16 x i32> %i.al to <64 x i8>
  %i.an = shufflevector <64 x i8> %i.am, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.an, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi i64 [ %i.aj, %bb.i ], [ 64, %bb.k ]
  %.1265.idx = add nsw i64 %.pn, %.0264.idx       ; 3 uses
  %.not296 = icmp slt i64 %.1265.idx, 320
  br i1 %.not296, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.val324412 = load <64 x i8>, ptr %i.a, align 16
  %i.ap = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.aq = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ap, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ar = bitcast <16 x i32> %i.aq to <64 x i8>
  %i.as = shufflevector <64 x i8> %i.ar, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.as, ptr align 1 %.0254.ph, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.at = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 48
  %.val324412.1 = load <64 x i8>, ptr %i.q, align 16
  %i.au = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.1, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.au, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.aw = bitcast <16 x i32> %i.av to <64 x i8>
  %i.ax = shufflevector <64 x i8> %i.aw, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ax, ptr nonnull align 1 %i.at, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 96
  %.val324412.2 = load <64 x i8>, ptr %i.r, align 16
  %i.az = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.2, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ba = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.az, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bb = bitcast <16 x i32> %i.ba to <64 x i8>
  %i.bc = shufflevector <64 x i8> %i.bb, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bc, ptr nonnull align 1 %i.ay, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 144
  %.val324412.3 = load <64 x i8>, ptr %i.s, align 16
  %i.be = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.3, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bf = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.be, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bg = bitcast <16 x i32> %i.bf to <64 x i8>
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bh, ptr nonnull align 1 %i.bd, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 192
  %.val324412.4 = load <64 x i8>, ptr %i.t, align 16
  %i.bj = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.val324412.4, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bj, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.bl = bitcast <16 x i32> %i.bk to <64 x i8>
  %i.bm = shufflevector <64 x i8> %i.bl, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bm, ptr nonnull align 1 %i.bi, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.bn = getelementptr inbounds nuw i8, ptr %.0254.ph, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 64, i1 false)
  %.1265.add = add nsw i64 %.1265.idx, -320
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.preheader, %.thread373
  %.0264.idx.ph.be = phi i64 [ 0, %.thread373 ], [ %.1265.add, %.preheader ]
  %.0254.ph.be = phi ptr [ %i.ao, %.thread373 ], [ %i.bn, %.preheader ]
  br label %.outer, !llvm.loop !837

.thread386:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit
  %i.bo = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.af, i1 true)
  %i.bp = ptrtoint ptr %.0257 to i64
  %i.bq = ptrtoint ptr %2 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 1
  %i.bt = add nsw i64 %i.bo, %i.bs
  %i.bu = ptrtoint ptr %.0254.ph to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  br label %.critedge

.thread390:                                       ; preds = %bb.g, %bb.e
  %.5269.idx = phi i64 [ 0, %bb.e ], [ %.0264.idx, %bb.g ] ; 3 uses
  %.3260 = phi ptr [ %2, %bb.e ], [ %.0257, %bb.g ] ; 5 uses
  %.6 = phi ptr [ %1, %bb.e ], [ %.0254.ph, %bb.g ] ; 3 uses
  %.5269.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5269.idx
  %i.bx = ptrtoint ptr %i.m to i64
  %i.by = ptrtoint ptr %.3260 to i64              ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = and i64 %i.bz, 8589934590
  %.not300 = icmp eq i64 %i.ca, 0
  br i1 %.not300, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread390
  %i.cb = lshr exact i64 %i.bz, 1
  %i.cc = and i64 %i.cb, 4294967295
  %notmask = shl nsw i64 -1, %i.cc                ; 2 uses
  %i.cd = xor i64 %notmask, -1                    ; 4 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = bitcast i32 %i.ce to <32 x i1>
  %i.cg = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr readonly align 1 %.3260, <32 x i1> %i.cf, <32 x i16> zeroinitializer)
  %i.ch = lshr i64 %i.cd, 32
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.3260, i64 64
  %i.ck = bitcast i32 %i.ci to <32 x i1>
  %i.cl = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr nonnull readonly align 1 %i.cj, <32 x i1> %i.ck, <32 x i16> zeroinitializer)
  %i.cm = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.cg, <32 x i16> %i.cl)
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63> ; 4 uses
  %i.co = tail call <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -1, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -1, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 62, i8 -128, i8 -128, i8 -128, i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <64 x i8> %i.cn, <64 x i8> <i8 -128, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>) ; 2 uses
  %i.cp = or <64 x i8> %i.co, %i.cn
  %i.cq = icmp slt <64 x i8> %i.cp, zeroinitializer ; 2 uses
  %i.cr = bitcast <64 x i1> %i.cq to i64          ; 2 uses
  %i.cs = and i64 %i.cr, %i.cd
  %.not.i325 = icmp eq i64 %i.cs, 0
  br i1 %.not.i325, label %.thread398, label %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit326

_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit326: ; preds = %bb.m
  %i.ct = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0, i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 10, i8 0, i8 12, i8 13, i8 0, i8 0>, <64 x i8> %i.cn)
  %i.cu = icmp eq <64 x i8> %i.ct, %i.cn
  %i.cv = xor <64 x i1> %i.cq, %i.cu
  %i.cw = bitcast <64 x i1> %i.cv to i64
  %i.cx = and i64 %i.cw, %i.cd                    ; 2 uses
  %.not301 = icmp eq i64 %i.cx, 0
  br i1 %.not301, label %.thread398, label %bb.n

.thread398:                                       ; preds = %bb.m, %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit326
  %i.cy = or i64 %notmask, %i.cr
  %sext = shl i64 %i.bz, 31
  %i.cz = ashr i64 %sext, 32
  %i.da = getelementptr inbounds [2 x i8], ptr %.3260, i64 %i.cz
  %i.db = xor i64 %i.cy, -1                       ; 2 uses
  %i.dc = bitcast i64 %i.db to <64 x i1>
  %i.dd = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.co, <64 x i8> zeroinitializer, <64 x i1> %i.dc)
  store <64 x i8> %i.dd, ptr %.5269.ptr, align 1
  %i.de = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.db)
  %.5269.add = add nsw i64 %.5269.idx, %i.de
  br label %bb.o

bb.n:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_114to_base64_maskILb0ELb0ELb0EEEmPNS1_7block64EPmm.exit326
  %i.df = tail call noundef range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cx, i1 true)
  %i.dg = ptrtoint ptr %2 to i64
  %i.dh = sub i64 %i.by, %i.dg
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = add nsw i64 %i.df, %i.di
  %i.dk = ptrtoint ptr %.6 to i64
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %.critedge

bb.o:                                             ; preds = %.thread398, %.thread390
  %.7271.idx = phi i64 [ %.5269.add, %.thread398 ], [ %.5269.idx, %.thread390 ] ; 2 uses
  %.5262 = phi ptr [ %i.da, %.thread398 ], [ %.3260, %.thread390 ] ; 7 uses
  %.7271.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.7271.idx ; 5 uses
  %.not302432 = icmp slt i64 %.7271.idx, 64
  br i1 %.not302432, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.do = phi ptr [ %i.du, %.lr.ph ], [ %i.dn, %.lr.ph.preheader ] ; 3 uses
  %.0253434 = phi ptr [ %i.do, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.7433 = phi ptr [ %i.dt, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 2 uses
  %.0253.val413 = load <64 x i8>, ptr %.0253434, align 1
  %i.dp = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %.0253.val413, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.dq = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dp, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.dr = bitcast <16 x i32> %i.dq to <64 x i8>
  %i.ds = shufflevector <64 x i8> %i.dr, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ds, ptr align 1 %.7433, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>)
  %i.dt = getelementptr inbounds nuw i8, ptr %.7433, i64 48 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 64 ; 2 uses
  %.not302 = icmp ugt ptr %i.du, %.7271.ptr
  br i1 %.not302, label %._crit_edge, label %.lr.ph, !llvm.loop !838

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.7.lcssa = phi ptr [ %.6, %bb.o ], [ %i.dt, %.lr.ph ] ; 19 uses
  %.0253.lcssa = phi ptr [ %i.a, %bb.o ], [ %i.do, %.lr.ph ] ; 3 uses
  %.not303 = icmp eq ptr %.7271.ptr, %.0253.lcssa
  br i1 %.not303, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dv = ptrtoint ptr %.0253.lcssa to i64
  %i.dw = ptrtoint ptr %.7271.ptr to i64
  %i.dx = sub i64 %i.dw, %i.dv                    ; 5 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3                        ; 2 uses
  %notmask306 = shl nsw i64 -1, %i.dx
  %i.ea = xor i64 %notmask306, -1                 ; 2 uses
  %i.eb = bitcast i64 %i.ea to <64 x i1>
  %i.ec = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.0253.lcssa, <64 x i1> %i.eb, <64 x i8> zeroinitializer)
  %i.ed = lshr i64 %i.dx, 2
  %i.ee = mul nuw i64 %i.ed, 3                    ; 9 uses
  %i.ef = sub i64 %i.dx, %i.ee
  %i.eg = lshr i64 %i.ea, %i.ef                   ; 8 uses
  %i.eh = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ec, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ei = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eh, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ej = bitcast <16 x i32> %i.ei to <64 x i8>
  %i.ek = shufflevector <64 x i8> %i.ej, <64 x i8> poison, <64 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 34, i32 33, i32 32, i32 38, i32 37, i32 36, i32 42, i32 41, i32 40, i32 46, i32 45, i32 44, i32 50, i32 49, i32 48, i32 54, i32 53, i32 52, i32 58, i32 57, i32 56, i32 62, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 8 uses
  %i.el = and i64 %i.dx, 3                        ; 3 uses
  %i.em = add i64 %i.el, %i.d                     ; 3 uses
  %i.en = icmp ugt i64 %i.em, 4
  br i1 %i.en, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = ptrtoint ptr %.5262 to i64
  %i.ep = ptrtoint ptr %2 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 1
  %i.es = ptrtoint ptr %.7.lcssa to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ev = icmp eq i64 %5, 0
  %i.ew = icmp samesign ugt i32 %i.dz, 1          ; 3 uses
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp ne i64 %i.d, 0                     ; 5 uses
  %or.cond8 = select i1 %or.cond, i1 %i.ex, i1 false
  %or.cond8.not = xor i1 %or.cond8, true
  %i.ey = and i64 %i.em, 3
  %.not307 = icmp eq i64 %i.ey, 0                 ; 2 uses
  %or.cond315 = or i1 %.not307, %or.cond8.not
  br i1 %or.cond315, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = ptrtoint ptr %.5262 to i64
  %i.fa = ptrtoint ptr %2 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 1
  %i.fd = ptrtoint ptr %.7.lcssa to i64
  %i.fe = ptrtoint ptr %1 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.fg = icmp eq i64 %5, 1                       ; 3 uses
  %or.cond10 = select i1 %i.fg, i1 %i.ew, i1 false
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond316 = or i1 %.not307, %or.cond10.not
  br i1 %or.cond316, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.fm = icmp eq i64 %5, 2
  %.not309 = icmp ne i64 %i.em, 4
  %or.cond317.not415 = and i1 %i.fm, %.not309
  %.not = xor i1 %i.ex, true
  %or.cond12 = select i1 %i.ew, i1 true, i1 %.not
  %i.fn = icmp eq i64 %5, 3
  %i.fo = or i1 %i.fn, %or.cond317.not415
  %or.cond408 = select i1 %i.fo, i1 %or.cond12, i1 false
  br i1 %or.cond408, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fp = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %.not313436 = icmp eq i64 %i.el, 0
  br i1 %.not313436, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.w, %select.unfold
  %.0438 = phi i64 [ %spec.select, %select.unfold ], [ %i.el, %bb.w ]
  %.6263437 = phi ptr [ %i.fr, %select.unfold ], [ %.5262, %bb.w ]
  %i.fr = getelementptr inbounds i8, ptr %.6263437, i64 -2 ; 3 uses
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  %i.ft = and i16 %i.fs, 255
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp ult i16 %i.fs, 256
  %i.fy = icmp ult i8 %i.fw, 64
  %or.cond17 = select i1 %i.fx, i1 %i.fy, i1 false
  %i.fz = sext i1 %or.cond17 to i64
  %spec.select = add nsw i64 %.0438, %i.fz        ; 2 uses
  %.not313 = icmp eq i64 %spec.select, 0
  br i1 %.not313, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.w
  %.6263.lcssa = phi ptr [ %.5262, %bb.w ], [ %i.fr, %select.unfold ]
  %i.ga = ptrtoint ptr %.6263.lcssa to i64
  %i.gb = ptrtoint ptr %2 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 1
  %i.ge = ptrtoint ptr %i.fq to i64
  %i.gf = ptrtoint ptr %1 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  switch i32 %i.dz, label %default.unreachable [
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.fg, label %bb.z, label %.thread402

bb.z:                                             ; preds = %bb.y
  %i.gh = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = and i8 %i.gi, 15
  %.not311 = icmp eq i8 %i.gj, 0
  br i1 %.not311, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.gk)
  %i.gl = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.gm = ptrtoint ptr %.5262 to i64
  %i.gn = ptrtoint ptr %2 to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 1
  %i.gq = ptrtoint ptr %i.gl to i64
  %i.gr = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  br i1 %i.fg, label %bb.ac, label %.thread402

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds i8, ptr %.7271.ptr, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = and i8 %i.gu, 3
  %.not310 = icmp eq i8 %i.gv, 0
  br i1 %.not310, label %.thread402, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gw = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.gy = ptrtoint ptr %.5262 to i64
  %i.gz = ptrtoint ptr %2 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 1
  %i.hc = ptrtoint ptr %i.gx to i64
  %i.hd = ptrtoint ptr %1 to i64
  %i.he = sub i64 %i.hc, %i.hd
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.hf = and i64 %5, -2
  %i.hg = icmp ne i64 %i.hf, 2
  %brmerge = select i1 %i.hg, i1 true, i1 %i.ex
  br i1 %brmerge, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.hh = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.hj = ptrtoint ptr %.5262 to i64
  %i.hk = ptrtoint ptr %2 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 1
  %i.hn = ptrtoint ptr %i.hi to i64
  %i.ho = ptrtoint ptr %1 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  br label %.critedge

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ag:                                            ; preds = %bb.x
  br i1 %i.ex, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hq = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %1 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ae
  %i.hv = bitcast i64 %i.eg to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
  br label %._crit_edge459

.thread402:                                       ; preds = %bb.ab, %bb.ac, %bb.y, %bb.z
  %.sink501 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.sink500 = phi i64 [ 1, %bb.y ], [ 1, %bb.z ], [ 3, %bb.ac ], [ 3, %bb.ab ]
  %i.hx = shl i64 %i.eg, %.sink501
  %i.hy = or disjoint i64 %i.hx, %.sink500
  %i.hz = bitcast i64 %i.hy to <64 x i1>
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ek, ptr align 1 %.7.lcssa, <64 x i1> %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %i.ee
end_hunk_5
