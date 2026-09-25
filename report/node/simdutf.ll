Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf7icelake14implementation28convert_valid_utf8_to_latin1EPKcmPc:bb.a
  %i.s = sub nuw nsw i64 64, %i.l
  %i.t = lshr i64 -1, %i.s
  %i.u = bitcast i64 %i.t to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.r, ptr align 1 %.085.i, <64 x i1> %i.u)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.181.i = phi i64 [ %.08083.i, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %.1.i.i = phi i64 [ 64, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.085.i, i64 %.1.i.i ; 2 uses
  %i.w = add i64 %i.a, 64                         ; 2 uses
  %.not.i = icmp ugt i64 %i.w, %2
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !294

._crit_edge.i:                                    ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i, %bb.a
  %.080.lcssa.i = phi i64 [ 0, %bb.a ], [ %.181.i, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ]
  %.024.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.a, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.v, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ] ; 4 uses
  %i.x = icmp ult i64 %.024.lcssa.i, %2
  br i1 %i.x, label %bb.e, label %_ZN7simdutf7icelake12_GLOBAL__N_127valid_utf8_to_latin1_avx512EPKcmPc.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.y = sub nuw i64 %2, %.024.lcssa.i            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i
  %i.aa = and i64 %i.y, 4294967295
  %i.ab = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.aa) ; 2 uses
  %i.ac = bitcast i64 %i.ab to <64 x i1>          ; 2 uses
  %i.ad = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %i.z, <64 x i1> %i.ac, <64 x i8> zeroinitializer) ; 6 uses
  %i.ae = icmp slt <64 x i8> %i.ad, zeroinitializer
  %i.af = bitcast <64 x i1> %i.ae to i64
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ad, ptr align 1 %.0.lcssa.i, <64 x i1> %i.ac)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb1EEEmPKcmPcDv8_xS6_PyS7_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult <64 x i8> %i.ad, splat (i8 -64)
  %i.ai = bitcast <64 x i1> %i.ah to i64
  %i.aj = and i64 %i.ab, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb1EEEmPKcmPcDv8_xS6_PyS7_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aj) ; 2 uses
  %i.am = icmp eq <64 x i8> %i.ad, splat (i8 -61)
  %i.an = bitcast <64 x i1> %i.am to i64
  %i.ao = shl i64 %i.an, 1
  %i.ap = or i64 %i.ao, %.080.lcssa.i
  %i.aq = bitcast i64 %i.ap to <64 x i1>
  %i.ar = add <64 x i8> %i.ad, splat (i8 64)
  %i.as = select <64 x i1> %i.aq, <64 x i8> %i.ar, <64 x i8> %i.ad
  %i.at = bitcast i64 %i.aj to <64 x i1>
  %i.au = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.as, <64 x i8> zeroinitializer, <64 x i1> %i.at)
  %i.av = sub nuw nsw i64 64, %i.al
  %i.aw = lshr i64 -1, %i.av
  %i.ax = bitcast i64 %i.aw to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.au, ptr align 1 %.0.lcssa.i, <64 x i1> %i.ax)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb1EEEmPKcmPcDv8_xS6_PyS7_.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb1EEEmPKcmPcDv8_xS6_PyS7_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.1.i27.i = phi i64 [ %i.y, %bb.f ], [ %i.al, %bb.h ], [ 0, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %.1.i27.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127valid_utf8_to_latin1_avx512EPKcmPc.exit

_ZN7simdutf7icelake12_GLOBAL__N_127valid_utf8_to_latin1_avx512EPKcmPc.exit: ; preds = %._crit_edge.i, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb1EEEmPKcmPcDv8_xS6_PyS7_.exit.i
  %.1.i = phi ptr [ %i.ay, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb1EEEmPKcmPcDv8_xS6_PyS7_.exit.i ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.az = ptrtoint ptr %.1.i to i64
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = sub i64 %i.az, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge, %bb.a
  %.0394405.i = phi ptr [ %3, %bb.a ], [ %.0394405.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 21 uses
  %.0396404.i = phi ptr [ %1, %bb.a ], [ %.0396404.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 12 uses
  %i.c = ptrtoint ptr %.0396404.i to i64
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0396404.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  store <32 x i16> %i.p, ptr %.0394405.i, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0394405.i, i64 64
  %i.r = bitcast <8 x i64> %i.f to <64 x i8>
  %i.s = shufflevector <64 x i8> %i.r, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.t = zext <32 x i8> %i.s to <32 x i16>
  store <32 x i16> %i.t, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.0394405.i, i64 128
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ugt <64 x i8> %i.g, splat (i8 -65)  ; 5 uses
  %i.w = bitcast <64 x i1> %i.v to i64            ; 3 uses
  %i.x = icmp ugt <64 x i8> %i.g, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.y = bitcast <64 x i1> %i.x to i64            ; 2 uses
  %i.z = bitcast <8 x i64> %i.f to <64 x i8>
  %i.aa = and <64 x i8> %i.z, splat (i8 -2)
  %i.ab = icmp eq <64 x i8> %i.aa, splat (i8 -64) ; 2 uses
  %i.ac = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ab, <64 x i1> %i.ab)
  %i.ad = and i32 %i.ac, 255
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.x, <64 x i1> %i.x)
  %i.ag = and i32 %i.af, 255
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp ugt <64 x i8> %i.g, splat (i8 -17) ; 2 uses
  %i.aj = bitcast <64 x i1> %i.ai to i64          ; 2 uses
  %i.ak = xor <64 x i1> %i.h, splat (i1 true)     ; 2 uses
  %i.al = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.v, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.am = bitcast <64 x i1> %i.al to i64          ; 2 uses
  %i.an = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.x, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ao = bitcast <64 x i1> %i.an to i64          ; 2 uses
  %i.ap = icmp eq i64 %i.aj, 0
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = or i64 %i.am, %i.ao
  %i.ar = or i64 %i.i, %i.w                       ; 2 uses
  %i.as = xor i64 %i.aq, %i.ar
  %.not403.i = icmp eq i64 %i.as, -1
  br i1 %.not403.i, label %bb.h, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.h:                                             ; preds = %bb.g
  %i.at = bitcast i64 %i.ar to <64 x i1>
  %i.au = shufflevector <64 x i1> %i.at, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.av = bitcast <64 x i1> %i.au to i64          ; 2 uses
  %i.aw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.au)
  %i.ax = shufflevector <64 x i8> %i.aw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ay = zext <32 x i8> %i.ax to <32 x i16>      ; 3 uses
  %.inner10 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.az = bitcast <32 x i16> %i.ay to <64 x i8>
  %i.ba = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bb = and <64 x i8> %.inner10, %i.ba          ; 3 uses
  %i.bc = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bb, <64 x i8> %i.az)
  %i.bd = shufflevector <64 x i8> %i.bc, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.be = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bf = add nsw <32 x i16> %i.ay, splat (i16 -1)
  %i.bg = select <64 x i1> %i.be, <64 x i8> %i.bb, <64 x i8> zeroinitializer
  %i.bh = bitcast <32 x i16> %i.bf to <64 x i8>
  %i.bi = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bg, <64 x i8> %i.bh)
  %i.bj = shufflevector <64 x i8> %i.bi, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bk = bitcast <64 x i8> %i.bj to <32 x i16>
  %i.bl = shl nuw nsw <32 x i16> %i.bk, splat (i16 6)
  %i.bm = add nsw <32 x i16> %i.ay, splat (i16 -2)
  %i.bn = select <64 x i1> %i.x, <64 x i8> %i.bb, <64 x i8> zeroinitializer
  %i.bo = bitcast <32 x i16> %i.bm to <64 x i8>
  %i.bp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bn, <64 x i8> %i.bo)
  %i.bq = shufflevector <64 x i8> %i.bp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.br = bitcast <64 x i8> %i.bq to <32 x i16>
  %i.bs = shl <32 x i16> %i.br, splat (i16 12)
  %i.bt = bitcast <64 x i8> %i.bd to <16 x i32>
  %i.bu = bitcast <32 x i16> %i.bl to <16 x i32>
  %i.bv = bitcast <32 x i16> %i.bs to <16 x i32>
  %i.bw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bt, <16 x i32> %i.bu, <16 x i32> %i.bv, i32 254) ; 2 uses
  %i.bx = shl i64 %i.y, 2
  %i.by = tail call noundef i64 @llvm.pext.i64(i64 %i.bx, i64 %i.av)
  %i.bz = trunc i64 %i.by to i32
  %i.ca = bitcast <16 x i32> %i.bw to <32 x i16>  ; 2 uses
  %i.cb = icmp ult <32 x i16> %i.ca, splat (i16 2048)
  %i.cc = bitcast i32 %i.bz to <32 x i1>
  %i.cd = bitcast <16 x i32> %i.bw to <32 x i16>
  %i.ce = and <32 x i16> %i.cd, splat (i16 -2048)
  %i.cf = icmp eq <32 x i16> %i.ce, splat (i16 -10240)
  %i.cg = or <32 x i1> %i.cb, %i.cf
  %i.ch = and <32 x i1> %i.cg, %i.cc
  %i.ci = bitcast <32 x i1> %i.ch to i32
  %.not222.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not222.i.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cj = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.av) ; 2 uses
  %i.ck = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cj) ; 2 uses
  %i.cl = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false)
  %i.cm = sub nuw nsw i64 64, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.cm
  %notmask223.i.i = shl nsw i64 -1, %i.ck
  %i.co = trunc i64 %notmask223.i.i to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = bitcast i32 %i.cp to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ca, ptr align 1 %.0394405.i, <32 x i1> %i.cq)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.ck
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cs = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.ai, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.ct = bitcast <64 x i1> %i.cs to i64          ; 3 uses
  %i.cu = or i64 %i.am, %i.ao
  %i.cv = or i64 %i.cu, %i.ct
  %i.cw = or i64 %i.i, %i.w                       ; 2 uses
  %i.cx = or i64 %i.cw, %i.ct
  %i.cy = bitcast i64 %i.cx to <64 x i1>
  %i.cz = shufflevector <64 x i1> %i.cy, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.da = or <64 x i1> %i.cs, %i.cz               ; 2 uses
  %i.db = bitcast <64 x i1> %i.da to i64          ; 3 uses
  %i.dc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.da)
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.de = zext <32 x i8> %i.dd to <32 x i16>      ; 3 uses
  %.inner12 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.df = bitcast <32 x i16> %i.de to <64 x i8>
  %i.dg = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dh = and <64 x i8> %.inner12, %i.dg          ; 3 uses
  %i.di = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dh, <64 x i8> %i.df)
  %i.dj = shufflevector <64 x i8> %i.di, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dk = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dl = add nsw <32 x i16> %i.de, splat (i16 -1)
  %i.dm = select <64 x i1> %i.dk, <64 x i8> %i.dh, <64 x i8> zeroinitializer
  %i.dn = bitcast <32 x i16> %i.dl to <64 x i8>
  %i.do = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dm, <64 x i8> %i.dn)
  %i.dp = shufflevector <64 x i8> %i.do, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dq = bitcast <64 x i8> %i.dp to <32 x i16>
  %i.dr = shl nuw nsw <32 x i16> %i.dq, splat (i16 6)
  %i.ds = add nsw <32 x i16> %i.de, splat (i16 -2)
  %i.dt = select <64 x i1> %i.x, <64 x i8> %i.dh, <64 x i8> zeroinitializer
  %i.du = bitcast <32 x i16> %i.ds to <64 x i8>
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dt, <64 x i8> %i.du)
  %i.dw = shufflevector <64 x i8> %i.dv, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dx = bitcast <64 x i8> %i.dw to <32 x i16>
  %i.dy = shl <32 x i16> %i.dx, splat (i16 12)
  %i.dz = bitcast <64 x i8> %i.dj to <16 x i32>
  %i.ea = bitcast <32 x i16> %i.dr to <16 x i32>
  %i.eb = bitcast <32 x i16> %i.dy to <16 x i32>
  %i.ec = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dz, <16 x i32> %i.ea, <16 x i32> %i.eb, i32 254)
  %i.ed = tail call noundef i64 @llvm.pext.i64(i64 %i.ct, i64 %i.db) ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = lshr i64 %i.ed, 1                       ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = bitcast i32 %i.ee to <32 x i1>
  %i.ei = select <32 x i1> %i.eh, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.ej = bitcast <16 x i32> %i.ec to <32 x i16>  ; 2 uses
  %i.ek = lshr <32 x i16> %i.ej, splat (i16 4)
  %i.el = or <32 x i16> %i.ei, %i.ej
  %i.em = add nuw nsw <32 x i16> %i.ek, splat (i16 -10304)
  %i.en = bitcast i32 %i.eg to <32 x i1>          ; 2 uses
  %i.eo = select <32 x i1> %i.en, <32 x i16> %i.em, <32 x i16> %i.el ; 3 uses
  %i.ep = and i64 %i.ef, 2147483648
  %i.eq = xor i64 %i.ep, 4294967295
  %i.er = tail call noundef i64 @llvm.pdep.i64(i64 %i.eq, i64 %i.db) ; 2 uses
  %i.es = xor i64 %i.cv, %i.cw
  %.not401.i = icmp eq i64 %i.es, -1
  br i1 %.not401.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.et = xor i64 %i.aj, -1
  %i.eu = and i64 %i.y, %i.et
  %i.ev = shl i64 %i.eu, 2
  %i.ew = tail call noundef i64 @llvm.pext.i64(i64 %i.ev, i64 %i.db)
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = icmp ult <32 x i16> %i.eo, splat (i16 2048)
  %i.ez = bitcast i32 %i.ex to <32 x i1>
  %i.fa = add <32 x i16> %i.eo, splat (i16 10240) ; 2 uses
  %i.fb = icmp ult <32 x i16> %i.fa, splat (i16 2048)
  %i.fc = icmp ugt <32 x i16> %i.fa, splat (i16 1023)
  %i.fd = and <32 x i1> %i.fc, %i.en
  %i.fe = or <32 x i1> %i.ey, %i.fb
  %i.ff = and <32 x i1> %i.fe, %i.ez
  %i.fg = or <32 x i1> %i.fd, %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not402.i = icmp eq i32 %i.fh, 0
  br i1 %.not402.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fi = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.er, i1 false)
  %i.fj = sub nuw nsw i64 64, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.fj
  %i.fl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.er) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fl
  %i.fm = trunc i64 %notmask220.i.i to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = bitcast i32 %i.fn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.eo, ptr align 1 %.0394405.i, <32 x i1> %i.fo)
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.fl
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fq = or i64 %i.i, %i.w                       ; 3 uses
  %i.fr = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.v, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.fs = bitcast <64 x i1> %i.fr to i64
  %i.ft = xor i64 %i.fq, %i.fs
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %bb.n, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.n:                                             ; preds = %bb.m
  %i.fv = add <64 x i8> %i.g, splat (i8 62)
  %i.fw = select <64 x i1> %i.v, <64 x i8> %i.fv, <64 x i8> zeroinitializer
  %i.fx = xor <64 x i1> %i.v, splat (i1 true)
  %i.fy = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.fy, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %spec.select.v.i
  %i.fz = bitcast i64 %i.fq to <64 x i1>
  %i.ga = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.fw, <64 x i8> zeroinitializer, <64 x i1> %i.fz)
  %i.gb = shufflevector <64 x i8> %i.ga, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gc = zext <32 x i8> %i.gb to <32 x i16>
  %i.gd = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.fx)
  %i.ge = shufflevector <64 x i8> %i.gd, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gf = zext <32 x i8> %i.ge to <32 x i16>
  %i.gg = shl nuw nsw <32 x i16> %i.gc, splat (i16 6)
  %i.gh = add nuw nsw <32 x i16> %i.gg, %i.gf
  %i.gi = trunc i64 %i.fq to i32
  %i.gj = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gi)
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gk
  %i.gl = trunc i64 %notmask.i.i to i32
  %i.gm = xor i32 %i.gl, -1
  %i.gn = bitcast i32 %i.gm to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gh, ptr align 1 %.0394405.i, <32 x i1> %i.gn)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.gk
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gp = icmp ult ptr %.0396404.i, %i.a
  br i1 %i.gp, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.gq = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.gr = bitcast i64 %i.gq to <64 x i1>          ; 3 uses
  %i.gs = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0396404.i, <64 x i1> %i.gr, <64 x i8> zeroinitializer) ; 11 uses
  %i.gt = icmp sgt <64 x i8> %i.gs, splat (i8 -1)
  %i.gu = and <64 x i1> %i.gt, %i.gr              ; 3 uses
  %i.gv = bitcast <64 x i1> %i.gu to i64          ; 3 uses
  %i.gw = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gu, <64 x i1> %i.gr)
  %i.gx = and i32 %i.gw, 255
  %.not.i9.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.d ; 2 uses
  %i.gz = icmp ult i64 %i.d, 33
  %i.ha = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hb = zext <32 x i8> %i.ha to <32 x i16>      ; 2 uses
  br i1 %i.gz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hc = trunc i64 %i.gq to i32
  %i.hd = bitcast i32 %i.hc to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hb, ptr align 1 %.0394405.i, <32 x i1> %i.hd)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.hb, ptr %.0394405.i, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0394405.i, i64 64
  %i.hg = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hh = zext <32 x i8> %i.hg to <32 x i16>
  %i.hi = trunc i64 %i.d to i32
  %i.hj = add i32 %i.hi, -32
  %notmask247.i.i = shl nsw i32 -1, %i.hj
  %i.hk = xor i32 %notmask247.i.i, -1
  %i.hl = bitcast i32 %i.hk to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hh, ptr nonnull align 1 %i.hf, <32 x i1> %i.hl)
  %i.hm = getelementptr [2 x i8], ptr %.0394405.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.hn = icmp ugt <64 x i8> %i.gs, splat (i8 -65) ; 5 uses
  %i.ho = bitcast <64 x i1> %i.hn to i64          ; 3 uses
  %i.hp = icmp ugt <64 x i8> %i.gs, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.hq = bitcast <64 x i1> %i.hp to i64          ; 2 uses
  %i.hr = and <64 x i8> %i.gs, splat (i8 -2)
  %i.hs = icmp eq <64 x i8> %i.hr, splat (i8 -64) ; 2 uses
  %i.ht = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hs, <64 x i1> %i.hs)
  %i.hu = and i32 %i.ht, 255
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hw = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hp, <64 x i1> %i.hp)
  %i.hx = and i32 %i.hw, 255
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7icelake14implementation23convert_utf8_to_utf16leEPKcmPDs:bb.a
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.nk = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mt, i1 false)
  %i.nl = sub nuw nsw i64 64, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.nl
  %i.nn = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.mt) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.nn
  %i.no = trunc i64 %notmask243.i.i to i32
  %i.np = xor i32 %i.no, -1
  %i.nq = bitcast i32 %i.np to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mp, ptr align 1 %.0394405.i, <32 x i1> %i.nq)
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.nn
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ns = or i64 %i.gv, %i.ho
  %i.nt = and i64 %i.ns, %i.gq                    ; 3 uses
  %i.nu = xor i64 %i.nt, %i.gq
  %i.nv = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hn, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.nw = bitcast <64 x i1> %i.nv to i64
  %.not239.i.i = icmp eq i64 %i.nu, %i.nw
  br i1 %.not239.i.i, label %bb.ad, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.nx = add <64 x i8> %i.gs, splat (i8 62)
  %i.ny = select <64 x i1> %i.hn, <64 x i8> %i.nx, <64 x i8> zeroinitializer
  %i.nz = xor <64 x i1> %i.hn, splat (i1 true)
  %i.oa = bitcast <64 x i1> %i.nz to i64
  %i.ob = and i64 %i.oa, %i.gq                    ; 2 uses
  %i.oc = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ob)
  %i.od = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.oc, i1 false)
  %i.oe = sub nuw nsw i64 64, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.oe
  %i.og = bitcast i64 %i.nt to <64 x i1>
  %i.oh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ny, <64 x i8> zeroinitializer, <64 x i1> %i.og)
  %i.oi = shufflevector <64 x i8> %i.oh, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oj = zext <32 x i8> %i.oi to <32 x i16>
  %i.ok = bitcast i64 %i.ob to <64 x i1>
  %i.ol = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gs, <64 x i8> zeroinitializer, <64 x i1> %i.ok)
  %i.om = shufflevector <64 x i8> %i.ol, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.on = zext <32 x i8> %i.om to <32 x i16>
  %i.oo = shl nuw nsw <32 x i16> %i.oj, splat (i16 6)
  %i.op = add nuw nsw <32 x i16> %i.oo, %i.on
  %i.oq = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nt)
  %i.or = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.oq) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.or
  %i.os = trunc i64 %notmask240.i.i to i32
  %i.ot = xor i32 %i.os, -1
  %i.ou = bitcast i32 %i.ot to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.op, ptr align 1 %.0394405.i, <32 x i1> %i.ou)
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.or
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0394405.i.be = phi ptr [ %i.u, %bb.c ], [ %i.he, %bb.r ], [ %i.nr, %bb.ab ], [ %i.cr, %bb.i ], [ %i.kp, %bb.y ], [ %i.hm, %bb.s ], [ %i.ov, %bb.ad ], [ %i.fp, %bb.l ], [ %i.go, %bb.n ]
  %.0396404.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gy, %bb.r ], [ %i.nm, %bb.ab ], [ %i.cn, %bb.i ], [ %i.kl, %bb.y ], [ %i.gy, %bb.s ], [ %i.of, %bb.ad ], [ %i.fk, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !295

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0394405.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
  %i.ow = icmp eq ptr %.2.i, null
  %i.ox = ptrtoint ptr %.2.i to i64
  %i.oy = ptrtoint ptr %3 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = ashr exact i64 %i.oz, 1
  %.0 = select i1 %i.ow, i64 0, i64 %i.pa
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation23convert_utf8_to_utf16beEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge, %bb.a
  %.0438449.i = phi ptr [ %3, %bb.a ], [ %.0438449.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 21 uses
  %.0440448.i = phi ptr [ %1, %bb.a ], [ %.0440448.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 12 uses
  %i.c = ptrtoint ptr %.0440448.i to i64
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0440448.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  %i.q = bitcast <32 x i16> %i.p to <64 x i8>
  %i.r = shufflevector <64 x i8> %i.q, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.r, ptr %.0438449.i, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.0438449.i, i64 64
  %i.t = bitcast <8 x i64> %i.f to <64 x i8>
  %i.u = shufflevector <64 x i8> %i.t, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.v = zext <32 x i8> %i.u to <32 x i16>
  %i.w = bitcast <32 x i16> %i.v to <64 x i8>
  %i.x = shufflevector <64 x i8> %i.w, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.x, ptr %i.s, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0438449.i, i64 128
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.d:                                             ; preds = %bb.b
  %i.z = icmp ugt <64 x i8> %i.g, splat (i8 -65)  ; 5 uses
  %i.aa = bitcast <64 x i1> %i.z to i64           ; 3 uses
  %i.ab = icmp ugt <64 x i8> %i.g, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.ac = bitcast <64 x i1> %i.ab to i64          ; 2 uses
  %i.ad = bitcast <8 x i64> %i.f to <64 x i8>
  %i.ae = and <64 x i8> %i.ad, splat (i8 -2)
  %i.af = icmp eq <64 x i8> %i.ae, splat (i8 -64) ; 2 uses
  %i.ag = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.af, <64 x i1> %i.af)
  %i.ah = and i32 %i.ag, 255
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ab, <64 x i1> %i.ab)
  %i.ak = and i32 %i.aj, 255
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.am = icmp ugt <64 x i8> %i.g, splat (i8 -17) ; 2 uses
  %i.an = bitcast <64 x i1> %i.am to i64          ; 2 uses
  %i.ao = xor <64 x i1> %i.h, splat (i1 true)     ; 2 uses
  %i.ap = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.z, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.aq = bitcast <64 x i1> %i.ap to i64          ; 2 uses
  %i.ar = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.ab, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.as = bitcast <64 x i1> %i.ar to i64          ; 2 uses
  %i.at = icmp eq i64 %i.an, 0
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.au = or i64 %i.aq, %i.as
  %i.av = or i64 %i.i, %i.aa                      ; 2 uses
  %i.aw = xor i64 %i.au, %i.av
  %.not447.i = icmp eq i64 %i.aw, -1
  br i1 %.not447.i, label %bb.h, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = bitcast i64 %i.av to <64 x i1>
  %i.ay = shufflevector <64 x i1> %i.ax, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.az = bitcast <64 x i1> %i.ay to i64          ; 2 uses
  %i.ba = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ay)
  %i.bb = shufflevector <64 x i8> %i.ba, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bc = zext <32 x i8> %i.bb to <32 x i16>      ; 3 uses
  %.inner10 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.bd = bitcast <32 x i16> %i.bc to <64 x i8>
  %i.be = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bf = and <64 x i8> %.inner10, %i.be          ; 3 uses
  %i.bg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bf, <64 x i8> %i.bd)
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bi = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bj = add nsw <32 x i16> %i.bc, splat (i16 -1)
  %i.bk = select <64 x i1> %i.bi, <64 x i8> %i.bf, <64 x i8> zeroinitializer
  %i.bl = bitcast <32 x i16> %i.bj to <64 x i8>
  %i.bm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bk, <64 x i8> %i.bl)
  %i.bn = shufflevector <64 x i8> %i.bm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bo = bitcast <64 x i8> %i.bn to <32 x i16>
  %i.bp = shl nuw nsw <32 x i16> %i.bo, splat (i16 6)
  %i.bq = add nsw <32 x i16> %i.bc, splat (i16 -2)
  %i.br = select <64 x i1> %i.ab, <64 x i8> %i.bf, <64 x i8> zeroinitializer
  %i.bs = bitcast <32 x i16> %i.bq to <64 x i8>
  %i.bt = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.br, <64 x i8> %i.bs)
  %i.bu = shufflevector <64 x i8> %i.bt, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bv = bitcast <64 x i8> %i.bu to <32 x i16>
  %i.bw = shl <32 x i16> %i.bv, splat (i16 12)
  %i.bx = bitcast <64 x i8> %i.bh to <16 x i32>
  %i.by = bitcast <32 x i16> %i.bp to <16 x i32>
  %i.bz = bitcast <32 x i16> %i.bw to <16 x i32>
  %i.ca = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bx, <16 x i32> %i.by, <16 x i32> %i.bz, i32 254) ; 3 uses
  %i.cb = shl i64 %i.ac, 2
  %i.cc = tail call noundef i64 @llvm.pext.i64(i64 %i.cb, i64 %i.az)
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.cf = icmp ult <32 x i16> %i.ce, splat (i16 2048)
  %i.cg = bitcast i32 %i.cd to <32 x i1>
  %i.ch = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.ci = and <32 x i16> %i.ch, splat (i16 -2048)
  %i.cj = icmp eq <32 x i16> %i.ci, splat (i16 -10240)
  %i.ck = or <32 x i1> %i.cf, %i.cj
  %i.cl = and <32 x i1> %i.ck, %i.cg
  %i.cm = bitcast <32 x i1> %i.cl to i32
  %.not232.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not232.i.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cn = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.az) ; 2 uses
  %i.co = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cn) ; 2 uses
  %i.cp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 false)
  %i.cq = sub nuw nsw i64 64, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.cq
  %i.cs = bitcast <16 x i32> %i.ca to <64 x i8>
  %i.ct = shufflevector <64 x i8> %i.cs, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.co
  %i.cu = trunc i64 %notmask233.i.i to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = bitcast <64 x i8> %i.ct to <32 x i16>
  %i.cx = bitcast i32 %i.cv to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cw, ptr align 1 %.0438449.i, <32 x i1> %i.cx)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.co
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cz = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.am, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.da = bitcast <64 x i1> %i.cz to i64          ; 3 uses
  %i.db = or i64 %i.aq, %i.as
  %i.dc = or i64 %i.db, %i.da
  %i.dd = or i64 %i.i, %i.aa                      ; 2 uses
  %i.de = or i64 %i.dd, %i.da
  %i.df = bitcast i64 %i.de to <64 x i1>
  %i.dg = shufflevector <64 x i1> %i.df, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dh = or <64 x i1> %i.cz, %i.dg               ; 2 uses
  %i.di = bitcast <64 x i1> %i.dh to i64          ; 3 uses
  %i.dj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.dh)
  %i.dk = shufflevector <64 x i8> %i.dj, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dl = zext <32 x i8> %i.dk to <32 x i16>      ; 3 uses
  %.inner12 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dm = bitcast <32 x i16> %i.dl to <64 x i8>
  %i.dn = bitcast <8 x i64> %i.f to <64 x i8>
  %i.do = and <64 x i8> %.inner12, %i.dn          ; 3 uses
  %i.dp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.do, <64 x i8> %i.dm)
  %i.dq = shufflevector <64 x i8> %i.dp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dr = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ds = add nsw <32 x i16> %i.dl, splat (i16 -1)
  %i.dt = select <64 x i1> %i.dr, <64 x i8> %i.do, <64 x i8> zeroinitializer
  %i.du = bitcast <32 x i16> %i.ds to <64 x i8>
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dt, <64 x i8> %i.du)
  %i.dw = shufflevector <64 x i8> %i.dv, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dx = bitcast <64 x i8> %i.dw to <32 x i16>
  %i.dy = shl nuw nsw <32 x i16> %i.dx, splat (i16 6)
  %i.dz = add nsw <32 x i16> %i.dl, splat (i16 -2)
  %i.ea = select <64 x i1> %i.ab, <64 x i8> %i.do, <64 x i8> zeroinitializer
  %i.eb = bitcast <32 x i16> %i.dz to <64 x i8>
  %i.ec = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ea, <64 x i8> %i.eb)
  %i.ed = shufflevector <64 x i8> %i.ec, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ee = bitcast <64 x i8> %i.ed to <32 x i16>
  %i.ef = shl <32 x i16> %i.ee, splat (i16 12)
  %i.eg = bitcast <64 x i8> %i.dq to <16 x i32>
  %i.eh = bitcast <32 x i16> %i.dy to <16 x i32>
  %i.ei = bitcast <32 x i16> %i.ef to <16 x i32>
  %i.ej = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eg, <16 x i32> %i.eh, <16 x i32> %i.ei, i32 254)
  %i.ek = tail call noundef i64 @llvm.pext.i64(i64 %i.da, i64 %i.di) ; 2 uses
  %i.el = trunc i64 %i.ek to i32
  %i.em = lshr i64 %i.ek, 1                       ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = bitcast i32 %i.el to <32 x i1>
  %i.ep = select <32 x i1> %i.eo, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.eq = bitcast <16 x i32> %i.ej to <32 x i16>  ; 2 uses
  %i.er = lshr <32 x i16> %i.eq, splat (i16 4)
  %i.es = or <32 x i16> %i.ep, %i.eq
  %i.et = add nuw nsw <32 x i16> %i.er, splat (i16 -10304)
  %i.eu = bitcast i32 %i.en to <32 x i1>          ; 2 uses
  %i.ev = select <32 x i1> %i.eu, <32 x i16> %i.et, <32 x i16> %i.es ; 3 uses
  %i.ew = and i64 %i.em, 2147483648
  %i.ex = xor i64 %i.ew, 4294967295
  %i.ey = tail call noundef i64 @llvm.pdep.i64(i64 %i.ex, i64 %i.di) ; 2 uses
  %i.ez = xor i64 %i.dc, %i.dd
  %.not445.i = icmp eq i64 %i.ez, -1
  br i1 %.not445.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.fa = xor i64 %i.an, -1
  %i.fb = and i64 %i.ac, %i.fa
  %i.fc = shl i64 %i.fb, 2
  %i.fd = tail call noundef i64 @llvm.pext.i64(i64 %i.fc, i64 %i.di)
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = icmp ult <32 x i16> %i.ev, splat (i16 2048)
  %i.fg = bitcast i32 %i.fe to <32 x i1>
  %i.fh = add <32 x i16> %i.ev, splat (i16 10240) ; 2 uses
  %i.fi = icmp ult <32 x i16> %i.fh, splat (i16 2048)
  %i.fj = icmp ugt <32 x i16> %i.fh, splat (i16 1023)
  %i.fk = and <32 x i1> %i.fj, %i.eu
  %i.fl = or <32 x i1> %i.ff, %i.fi
  %i.fm = and <32 x i1> %i.fl, %i.fg
  %i.fn = or <32 x i1> %i.fk, %i.fm
  %i.fo = bitcast <32 x i1> %i.fn to i32
  %.not446.i = icmp eq i32 %i.fo, 0
  br i1 %.not446.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 false)
  %i.fq = sub nuw nsw i64 64, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.fq
  %i.fs = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ey) ; 2 uses
  %i.ft = bitcast <32 x i16> %i.ev to <64 x i8>
  %i.fu = shufflevector <64 x i8> %i.ft, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fs
  %i.fv = trunc i64 %notmask230.i.i to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = bitcast <64 x i8> %i.fu to <32 x i16>
  %i.fy = bitcast i32 %i.fw to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fx, ptr align 1 %.0438449.i, <32 x i1> %i.fy)
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.fs
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.ga = or i64 %i.i, %i.aa                      ; 3 uses
  %i.gb = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.z, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.gc = bitcast <64 x i1> %i.gb to i64
  %i.gd = xor i64 %i.ga, %i.gc
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %bb.n, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.n:                                             ; preds = %bb.m
  %i.gf = add <64 x i8> %i.g, splat (i8 62)
  %i.gg = select <64 x i1> %i.z, <64 x i8> %i.gf, <64 x i8> zeroinitializer
  %i.gh = xor <64 x i1> %i.z, splat (i1 true)
  %i.gi = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.gi, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %spec.select.v.i
  %i.gj = bitcast i64 %i.ga to <64 x i1>
  %i.gk = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gg, <64 x i8> zeroinitializer, <64 x i1> %i.gj)
  %i.gl = shufflevector <64 x i8> %i.gk, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gm = zext <32 x i8> %i.gl to <32 x i16>
  %i.gn = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.gh)
  %i.go = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gp = zext <32 x i8> %i.go to <32 x i16>
  %i.gq = shl nuw nsw <32 x i16> %i.gm, splat (i16 6)
  %i.gr = add nuw nsw <32 x i16> %i.gq, %i.gp
  %i.gs = bitcast <32 x i16> %i.gr to <64 x i8>
  %i.gt = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gu = trunc i64 %i.ga to i32
  %i.gv = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gu)
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gw
  %i.gx = trunc i64 %notmask.i.i to i32
  %i.gy = xor i32 %i.gx, -1
  %i.gz = bitcast <64 x i8> %i.gt to <32 x i16>
  %i.ha = bitcast i32 %i.gy to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gz, ptr align 1 %.0438449.i, <32 x i1> %i.ha)
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.gw
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.hc = icmp ult ptr %.0440448.i, %i.a
  br i1 %i.hc, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.hd = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.he = bitcast i64 %i.hd to <64 x i1>          ; 3 uses
  %i.hf = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0440448.i, <64 x i1> %i.he, <64 x i8> zeroinitializer) ; 11 uses
  %i.hg = icmp sgt <64 x i8> %i.hf, splat (i8 -1)
  %i.hh = and <64 x i1> %i.hg, %i.he              ; 3 uses
  %i.hi = bitcast <64 x i1> %i.hh to i64          ; 3 uses
  %i.hj = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hh, <64 x i1> %i.he)
  %i.hk = and i32 %i.hj, 255
  %.not.i9.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hl = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.d ; 2 uses
  %i.hm = icmp ult i64 %i.d, 33
  %i.hn = shufflevector <64 x i8> %i.hf, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ho = zext <32 x i8> %i.hn to <32 x i16>
  %i.hp = bitcast <32 x i16> %i.ho to <64 x i8>
  %i.hq = shufflevector <64 x i8> %i.hp, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62> ; 2 uses
  br i1 %i.hm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hr = trunc i64 %i.hd to i32
  %i.hs = bitcast <64 x i8> %i.hq to <32 x i16>
  %i.ht = bitcast i32 %i.hr to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hs, ptr align 1 %.0438449.i, <32 x i1> %i.ht)
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hq, ptr %.0438449.i, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.0438449.i, i64 64
  %i.hw = shufflevector <64 x i8> %i.hf, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hx = zext <32 x i8> %i.hw to <32 x i16>
  %i.hy = bitcast <32 x i16> %i.hx to <64 x i8>
  %i.hz = shufflevector <64 x i8> %i.hy, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.ia = trunc i64 %i.d to i32
  %i.ib = add i32 %i.ia, -32
  %notmask259.i.i = shl nsw i32 -1, %i.ib
  %i.ic = xor i32 %notmask259.i.i, -1
  %i.id = bitcast <64 x i8> %i.hz to <32 x i16>
  %i.ie = bitcast i32 %i.ic to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.id, ptr nonnull align 1 %i.hv, <32 x i1> %i.ie)
  %i.if = getelementptr [2 x i8], ptr %.0438449.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ig = icmp ugt <64 x i8> %i.hf, splat (i8 -65) ; 5 uses
  %i.ih = bitcast <64 x i1> %i.ig to i64          ; 3 uses
  %i.ii = icmp ugt <64 x i8> %i.hf, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7icelake14implementation23convert_utf8_to_utf16beEPKcmPDs:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.og = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.np, i1 false)
  %i.oh = sub nuw nsw i64 64, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.oh
  %i.oj = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.np) ; 2 uses
  %i.ok = bitcast <32 x i16> %i.nl to <64 x i8>
  %i.ol = shufflevector <64 x i8> %i.ok, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.oj
  %i.om = trunc i64 %notmask255.i.i to i32
  %i.on = xor i32 %i.om, -1
  %i.oo = bitcast <64 x i8> %i.ol to <32 x i16>
  %i.op = bitcast i32 %i.on to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oo, ptr align 1 %.0438449.i, <32 x i1> %i.op)
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.oj
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.or = or i64 %i.hi, %i.ih
  %i.os = and i64 %i.or, %i.hd                    ; 3 uses
  %i.ot = xor i64 %i.os, %i.hd
  %i.ou = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ig, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.ov = bitcast <64 x i1> %i.ou to i64
  %.not251.i.i = icmp eq i64 %i.ot, %i.ov
  br i1 %.not251.i.i, label %bb.ad, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ow = add <64 x i8> %i.hf, splat (i8 62)
  %i.ox = select <64 x i1> %i.ig, <64 x i8> %i.ow, <64 x i8> zeroinitializer
  %i.oy = xor <64 x i1> %i.ig, splat (i1 true)
  %i.oz = bitcast <64 x i1> %i.oy to i64
  %i.pa = and i64 %i.oz, %i.hd                    ; 2 uses
  %i.pb = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.pa)
  %i.pc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pb, i1 false)
  %i.pd = sub nuw nsw i64 64, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.pd
  %i.pf = bitcast i64 %i.os to <64 x i1>
  %i.pg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ox, <64 x i8> zeroinitializer, <64 x i1> %i.pf)
  %i.ph = shufflevector <64 x i8> %i.pg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pi = zext <32 x i8> %i.ph to <32 x i16>
  %i.pj = bitcast i64 %i.pa to <64 x i1>
  %i.pk = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.hf, <64 x i8> zeroinitializer, <64 x i1> %i.pj)
  %i.pl = shufflevector <64 x i8> %i.pk, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pm = zext <32 x i8> %i.pl to <32 x i16>
  %i.pn = shl nuw nsw <32 x i16> %i.pi, splat (i16 6)
  %i.po = add nuw nsw <32 x i16> %i.pn, %i.pm
  %i.pp = bitcast <32 x i16> %i.po to <64 x i8>
  %i.pq = shufflevector <64 x i8> %i.pp, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.pr = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.os)
  %i.ps = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.pr) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.ps
  %i.pt = trunc i64 %notmask252.i.i to i32
  %i.pu = xor i32 %i.pt, -1
  %i.pv = bitcast <64 x i8> %i.pq to <32 x i16>
  %i.pw = bitcast i32 %i.pu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pv, ptr align 1 %.0438449.i, <32 x i1> %i.pw)
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.ps
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0438449.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hu, %bb.r ], [ %i.oq, %bb.ab ], [ %i.cy, %bb.i ], [ %i.ll, %bb.y ], [ %i.if, %bb.s ], [ %i.px, %bb.ad ], [ %i.fz, %bb.l ], [ %i.hb, %bb.n ]
  %.0440448.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hl, %bb.r ], [ %i.oi, %bb.ab ], [ %i.cr, %bb.i ], [ %i.le, %bb.y ], [ %i.hl, %bb.s ], [ %i.pe, %bb.ad ], [ %i.fr, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !296

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0438449.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
  %i.py = icmp eq ptr %.2.i, null
  %i.pz = ptrtoint ptr %.2.i to i64
  %i.qa = ptrtoint ptr %3 to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = ashr exact i64 %i.qb, 1
  %.0 = select i1 %i.py, i64 0, i64 %i.qc
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge, %bb.a
  %.0447.i = phi ptr [ %3, %bb.a ], [ %.0447.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 22 uses
  %.0433446.i = phi ptr [ %1, %bb.a ], [ %.0433446.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 14 uses
  %i.c = ptrtoint ptr %.0433446.i to i64          ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0433446.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  store <32 x i16> %i.p, ptr %.0447.i, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0447.i, i64 64
  %i.r = bitcast <8 x i64> %i.f to <64 x i8>
  %i.s = shufflevector <64 x i8> %i.r, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.t = zext <32 x i8> %i.s to <32 x i16>
  store <32 x i16> %i.t, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.0447.i, i64 128
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ugt <64 x i8> %i.g, splat (i8 -65)  ; 5 uses
  %i.w = bitcast <64 x i1> %i.v to i64            ; 3 uses
  %i.x = icmp ugt <64 x i8> %i.g, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.y = bitcast <64 x i1> %i.x to i64            ; 2 uses
  %i.z = bitcast <8 x i64> %i.f to <64 x i8>
  %i.aa = and <64 x i8> %i.z, splat (i8 -2)
  %i.ab = icmp eq <64 x i8> %i.aa, splat (i8 -64) ; 2 uses
  %i.ac = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ab, <64 x i1> %i.ab)
  %i.ad = and i32 %i.ac, 255
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.x, <64 x i1> %i.x)
  %i.ag = and i32 %i.af, 255
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp ugt <64 x i8> %i.g, splat (i8 -17) ; 2 uses
  %i.aj = bitcast <64 x i1> %i.ai to i64          ; 2 uses
  %i.ak = xor <64 x i1> %i.h, splat (i1 true)     ; 2 uses
  %i.al = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.v, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.am = bitcast <64 x i1> %i.al to i64          ; 2 uses
  %i.an = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.x, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ao = bitcast <64 x i1> %i.an to i64          ; 2 uses
  %i.ap = icmp eq i64 %i.aj, 0
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = or i64 %i.am, %i.ao
  %i.ar = or i64 %i.i, %i.w                       ; 2 uses
  %i.as = xor i64 %i.aq, %i.ar
  %.not439.i = icmp eq i64 %i.as, -1
  br i1 %.not439.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.at = bitcast i64 %i.ar to <64 x i1>
  %i.au = shufflevector <64 x i1> %i.at, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.av = bitcast <64 x i1> %i.au to i64          ; 2 uses
  %i.aw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.au)
  %i.ax = shufflevector <64 x i8> %i.aw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ay = zext <32 x i8> %i.ax to <32 x i16>      ; 3 uses
  %.inner50 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.az = bitcast <32 x i16> %i.ay to <64 x i8>
  %i.ba = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bb = and <64 x i8> %.inner50, %i.ba          ; 3 uses
  %i.bc = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bb, <64 x i8> %i.az)
  %i.bd = shufflevector <64 x i8> %i.bc, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.be = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bf = add nsw <32 x i16> %i.ay, splat (i16 -1)
  %i.bg = select <64 x i1> %i.be, <64 x i8> %i.bb, <64 x i8> zeroinitializer
  %i.bh = bitcast <32 x i16> %i.bf to <64 x i8>
  %i.bi = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bg, <64 x i8> %i.bh)
  %i.bj = shufflevector <64 x i8> %i.bi, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bk = bitcast <64 x i8> %i.bj to <32 x i16>
  %i.bl = shl nuw nsw <32 x i16> %i.bk, splat (i16 6)
  %i.bm = add nsw <32 x i16> %i.ay, splat (i16 -2)
  %i.bn = select <64 x i1> %i.x, <64 x i8> %i.bb, <64 x i8> zeroinitializer
  %i.bo = bitcast <32 x i16> %i.bm to <64 x i8>
  %i.bp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bn, <64 x i8> %i.bo)
  %i.bq = shufflevector <64 x i8> %i.bp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.br = bitcast <64 x i8> %i.bq to <32 x i16>
  %i.bs = shl <32 x i16> %i.br, splat (i16 12)
  %i.bt = bitcast <64 x i8> %i.bd to <16 x i32>
  %i.bu = bitcast <32 x i16> %i.bl to <16 x i32>
  %i.bv = bitcast <32 x i16> %i.bs to <16 x i32>
  %i.bw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bt, <16 x i32> %i.bu, <16 x i32> %i.bv, i32 254) ; 2 uses
  %i.bx = shl i64 %i.y, 2
  %i.by = tail call noundef i64 @llvm.pext.i64(i64 %i.bx, i64 %i.av)
  %i.bz = trunc i64 %i.by to i32
  %i.ca = bitcast <16 x i32> %i.bw to <32 x i16>  ; 2 uses
  %i.cb = icmp ult <32 x i16> %i.ca, splat (i16 2048)
  %i.cc = bitcast i32 %i.bz to <32 x i1>
  %i.cd = bitcast <16 x i32> %i.bw to <32 x i16>
  %i.ce = and <32 x i16> %i.cd, splat (i16 -2048)
  %i.cf = icmp eq <32 x i16> %i.ce, splat (i16 -10240)
  %i.cg = or <32 x i1> %i.cb, %i.cf
  %i.ch = and <32 x i1> %i.cg, %i.cc
  %i.ci = bitcast <32 x i1> %i.ch to i32
  %.not222.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not222.i.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.cj = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.av) ; 2 uses
  %i.ck = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cj) ; 2 uses
  %i.cl = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false)
  %i.cm = sub nuw nsw i64 64, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.cm
  %notmask223.i.i = shl nsw i64 -1, %i.ck
  %i.co = trunc i64 %notmask223.i.i to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = bitcast i32 %i.cp to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ca, ptr align 1 %.0447.i, <32 x i1> %i.cq)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.ck
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cs = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.ai, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.ct = bitcast <64 x i1> %i.cs to i64          ; 3 uses
  %i.cu = or i64 %i.am, %i.ao
  %i.cv = or i64 %i.cu, %i.ct
  %i.cw = or i64 %i.i, %i.w                       ; 2 uses
  %i.cx = or i64 %i.cw, %i.ct
  %i.cy = bitcast i64 %i.cx to <64 x i1>
  %i.cz = shufflevector <64 x i1> %i.cy, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.da = or <64 x i1> %i.cs, %i.cz               ; 2 uses
  %i.db = bitcast <64 x i1> %i.da to i64          ; 3 uses
  %i.dc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.da)
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.de = zext <32 x i8> %i.dd to <32 x i16>      ; 3 uses
  %.inner52 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.df = bitcast <32 x i16> %i.de to <64 x i8>
  %i.dg = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dh = and <64 x i8> %.inner52, %i.dg          ; 3 uses
  %i.di = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dh, <64 x i8> %i.df)
  %i.dj = shufflevector <64 x i8> %i.di, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dk = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dl = add nsw <32 x i16> %i.de, splat (i16 -1)
  %i.dm = select <64 x i1> %i.dk, <64 x i8> %i.dh, <64 x i8> zeroinitializer
  %i.dn = bitcast <32 x i16> %i.dl to <64 x i8>
  %i.do = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dm, <64 x i8> %i.dn)
  %i.dp = shufflevector <64 x i8> %i.do, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dq = bitcast <64 x i8> %i.dp to <32 x i16>
  %i.dr = shl nuw nsw <32 x i16> %i.dq, splat (i16 6)
  %i.ds = add nsw <32 x i16> %i.de, splat (i16 -2)
  %i.dt = select <64 x i1> %i.x, <64 x i8> %i.dh, <64 x i8> zeroinitializer
  %i.du = bitcast <32 x i16> %i.ds to <64 x i8>
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dt, <64 x i8> %i.du)
  %i.dw = shufflevector <64 x i8> %i.dv, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dx = bitcast <64 x i8> %i.dw to <32 x i16>
  %i.dy = shl <32 x i16> %i.dx, splat (i16 12)
  %i.dz = bitcast <64 x i8> %i.dj to <16 x i32>
  %i.ea = bitcast <32 x i16> %i.dr to <16 x i32>
  %i.eb = bitcast <32 x i16> %i.dy to <16 x i32>
  %i.ec = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dz, <16 x i32> %i.ea, <16 x i32> %i.eb, i32 254)
  %i.ed = tail call noundef i64 @llvm.pext.i64(i64 %i.ct, i64 %i.db) ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = lshr i64 %i.ed, 1                       ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = bitcast i32 %i.ee to <32 x i1>
  %i.ei = select <32 x i1> %i.eh, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.ej = bitcast <16 x i32> %i.ec to <32 x i16>  ; 2 uses
  %i.ek = lshr <32 x i16> %i.ej, splat (i16 4)
  %i.el = or <32 x i16> %i.ei, %i.ej
  %i.em = add nuw nsw <32 x i16> %i.ek, splat (i16 -10304)
  %i.en = bitcast i32 %i.eg to <32 x i1>          ; 2 uses
  %i.eo = select <32 x i1> %i.en, <32 x i16> %i.em, <32 x i16> %i.el ; 3 uses
  %i.ep = and i64 %i.ef, 2147483648
  %i.eq = xor i64 %i.ep, 4294967295
  %i.er = tail call noundef i64 @llvm.pdep.i64(i64 %i.eq, i64 %i.db) ; 2 uses
  %i.es = xor i64 %i.cv, %i.cw
  %.not437.i = icmp eq i64 %i.es, -1
  br i1 %.not437.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.et = xor i64 %i.aj, -1
  %i.eu = and i64 %i.y, %i.et
  %i.ev = shl i64 %i.eu, 2
  %i.ew = tail call noundef i64 @llvm.pext.i64(i64 %i.ev, i64 %i.db)
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = icmp ult <32 x i16> %i.eo, splat (i16 2048)
  %i.ez = bitcast i32 %i.ex to <32 x i1>
  %i.fa = add <32 x i16> %i.eo, splat (i16 10240) ; 2 uses
  %i.fb = icmp ult <32 x i16> %i.fa, splat (i16 2048)
  %i.fc = icmp ugt <32 x i16> %i.fa, splat (i16 1023)
  %i.fd = and <32 x i1> %i.fc, %i.en
  %i.fe = or <32 x i1> %i.ey, %i.fb
  %i.ff = and <32 x i1> %i.fe, %i.ez
  %i.fg = or <32 x i1> %i.fd, %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not438.i = icmp eq i32 %i.fh, 0
  br i1 %.not438.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fi = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.er, i1 false)
  %i.fj = sub nuw nsw i64 64, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.fj
  %i.fl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.er) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fl
  %i.fm = trunc i64 %notmask220.i.i to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = bitcast i32 %i.fn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.eo, ptr align 1 %.0447.i, <32 x i1> %i.fo)
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.fl
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fq = or i64 %i.i, %i.w                       ; 3 uses
  %i.fr = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.v, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.fs = bitcast <64 x i1> %i.fr to i64
  %i.ft = xor i64 %i.fq, %i.fs
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.fv = add <64 x i8> %i.g, splat (i8 62)
  %i.fw = select <64 x i1> %i.v, <64 x i8> %i.fv, <64 x i8> zeroinitializer
  %i.fx = xor <64 x i1> %i.v, splat (i1 true)
  %i.fy = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.fy, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %spec.select.v.i
  %i.fz = bitcast i64 %i.fq to <64 x i1>
  %i.ga = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.fw, <64 x i8> zeroinitializer, <64 x i1> %i.fz)
  %i.gb = shufflevector <64 x i8> %i.ga, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gc = zext <32 x i8> %i.gb to <32 x i16>
  %i.gd = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.fx)
  %i.ge = shufflevector <64 x i8> %i.gd, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gf = zext <32 x i8> %i.ge to <32 x i16>
  %i.gg = shl nuw nsw <32 x i16> %i.gc, splat (i16 6)
  %i.gh = add nuw nsw <32 x i16> %i.gg, %i.gf
  %i.gi = trunc i64 %i.fq to i32
  %i.gj = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gi)
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gk
  %i.gl = trunc i64 %notmask.i.i to i32
  %i.gm = xor i32 %i.gl, -1
  %i.gn = bitcast i32 %i.gm to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gh, ptr align 1 %.0447.i, <32 x i1> %i.gn)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.gk
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gp = icmp ult ptr %.0433446.i, %i.a
  br i1 %i.gp, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.gq = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.gr = bitcast i64 %i.gq to <64 x i1>          ; 3 uses
  %i.gs = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0433446.i, <64 x i1> %i.gr, <64 x i8> zeroinitializer) ; 11 uses
  %i.gt = icmp sgt <64 x i8> %i.gs, splat (i8 -1)
  %i.gu = and <64 x i1> %i.gt, %i.gr              ; 3 uses
  %i.gv = bitcast <64 x i1> %i.gu to i64          ; 3 uses
  %i.gw = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gu, <64 x i1> %i.gr)
  %i.gx = and i32 %i.gw, 255
  %.not.i42.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.d ; 2 uses
  %i.gz = icmp ult i64 %i.d, 33
  %i.ha = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hb = zext <32 x i8> %i.ha to <32 x i16>      ; 2 uses
  br i1 %i.gz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hc = trunc i64 %i.gq to i32
  %i.hd = bitcast i32 %i.hc to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hb, ptr align 1 %.0447.i, <32 x i1> %i.hd)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.hb, ptr %.0447.i, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0447.i, i64 64
  %i.hg = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hh = zext <32 x i8> %i.hg to <32 x i16>
  %i.hi = trunc i64 %i.d to i32
  %i.hj = add i32 %i.hi, -32
  %notmask247.i.i = shl nsw i32 -1, %i.hj
  %i.hk = xor i32 %notmask247.i.i, -1
  %i.hl = bitcast i32 %i.hk to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hh, ptr nonnull align 1 %i.hf, <32 x i1> %i.hl)
  %i.hm = getelementptr [2 x i8], ptr %.0447.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.hn = icmp ugt <64 x i8> %i.gs, splat (i8 -65) ; 5 uses
  %i.ho = bitcast <64 x i1> %i.hn to i64          ; 3 uses
  %i.hp = icmp ugt <64 x i8> %i.gs, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.hq = bitcast <64 x i1> %i.hp to i64          ; 2 uses
  %i.hr = and <64 x i8> %i.gs, splat (i8 -2)
  %i.hs = icmp eq <64 x i8> %i.hr, splat (i8 -64) ; 2 uses
  %i.ht = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hs, <64 x i1> %i.hs)
  %i.hu = and i32 %i.ht, 255
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hw = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hp, <64 x i1> %i.hp)
  %i.hx = and i32 %i.hw, 255
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
end_hunk_2
begin_hunk_3_@_ZNK7simdutf7icelake14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs:bb.a
  %i.pi = icmp sgt i8 %i.ph, -65
  %i.pj = getelementptr i8, ptr %i.oz, i64 -3
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = icmp sgt i8 %i.pk, -65
  %or.cond3.not38.i = select i1 %i.pf, i1 true, i1 %i.pi
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.pl
  br i1 %or.cond5.not.i, label %.critedge40.i.preheader, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

.critedge40.i.preheader:                          ; preds = %bb.af, %bb.ae, %.critedge.i
  br label %.critedge40.i

.critedge40.i:                                    ; preds = %.critedge40.i.preheader, %bb.ah
  %.02566.i.i = phi i64 [ %i.ps, %bb.ah ], [ 0, %.critedge40.i.preheader ] ; 6 uses
  %i.pm = sub nsw i64 0, %.02566.i.i              ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %.0433446.i, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1             ; 2 uses
  %i.pp = icmp sgt i8 %i.po, -65
  br i1 %i.pp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge40.i
  %i.pq = icmp ne i64 %.02566.i.i, 0
  %i.pr = icmp sgt i8 %i.po, -1
  %or.cond.i.i = and i1 %i.pq, %i.pr
  br i1 %or.cond.i.i, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %.critedge40.i
  %i.ps = add i64 %.02566.i.i, 1                  ; 2 uses
  %.not.i44.i = icmp ugt i64 %i.ps, %i.ox
  br i1 %.not.i44.i, label %bb.aj, label %.critedge40.i, !llvm.loop !30

bb.ai:                                            ; preds = %bb.ag
  %i.pt = sub i64 1, %.02566.i.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.pu = sub i64 0, %i.ox
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.pv = getelementptr inbounds i8, ptr %.0433446.i, i64 %i.pm
  %i.pw = add i64 %.02566.i.i, %i.d
  %i.px = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.pv, i64 noundef %i.pw, ptr noundef %.0447.i) ; 2 uses
  %i.py = extractvalue { i32, i64 } %i.px, 0      ; 2 uses
  %i.pz = extractvalue { i32, i64 } %i.px, 1
  %.not33.i.i = icmp eq i32 %i.py, 0
  %i.qa = select i1 %.not33.i.i, i64 0, i64 %.02566.i.i
  %spec.select.i.i = sub i64 %i.pz, %i.qa
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.4.3.i.i = phi i64 [ %spec.select.i.i, %bb.ak ], [ %i.pu, %bb.aj ], [ %i.pt, %bb.ai ]
  %.sroa.0.3.i.i = phi i32 [ %i.py, %bb.ak ], [ 3, %bb.aj ], [ 3, %bb.ai ]
  %i.qb = add i64 %.sroa.4.3.i.i, %i.ox
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.al:                                            ; preds = %bb.o
  %i.qc = ptrtoint ptr %.0447.i to i64
  %i.qd = ptrtoint ptr %3 to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = ashr exact i64 %i.qe, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i, %bb.al
  %.sroa.4.0.i = phi i64 [ %i.qf, %bb.al ], [ %i.qb, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i ], [ %i.ox, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.al ], [ %.sroa.0.3.i.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i ], [ 3, %bb.af ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge, %bb.a
  %.0491.i = phi ptr [ %3, %bb.a ], [ %.0491.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 22 uses
  %.0477490.i = phi ptr [ %1, %bb.a ], [ %.0477490.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 14 uses
  %i.c = ptrtoint ptr %.0477490.i to i64          ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0477490.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  %i.q = bitcast <32 x i16> %i.p to <64 x i8>
  %i.r = shufflevector <64 x i8> %i.q, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.r, ptr %.0491.i, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.0491.i, i64 64
  %i.t = bitcast <8 x i64> %i.f to <64 x i8>
  %i.u = shufflevector <64 x i8> %i.t, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.v = zext <32 x i8> %i.u to <32 x i16>
  %i.w = bitcast <32 x i16> %i.v to <64 x i8>
  %i.x = shufflevector <64 x i8> %i.w, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.x, ptr %i.s, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0491.i, i64 128
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.d:                                             ; preds = %bb.b
  %i.z = icmp ugt <64 x i8> %i.g, splat (i8 -65)  ; 5 uses
  %i.aa = bitcast <64 x i1> %i.z to i64           ; 3 uses
  %i.ab = icmp ugt <64 x i8> %i.g, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.ac = bitcast <64 x i1> %i.ab to i64          ; 2 uses
  %i.ad = bitcast <8 x i64> %i.f to <64 x i8>
  %i.ae = and <64 x i8> %i.ad, splat (i8 -2)
  %i.af = icmp eq <64 x i8> %i.ae, splat (i8 -64) ; 2 uses
  %i.ag = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.af, <64 x i1> %i.af)
  %i.ah = and i32 %i.ag, 255
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ab, <64 x i1> %i.ab)
  %i.ak = and i32 %i.aj, 255
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.am = icmp ugt <64 x i8> %i.g, splat (i8 -17) ; 2 uses
  %i.an = bitcast <64 x i1> %i.am to i64          ; 2 uses
  %i.ao = xor <64 x i1> %i.h, splat (i1 true)     ; 2 uses
  %i.ap = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.z, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.aq = bitcast <64 x i1> %i.ap to i64          ; 2 uses
  %i.ar = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.ab, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.as = bitcast <64 x i1> %i.ar to i64          ; 2 uses
  %i.at = icmp eq i64 %i.an, 0
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.au = or i64 %i.aq, %i.as
  %i.av = or i64 %i.i, %i.aa                      ; 2 uses
  %i.aw = xor i64 %i.au, %i.av
  %.not483.i = icmp eq i64 %i.aw, -1
  br i1 %.not483.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ax = bitcast i64 %i.av to <64 x i1>
  %i.ay = shufflevector <64 x i1> %i.ax, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.az = bitcast <64 x i1> %i.ay to i64          ; 2 uses
  %i.ba = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ay)
  %i.bb = shufflevector <64 x i8> %i.ba, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bc = zext <32 x i8> %i.bb to <32 x i16>      ; 3 uses
  %.inner50 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.bd = bitcast <32 x i16> %i.bc to <64 x i8>
  %i.be = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bf = and <64 x i8> %.inner50, %i.be          ; 3 uses
  %i.bg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bf, <64 x i8> %i.bd)
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bi = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bj = add nsw <32 x i16> %i.bc, splat (i16 -1)
  %i.bk = select <64 x i1> %i.bi, <64 x i8> %i.bf, <64 x i8> zeroinitializer
  %i.bl = bitcast <32 x i16> %i.bj to <64 x i8>
  %i.bm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bk, <64 x i8> %i.bl)
  %i.bn = shufflevector <64 x i8> %i.bm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bo = bitcast <64 x i8> %i.bn to <32 x i16>
  %i.bp = shl nuw nsw <32 x i16> %i.bo, splat (i16 6)
  %i.bq = add nsw <32 x i16> %i.bc, splat (i16 -2)
  %i.br = select <64 x i1> %i.ab, <64 x i8> %i.bf, <64 x i8> zeroinitializer
  %i.bs = bitcast <32 x i16> %i.bq to <64 x i8>
  %i.bt = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.br, <64 x i8> %i.bs)
  %i.bu = shufflevector <64 x i8> %i.bt, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bv = bitcast <64 x i8> %i.bu to <32 x i16>
  %i.bw = shl <32 x i16> %i.bv, splat (i16 12)
  %i.bx = bitcast <64 x i8> %i.bh to <16 x i32>
  %i.by = bitcast <32 x i16> %i.bp to <16 x i32>
  %i.bz = bitcast <32 x i16> %i.bw to <16 x i32>
  %i.ca = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bx, <16 x i32> %i.by, <16 x i32> %i.bz, i32 254) ; 3 uses
  %i.cb = shl i64 %i.ac, 2
  %i.cc = tail call noundef i64 @llvm.pext.i64(i64 %i.cb, i64 %i.az)
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.cf = icmp ult <32 x i16> %i.ce, splat (i16 2048)
  %i.cg = bitcast i32 %i.cd to <32 x i1>
  %i.ch = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.ci = and <32 x i16> %i.ch, splat (i16 -2048)
  %i.cj = icmp eq <32 x i16> %i.ci, splat (i16 -10240)
  %i.ck = or <32 x i1> %i.cf, %i.cj
  %i.cl = and <32 x i1> %i.ck, %i.cg
  %i.cm = bitcast <32 x i1> %i.cl to i32
  %.not232.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not232.i.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.cn = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.az) ; 2 uses
  %i.co = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cn) ; 2 uses
  %i.cp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 false)
  %i.cq = sub nuw nsw i64 64, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.cq
  %i.cs = bitcast <16 x i32> %i.ca to <64 x i8>
  %i.ct = shufflevector <64 x i8> %i.cs, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.co
  %i.cu = trunc i64 %notmask233.i.i to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = bitcast <64 x i8> %i.ct to <32 x i16>
  %i.cx = bitcast i32 %i.cv to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cw, ptr align 1 %.0491.i, <32 x i1> %i.cx)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.co
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cz = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.am, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.da = bitcast <64 x i1> %i.cz to i64          ; 3 uses
  %i.db = or i64 %i.aq, %i.as
  %i.dc = or i64 %i.db, %i.da
  %i.dd = or i64 %i.i, %i.aa                      ; 2 uses
  %i.de = or i64 %i.dd, %i.da
  %i.df = bitcast i64 %i.de to <64 x i1>
  %i.dg = shufflevector <64 x i1> %i.df, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dh = or <64 x i1> %i.cz, %i.dg               ; 2 uses
  %i.di = bitcast <64 x i1> %i.dh to i64          ; 3 uses
  %i.dj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.dh)
  %i.dk = shufflevector <64 x i8> %i.dj, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dl = zext <32 x i8> %i.dk to <32 x i16>      ; 3 uses
  %.inner52 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dm = bitcast <32 x i16> %i.dl to <64 x i8>
  %i.dn = bitcast <8 x i64> %i.f to <64 x i8>
  %i.do = and <64 x i8> %.inner52, %i.dn          ; 3 uses
  %i.dp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.do, <64 x i8> %i.dm)
  %i.dq = shufflevector <64 x i8> %i.dp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dr = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ds = add nsw <32 x i16> %i.dl, splat (i16 -1)
  %i.dt = select <64 x i1> %i.dr, <64 x i8> %i.do, <64 x i8> zeroinitializer
  %i.du = bitcast <32 x i16> %i.ds to <64 x i8>
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dt, <64 x i8> %i.du)
  %i.dw = shufflevector <64 x i8> %i.dv, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dx = bitcast <64 x i8> %i.dw to <32 x i16>
  %i.dy = shl nuw nsw <32 x i16> %i.dx, splat (i16 6)
  %i.dz = add nsw <32 x i16> %i.dl, splat (i16 -2)
  %i.ea = select <64 x i1> %i.ab, <64 x i8> %i.do, <64 x i8> zeroinitializer
  %i.eb = bitcast <32 x i16> %i.dz to <64 x i8>
  %i.ec = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ea, <64 x i8> %i.eb)
  %i.ed = shufflevector <64 x i8> %i.ec, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ee = bitcast <64 x i8> %i.ed to <32 x i16>
  %i.ef = shl <32 x i16> %i.ee, splat (i16 12)
  %i.eg = bitcast <64 x i8> %i.dq to <16 x i32>
  %i.eh = bitcast <32 x i16> %i.dy to <16 x i32>
  %i.ei = bitcast <32 x i16> %i.ef to <16 x i32>
  %i.ej = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eg, <16 x i32> %i.eh, <16 x i32> %i.ei, i32 254)
  %i.ek = tail call noundef i64 @llvm.pext.i64(i64 %i.da, i64 %i.di) ; 2 uses
  %i.el = trunc i64 %i.ek to i32
  %i.em = lshr i64 %i.ek, 1                       ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = bitcast i32 %i.el to <32 x i1>
  %i.ep = select <32 x i1> %i.eo, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.eq = bitcast <16 x i32> %i.ej to <32 x i16>  ; 2 uses
  %i.er = lshr <32 x i16> %i.eq, splat (i16 4)
  %i.es = or <32 x i16> %i.ep, %i.eq
  %i.et = add nuw nsw <32 x i16> %i.er, splat (i16 -10304)
  %i.eu = bitcast i32 %i.en to <32 x i1>          ; 2 uses
  %i.ev = select <32 x i1> %i.eu, <32 x i16> %i.et, <32 x i16> %i.es ; 3 uses
  %i.ew = and i64 %i.em, 2147483648
  %i.ex = xor i64 %i.ew, 4294967295
  %i.ey = tail call noundef i64 @llvm.pdep.i64(i64 %i.ex, i64 %i.di) ; 2 uses
  %i.ez = xor i64 %i.dc, %i.dd
  %.not481.i = icmp eq i64 %i.ez, -1
  br i1 %.not481.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.fa = xor i64 %i.an, -1
  %i.fb = and i64 %i.ac, %i.fa
  %i.fc = shl i64 %i.fb, 2
  %i.fd = tail call noundef i64 @llvm.pext.i64(i64 %i.fc, i64 %i.di)
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = icmp ult <32 x i16> %i.ev, splat (i16 2048)
  %i.fg = bitcast i32 %i.fe to <32 x i1>
  %i.fh = add <32 x i16> %i.ev, splat (i16 10240) ; 2 uses
  %i.fi = icmp ult <32 x i16> %i.fh, splat (i16 2048)
  %i.fj = icmp ugt <32 x i16> %i.fh, splat (i16 1023)
  %i.fk = and <32 x i1> %i.fj, %i.eu
  %i.fl = or <32 x i1> %i.ff, %i.fi
  %i.fm = and <32 x i1> %i.fl, %i.fg
  %i.fn = or <32 x i1> %i.fk, %i.fm
  %i.fo = bitcast <32 x i1> %i.fn to i32
  %.not482.i = icmp eq i32 %i.fo, 0
  br i1 %.not482.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 false)
  %i.fq = sub nuw nsw i64 64, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.fq
  %i.fs = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ey) ; 2 uses
  %i.ft = bitcast <32 x i16> %i.ev to <64 x i8>
  %i.fu = shufflevector <64 x i8> %i.ft, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fs
  %i.fv = trunc i64 %notmask230.i.i to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = bitcast <64 x i8> %i.fu to <32 x i16>
  %i.fy = bitcast i32 %i.fw to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fx, ptr align 1 %.0491.i, <32 x i1> %i.fy)
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.fs
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.ga = or i64 %i.i, %i.aa                      ; 3 uses
  %i.gb = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.z, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.gc = bitcast <64 x i1> %i.gb to i64
  %i.gd = xor i64 %i.ga, %i.gc
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.gf = add <64 x i8> %i.g, splat (i8 62)
  %i.gg = select <64 x i1> %i.z, <64 x i8> %i.gf, <64 x i8> zeroinitializer
  %i.gh = xor <64 x i1> %i.z, splat (i1 true)
  %i.gi = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.gi, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %spec.select.v.i
  %i.gj = bitcast i64 %i.ga to <64 x i1>
  %i.gk = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gg, <64 x i8> zeroinitializer, <64 x i1> %i.gj)
  %i.gl = shufflevector <64 x i8> %i.gk, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gm = zext <32 x i8> %i.gl to <32 x i16>
  %i.gn = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.gh)
  %i.go = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gp = zext <32 x i8> %i.go to <32 x i16>
  %i.gq = shl nuw nsw <32 x i16> %i.gm, splat (i16 6)
  %i.gr = add nuw nsw <32 x i16> %i.gq, %i.gp
  %i.gs = bitcast <32 x i16> %i.gr to <64 x i8>
  %i.gt = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gu = trunc i64 %i.ga to i32
  %i.gv = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gu)
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gw
  %i.gx = trunc i64 %notmask.i.i to i32
  %i.gy = xor i32 %i.gx, -1
  %i.gz = bitcast <64 x i8> %i.gt to <32 x i16>
  %i.ha = bitcast i32 %i.gy to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gz, ptr align 1 %.0491.i, <32 x i1> %i.ha)
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.gw
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.hc = icmp ult ptr %.0477490.i, %i.a
  br i1 %i.hc, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.hd = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.he = bitcast i64 %i.hd to <64 x i1>          ; 3 uses
  %i.hf = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0477490.i, <64 x i1> %i.he, <64 x i8> zeroinitializer) ; 11 uses
  %i.hg = icmp sgt <64 x i8> %i.hf, splat (i8 -1)
  %i.hh = and <64 x i1> %i.hg, %i.he              ; 3 uses
  %i.hi = bitcast <64 x i1> %i.hh to i64          ; 3 uses
  %i.hj = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hh, <64 x i1> %i.he)
  %i.hk = and i32 %i.hj, 255
  %.not.i42.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hl = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.d ; 2 uses
  %i.hm = icmp ult i64 %i.d, 33
  %i.hn = shufflevector <64 x i8> %i.hf, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ho = zext <32 x i8> %i.hn to <32 x i16>
  %i.hp = bitcast <32 x i16> %i.ho to <64 x i8>
  %i.hq = shufflevector <64 x i8> %i.hp, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62> ; 2 uses
  br i1 %i.hm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hr = trunc i64 %i.hd to i32
  %i.hs = bitcast <64 x i8> %i.hq to <32 x i16>
  %i.ht = bitcast i32 %i.hr to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hs, ptr align 1 %.0491.i, <32 x i1> %i.ht)
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hq, ptr %.0491.i, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.0491.i, i64 64
  %i.hw = shufflevector <64 x i8> %i.hf, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hx = zext <32 x i8> %i.hw to <32 x i16>
  %i.hy = bitcast <32 x i16> %i.hx to <64 x i8>
  %i.hz = shufflevector <64 x i8> %i.hy, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.ia = trunc i64 %i.d to i32
  %i.ib = add i32 %i.ia, -32
  %notmask259.i.i = shl nsw i32 -1, %i.ib
  %i.ic = xor i32 %notmask259.i.i, -1
  %i.id = bitcast <64 x i8> %i.hz to <32 x i16>
  %i.ie = bitcast i32 %i.ic to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.id, ptr nonnull align 1 %i.hv, <32 x i1> %i.ie)
  %i.if = getelementptr [2 x i8], ptr %.0491.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ig = icmp ugt <64 x i8> %i.hf, splat (i8 -65) ; 5 uses
  %i.ih = bitcast <64 x i1> %i.ig to i64          ; 3 uses
  %i.ii = icmp ugt <64 x i8> %i.hf, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
end_hunk_3
begin_hunk_4_@_ZNK7simdutf8westmere14implementation26validate_ascii_with_errorsEPKcm:bb.a
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = icmp eq i16 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i ; 3 uses
  %i.s = sub i64 %2, %.0.i                        ; 8 uses
  %.not33.i.i = icmp ult i64 %i.s, 16
  br i1 %.not33.i.i, label %.preheader.i.i, label %.lr.ph35.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %bb.d
  %.025.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ad, %.loopexit.i.i ] ; 3 uses
  %i.t = icmp ult i64 %.025.lcssa.i.i, %i.s
  br i1 %i.t, label %.lr.ph38.i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i

.lr.ph35.i.i:                                     ; preds = %bb.d, %.loopexit.i.i
  %.02534.i.i = phi i64 [ %i.ad, %.loopexit.i.i ], [ 0, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.02534.i.i ; 2 uses
  %.0.copyload3.i.i = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i = load i64, ptr %i.v, align 1
  %i.w = or i64 %.0.copyload.i.i, %.0.copyload3.i.i
  %i.x = and i64 %i.w, -9187201950435737472
  %.not27.i.i = icmp ne i64 %i.x, 0
  %i.y = icmp ult i64 %.02534.i.i, %i.s
  %or.cond.i.i = and i1 %i.y, %.not27.i.i
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph35.i.i, %bb.e
  %.132.i.i = phi i64 [ %i.ac, %bb.e ], [ %.02534.i.i, %.lr.ph35.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.132.i.i
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i64 %.132.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.s
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5

.loopexit.i.i:                                    ; preds = %bb.e, %.lr.ph35.i.i
  %.3.i.i = phi i64 [ %.02534.i.i, %.lr.ph35.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.ad = add i64 %.3.i.i, 16                     ; 2 uses
  %i.ae = add i64 %.3.i.i, 32
  %.not.i.i = icmp ugt i64 %i.ae, %i.s
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph35.i.i, !llvm.loop !6

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %bb.f
  %.437.i.i = phi i64 [ %i.ai, %bb.f ], [ %.025.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %.437.i.i
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp slt i8 %i.ag, 0
  br i1 %i.ah, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i.i
  %i.ai = add i64 %.437.i.i, 1                    ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.ai, %i.s
  br i1 %exitcond47.not.i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i, label %.lr.ph38.i.i, !llvm.loop !7

_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i: ; preds = %bb.f, %.lr.ph38.i.i, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.4.0.i.i = phi i64 [ %.132.i.i, %.lr.ph.i.i ], [ %.025.lcssa.i.i, %.preheader.i.i ], [ %.437.i.i, %.lr.ph38.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi i32 [ 5, %.lr.ph.i.i ], [ 0, %.preheader.i.i ], [ 5, %.lr.ph38.i.i ], [ 0, %bb.f ]
  %i.aj = add i64 %.sroa.4.0.i.i, %.0.i
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ak = add nuw i64 %.sroa.11.0.i, 64
  %i.al = add i64 %.0.i, 64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i
  %.sroa.458.1.i = phi i64 [ %.sroa.458.0.i, %bb.g ], [ %i.aj, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ] ; 2 uses
  %.sroa.057.1.i = phi i32 [ %.sroa.057.0.i, %bb.g ], [ %.sroa.0.0.i.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ] ; 2 uses
  %.sroa.11.1.i = phi i64 [ %i.ak, %bb.g ], [ %.sroa.11.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ]
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ]
  br i1 %i.q, label %bb.b, label %_ZN7simdutf8westmere12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit, !llvm.loop !1062

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = icmp eq i64 %2, %.sroa.11.0.i
  br i1 %i.am, label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i, label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.i
  %i.ao = sub i64 %2, %.sroa.11.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.an, i64 %i.ao, i1 false)
  %.0..0..0..0..0..pre.i = load <2 x i64>, ptr %i.a, align 16
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..pre.i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..pre.i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..pre.i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16
  %i.ap = or <2 x i64> %.16..16..16..16..16..pre.i, %.0..0..0..0..0..pre.i
  %i.aq = or <2 x i64> %i.ap, %.32..32..32..32..32..pre.i
  %i.ar = or <2 x i64> %i.aq, %.48..48..48..48..48..pre.i
  %i.as = bitcast <2 x i64> %i.ar to <16 x i8>
  %i.at = icmp slt <16 x i8> %i.as, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i ; 3 uses
  %i.ax = sub i64 %2, %.0.i                       ; 8 uses
  %.not33.i21.i = icmp ult i64 %i.ax, 16
  br i1 %.not33.i21.i, label %.preheader.i31.i, label %.lr.ph35.i22.i

.preheader.i31.i:                                 ; preds = %.loopexit.i28.i, %bb.j
  %.025.lcssa.i32.i = phi i64 [ 0, %bb.j ], [ %i.bi, %.loopexit.i28.i ] ; 3 uses
  %i.ay = icmp ult i64 %.025.lcssa.i32.i, %i.ax
  br i1 %i.ay, label %.lr.ph38.i37.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i

.lr.ph35.i22.i:                                   ; preds = %bb.j, %.loopexit.i28.i
  %.02534.i23.i = phi i64 [ %i.bi, %.loopexit.i28.i ], [ 0, %bb.j ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.02534.i23.i ; 2 uses
  %.0.copyload3.i24.i = load i64, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.0.copyload.i25.i = load i64, ptr %i.ba, align 1
  %i.bb = or i64 %.0.copyload.i25.i, %.0.copyload3.i24.i
  %i.bc = and i64 %i.bb, -9187201950435737472
  %.not27.i26.i = icmp ne i64 %i.bc, 0
  %i.bd = icmp ult i64 %.02534.i23.i, %i.ax
  %or.cond.i27.i = and i1 %i.bd, %.not27.i26.i
  br i1 %or.cond.i27.i, label %.lr.ph.i40.i, label %.loopexit.i28.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph35.i22.i, %bb.k
  %.132.i41.i = phi i64 [ %i.bh, %bb.k ], [ %.02534.i23.i, %.lr.ph35.i22.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.132.i41.i
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i40.i
  %i.bh = add i64 %.132.i41.i, 1                  ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %i.bh, %i.ax
  br i1 %exitcond.not.i42.i, label %.loopexit.i28.i, label %.lr.ph.i40.i, !llvm.loop !5

.loopexit.i28.i:                                  ; preds = %bb.k, %.lr.ph35.i22.i
  %.3.i29.i = phi i64 [ %.02534.i23.i, %.lr.ph35.i22.i ], [ %i.ax, %bb.k ] ; 2 uses
  %i.bi = add i64 %.3.i29.i, 16                   ; 2 uses
  %i.bj = add i64 %.3.i29.i, 32
  %.not.i30.i = icmp ugt i64 %i.bj, %i.ax
  br i1 %.not.i30.i, label %.preheader.i31.i, label %.lr.ph35.i22.i, !llvm.loop !6

.lr.ph38.i37.i:                                   ; preds = %.preheader.i31.i, %bb.l
  %.437.i38.i = phi i64 [ %i.bn, %bb.l ], [ %.025.lcssa.i32.i, %.preheader.i31.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.437.i38.i
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp slt i8 %i.bl, 0
  br i1 %i.bm, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i37.i
  %i.bn = add i64 %.437.i38.i, 1                  ; 2 uses
  %exitcond47.not.i39.i = icmp eq i64 %i.bn, %i.ax
  br i1 %exitcond47.not.i39.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, label %.lr.ph38.i37.i, !llvm.loop !7

_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i: ; preds = %.lr.ph.i40.i, %bb.l, %.lr.ph38.i37.i, %.preheader.i31.i
  %.sroa.4.0.i33.i = phi i64 [ %i.ax, %bb.l ], [ %.025.lcssa.i32.i, %.preheader.i31.i ], [ %.437.i38.i, %.lr.ph38.i37.i ], [ %.132.i41.i, %.lr.ph.i40.i ]
  %.sroa.0.0.i34.i = phi i32 [ 0, %bb.l ], [ 0, %.preheader.i31.i ], [ 5, %.lr.ph38.i37.i ], [ 5, %.lr.ph.i40.i ]
  %i.bo = add i64 %.sroa.4.0.i33.i, %.0.i
  br label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i

_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i, %bb.i
  %.sroa.458.2.i = phi i64 [ %i.bo, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i ], [ %2, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i ], [ %2, %bb.i ]
  %.sroa.057.2.i = phi i32 [ %.sroa.0.0.i34.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i ], [ 0, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit

_ZN7simdutf8westmere12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit: ; preds = %bb.h, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i
  %.sroa.458.3.i = phi i64 [ %.sroa.458.2.i, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i ], [ %.sroa.458.1.i, %bb.h ]
  %.sroa.057.3.i = phi i32 [ %.sroa.057.2.i, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i ], [ %.sroa.057.1.i, %bb.h ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.057.3.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.458.3.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8westmere14implementation16validate_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.q, %bb.e ], [ %1, %bb.b ] ; 3 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = lshr <8 x i16> %i.d, splat (i16 8)
  %i.h = lshr <8 x i16> %i.f, splat (i16 8)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 3 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = and <16 x i8> %i.i, splat (i8 -4)
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -36)
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %3 = xor i16 %i.p, -1
  %4 = lshr i16 %i.p, 1
  %5 = and i16 %4, %3                             ; 2 uses
  %6 = and i16 %5, %i.l
  %7 = shl nuw i16 %6, 1
  %.masked45.i = xor i16 %i.l, -1
  %8 = or i16 %7, %.masked45.i
  %trunc.i = or i16 %8, %5
  switch i16 %trunc.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = icmp ult ptr %i.r, %i.b
  br i1 %i.s, label %.lr.ph.i, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.q, %bb.e ]
  %i.t = ptrtoint ptr %.040.lcssa.i to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp eq i64 %i.w, %2
  br i1 %i.x, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.z = sub i64 %2, %i.w                         ; 2 uses
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.i
  %.02236.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.02236.i
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = and i16 %i.ab, -2048
  %i.ad = icmp eq i16 %i.ac, -10240
  %i.ae = add nuw i64 %.02236.i, 1                ; 3 uses
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i8
  %.not.i = icmp ult i64 %i.ae, %i.z
  %i.af = and i16 %i.ab, -9216
  %.not32.i = icmp eq i16 %i.af, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ae
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, -1024
  %.not34.i = icmp eq i16 %i.ai, -9216
  %i.aj = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph.i8
  %.4.i = phi i64 [ %i.aj, %bb.h ], [ %i.ae, %.lr.ph.i8 ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i, %i.z
  br i1 %.not41.i, label %.lr.ph.i8, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, !llvm.loop !3

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %.loopexit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8westmere14implementation16validate_utf16beEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.q, %bb.e ], [ %1, %bb.b ] ; 3 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = and <8 x i16> %i.d, splat (i16 255)
  %i.h = and <8 x i16> %i.f, splat (i16 255)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 3 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = and <16 x i8> %i.i, splat (i8 -4)
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -36)
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %3 = xor i16 %i.p, -1
  %4 = lshr i16 %i.p, 1
  %5 = and i16 %4, %3                             ; 2 uses
  %6 = and i16 %5, %i.l
  %7 = shl nuw i16 %6, 1
  %.masked45.i = xor i16 %i.l, -1
  %8 = or i16 %7, %.masked45.i
  %trunc.i = or i16 %8, %5
  switch i16 %trunc.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = icmp ult ptr %i.r, %i.b
  br i1 %i.s, label %.lr.ph.i, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.q, %bb.e ]
  %i.t = ptrtoint ptr %.040.lcssa.i to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp eq i64 %i.w, %2
  br i1 %i.x, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.z = sub i64 %2, %i.w                         ; 2 uses
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.i
  %.02236.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.02236.i
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab) ; 2 uses
  %i.ad = and i16 %i.ac, -2048
  %i.ae = icmp eq i16 %i.ad, -10240
  %i.af = add nuw i64 %.02236.i, 1                ; 3 uses
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i8
  %.not.i = icmp ult i64 %i.af, %i.z
  %i.ag = and i16 %i.ac, -9216
  %.not32.i = icmp eq i16 %i.ag, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.af
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ai, 252
  %.not34.i = icmp eq i16 %i.aj, 220
  %i.ak = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph.i8
  %.4.i = phi i64 [ %i.ak, %bb.h ], [ %i.af, %.lr.ph.i8 ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i, %i.z
  br i1 %.not41.i, label %.lr.ph.i8, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, !llvm.loop !8

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %.loopexit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation28validate_utf16le_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.u, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = lshr <8 x i16> %i.d, splat (i16 8)
  %i.h = lshr <8 x i16> %i.f, splat (i16 8)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 3 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = and <16 x i8> %i.i, splat (i8 -4)
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -36)
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %3 = xor i16 %i.p, -1
  %4 = lshr i16 %i.p, 1
  %5 = and i16 %4, %3                             ; 2 uses
  %6 = and i16 %5, %i.l
  %7 = shl nuw i16 %6, 1
  %.masked45.i = xor i16 %i.l, -1
  %8 = or i16 %7, %.masked45.i
  %trunc.i = or i16 %8, %5
  switch i16 %trunc.i, label %.critedge.critedge.i [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

.critedge.critedge.i:                             ; preds = %bb.c
  %i.q = ptrtoint ptr %.04070.i to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = icmp ult ptr %i.v, %i.b
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !56

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.u, %bb.e ]
  %i.x = ptrtoint ptr %.040.lcssa.i to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit: ; preds = %bb.a, %.critedge.critedge.i, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %i.t, %.critedge.critedge.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.052.0.i = phi i32 [ 0, %._crit_edge.i ], [ 6, %.critedge.critedge.i ], [ 0, %bb.a ]
  %.not = icmp eq i64 %.sroa.4.0.i, %2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.4.0.i ; 2 uses
  %i.ac = sub i64 %2, %.sroa.4.0.i                ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.f, %bb.i
  %.02537.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.02537.i
  %i.ae = load i16, ptr %i.ad, align 2            ; 2 uses
  %i.af = and i16 %i.ae, -2048
  %i.ag = icmp eq i16 %i.af, -10240
  %i.ah = add nuw i64 %.02537.i, 1                ; 3 uses
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i12
  %.not.i = icmp ult i64 %i.ah, %i.ac
  %i.ai = and i16 %i.ae, -9216
  %.not30.i = icmp eq i16 %i.ai, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ah
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = and i16 %i.ak, -1024
  %.not32.i = icmp eq i16 %i.al, -9216
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.h
  %i.am = add i64 %.02537.i, 2
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i12
  %.4.i = phi i64 [ %i.am, %.thread.i ], [ %i.ah, %.lr.ph.i12 ] ; 3 uses
  %i.an = icmp ult i64 %.4.i, %i.ac
  br i1 %i.an, label %.lr.ph.i12, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit, !llvm.loop !9

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.025.lcssa.i = phi i64 [ %.02537.i, %bb.g ], [ %.4.i, %bb.i ], [ %.02537.i, %bb.h ]
  %.sroa.0.3.i = phi i32 [ 6, %bb.g ], [ 0, %bb.i ], [ 6, %bb.h ]
  %i.ao = add i64 %.025.lcssa.i, %.sroa.4.0.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit
  %.sroa.3.0 = phi i64 [ %i.ao, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit ], [ %2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit ], [ %.sroa.052.0.i, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation28validate_utf16be_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.u, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = and <8 x i16> %i.d, splat (i16 255)
  %i.h = and <8 x i16> %i.f, splat (i16 255)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 3 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = and <16 x i8> %i.i, splat (i8 -4)
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -36)
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %3 = xor i16 %i.p, -1
  %4 = lshr i16 %i.p, 1
  %5 = and i16 %4, %3                             ; 2 uses
  %6 = and i16 %5, %i.l
  %7 = shl nuw i16 %6, 1
  %.masked45.i = xor i16 %i.l, -1
  %8 = or i16 %7, %.masked45.i
  %trunc.i = or i16 %8, %5
  switch i16 %trunc.i, label %.critedge.critedge.i [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

.critedge.critedge.i:                             ; preds = %bb.c
  %i.q = ptrtoint ptr %.04070.i to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = icmp ult ptr %i.v, %i.b
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.u, %bb.e ]
  %i.x = ptrtoint ptr %.040.lcssa.i to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit: ; preds = %bb.a, %.critedge.critedge.i, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %i.t, %.critedge.critedge.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.052.0.i = phi i32 [ 0, %._crit_edge.i ], [ 6, %.critedge.critedge.i ], [ 0, %bb.a ]
  %.not = icmp eq i64 %.sroa.4.0.i, %2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.4.0.i ; 2 uses
  %i.ac = sub i64 %2, %.sroa.4.0.i                ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.f, %bb.i
  %.02537.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.02537.i
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = and i16 %i.af, -2048
  %i.ah = icmp eq i16 %i.ag, -10240
  %i.ai = add nuw i64 %.02537.i, 1                ; 3 uses
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i12
  %.not.i = icmp ult i64 %i.ai, %i.ac
  %i.aj = and i16 %i.af, -9216
  %.not30.i = icmp eq i16 %i.aj, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ai
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, 252
  %.not32.i = icmp eq i16 %i.am, 220
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.h
  %i.an = add i64 %.02537.i, 2
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i12
  %.4.i = phi i64 [ %i.an, %.thread.i ], [ %i.ai, %.lr.ph.i12 ] ; 3 uses
  %i.ao = icmp ult i64 %.4.i, %i.ac
  br i1 %i.ao, label %.lr.ph.i12, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit, !llvm.loop !10

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.025.lcssa.i = phi i64 [ %.02537.i, %bb.g ], [ %.4.i, %bb.i ], [ %.02537.i, %bb.h ]
  %.sroa.0.3.i = phi i32 [ 6, %bb.g ], [ 0, %bb.i ], [ 6, %bb.h ]
  %i.ap = add i64 %.025.lcssa.i, %.sroa.4.0.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit
  %.sroa.3.0 = phi i64 [ %i.ap, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit ], [ %2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit ], [ %.sroa.052.0.i, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK7simdutf8westmere14implementation22to_well_formed_utf16leEPKDsmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %.not33.i.i = icmp eq i64 %2, 0
  br i1 %.not33.i.i, label %_ZN7simdutf8westmere12_GLOBAL__N_112utf16fix_sseILNS_10endiannessE0EEEvPKDsmPDs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.b = load i16, ptr %1, align 2
  %i.c = and i16 %i.b, -1024                      ; 2 uses
  %i.d = icmp eq i16 %i.c, -10240                 ; 2 uses
  %i.e = icmp eq i16 %i.c, -9216
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = load i16, ptr %1, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sink.i.i = phi i16 [ %i.f, %bb.c ], [ -3, %.lr.ph.i.i ]
  store i16 %.sink.i.i, ptr %3, align 2
  %exitcond.not.i.i = icmp eq i64 %2, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -1024                      ; 2 uses
  %i.j = icmp eq i16 %i.i, -10240                 ; 2 uses
  %i.k = icmp eq i16 %i.i, -9216                  ; 2 uses
  %.not.i51.i.1 = xor i1 %i.d, true               ; 2 uses
  %or.cond.i.i.1 = or i1 %i.k, %.not.i51.i.1
  br i1 %or.cond.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  store i16 -3, ptr %3, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.1
  %or.cond4.i.i.1 = and i1 %i.k, %.not.i51.i.1
  br i1 %or.cond4.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i16, ptr %i.g, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i.1 = phi i16 [ %i.l, %bb.g ], [ -3, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.sink.i.i.1, ptr %i.m, align 2
  %exitcond.not.i.i.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, -1024                      ; 2 uses
  %i.q = icmp eq i16 %i.p, -10240                 ; 2 uses
  %i.r = icmp eq i16 %i.p, -9216                  ; 2 uses
  %.not.i51.i.2 = xor i1 %i.j, true               ; 2 uses
  %or.cond.i.i.2 = or i1 %i.r, %.not.i51.i.2
  br i1 %or.cond.i.i.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.2
  %i.s = getelementptr i8, ptr %3, i64 2
  store i16 -3, ptr %i.s, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.2
  %or.cond4.i.i.2 = and i1 %i.r, %.not.i51.i.2
  br i1 %or.cond4.i.i.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i16, ptr %i.n, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i.2 = phi i16 [ %i.t, %bb.k ], [ -3, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %.sink.i.i.2, ptr %i.u, align 2
  %exitcond.not.i.i.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, -1024                      ; 2 uses
  %i.y = icmp eq i16 %i.x, -10240                 ; 2 uses
  %i.z = icmp eq i16 %i.x, -9216                  ; 2 uses
  %.not.i51.i.3 = xor i1 %i.q, true               ; 2 uses
  %or.cond.i.i.3 = or i1 %i.z, %.not.i51.i.3
  br i1 %or.cond.i.i.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.3
  %i.aa = getelementptr i8, ptr %3, i64 4
  store i16 -3, ptr %i.aa, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.3
  %or.cond4.i.i.3 = and i1 %i.z, %.not.i51.i.3
  br i1 %or.cond4.i.i.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i16, ptr %i.v, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i.3 = phi i16 [ %i.ab, %bb.o ], [ -3, %bb.n ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %.sink.i.i.3, ptr %i.ac, align 2
  %exitcond.not.i.i.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i.4
end_hunk_4
