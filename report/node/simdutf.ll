inline.NumInlined: 2176
inline.NumDeleted: 448
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
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !254

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
  %.0394411.i = phi ptr [ %3, %bb.a ], [ %.0394411.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 21 uses
  %.0396410.i = phi ptr [ %1, %bb.a ], [ %.0396410.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 12 uses
  %i.c = ptrtoint ptr %.0396410.i to i64
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0396410.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  store <32 x i16> %i.p, ptr %.0394411.i, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0394411.i, i64 64
  %i.r = bitcast <8 x i64> %i.f to <64 x i8>
  %i.s = shufflevector <64 x i8> %i.r, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.t = zext <32 x i8> %i.s to <32 x i16>
  store <32 x i16> %i.t, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.0394411.i, i64 128
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
  %.not409.i = icmp eq i64 %i.as, -1
  br i1 %.not409.i, label %bb.h, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

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
  %i.cn = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.cm
  %notmask223.i.i = shl nsw i64 -1, %i.ck
  %i.co = trunc i64 %notmask223.i.i to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = bitcast i32 %i.cp to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ca, ptr align 1 %.0394411.i, <32 x i1> %i.cq)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.ck
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
  %.not407.i = icmp eq i64 %i.es, -1
  br i1 %.not407.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

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
  %.not408.i = icmp eq i32 %i.fh, 0
  br i1 %.not408.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fi = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.er, i1 false)
  %i.fj = sub nuw nsw i64 64, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.fj
  %i.fl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.er) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fl
  %i.fm = trunc i64 %notmask220.i.i to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = bitcast i32 %i.fn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.eo, ptr align 1 %.0394411.i, <32 x i1> %i.fo)
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.fl
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
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %spec.select.v.i
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
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gh, ptr align 1 %.0394411.i, <32 x i1> %i.gn)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.gk
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gp = icmp ult ptr %.0396410.i, %i.a
  br i1 %i.gp, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.gq = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.gr = bitcast i64 %i.gq to <64 x i1>          ; 3 uses
  %i.gs = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0396410.i, <64 x i1> %i.gr, <64 x i8> zeroinitializer) ; 11 uses
  %i.gt = icmp sgt <64 x i8> %i.gs, splat (i8 -1)
  %i.gu = and <64 x i1> %i.gt, %i.gr              ; 3 uses
  %i.gv = bitcast <64 x i1> %i.gu to i64          ; 3 uses
  %i.gw = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gu, <64 x i1> %i.gr)
  %i.gx = and i32 %i.gw, 255
  %.not.i9.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.d ; 2 uses
  %i.gz = icmp ult i64 %i.d, 33
  %i.ha = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hb = zext <32 x i8> %i.ha to <32 x i16>      ; 2 uses
  br i1 %i.gz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hc = trunc i64 %i.gq to i32
  %i.hd = bitcast i32 %i.hc to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hb, ptr align 1 %.0394411.i, <32 x i1> %i.hd)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.hb, ptr %.0394411.i, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0394411.i, i64 64
  %i.hg = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hh = zext <32 x i8> %i.hg to <32 x i16>
  %i.hi = trunc i64 %i.d to i32
  %i.hj = add i32 %i.hi, -32
  %notmask247.i.i = shl nsw i32 -1, %i.hj
  %i.hk = xor i32 %notmask247.i.i, -1
  %i.hl = bitcast i32 %i.hk to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hh, ptr nonnull align 1 %i.hf, <32 x i1> %i.hl)
  %i.hm = getelementptr [2 x i8], ptr %.0394411.i, i64 %i.d
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
  %i.hz = icmp ugt <64 x i8> %i.gs, splat (i8 -17) ; 2 uses
  %i.ia = bitcast <64 x i1> %i.hz to i64          ; 2 uses
  %i.ib = xor <64 x i1> %i.gu, splat (i1 true)
  %i.ic = bitcast <64 x i1> %i.ib to i64
  %i.id = and i64 %i.ic, %i.gq                    ; 2 uses
  %i.ie = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hn, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.if = bitcast <64 x i1> %i.ie to i64          ; 2 uses
  %i.ig = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.hp, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ih = bitcast <64 x i1> %i.ig to i64          ; 2 uses
  %i.ii = icmp eq i64 %i.ia, 0
  br i1 %i.ii, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ij = or i64 %i.if, %i.ih
  %i.ik = or i64 %i.gv, %i.ho                     ; 2 uses
  %i.il = xor i64 %i.ik, %i.gq
  %.not244.i.i = icmp eq i64 %i.ij, %i.il
  br i1 %.not244.i.i, label %bb.x, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.x:                                             ; preds = %bb.w
  %i.im = bitcast i64 %i.ik to <64 x i1>
  %i.in = shufflevector <64 x i1> %i.im, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.io = bitcast <64 x i1> %i.in to i64
  %i.ip = add i64 %i.d, -1
  %i.iq = shl nuw nsw i64 1, %i.ip
  %i.ir = or i64 %i.iq, %i.io                     ; 3 uses
  %i.is = bitcast i64 %i.ir to <64 x i1>
  %i.it = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.is)
  %i.iu = shufflevector <64 x i8> %i.it, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.iv = zext <32 x i8> %i.iu to <32 x i16>      ; 3 uses
  %i.iw = bitcast i64 %i.id to <64 x i1>          ; 2 uses
  %.inner15 = select <64 x i1> %i.iw, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner16 = and <64 x i8> %.inner15, %i.gs      ; 3 uses
  %i.ix = bitcast <32 x i16> %i.iv to <64 x i8>
  %i.iy = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner16, <64 x i8> %i.ix)
  %i.iz = shufflevector <64 x i8> %i.iy, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ja = shufflevector <64 x i1> %i.iw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jb = add nsw <32 x i16> %i.iv, splat (i16 -1)
  %i.jc = select <64 x i1> %i.ja, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jd = bitcast <32 x i16> %i.jb to <64 x i8>
  %i.je = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jc, <64 x i8> %i.jd)
  %i.jf = shufflevector <64 x i8> %i.je, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jg = bitcast <64 x i8> %i.jf to <32 x i16>
  %i.jh = shl nuw nsw <32 x i16> %i.jg, splat (i16 6)
  %i.ji = add nsw <32 x i16> %i.iv, splat (i16 -2)
  %i.jj = select <64 x i1> %i.hp, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jk = bitcast <32 x i16> %i.ji to <64 x i8>
  %i.jl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jj, <64 x i8> %i.jk)
  %i.jm = shufflevector <64 x i8> %i.jl, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jn = bitcast <64 x i8> %i.jm to <32 x i16>
  %i.jo = shl <32 x i16> %i.jn, splat (i16 12)
  %i.jp = bitcast <64 x i8> %i.iz to <16 x i32>
  %i.jq = bitcast <32 x i16> %i.jh to <16 x i32>
  %i.jr = bitcast <32 x i16> %i.jo to <16 x i32>
  %i.js = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jp, <16 x i32> %i.jq, <16 x i32> %i.jr, i32 254) ; 2 uses
  %i.jt = and i64 %i.hq, %i.gq
  %i.ju = shl i64 %i.jt, 2
  %i.jv = tail call noundef i64 @llvm.pext.i64(i64 %i.ju, i64 %i.ir)
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = bitcast <16 x i32> %i.js to <32 x i16>  ; 2 uses
  %i.jy = icmp ult <32 x i16> %i.jx, splat (i16 2048)
  %i.jz = bitcast i32 %i.jw to <32 x i1>
  %i.ka = bitcast <16 x i32> %i.js to <32 x i16>
  %i.kb = and <32 x i16> %i.ka, splat (i16 -2048)
  %i.kc = icmp eq <32 x i16> %i.kb, splat (i16 -10240)
  %i.kd = or <32 x i1> %i.jy, %i.kc
  %i.ke = and <32 x i1> %i.kd, %i.jz
  %i.kf = bitcast <32 x i1> %i.ke to i32
  %.not245.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not245.i.i, label %bb.y, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.y:                                             ; preds = %bb.x
  %i.kg = and i64 %i.ir, %i.gq
  %i.kh = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kg) ; 2 uses
  %i.ki = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kh) ; 2 uses
  %i.kj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kh, i1 false)
  %i.kk = sub nuw nsw i64 64, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.kk
  %notmask246.i.i = shl nsw i64 -1, %i.ki
  %i.km = trunc i64 %notmask246.i.i to i32
  %i.kn = xor i32 %i.km, -1
  %i.ko = bitcast i32 %i.kn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.jx, ptr align 1 %.0394411.i, <32 x i1> %i.ko)
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.ki
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.kq = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.hz, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.kr = bitcast <64 x i1> %i.kq to i64          ; 3 uses
  %i.ks = or i64 %i.if, %i.ih
  %i.kt = or i64 %i.ks, %i.kr
  %i.ku = or i64 %i.gv, %i.ho                     ; 2 uses
  %i.kv = or i64 %i.ku, %i.kr
  %i.kw = bitcast i64 %i.kv to <64 x i1>
  %i.kx = shufflevector <64 x i1> %i.kw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ky = or <64 x i1> %i.kq, %i.kx
  %i.kz = bitcast <64 x i1> %i.ky to i64
  %i.la = add i64 %i.d, -1
  %i.lb = shl nuw nsw i64 1, %i.la
  %i.lc = or i64 %i.lb, %i.kz                     ; 4 uses
  %i.ld = bitcast i64 %i.lc to <64 x i1>
  %i.le = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ld)
  %i.lf = shufflevector <64 x i8> %i.le, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lg = zext <32 x i8> %i.lf to <32 x i16>      ; 3 uses
  %i.lh = bitcast i64 %i.id to <64 x i1>          ; 2 uses
  %.inner18 = select <64 x i1> %i.lh, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner19 = and <64 x i8> %.inner18, %i.gs      ; 3 uses
  %i.li = bitcast <32 x i16> %i.lg to <64 x i8>
  %i.lj = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner19, <64 x i8> %i.li)
  %i.lk = shufflevector <64 x i8> %i.lj, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ll = shufflevector <64 x i1> %i.lh, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lm = add nsw <32 x i16> %i.lg, splat (i16 -1)
  %i.ln = select <64 x i1> %i.ll, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.lo = bitcast <32 x i16> %i.lm to <64 x i8>
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ln, <64 x i8> %i.lo)
  %i.lq = shufflevector <64 x i8> %i.lp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lr = bitcast <64 x i8> %i.lq to <32 x i16>
  %i.ls = shl nuw nsw <32 x i16> %i.lr, splat (i16 6)
  %i.lt = add nsw <32 x i16> %i.lg, splat (i16 -2)
  %i.lu = select <64 x i1> %i.hp, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.lv = bitcast <32 x i16> %i.lt to <64 x i8>
  %i.lw = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.lu, <64 x i8> %i.lv)
  %i.lx = shufflevector <64 x i8> %i.lw, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ly = bitcast <64 x i8> %i.lx to <32 x i16>
  %i.lz = shl <32 x i16> %i.ly, splat (i16 12)
  %i.ma = bitcast <64 x i8> %i.lk to <16 x i32>
  %i.mb = bitcast <32 x i16> %i.ls to <16 x i32>
  %i.mc = bitcast <32 x i16> %i.lz to <16 x i32>
  %i.md = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ma, <16 x i32> %i.mb, <16 x i32> %i.mc, i32 254)
  %i.me = tail call noundef i64 @llvm.pext.i64(i64 %i.kr, i64 %i.lc) ; 2 uses
  %i.mf = trunc i64 %i.me to i32
  %i.mg = lshr i64 %i.me, 1                       ; 2 uses
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = bitcast i32 %i.mf to <32 x i1>
  %i.mj = select <32 x i1> %i.mi, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.mk = bitcast <16 x i32> %i.md to <32 x i16>  ; 2 uses
  %i.ml = lshr <32 x i16> %i.mk, splat (i16 4)
  %i.mm = or <32 x i16> %i.mj, %i.mk
  %i.mn = add nuw nsw <32 x i16> %i.ml, splat (i16 -10304)
  %i.mo = bitcast i32 %i.mh to <32 x i1>          ; 2 uses
  %i.mp = select <32 x i1> %i.mo, <32 x i16> %i.mn, <32 x i16> %i.mm ; 3 uses
  %i.mq = and i64 %i.mg, 2147483648
  %i.mr = xor i64 %i.mq, 4294967295
  %i.ms = and i64 %i.lc, %i.gq
  %i.mt = tail call noundef i64 @llvm.pdep.i64(i64 %i.mr, i64 %i.ms) ; 2 uses
  %i.mu = xor i64 %i.ku, %i.gq
  %.not241.i.i = icmp eq i64 %i.kt, %i.mu
  br i1 %.not241.i.i, label %bb.aa, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.aa:                                            ; preds = %bb.z
  %i.mv = xor i64 %i.ia, %i.gq
  %i.mw = and i64 %i.mv, %i.hq
  %i.mx = shl i64 %i.mw, 2
  %i.my = tail call noundef i64 @llvm.pext.i64(i64 %i.mx, i64 %i.lc)
  %i.mz = trunc i64 %i.my to i32
  %i.na = icmp ult <32 x i16> %i.mp, splat (i16 2048)
  %i.nb = bitcast i32 %i.mz to <32 x i1>
  %i.nc = add <32 x i16> %i.mp, splat (i16 10240) ; 2 uses
  %i.nd = icmp ult <32 x i16> %i.nc, splat (i16 2048)
  %i.ne = icmp ugt <32 x i16> %i.nc, splat (i16 1023)
  %i.nf = and <32 x i1> %i.ne, %i.mo
  %i.ng = or <32 x i1> %i.na, %i.nd
  %i.nh = and <32 x i1> %i.ng, %i.nb
  %i.ni = or <32 x i1> %i.nf, %i.nh
  %i.nj = bitcast <32 x i1> %i.ni to i32
  %.not.i = icmp eq i32 %i.nj, 0
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.nk = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mt, i1 false)
  %i.nl = sub nuw nsw i64 64, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.nl
  %i.nn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.mt) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.nn
  %i.no = trunc i64 %notmask243.i.i to i32
  %i.np = xor i32 %i.no, -1
  %i.nq = bitcast i32 %i.np to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mp, ptr align 1 %.0394411.i, <32 x i1> %i.nq)
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.nn
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
  %i.of = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.oe
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
  %i.or = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.oq) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.or
  %i.os = trunc i64 %notmask240.i.i to i32
  %i.ot = xor i32 %i.os, -1
  %i.ou = bitcast i32 %i.ot to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.op, ptr align 1 %.0394411.i, <32 x i1> %i.ou)
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.or
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0394411.i.be = phi ptr [ %i.u, %bb.c ], [ %i.he, %bb.r ], [ %i.nr, %bb.ab ], [ %i.cr, %bb.i ], [ %i.kp, %bb.y ], [ %i.hm, %bb.s ], [ %i.ov, %bb.ad ], [ %i.fp, %bb.l ], [ %i.go, %bb.n ]
  %.0396410.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gy, %bb.r ], [ %i.nm, %bb.ab ], [ %i.cn, %bb.i ], [ %i.kl, %bb.y ], [ %i.gy, %bb.s ], [ %i.of, %bb.ad ], [ %i.fk, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !255

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0394411.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
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
  %.0438455.i = phi ptr [ %3, %bb.a ], [ %.0438455.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 21 uses
  %.0440454.i = phi ptr [ %1, %bb.a ], [ %.0440454.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 12 uses
  %i.c = ptrtoint ptr %.0440454.i to i64
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0440454.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  %i.q = bitcast <32 x i16> %i.p to <64 x i8>
  %i.r = shufflevector <64 x i8> %i.q, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.r, ptr %.0438455.i, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.0438455.i, i64 64
  %i.t = bitcast <8 x i64> %i.f to <64 x i8>
  %i.u = shufflevector <64 x i8> %i.t, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.v = zext <32 x i8> %i.u to <32 x i16>
  %i.w = bitcast <32 x i16> %i.v to <64 x i8>
  %i.x = shufflevector <64 x i8> %i.w, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.x, ptr %i.s, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0438455.i, i64 128
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
  %.not453.i = icmp eq i64 %i.aw, -1
  br i1 %.not453.i, label %bb.h, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

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
  %i.cr = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.cq
  %i.cs = bitcast <16 x i32> %i.ca to <64 x i8>
  %i.ct = shufflevector <64 x i8> %i.cs, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.co
  %i.cu = trunc i64 %notmask233.i.i to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = bitcast <64 x i8> %i.ct to <32 x i16>
  %i.cx = bitcast i32 %i.cv to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cw, ptr align 1 %.0438455.i, <32 x i1> %i.cx)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.co
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
  %.not451.i = icmp eq i64 %i.ez, -1
  br i1 %.not451.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

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
  %.not452.i = icmp eq i32 %i.fo, 0
  br i1 %.not452.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 false)
  %i.fq = sub nuw nsw i64 64, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.fq
  %i.fs = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ey) ; 2 uses
  %i.ft = bitcast <32 x i16> %i.ev to <64 x i8>
  %i.fu = shufflevector <64 x i8> %i.ft, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fs
  %i.fv = trunc i64 %notmask230.i.i to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = bitcast <64 x i8> %i.fu to <32 x i16>
  %i.fy = bitcast i32 %i.fw to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fx, ptr align 1 %.0438455.i, <32 x i1> %i.fy)
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.fs
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
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %spec.select.v.i
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
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gz, ptr align 1 %.0438455.i, <32 x i1> %i.ha)
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.gw
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.hc = icmp ult ptr %.0440454.i, %i.a
  br i1 %i.hc, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.hd = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.he = bitcast i64 %i.hd to <64 x i1>          ; 3 uses
  %i.hf = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0440454.i, <64 x i1> %i.he, <64 x i8> zeroinitializer) ; 11 uses
  %i.hg = icmp sgt <64 x i8> %i.hf, splat (i8 -1)
  %i.hh = and <64 x i1> %i.hg, %i.he              ; 3 uses
  %i.hi = bitcast <64 x i1> %i.hh to i64          ; 3 uses
  %i.hj = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hh, <64 x i1> %i.he)
  %i.hk = and i32 %i.hj, 255
  %.not.i9.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hl = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.d ; 2 uses
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
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hs, ptr align 1 %.0438455.i, <32 x i1> %i.ht)
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hq, ptr %.0438455.i, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.0438455.i, i64 64
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
  %i.if = getelementptr [2 x i8], ptr %.0438455.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ig = icmp ugt <64 x i8> %i.hf, splat (i8 -65) ; 5 uses
  %i.ih = bitcast <64 x i1> %i.ig to i64          ; 3 uses
  %i.ii = icmp ugt <64 x i8> %i.hf, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.ij = bitcast <64 x i1> %i.ii to i64          ; 2 uses
  %i.ik = and <64 x i8> %i.hf, splat (i8 -2)
  %i.il = icmp eq <64 x i8> %i.ik, splat (i8 -64) ; 2 uses
  %i.im = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.il, <64 x i1> %i.il)
  %i.in = and i32 %i.im, 255
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ip = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ii, <64 x i1> %i.ii)
  %i.iq = and i32 %i.ip, 255
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.is = icmp ugt <64 x i8> %i.hf, splat (i8 -17) ; 2 uses
  %i.it = bitcast <64 x i1> %i.is to i64          ; 2 uses
  %i.iu = xor <64 x i1> %i.hh, splat (i1 true)
  %i.iv = bitcast <64 x i1> %i.iu to i64
  %i.iw = and i64 %i.iv, %i.hd                    ; 2 uses
  %i.ix = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ig, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.iy = bitcast <64 x i1> %i.ix to i64          ; 2 uses
  %i.iz = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.ii, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ja = bitcast <64 x i1> %i.iz to i64          ; 2 uses
  %i.jb = icmp eq i64 %i.it, 0
  br i1 %i.jb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.jc = or i64 %i.iy, %i.ja
  %i.jd = or i64 %i.hi, %i.ih                     ; 2 uses
  %i.je = xor i64 %i.jd, %i.hd
  %.not256.i.i = icmp eq i64 %i.jc, %i.je
  br i1 %.not256.i.i, label %bb.x, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.x:                                             ; preds = %bb.w
  %i.jf = bitcast i64 %i.jd to <64 x i1>
  %i.jg = shufflevector <64 x i1> %i.jf, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jh = bitcast <64 x i1> %i.jg to i64
  %i.ji = add i64 %i.d, -1
  %i.jj = shl nuw nsw i64 1, %i.ji
  %i.jk = or i64 %i.jj, %i.jh                     ; 3 uses
  %i.jl = bitcast i64 %i.jk to <64 x i1>
  %i.jm = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.jl)
  %i.jn = shufflevector <64 x i8> %i.jm, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jo = zext <32 x i8> %i.jn to <32 x i16>      ; 3 uses
  %i.jp = bitcast i64 %i.iw to <64 x i1>          ; 2 uses
  %.inner15 = select <64 x i1> %i.jp, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner16 = and <64 x i8> %.inner15, %i.hf      ; 3 uses
  %i.jq = bitcast <32 x i16> %i.jo to <64 x i8>
  %i.jr = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner16, <64 x i8> %i.jq)
  %i.js = shufflevector <64 x i8> %i.jr, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jt = shufflevector <64 x i1> %i.jp, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ju = add nsw <32 x i16> %i.jo, splat (i16 -1)
  %i.jv = select <64 x i1> %i.jt, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jw = bitcast <32 x i16> %i.ju to <64 x i8>
  %i.jx = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jv, <64 x i8> %i.jw)
  %i.jy = shufflevector <64 x i8> %i.jx, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jz = bitcast <64 x i8> %i.jy to <32 x i16>
  %i.ka = shl nuw nsw <32 x i16> %i.jz, splat (i16 6)
  %i.kb = add nsw <32 x i16> %i.jo, splat (i16 -2)
  %i.kc = select <64 x i1> %i.ii, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.kd = bitcast <32 x i16> %i.kb to <64 x i8>
  %i.ke = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.kc, <64 x i8> %i.kd)
  %i.kf = shufflevector <64 x i8> %i.ke, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.kg = bitcast <64 x i8> %i.kf to <32 x i16>
  %i.kh = shl <32 x i16> %i.kg, splat (i16 12)
  %i.ki = bitcast <64 x i8> %i.js to <16 x i32>
  %i.kj = bitcast <32 x i16> %i.ka to <16 x i32>
  %i.kk = bitcast <32 x i16> %i.kh to <16 x i32>
  %i.kl = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ki, <16 x i32> %i.kj, <16 x i32> %i.kk, i32 254) ; 3 uses
  %i.km = and i64 %i.ij, %i.hd
  %i.kn = shl i64 %i.km, 2
  %i.ko = tail call noundef i64 @llvm.pext.i64(i64 %i.kn, i64 %i.jk)
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = bitcast <16 x i32> %i.kl to <32 x i16>
  %i.kr = icmp ult <32 x i16> %i.kq, splat (i16 2048)
  %i.ks = bitcast i32 %i.kp to <32 x i1>
  %i.kt = bitcast <16 x i32> %i.kl to <32 x i16>
  %i.ku = and <32 x i16> %i.kt, splat (i16 -2048)
  %i.kv = icmp eq <32 x i16> %i.ku, splat (i16 -10240)
  %i.kw = or <32 x i1> %i.kr, %i.kv
  %i.kx = and <32 x i1> %i.kw, %i.ks
  %i.ky = bitcast <32 x i1> %i.kx to i32
  %.not257.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not257.i.i, label %bb.y, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.y:                                             ; preds = %bb.x
  %i.kz = and i64 %i.jk, %i.hd
  %i.la = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kz) ; 2 uses
  %i.lb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.la) ; 2 uses
  %i.lc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.la, i1 false)
  %i.ld = sub nuw nsw i64 64, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.ld
  %i.lf = bitcast <16 x i32> %i.kl to <64 x i8>
  %i.lg = shufflevector <64 x i8> %i.lf, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask258.i.i = shl nsw i64 -1, %i.lb
  %i.lh = trunc i64 %notmask258.i.i to i32
  %i.li = xor i32 %i.lh, -1
  %i.lj = bitcast <64 x i8> %i.lg to <32 x i16>
  %i.lk = bitcast i32 %i.li to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.lj, ptr align 1 %.0438455.i, <32 x i1> %i.lk)
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.lb
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.lm = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.is, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.ln = bitcast <64 x i1> %i.lm to i64          ; 3 uses
  %i.lo = or i64 %i.iy, %i.ja
  %i.lp = or i64 %i.lo, %i.ln
  %i.lq = or i64 %i.hi, %i.ih                     ; 2 uses
  %i.lr = or i64 %i.lq, %i.ln
  %i.ls = bitcast i64 %i.lr to <64 x i1>
  %i.lt = shufflevector <64 x i1> %i.ls, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lu = or <64 x i1> %i.lm, %i.lt
  %i.lv = bitcast <64 x i1> %i.lu to i64
  %i.lw = add i64 %i.d, -1
  %i.lx = shl nuw nsw i64 1, %i.lw
  %i.ly = or i64 %i.lx, %i.lv                     ; 4 uses
  %i.lz = bitcast i64 %i.ly to <64 x i1>
  %i.ma = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.lz)
  %i.mb = shufflevector <64 x i8> %i.ma, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mc = zext <32 x i8> %i.mb to <32 x i16>      ; 3 uses
  %i.md = bitcast i64 %i.iw to <64 x i1>          ; 2 uses
  %.inner18 = select <64 x i1> %i.md, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner19 = and <64 x i8> %.inner18, %i.hf      ; 3 uses
  %i.me = bitcast <32 x i16> %i.mc to <64 x i8>
  %i.mf = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner19, <64 x i8> %i.me)
  %i.mg = shufflevector <64 x i8> %i.mf, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mh = shufflevector <64 x i1> %i.md, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.mi = add nsw <32 x i16> %i.mc, splat (i16 -1)
  %i.mj = select <64 x i1> %i.mh, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.mk = bitcast <32 x i16> %i.mi to <64 x i8>
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mj, <64 x i8> %i.mk)
  %i.mm = shufflevector <64 x i8> %i.ml, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mn = bitcast <64 x i8> %i.mm to <32 x i16>
  %i.mo = shl nuw nsw <32 x i16> %i.mn, splat (i16 6)
  %i.mp = add nsw <32 x i16> %i.mc, splat (i16 -2)
  %i.mq = select <64 x i1> %i.ii, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.mr = bitcast <32 x i16> %i.mp to <64 x i8>
  %i.ms = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mq, <64 x i8> %i.mr)
  %i.mt = shufflevector <64 x i8> %i.ms, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mu = bitcast <64 x i8> %i.mt to <32 x i16>
  %i.mv = shl <32 x i16> %i.mu, splat (i16 12)
  %i.mw = bitcast <64 x i8> %i.mg to <16 x i32>
  %i.mx = bitcast <32 x i16> %i.mo to <16 x i32>
  %i.my = bitcast <32 x i16> %i.mv to <16 x i32>
  %i.mz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mw, <16 x i32> %i.mx, <16 x i32> %i.my, i32 254)
  %i.na = tail call noundef i64 @llvm.pext.i64(i64 %i.ln, i64 %i.ly) ; 2 uses
  %i.nb = trunc i64 %i.na to i32
  %i.nc = lshr i64 %i.na, 1                       ; 2 uses
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = bitcast i32 %i.nb to <32 x i1>
  %i.nf = select <32 x i1> %i.ne, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.ng = bitcast <16 x i32> %i.mz to <32 x i16>  ; 2 uses
  %i.nh = lshr <32 x i16> %i.ng, splat (i16 4)
  %i.ni = or <32 x i16> %i.nf, %i.ng
  %i.nj = add nuw nsw <32 x i16> %i.nh, splat (i16 -10304)
  %i.nk = bitcast i32 %i.nd to <32 x i1>          ; 2 uses
  %i.nl = select <32 x i1> %i.nk, <32 x i16> %i.nj, <32 x i16> %i.ni ; 3 uses
  %i.nm = and i64 %i.nc, 2147483648
  %i.nn = xor i64 %i.nm, 4294967295
  %i.no = and i64 %i.ly, %i.hd
  %i.np = tail call noundef i64 @llvm.pdep.i64(i64 %i.nn, i64 %i.no) ; 2 uses
  %i.nq = xor i64 %i.lq, %i.hd
  %.not253.i.i = icmp eq i64 %i.lp, %i.nq
  br i1 %.not253.i.i, label %bb.aa, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.aa:                                            ; preds = %bb.z
  %i.nr = xor i64 %i.it, %i.hd
  %i.ns = and i64 %i.nr, %i.ij
  %i.nt = shl i64 %i.ns, 2
  %i.nu = tail call noundef i64 @llvm.pext.i64(i64 %i.nt, i64 %i.ly)
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = icmp ult <32 x i16> %i.nl, splat (i16 2048)
  %i.nx = bitcast i32 %i.nv to <32 x i1>
  %i.ny = add <32 x i16> %i.nl, splat (i16 10240) ; 2 uses
  %i.nz = icmp ult <32 x i16> %i.ny, splat (i16 2048)
  %i.oa = icmp ugt <32 x i16> %i.ny, splat (i16 1023)
  %i.ob = and <32 x i1> %i.oa, %i.nk
  %i.oc = or <32 x i1> %i.nw, %i.nz
  %i.od = and <32 x i1> %i.oc, %i.nx
  %i.oe = or <32 x i1> %i.ob, %i.od
  %i.of = bitcast <32 x i1> %i.oe to i32
  %.not.i = icmp eq i32 %i.of, 0
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.og = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.np, i1 false)
  %i.oh = sub nuw nsw i64 64, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.oh
  %i.oj = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.np) ; 2 uses
  %i.ok = bitcast <32 x i16> %i.nl to <64 x i8>
  %i.ol = shufflevector <64 x i8> %i.ok, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.oj
  %i.om = trunc i64 %notmask255.i.i to i32
  %i.on = xor i32 %i.om, -1
  %i.oo = bitcast <64 x i8> %i.ol to <32 x i16>
  %i.op = bitcast i32 %i.on to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oo, ptr align 1 %.0438455.i, <32 x i1> %i.op)
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.oj
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
  %i.pe = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.pd
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
  %i.ps = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.pr) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.ps
  %i.pt = trunc i64 %notmask252.i.i to i32
  %i.pu = xor i32 %i.pt, -1
  %i.pv = bitcast <64 x i8> %i.pq to <32 x i16>
  %i.pw = bitcast i32 %i.pu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pv, ptr align 1 %.0438455.i, <32 x i1> %i.pw)
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.ps
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0438455.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hu, %bb.r ], [ %i.oq, %bb.ab ], [ %i.cy, %bb.i ], [ %i.ll, %bb.y ], [ %i.if, %bb.s ], [ %i.px, %bb.ad ], [ %i.fz, %bb.l ], [ %i.hb, %bb.n ]
  %.0440454.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hl, %bb.r ], [ %i.oi, %bb.ab ], [ %i.cr, %bb.i ], [ %i.le, %bb.y ], [ %i.hl, %bb.s ], [ %i.pe, %bb.ad ], [ %i.fr, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !256

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0438455.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
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
  %.0448.i = phi ptr [ %3, %bb.a ], [ %.0448.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 22 uses
  %.0432447.i = phi ptr [ %1, %bb.a ], [ %.0432447.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge ] ; 13 uses
  %i.c = ptrtoint ptr %.0432447.i to i64          ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0432447.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  store <32 x i16> %i.p, ptr %.0448.i, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0448.i, i64 64
  %i.r = bitcast <8 x i64> %i.f to <64 x i8>
  %i.s = shufflevector <64 x i8> %i.r, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.t = zext <32 x i8> %i.s to <32 x i16>
  store <32 x i16> %i.t, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.0448.i, i64 128
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
  %.not444.i = icmp eq i64 %i.as, -1
  br i1 %.not444.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.at = bitcast i64 %i.ar to <64 x i1>
  %i.au = shufflevector <64 x i1> %i.at, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.av = bitcast <64 x i1> %i.au to i64          ; 2 uses
  %i.aw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.au)
  %i.ax = shufflevector <64 x i8> %i.aw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ay = zext <32 x i8> %i.ax to <32 x i16>      ; 3 uses
  %.inner26 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.az = bitcast <32 x i16> %i.ay to <64 x i8>
  %i.ba = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bb = and <64 x i8> %.inner26, %i.ba          ; 3 uses
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
  %i.cn = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.cm
  %notmask223.i.i = shl nsw i64 -1, %i.ck
  %i.co = trunc i64 %notmask223.i.i to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = bitcast i32 %i.cp to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ca, ptr align 1 %.0448.i, <32 x i1> %i.cq)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.ck
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
  %.inner28 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.df = bitcast <32 x i16> %i.de to <64 x i8>
  %i.dg = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dh = and <64 x i8> %.inner28, %i.dg          ; 3 uses
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
  %.not442.i = icmp eq i64 %i.es, -1
  br i1 %.not442.i, label %bb.k, label %.critedge.i

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
  %.not443.i = icmp eq i32 %i.fh, 0
  br i1 %.not443.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fi = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.er, i1 false)
  %i.fj = sub nuw nsw i64 64, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.fj
  %i.fl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.er) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fl
  %i.fm = trunc i64 %notmask220.i.i to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = bitcast i32 %i.fn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.eo, ptr align 1 %.0448.i, <32 x i1> %i.fo)
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.fl
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
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %spec.select.v.i
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
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gh, ptr align 1 %.0448.i, <32 x i1> %i.gn)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.gk
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gp = icmp ult ptr %.0432447.i, %i.a
  br i1 %i.gp, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.gq = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.gr = bitcast i64 %i.gq to <64 x i1>          ; 3 uses
  %i.gs = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0432447.i, <64 x i1> %i.gr, <64 x i8> zeroinitializer) ; 11 uses
  %i.gt = icmp sgt <64 x i8> %i.gs, splat (i8 -1)
  %i.gu = and <64 x i1> %i.gt, %i.gr              ; 3 uses
  %i.gv = bitcast <64 x i1> %i.gu to i64          ; 3 uses
  %i.gw = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gu, <64 x i1> %i.gr)
  %i.gx = and i32 %i.gw, 255
  %.not.i42.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.d ; 2 uses
  %i.gz = icmp ult i64 %i.d, 33
  %i.ha = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hb = zext <32 x i8> %i.ha to <32 x i16>      ; 2 uses
  br i1 %i.gz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hc = trunc i64 %i.gq to i32
  %i.hd = bitcast i32 %i.hc to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hb, ptr align 1 %.0448.i, <32 x i1> %i.hd)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.hb, ptr %.0448.i, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0448.i, i64 64
  %i.hg = shufflevector <64 x i8> %i.gs, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hh = zext <32 x i8> %i.hg to <32 x i16>
  %i.hi = trunc i64 %i.d to i32
  %i.hj = add i32 %i.hi, -32
  %notmask247.i.i = shl nsw i32 -1, %i.hj
  %i.hk = xor i32 %notmask247.i.i, -1
  %i.hl = bitcast i32 %i.hk to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hh, ptr nonnull align 1 %i.hf, <32 x i1> %i.hl)
  %i.hm = getelementptr [2 x i8], ptr %.0448.i, i64 %i.d
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
  %i.hz = icmp ugt <64 x i8> %i.gs, splat (i8 -17) ; 2 uses
  %i.ia = bitcast <64 x i1> %i.hz to i64          ; 2 uses
  %i.ib = xor <64 x i1> %i.gu, splat (i1 true)
  %i.ic = bitcast <64 x i1> %i.ib to i64
  %i.id = and i64 %i.ic, %i.gq                    ; 2 uses
  %i.ie = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hn, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.if = bitcast <64 x i1> %i.ie to i64          ; 2 uses
  %i.ig = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.hp, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ih = bitcast <64 x i1> %i.ig to i64          ; 2 uses
  %i.ii = icmp eq i64 %i.ia, 0
  br i1 %i.ii, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ij = or i64 %i.if, %i.ih
  %i.ik = or i64 %i.gv, %i.ho                     ; 2 uses
  %i.il = xor i64 %i.ik, %i.gq
  %.not244.i.i = icmp eq i64 %i.ij, %i.il
  br i1 %.not244.i.i, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.im = bitcast i64 %i.ik to <64 x i1>
  %i.in = shufflevector <64 x i1> %i.im, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.io = bitcast <64 x i1> %i.in to i64
  %i.ip = add i64 %i.d, -1
  %i.iq = shl nuw nsw i64 1, %i.ip
  %i.ir = or i64 %i.iq, %i.io                     ; 3 uses
  %i.is = bitcast i64 %i.ir to <64 x i1>
  %i.it = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.is)
  %i.iu = shufflevector <64 x i8> %i.it, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.iv = zext <32 x i8> %i.iu to <32 x i16>      ; 3 uses
  %i.iw = bitcast i64 %i.id to <64 x i1>          ; 2 uses
  %.inner31 = select <64 x i1> %i.iw, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner32 = and <64 x i8> %.inner31, %i.gs      ; 3 uses
  %i.ix = bitcast <32 x i16> %i.iv to <64 x i8>
  %i.iy = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner32, <64 x i8> %i.ix)
  %i.iz = shufflevector <64 x i8> %i.iy, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ja = shufflevector <64 x i1> %i.iw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jb = add nsw <32 x i16> %i.iv, splat (i16 -1)
  %i.jc = select <64 x i1> %i.ja, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.jd = bitcast <32 x i16> %i.jb to <64 x i8>
  %i.je = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jc, <64 x i8> %i.jd)
  %i.jf = shufflevector <64 x i8> %i.je, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jg = bitcast <64 x i8> %i.jf to <32 x i16>
  %i.jh = shl nuw nsw <32 x i16> %i.jg, splat (i16 6)
  %i.ji = add nsw <32 x i16> %i.iv, splat (i16 -2)
  %i.jj = select <64 x i1> %i.hp, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.jk = bitcast <32 x i16> %i.ji to <64 x i8>
  %i.jl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jj, <64 x i8> %i.jk)
  %i.jm = shufflevector <64 x i8> %i.jl, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jn = bitcast <64 x i8> %i.jm to <32 x i16>
  %i.jo = shl <32 x i16> %i.jn, splat (i16 12)
  %i.jp = bitcast <64 x i8> %i.iz to <16 x i32>
  %i.jq = bitcast <32 x i16> %i.jh to <16 x i32>
  %i.jr = bitcast <32 x i16> %i.jo to <16 x i32>
  %i.js = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jp, <16 x i32> %i.jq, <16 x i32> %i.jr, i32 254) ; 2 uses
  %i.jt = and i64 %i.hq, %i.gq
  %i.ju = shl i64 %i.jt, 2
  %i.jv = tail call noundef i64 @llvm.pext.i64(i64 %i.ju, i64 %i.ir)
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = bitcast <16 x i32> %i.js to <32 x i16>  ; 2 uses
  %i.jy = icmp ult <32 x i16> %i.jx, splat (i16 2048)
  %i.jz = bitcast i32 %i.jw to <32 x i1>
  %i.ka = bitcast <16 x i32> %i.js to <32 x i16>
  %i.kb = and <32 x i16> %i.ka, splat (i16 -2048)
  %i.kc = icmp eq <32 x i16> %i.kb, splat (i16 -10240)
  %i.kd = or <32 x i1> %i.jy, %i.kc
  %i.ke = and <32 x i1> %i.kd, %i.jz
  %i.kf = bitcast <32 x i1> %i.ke to i32
  %.not245.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not245.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.kg = and i64 %i.ir, %i.gq
  %i.kh = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kg) ; 2 uses
  %i.ki = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kh) ; 2 uses
  %i.kj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kh, i1 false)
  %i.kk = sub nuw nsw i64 64, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.kk
  %notmask246.i.i = shl nsw i64 -1, %i.ki
  %i.km = trunc i64 %notmask246.i.i to i32
  %i.kn = xor i32 %i.km, -1
  %i.ko = bitcast i32 %i.kn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.jx, ptr align 1 %.0448.i, <32 x i1> %i.ko)
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.ki
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.kq = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.hz, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.kr = bitcast <64 x i1> %i.kq to i64          ; 3 uses
  %i.ks = or i64 %i.if, %i.ih
  %i.kt = or i64 %i.ks, %i.kr
  %i.ku = or i64 %i.gv, %i.ho                     ; 2 uses
  %i.kv = or i64 %i.ku, %i.kr
  %i.kw = bitcast i64 %i.kv to <64 x i1>
  %i.kx = shufflevector <64 x i1> %i.kw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ky = or <64 x i1> %i.kq, %i.kx
  %i.kz = bitcast <64 x i1> %i.ky to i64
  %i.la = add i64 %i.d, -1
  %i.lb = shl nuw nsw i64 1, %i.la
  %i.lc = or i64 %i.lb, %i.kz                     ; 4 uses
  %i.ld = bitcast i64 %i.lc to <64 x i1>
  %i.le = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ld)
  %i.lf = shufflevector <64 x i8> %i.le, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lg = zext <32 x i8> %i.lf to <32 x i16>      ; 3 uses
  %i.lh = bitcast i64 %i.id to <64 x i1>          ; 2 uses
  %.inner34 = select <64 x i1> %i.lh, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner35 = and <64 x i8> %.inner34, %i.gs      ; 3 uses
  %i.li = bitcast <32 x i16> %i.lg to <64 x i8>
  %i.lj = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner35, <64 x i8> %i.li)
  %i.lk = shufflevector <64 x i8> %i.lj, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ll = shufflevector <64 x i1> %i.lh, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lm = add nsw <32 x i16> %i.lg, splat (i16 -1)
  %i.ln = select <64 x i1> %i.ll, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.lo = bitcast <32 x i16> %i.lm to <64 x i8>
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ln, <64 x i8> %i.lo)
  %i.lq = shufflevector <64 x i8> %i.lp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lr = bitcast <64 x i8> %i.lq to <32 x i16>
  %i.ls = shl nuw nsw <32 x i16> %i.lr, splat (i16 6)
  %i.lt = add nsw <32 x i16> %i.lg, splat (i16 -2)
  %i.lu = select <64 x i1> %i.hp, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.lv = bitcast <32 x i16> %i.lt to <64 x i8>
  %i.lw = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.lu, <64 x i8> %i.lv)
  %i.lx = shufflevector <64 x i8> %i.lw, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ly = bitcast <64 x i8> %i.lx to <32 x i16>
  %i.lz = shl <32 x i16> %i.ly, splat (i16 12)
  %i.ma = bitcast <64 x i8> %i.lk to <16 x i32>
  %i.mb = bitcast <32 x i16> %i.ls to <16 x i32>
  %i.mc = bitcast <32 x i16> %i.lz to <16 x i32>
  %i.md = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ma, <16 x i32> %i.mb, <16 x i32> %i.mc, i32 254)
  %i.me = tail call noundef i64 @llvm.pext.i64(i64 %i.kr, i64 %i.lc) ; 2 uses
  %i.mf = trunc i64 %i.me to i32
  %i.mg = lshr i64 %i.me, 1                       ; 2 uses
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = bitcast i32 %i.mf to <32 x i1>
  %i.mj = select <32 x i1> %i.mi, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.mk = bitcast <16 x i32> %i.md to <32 x i16>  ; 2 uses
  %i.ml = lshr <32 x i16> %i.mk, splat (i16 4)
  %i.mm = or <32 x i16> %i.mj, %i.mk
  %i.mn = add nuw nsw <32 x i16> %i.ml, splat (i16 -10304)
  %i.mo = bitcast i32 %i.mh to <32 x i1>          ; 2 uses
  %i.mp = select <32 x i1> %i.mo, <32 x i16> %i.mn, <32 x i16> %i.mm ; 3 uses
  %i.mq = and i64 %i.mg, 2147483648
  %i.mr = xor i64 %i.mq, 4294967295
  %i.ms = and i64 %i.lc, %i.gq
  %i.mt = tail call noundef i64 @llvm.pdep.i64(i64 %i.mr, i64 %i.ms) ; 2 uses
  %i.mu = xor i64 %i.ku, %i.gq
  %.not241.i.i = icmp eq i64 %i.kt, %i.mu
  br i1 %.not241.i.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.mv = xor i64 %i.ia, %i.gq
  %i.mw = and i64 %i.mv, %i.hq
  %i.mx = shl i64 %i.mw, 2
  %i.my = tail call noundef i64 @llvm.pext.i64(i64 %i.mx, i64 %i.lc)
  %i.mz = trunc i64 %i.my to i32
  %i.na = icmp ult <32 x i16> %i.mp, splat (i16 2048)
  %i.nb = bitcast i32 %i.mz to <32 x i1>
  %i.nc = add <32 x i16> %i.mp, splat (i16 10240) ; 2 uses
  %i.nd = icmp ult <32 x i16> %i.nc, splat (i16 2048)
  %i.ne = icmp ugt <32 x i16> %i.nc, splat (i16 1023)
  %i.nf = and <32 x i1> %i.ne, %i.mo
  %i.ng = or <32 x i1> %i.na, %i.nd
  %i.nh = and <32 x i1> %i.ng, %i.nb
  %i.ni = or <32 x i1> %i.nf, %i.nh
  %i.nj = bitcast <32 x i1> %i.ni to i32
  %.not.i = icmp eq i32 %i.nj, 0
  br i1 %.not.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.nk = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mt, i1 false)
  %i.nl = sub nuw nsw i64 64, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.nl
  %i.nn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.mt) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.nn
  %i.no = trunc i64 %notmask243.i.i to i32
  %i.np = xor i32 %i.no, -1
  %i.nq = bitcast i32 %i.np to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mp, ptr align 1 %.0448.i, <32 x i1> %i.nq)
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.nn
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ns = or i64 %i.gv, %i.ho
  %i.nt = and i64 %i.ns, %i.gq                    ; 3 uses
  %i.nu = xor i64 %i.nt, %i.gq
  %i.nv = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hn, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.nw = bitcast <64 x i1> %i.nv to i64
  %.not239.i.i = icmp eq i64 %i.nu, %i.nw
  br i1 %.not239.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.nx = add <64 x i8> %i.gs, splat (i8 62)
  %i.ny = select <64 x i1> %i.hn, <64 x i8> %i.nx, <64 x i8> zeroinitializer
  %i.nz = xor <64 x i1> %i.hn, splat (i1 true)
  %i.oa = bitcast <64 x i1> %i.nz to i64
  %i.ob = and i64 %i.oa, %i.gq                    ; 2 uses
  %i.oc = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ob)
  %i.od = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.oc, i1 false)
  %i.oe = sub nuw nsw i64 64, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.oe
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
  %i.or = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.oq) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.or
  %i.os = trunc i64 %notmask240.i.i to i32
  %i.ot = xor i32 %i.os, -1
  %i.ou = bitcast i32 %i.ot to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.op, ptr align 1 %.0448.i, <32 x i1> %i.ou)
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.or
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0448.i.be = phi ptr [ %i.u, %bb.c ], [ %i.he, %bb.r ], [ %i.nr, %bb.ab ], [ %i.cr, %bb.i ], [ %i.kp, %bb.y ], [ %i.hm, %bb.s ], [ %i.ov, %bb.ad ], [ %i.fp, %bb.l ], [ %i.go, %bb.n ]
  %.0432447.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gy, %bb.r ], [ %i.nm, %bb.ab ], [ %i.cn, %bb.i ], [ %i.kl, %bb.y ], [ %i.gy, %bb.s ], [ %i.of, %bb.ad ], [ %i.fk, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !257

.critedge.i:                                      ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.ow = ptrtoint ptr %1 to i64
  %i.ox = sub i64 %i.c, %i.ow                     ; 6 uses
  %i.oy = icmp ult i64 %i.ox, %2
  br i1 %i.oy, label %bb.ae, label %.critedge40.i

bb.ae:                                            ; preds = %.critedge.i
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ox ; 4 uses
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = icmp slt i8 %i.pa, -64
  %i.pc = icmp ugt i64 %i.ox, 63
  %or.cond.i = and i1 %i.pc, %i.pb
  br i1 %or.cond.i, label %bb.af, label %.critedge40.i

bb.af:                                            ; preds = %bb.ae
  %i.pd = getelementptr i8, ptr %i.oz, i64 -1
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = icmp sgt i8 %i.pe, -65
  %i.pg = getelementptr i8, ptr %i.oz, i64 -2
  %i.ph = load i8, ptr %i.pg, align 1
  %i.pi = icmp sgt i8 %i.ph, -65
  %i.pj = getelementptr i8, ptr %i.oz, i64 -3
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = icmp sgt i8 %i.pk, -65
  %or.cond3.not38.i = select i1 %i.pf, i1 true, i1 %i.pi
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.pl
  br i1 %or.cond5.not.i, label %.critedge40.i, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

.critedge40.i:                                    ; preds = %bb.af, %bb.ae, %.critedge.i
  %i.pm = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs(i64 noundef %i.ox, ptr noundef %.0432447.i, i64 noundef %i.d, ptr noundef %.0448.i) ; 2 uses
  %i.pn = extractvalue { i32, i64 } %i.pm, 0
  %i.po = extractvalue { i32, i64 } %i.pm, 1
  %i.pp = add i64 %i.po, %i.ox
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.ag:                                            ; preds = %bb.o
  %i.pq = ptrtoint ptr %.0448.i to i64
  %i.pr = ptrtoint ptr %3 to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = ashr exact i64 %i.ps, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %.critedge40.i, %bb.ag
  %.sroa.4.0.i = phi i64 [ %i.pt, %bb.ag ], [ %i.pp, %.critedge40.i ], [ %i.ox, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.ag ], [ %i.pn, %.critedge40.i ], [ 3, %bb.af ]
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
  %.0492.i = phi ptr [ %3, %bb.a ], [ %.0492.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 22 uses
  %.0476491.i = phi ptr [ %1, %bb.a ], [ %.0476491.i.be, %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge ] ; 13 uses
  %i.c = ptrtoint ptr %.0476491.i to i64          ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = icmp sgt i64 %i.d, 63
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.f = load <8 x i64>, ptr %.0476491.i, align 1 ; 6 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 7 uses
  %i.h = icmp sgt <64 x i8> %i.g, splat (i8 -1)   ; 5 uses
  %i.i = bitcast <64 x i1> %i.h to i64            ; 3 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.h, <64 x i1> splat (i1 true))
  %i.k = and i32 %i.j, 255
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = extractelement <64 x i8> %i.g, i64 32
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 64
  %i.n = bitcast <8 x i64> %i.f to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  %i.q = bitcast <32 x i16> %i.p to <64 x i8>
  %i.r = shufflevector <64 x i8> %i.q, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.r, ptr %.0492.i, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.0492.i, i64 64
  %i.t = bitcast <8 x i64> %i.f to <64 x i8>
  %i.u = shufflevector <64 x i8> %i.t, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.v = zext <32 x i8> %i.u to <32 x i16>
  %i.w = bitcast <32 x i16> %i.v to <64 x i8>
  %i.x = shufflevector <64 x i8> %i.w, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %i.x, ptr %i.s, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0492.i, i64 128
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
  %.not488.i = icmp eq i64 %i.aw, -1
  br i1 %.not488.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ax = bitcast i64 %i.av to <64 x i1>
  %i.ay = shufflevector <64 x i1> %i.ax, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.az = bitcast <64 x i1> %i.ay to i64          ; 2 uses
  %i.ba = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ay)
  %i.bb = shufflevector <64 x i8> %i.ba, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bc = zext <32 x i8> %i.bb to <32 x i16>      ; 3 uses
  %.inner26 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.bd = bitcast <32 x i16> %i.bc to <64 x i8>
  %i.be = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bf = and <64 x i8> %.inner26, %i.be          ; 3 uses
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
  %i.cr = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.cq
  %i.cs = bitcast <16 x i32> %i.ca to <64 x i8>
  %i.ct = shufflevector <64 x i8> %i.cs, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.co
  %i.cu = trunc i64 %notmask233.i.i to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = bitcast <64 x i8> %i.ct to <32 x i16>
  %i.cx = bitcast i32 %i.cv to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cw, ptr align 1 %.0492.i, <32 x i1> %i.cx)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.co
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
  %.inner28 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dm = bitcast <32 x i16> %i.dl to <64 x i8>
  %i.dn = bitcast <8 x i64> %i.f to <64 x i8>
  %i.do = and <64 x i8> %.inner28, %i.dn          ; 3 uses
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
  %.not486.i = icmp eq i64 %i.ez, -1
  br i1 %.not486.i, label %bb.k, label %.critedge.i

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
  %.not487.i = icmp eq i32 %i.fo, 0
  br i1 %.not487.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 false)
  %i.fq = sub nuw nsw i64 64, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.fq
  %i.fs = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ey) ; 2 uses
  %i.ft = bitcast <32 x i16> %i.ev to <64 x i8>
  %i.fu = shufflevector <64 x i8> %i.ft, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fs
  %i.fv = trunc i64 %notmask230.i.i to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = bitcast <64 x i8> %i.fu to <32 x i16>
  %i.fy = bitcast i32 %i.fw to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fx, ptr align 1 %.0492.i, <32 x i1> %i.fy)
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.fs
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
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %spec.select.v.i
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
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gz, ptr align 1 %.0492.i, <32 x i1> %i.ha)
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.gw
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.hc = icmp ult ptr %.0476491.i, %i.a
  br i1 %i.hc, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.hd = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.he = bitcast i64 %i.hd to <64 x i1>          ; 3 uses
  %i.hf = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0476491.i, <64 x i1> %i.he, <64 x i8> zeroinitializer) ; 11 uses
  %i.hg = icmp sgt <64 x i8> %i.hf, splat (i8 -1)
  %i.hh = and <64 x i1> %i.hg, %i.he              ; 3 uses
  %i.hi = bitcast <64 x i1> %i.hh to i64          ; 3 uses
  %i.hj = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hh, <64 x i1> %i.he)
  %i.hk = and i32 %i.hj, 255
  %.not.i42.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hl = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.d ; 2 uses
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
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hs, ptr align 1 %.0492.i, <32 x i1> %i.ht)
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hq, ptr %.0492.i, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.0492.i, i64 64
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
  %i.if = getelementptr [2 x i8], ptr %.0492.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ig = icmp ugt <64 x i8> %i.hf, splat (i8 -65) ; 5 uses
  %i.ih = bitcast <64 x i1> %i.ig to i64          ; 3 uses
  %i.ii = icmp ugt <64 x i8> %i.hf, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.ij = bitcast <64 x i1> %i.ii to i64          ; 2 uses
  %i.ik = and <64 x i8> %i.hf, splat (i8 -2)
  %i.il = icmp eq <64 x i8> %i.ik, splat (i8 -64) ; 2 uses
  %i.im = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.il, <64 x i1> %i.il)
  %i.in = and i32 %i.im, 255
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ip = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ii, <64 x i1> %i.ii)
  %i.iq = and i32 %i.ip, 255
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.is = icmp ugt <64 x i8> %i.hf, splat (i8 -17) ; 2 uses
  %i.it = bitcast <64 x i1> %i.is to i64          ; 2 uses
  %i.iu = xor <64 x i1> %i.hh, splat (i1 true)
  %i.iv = bitcast <64 x i1> %i.iu to i64
  %i.iw = and i64 %i.iv, %i.hd                    ; 2 uses
  %i.ix = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ig, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.iy = bitcast <64 x i1> %i.ix to i64          ; 2 uses
  %i.iz = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.ii, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ja = bitcast <64 x i1> %i.iz to i64          ; 2 uses
  %i.jb = icmp eq i64 %i.it, 0
  br i1 %i.jb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.jc = or i64 %i.iy, %i.ja
  %i.jd = or i64 %i.hi, %i.ih                     ; 2 uses
  %i.je = xor i64 %i.jd, %i.hd
  %.not256.i.i = icmp eq i64 %i.jc, %i.je
  br i1 %.not256.i.i, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.jf = bitcast i64 %i.jd to <64 x i1>
  %i.jg = shufflevector <64 x i1> %i.jf, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jh = bitcast <64 x i1> %i.jg to i64
  %i.ji = add i64 %i.d, -1
  %i.jj = shl nuw nsw i64 1, %i.ji
  %i.jk = or i64 %i.jj, %i.jh                     ; 3 uses
  %i.jl = bitcast i64 %i.jk to <64 x i1>
  %i.jm = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.jl)
  %i.jn = shufflevector <64 x i8> %i.jm, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jo = zext <32 x i8> %i.jn to <32 x i16>      ; 3 uses
  %i.jp = bitcast i64 %i.iw to <64 x i1>          ; 2 uses
  %.inner31 = select <64 x i1> %i.jp, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner32 = and <64 x i8> %.inner31, %i.hf      ; 3 uses
  %i.jq = bitcast <32 x i16> %i.jo to <64 x i8>
  %i.jr = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner32, <64 x i8> %i.jq)
  %i.js = shufflevector <64 x i8> %i.jr, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jt = shufflevector <64 x i1> %i.jp, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ju = add nsw <32 x i16> %i.jo, splat (i16 -1)
  %i.jv = select <64 x i1> %i.jt, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.jw = bitcast <32 x i16> %i.ju to <64 x i8>
  %i.jx = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jv, <64 x i8> %i.jw)
  %i.jy = shufflevector <64 x i8> %i.jx, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jz = bitcast <64 x i8> %i.jy to <32 x i16>
  %i.ka = shl nuw nsw <32 x i16> %i.jz, splat (i16 6)
  %i.kb = add nsw <32 x i16> %i.jo, splat (i16 -2)
  %i.kc = select <64 x i1> %i.ii, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.kd = bitcast <32 x i16> %i.kb to <64 x i8>
  %i.ke = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.kc, <64 x i8> %i.kd)
  %i.kf = shufflevector <64 x i8> %i.ke, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.kg = bitcast <64 x i8> %i.kf to <32 x i16>
  %i.kh = shl <32 x i16> %i.kg, splat (i16 12)
  %i.ki = bitcast <64 x i8> %i.js to <16 x i32>
  %i.kj = bitcast <32 x i16> %i.ka to <16 x i32>
  %i.kk = bitcast <32 x i16> %i.kh to <16 x i32>
  %i.kl = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ki, <16 x i32> %i.kj, <16 x i32> %i.kk, i32 254) ; 3 uses
  %i.km = and i64 %i.ij, %i.hd
  %i.kn = shl i64 %i.km, 2
  %i.ko = tail call noundef i64 @llvm.pext.i64(i64 %i.kn, i64 %i.jk)
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = bitcast <16 x i32> %i.kl to <32 x i16>
  %i.kr = icmp ult <32 x i16> %i.kq, splat (i16 2048)
  %i.ks = bitcast i32 %i.kp to <32 x i1>
  %i.kt = bitcast <16 x i32> %i.kl to <32 x i16>
  %i.ku = and <32 x i16> %i.kt, splat (i16 -2048)
  %i.kv = icmp eq <32 x i16> %i.ku, splat (i16 -10240)
  %i.kw = or <32 x i1> %i.kr, %i.kv
  %i.kx = and <32 x i1> %i.kw, %i.ks
  %i.ky = bitcast <32 x i1> %i.kx to i32
  %.not257.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not257.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.kz = and i64 %i.jk, %i.hd
  %i.la = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kz) ; 2 uses
  %i.lb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.la) ; 2 uses
  %i.lc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.la, i1 false)
  %i.ld = sub nuw nsw i64 64, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.ld
  %i.lf = bitcast <16 x i32> %i.kl to <64 x i8>
  %i.lg = shufflevector <64 x i8> %i.lf, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask258.i.i = shl nsw i64 -1, %i.lb
  %i.lh = trunc i64 %notmask258.i.i to i32
  %i.li = xor i32 %i.lh, -1
  %i.lj = bitcast <64 x i8> %i.lg to <32 x i16>
  %i.lk = bitcast i32 %i.li to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.lj, ptr align 1 %.0492.i, <32 x i1> %i.lk)
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.lb
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.lm = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.is, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.ln = bitcast <64 x i1> %i.lm to i64          ; 3 uses
  %i.lo = or i64 %i.iy, %i.ja
  %i.lp = or i64 %i.lo, %i.ln
  %i.lq = or i64 %i.hi, %i.ih                     ; 2 uses
  %i.lr = or i64 %i.lq, %i.ln
  %i.ls = bitcast i64 %i.lr to <64 x i1>
  %i.lt = shufflevector <64 x i1> %i.ls, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lu = or <64 x i1> %i.lm, %i.lt
  %i.lv = bitcast <64 x i1> %i.lu to i64
  %i.lw = add i64 %i.d, -1
  %i.lx = shl nuw nsw i64 1, %i.lw
  %i.ly = or i64 %i.lx, %i.lv                     ; 4 uses
  %i.lz = bitcast i64 %i.ly to <64 x i1>
  %i.ma = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.lz)
  %i.mb = shufflevector <64 x i8> %i.ma, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mc = zext <32 x i8> %i.mb to <32 x i16>      ; 3 uses
  %i.md = bitcast i64 %i.iw to <64 x i1>          ; 2 uses
  %.inner34 = select <64 x i1> %i.md, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner35 = and <64 x i8> %.inner34, %i.hf      ; 3 uses
  %i.me = bitcast <32 x i16> %i.mc to <64 x i8>
  %i.mf = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner35, <64 x i8> %i.me)
  %i.mg = shufflevector <64 x i8> %i.mf, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mh = shufflevector <64 x i1> %i.md, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.mi = add nsw <32 x i16> %i.mc, splat (i16 -1)
  %i.mj = select <64 x i1> %i.mh, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.mk = bitcast <32 x i16> %i.mi to <64 x i8>
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mj, <64 x i8> %i.mk)
  %i.mm = shufflevector <64 x i8> %i.ml, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mn = bitcast <64 x i8> %i.mm to <32 x i16>
  %i.mo = shl nuw nsw <32 x i16> %i.mn, splat (i16 6)
  %i.mp = add nsw <32 x i16> %i.mc, splat (i16 -2)
  %i.mq = select <64 x i1> %i.ii, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.mr = bitcast <32 x i16> %i.mp to <64 x i8>
  %i.ms = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mq, <64 x i8> %i.mr)
  %i.mt = shufflevector <64 x i8> %i.ms, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mu = bitcast <64 x i8> %i.mt to <32 x i16>
  %i.mv = shl <32 x i16> %i.mu, splat (i16 12)
  %i.mw = bitcast <64 x i8> %i.mg to <16 x i32>
  %i.mx = bitcast <32 x i16> %i.mo to <16 x i32>
  %i.my = bitcast <32 x i16> %i.mv to <16 x i32>
  %i.mz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mw, <16 x i32> %i.mx, <16 x i32> %i.my, i32 254)
  %i.na = tail call noundef i64 @llvm.pext.i64(i64 %i.ln, i64 %i.ly) ; 2 uses
  %i.nb = trunc i64 %i.na to i32
  %i.nc = lshr i64 %i.na, 1                       ; 2 uses
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = bitcast i32 %i.nb to <32 x i1>
  %i.nf = select <32 x i1> %i.ne, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.ng = bitcast <16 x i32> %i.mz to <32 x i16>  ; 2 uses
  %i.nh = lshr <32 x i16> %i.ng, splat (i16 4)
  %i.ni = or <32 x i16> %i.nf, %i.ng
  %i.nj = add nuw nsw <32 x i16> %i.nh, splat (i16 -10304)
  %i.nk = bitcast i32 %i.nd to <32 x i1>          ; 2 uses
  %i.nl = select <32 x i1> %i.nk, <32 x i16> %i.nj, <32 x i16> %i.ni ; 3 uses
  %i.nm = and i64 %i.nc, 2147483648
  %i.nn = xor i64 %i.nm, 4294967295
  %i.no = and i64 %i.ly, %i.hd
  %i.np = tail call noundef i64 @llvm.pdep.i64(i64 %i.nn, i64 %i.no) ; 2 uses
  %i.nq = xor i64 %i.lq, %i.hd
  %.not253.i.i = icmp eq i64 %i.lp, %i.nq
  br i1 %.not253.i.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.nr = xor i64 %i.it, %i.hd
  %i.ns = and i64 %i.nr, %i.ij
  %i.nt = shl i64 %i.ns, 2
  %i.nu = tail call noundef i64 @llvm.pext.i64(i64 %i.nt, i64 %i.ly)
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = icmp ult <32 x i16> %i.nl, splat (i16 2048)
  %i.nx = bitcast i32 %i.nv to <32 x i1>
  %i.ny = add <32 x i16> %i.nl, splat (i16 10240) ; 2 uses
  %i.nz = icmp ult <32 x i16> %i.ny, splat (i16 2048)
  %i.oa = icmp ugt <32 x i16> %i.ny, splat (i16 1023)
  %i.ob = and <32 x i1> %i.oa, %i.nk
  %i.oc = or <32 x i1> %i.nw, %i.nz
  %i.od = and <32 x i1> %i.oc, %i.nx
  %i.oe = or <32 x i1> %i.ob, %i.od
  %i.of = bitcast <32 x i1> %i.oe to i32
  %.not.i = icmp eq i32 %i.of, 0
  br i1 %.not.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.og = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.np, i1 false)
  %i.oh = sub nuw nsw i64 64, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.oh
  %i.oj = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.np) ; 2 uses
  %i.ok = bitcast <32 x i16> %i.nl to <64 x i8>
  %i.ol = shufflevector <64 x i8> %i.ok, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.oj
  %i.om = trunc i64 %notmask255.i.i to i32
  %i.on = xor i32 %i.om, -1
  %i.oo = bitcast <64 x i8> %i.ol to <32 x i16>
  %i.op = bitcast i32 %i.on to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oo, ptr align 1 %.0492.i, <32 x i1> %i.op)
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.oj
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.or = or i64 %i.hi, %i.ih
  %i.os = and i64 %i.or, %i.hd                    ; 3 uses
  %i.ot = xor i64 %i.os, %i.hd
  %i.ou = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ig, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.ov = bitcast <64 x i1> %i.ou to i64
  %.not251.i.i = icmp eq i64 %i.ot, %i.ov
  br i1 %.not251.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.ow = add <64 x i8> %i.hf, splat (i8 62)
  %i.ox = select <64 x i1> %i.ig, <64 x i8> %i.ow, <64 x i8> zeroinitializer
  %i.oy = xor <64 x i1> %i.ig, splat (i1 true)
  %i.oz = bitcast <64 x i1> %i.oy to i64
  %i.pa = and i64 %i.oz, %i.hd                    ; 2 uses
  %i.pb = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.pa)
  %i.pc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pb, i1 false)
  %i.pd = sub nuw nsw i64 64, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.pd
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
  %i.ps = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.pr) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.ps
  %i.pt = trunc i64 %notmask252.i.i to i32
  %i.pu = xor i32 %i.pt, -1
  %i.pv = bitcast <64 x i8> %i.pq to <32 x i16>
  %i.pw = bitcast i32 %i.pu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pv, ptr align 1 %.0492.i, <32 x i1> %i.pw)
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.ps
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0492.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hu, %bb.r ], [ %i.oq, %bb.ab ], [ %i.cy, %bb.i ], [ %i.ll, %bb.y ], [ %i.if, %bb.s ], [ %i.px, %bb.ad ], [ %i.fz, %bb.l ], [ %i.hb, %bb.n ]
  %.0476491.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hl, %bb.r ], [ %i.oi, %bb.ab ], [ %i.cr, %bb.i ], [ %i.le, %bb.y ], [ %i.hl, %bb.s ], [ %i.pe, %bb.ad ], [ %i.fr, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !258

.critedge.i:                                      ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.py = ptrtoint ptr %1 to i64
  %i.pz = sub i64 %i.c, %i.py                     ; 6 uses
  %i.qa = icmp ult i64 %i.pz, %2
  br i1 %i.qa, label %bb.ae, label %.critedge40.i

bb.ae:                                            ; preds = %.critedge.i
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 %i.pz ; 4 uses
  %i.qc = load i8, ptr %i.qb, align 1
  %i.qd = icmp slt i8 %i.qc, -64
  %i.qe = icmp ugt i64 %i.pz, 63
  %or.cond.i = and i1 %i.qe, %i.qd
  br i1 %or.cond.i, label %bb.af, label %.critedge40.i

bb.af:                                            ; preds = %bb.ae
  %i.qf = getelementptr i8, ptr %i.qb, i64 -1
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = icmp sgt i8 %i.qg, -65
  %i.qi = getelementptr i8, ptr %i.qb, i64 -2
  %i.qj = load i8, ptr %i.qi, align 1
  %i.qk = icmp sgt i8 %i.qj, -65
  %i.ql = getelementptr i8, ptr %i.qb, i64 -3
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = icmp sgt i8 %i.qm, -65
  %or.cond3.not38.i = select i1 %i.qh, i1 true, i1 %i.qk
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.qn
  br i1 %or.cond5.not.i, label %.critedge40.i, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

.critedge40.i:                                    ; preds = %bb.af, %bb.ae, %.critedge.i
  %i.qo = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs(i64 noundef %i.pz, ptr noundef %.0476491.i, i64 noundef %i.d, ptr noundef %.0492.i) ; 2 uses
  %i.qp = extractvalue { i32, i64 } %i.qo, 0
  %i.qq = extractvalue { i32, i64 } %i.qo, 1
  %i.qr = add i64 %i.qq, %i.pz
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.ag:                                            ; preds = %bb.o
  %i.qs = ptrtoint ptr %.0492.i to i64
  %i.qt = ptrtoint ptr %3 to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = ashr exact i64 %i.qu, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %.critedge40.i, %bb.ag
  %.sroa.4.0.i = phi i64 [ %i.qv, %bb.ag ], [ %i.qr, %.critedge40.i ], [ %i.pz, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.ag ], [ %i.qp, %.critedge40.i ], [ 3, %bb.af ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZNK7simdutf7icelake14implementation29convert_valid_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp sgt i64 %2, 67
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.t
  %.0976996.i = phi ptr [ %.1977.i, %bb.t ], [ %1, %bb.a ] ; 3 uses
  %.0979995.i = phi ptr [ %.1980.i, %bb.t ], [ %3, %bb.a ] ; 10 uses
  %i.d = load <8 x i64>, ptr %.0976996.i, align 1 ; 7 uses
  %i.e = bitcast <8 x i64> %i.d to <16 x i32>
  %i.f = bitcast <8 x i64> %i.d to <64 x i8>
  %i.g = icmp slt <64 x i8> %i.f, zeroinitializer
  %i.h = bitcast <64 x i1> %i.g to i64
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = bitcast <8 x i64> %i.d to <64 x i8>
  %i.k = shufflevector <64 x i8> %i.j, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.l = zext <32 x i8> %i.k to <32 x i16>
  store <32 x i16> %i.l, ptr %.0979995.i, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.0979995.i, i64 64
  %i.n = bitcast <8 x i64> %i.d to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  store <32 x i16> %i.p, ptr %i.m, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0979995.i, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %.0976996.i, i64 64
  br label %bb.t, !llvm.loop !259

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = bitcast <8 x i64> %i.d to <64 x i8>
  %i.t = shufflevector <64 x i8> %i.s, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 4, i32 2, i32 3, i32 4, i32 5, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5, i32 6, i32 7, i32 5, i32 6, i32 7, i32 8, i32 6, i32 7, i32 8, i32 9, i32 7, i32 8, i32 9, i32 10, i32 8, i32 9, i32 10, i32 11, i32 9, i32 10, i32 11, i32 12, i32 10, i32 11, i32 12, i32 13, i32 11, i32 12, i32 13, i32 14, i32 12, i32 13, i32 14, i32 15, i32 13, i32 14, i32 15, i32 16, i32 14, i32 15, i32 16, i32 17, i32 15, i32 16, i32 17, i32 18> ; 2 uses
  %i.u = bitcast <64 x i8> %i.t to <16 x i32>
  %i.v = bitcast <64 x i8> %i.t to <16 x i32>
  %i.w = and <16 x i32> %i.v, splat (i32 192)
  %i.x = icmp ne <16 x i32> %i.w, splat (i32 128) ; 2 uses
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.y) ; 2 uses
  %i.aa = zext nneg i16 %i.z to i32               ; 5 uses
  %i.ab = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.u, <16 x i32> zeroinitializer, <16 x i1> %i.x) ; 3 uses
  %i.ac = bitcast <8 x i64> %i.d to <64 x i8>
  %i.ad = shufflevector <64 x i8> %i.ac, <64 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 17, i32 18, i32 19, i32 20, i32 18, i32 19, i32 20, i32 21, i32 19, i32 20, i32 21, i32 22, i32 20, i32 21, i32 22, i32 23, i32 21, i32 22, i32 23, i32 24, i32 22, i32 23, i32 24, i32 25, i32 23, i32 24, i32 25, i32 26, i32 24, i32 25, i32 26, i32 27, i32 25, i32 26, i32 27, i32 28, i32 26, i32 27, i32 28, i32 29, i32 27, i32 28, i32 29, i32 30, i32 28, i32 29, i32 30, i32 31, i32 29, i32 30, i32 31, i32 32, i32 30, i32 31, i32 32, i32 33, i32 31, i32 32, i32 33, i32 34> ; 2 uses
  %i.ae = bitcast <64 x i8> %i.ad to <16 x i32>
  %i.af = bitcast <64 x i8> %i.ad to <16 x i32>
  %i.ag = and <16 x i32> %i.af, splat (i32 192)
  %i.ah = icmp ne <16 x i32> %i.ag, splat (i32 128) ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.ai) ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i32              ; 5 uses
  %i.al = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.ae, <16 x i32> zeroinitializer, <16 x i1> %i.ah) ; 3 uses
  %i.am = add nuw nsw i32 %i.aa, %i.ak            ; 5 uses
  %i.an = icmp samesign ult i32 %i.am, 17
  br i1 %i.an, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %notmask86.i = shl nsw i32 -1, %i.ak
  %i.ao = xor i32 %notmask86.i, -1
  %i.ap = shl nuw i32 %i.ao, %i.aa
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = bitcast i16 %i.aq to <16 x i1>
  %i.as = tail call <16 x i32> @llvm.x86.avx512.mask.expand.v16i32(<16 x i32> %i.al, <16 x i32> %i.ab, <16 x i1> %i.ar) ; 2 uses
  %i.at = lshr <16 x i32> %i.as, splat (i32 4)
  %i.au = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.at, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.av = bitcast <16 x i32> %i.as to <64 x i8>
  %i.aw = and <64 x i8> %i.av, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.ax = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.aw, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ax, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.az = bitcast <16 x i32> %i.au to <64 x i8>   ; 2 uses
  %i.ba = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.az)
  %i.bb = bitcast <64 x i8> %i.ba to <16 x i32>
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.ay, <16 x i32> %i.bb)
  %i.bd = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.az)
  %i.be = bitcast <64 x i8> %i.bd to <16 x i32>
  %i.bf = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.bc, <16 x i32> %i.be) ; 4 uses
  %notmask.i129.i = shl nsw i32 -1, %i.am
  %i.bg = trunc i32 %notmask.i129.i to i16
  %i.bh = xor i16 %i.bg, -1
  %i.bi = icmp ugt <16 x i32> %i.bf, splat (i32 65535)
  %i.bj = bitcast i16 %i.bh to <16 x i1>          ; 2 uses
  %i.bk = and <16 x i1> %i.bi, %i.bj              ; 2 uses
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = trunc <16 x i32> %i.bf to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bn, ptr align 1 %.0979995.i, <16 x i1> %i.bj)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_121utf32_to_utf16_maskedILNS_10endiannessE0EEEmDv8_xS4_jPDs.exit133.i

bb.f:                                             ; preds = %bb.d
  %i.bo = add <16 x i32> %i.bf, splat (i32 -65536) ; 2 uses
  %i.bp = shl <16 x i32> %i.bo, splat (i32 6)
  %i.bq = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bp, <16 x i32> %i.bo, <16 x i32> splat (i32 -65536), i32 228)
  %i.br = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bq, <16 x i32> splat (i32 -67044352), <16 x i32> splat (i32 -671032320), i32 186)
  %i.bs = select <16 x i1> %i.bk, <16 x i32> %i.br, <16 x i32> %i.bf ; 2 uses
  %i.bt = tail call <16 x i32> @llvm.fshl.v16i32(<16 x i32> %i.bs, <16 x i32> %i.bs, <16 x i32> splat (i32 16))
  %i.bu = bitcast <16 x i32> %i.bt to <32 x i16>  ; 2 uses
  %i.bv = icmp ne <32 x i16> %i.bu, zeroinitializer
  %i.bw = bitcast <32 x i1> %i.bv to i32
  %i.bx = or i32 %i.bw, -1431655766
  %i.by = shl nuw nsw i32 %i.am, 1
  %i.bz = zext nneg i32 %i.by to i64
  %notmask29.i130.i = shl nsw i64 -1, %i.bz
  %i.ca = trunc i64 %notmask29.i130.i to i32
  %i.cb = xor i32 %i.ca, -1
  %i.cc = and i32 %i.bx, %i.cb
  %i.cd = bitcast i32 %i.cc to <32 x i1>
  %i.ce = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.bu, <32 x i16> zeroinitializer, <32 x i1> %i.cd)
  %i.cf = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %i.bl)
  %i.cg = zext nneg i16 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.am, %i.cg            ; 2 uses
  %i.ci = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ch)
  %i.cj = bitcast i32 %i.ci to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ce, ptr align 1 %.0979995.i, <32 x i1> %i.cj)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_121utf32_to_utf16_maskedILNS_10endiannessE0EEEmDv8_xS4_jPDs.exit133.i

bb.g:                                             ; preds = %bb.c
  %i.ck = lshr <16 x i32> %i.ab, splat (i32 4)
  %i.cl = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ck, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.cm = bitcast <16 x i32> %i.ab to <64 x i8>
  %i.cn = and <64 x i8> %i.cm, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.co = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.cn, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cp = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.co, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.cq = bitcast <16 x i32> %i.cl to <64 x i8>   ; 2 uses
  %i.cr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.cq)
  %i.cs = bitcast <64 x i8> %i.cr to <16 x i32>
  %i.ct = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.cp, <16 x i32> %i.cs)
  %i.cu = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.cq)
  %i.cv = bitcast <64 x i8> %i.cu to <16 x i32>
  %i.cw = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.ct, <16 x i32> %i.cv) ; 4 uses
  %i.cx = lshr <16 x i32> %i.al, splat (i32 4)
  %i.cy = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cx, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7icelake14implementation33convert_utf32_to_utf8_with_errorsEPKDimPc:bb.a
  %i.hf = add i64 %.05669.i, 2                    ; 2 uses
  %.not.i13 = icmp ugt i64 %i.hf, %i.he
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.05669.i ; 3 uses
  br i1 %.not.i13, label %.lr.ph..thread_crit_edge.i, label %bb.w

.lr.ph..thread_crit_edge.i:                       ; preds = %.lr.ph.i12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %.thread.i14

bb.w:                                             ; preds = %.lr.ph.i12
  %.0.copyload.i = load i64, ptr %.phi.trans.insert.i, align 4 ; 3 uses
  %i.hg = and i64 %.0.copyload.i, -545460846720
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = trunc i64 %.0.copyload.i to i32
  br i1 %i.hh, label %bb.x, label %.thread.i14

bb.x:                                             ; preds = %bb.w
  %i.hj = trunc i64 %.0.copyload.i to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %.070.i, i64 1
  store i8 %i.hj, ptr %.070.i, align 1
  %i.hl = getelementptr i8, ptr %.phi.trans.insert.i, i64 4
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = trunc i32 %i.hm to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %.070.i, i64 2
  store i8 %i.hn, ptr %i.hk, align 1
  br label %.backedge.i

.thread.i14:                                      ; preds = %bb.w, %.lr.ph..thread_crit_edge.i
  %i.hp = phi i32 [ %.pre.i, %.lr.ph..thread_crit_edge.i ], [ %i.hi, %bb.w ] ; 12 uses
  %i.hq = icmp ult i32 %i.hp, 128
  br i1 %i.hq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread.i14
  %i.hr = trunc nuw nsw i32 %i.hp to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.070.i, i64 1
  store i8 %i.hr, ptr %.070.i, align 1
  br label %bb.ag

bb.z:                                             ; preds = %.thread.i14
  %i.ht = icmp ult i32 %i.hp, 2048
  br i1 %i.ht, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hu = lshr i32 %i.hp, 6
  %i.hv = trunc nuw nsw i32 %i.hu to i8
  %i.hw = or disjoint i8 %i.hv, -64
  %i.hx = getelementptr inbounds nuw i8, ptr %.070.i, i64 1
  store i8 %i.hw, ptr %.070.i, align 1
  %i.hy = trunc i32 %i.hp to i8
  %i.hz = and i8 %i.hy, 63
  %i.ia = or disjoint i8 %i.hz, -128
  %i.ib = getelementptr inbounds nuw i8, ptr %.070.i, i64 2
  store i8 %i.ia, ptr %i.hx, align 1
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.ic = icmp ult i32 %i.hp, 65536
  br i1 %i.ic, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.id = and i32 %i.hp, 63488
  %or.cond.i17 = icmp eq i32 %i.id, 55296
  br i1 %or.cond.i17, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ie = lshr i32 %i.hp, 12
  %i.if = trunc nuw nsw i32 %i.ie to i8
  %i.ig = or disjoint i8 %i.if, -32
  %i.ih = getelementptr inbounds nuw i8, ptr %.070.i, i64 1
  store i8 %i.ig, ptr %.070.i, align 1
  %i.ii = lshr i32 %i.hp, 6
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = and i8 %i.ij, 63
  %i.il = or disjoint i8 %i.ik, -128
  %i.im = getelementptr inbounds nuw i8, ptr %.070.i, i64 2
  store i8 %i.il, ptr %i.ih, align 1
  %i.in = trunc i32 %i.hp to i8
  %i.io = and i8 %i.in, 63
  %i.ip = or disjoint i8 %i.io, -128
  %i.iq = getelementptr inbounds nuw i8, ptr %.070.i, i64 3
  store i8 %i.ip, ptr %i.im, align 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.ir = icmp ugt i32 %i.hp, 1114111
  br i1 %i.ir, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %.070.i, i64 4
  %i.it = insertelement <4 x i32> poison, i32 %i.hp, i64 0
  %i.iu = shufflevector <4 x i32> %i.it, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.iv = lshr <4 x i32> %i.iu, <i32 18, i32 12, i32 6, i32 0>
  %i.iw = trunc <4 x i32> %i.iv to <4 x i8>
  %i.ix = and <4 x i8> %i.iw, <i8 -1, i8 63, i8 63, i8 63>
  %i.iy = or <4 x i8> %i.ix, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.iy, ptr %.070.i, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.aa, %bb.y
  %.3.i = phi ptr [ %i.hs, %bb.y ], [ %i.ib, %bb.aa ], [ %i.iq, %bb.ad ], [ %i.is, %bb.af ]
  %.359.i = add nuw i64 %.05669.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ag, %bb.x
  %.056.be.i = phi i64 [ %.359.i, %bb.ag ], [ %i.hf, %bb.x ] ; 2 uses
  %.0.be.i = phi ptr [ %.3.i, %bb.ag ], [ %i.ho, %bb.x ] ; 2 uses
  %i.iz = icmp ult i64 %.056.be.i, %i.he
  br i1 %i.iz, label %.lr.ph.i12, label %bb.ai, !llvm.loop !180

bb.ah:                                            ; preds = %bb.ac, %bb.ae
  %.sroa.0.0.i.ph = phi i32 [ 5, %bb.ae ], [ 6, %bb.ac ]
  %i.ja = add i64 %.05669.i, %.sink.i
  br label %bb.ak

bb.ai:                                            ; preds = %.backedge.i
  %i.jb = ptrtoint ptr %.0.be.i to i64
  %i.jc = ptrtoint ptr %.2348369.lcssa391.sink.i to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %.2348369.lcssa391.sink.i, i64 %i.jd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN7simdutf7icelake12_GLOBAL__N_140avx512_convert_utf32_to_utf8_with_errorsEPKDimPc.exit
  %.sroa.8.0 = phi ptr [ %.2348369.lcssa391.sink.i, %_ZN7simdutf7icelake12_GLOBAL__N_140avx512_convert_utf32_to_utf8_with_errorsEPKDimPc.exit ], [ %i.je, %bb.ai ]
  %i.jf = ptrtoint ptr %.sroa.8.0 to i64
  %i.jg = ptrtoint ptr %3 to i64
  %i.jh = sub i64 %i.jf, %i.jg
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i.ph, %bb.ah ], [ %.sink405.i, %bb.aj ]
  %.sroa.46.0 = phi i64 [ %i.ja, %bb.ah ], [ %i.jh, %bb.aj ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.46.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation27convert_valid_utf32_to_utf8EPKDimPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7simdutf7icelake14implementation21convert_utf32_to_utf8EPKDimPc(ptr nonnull align 8 poison, ptr noundef %1, i64 noundef %2, ptr noundef %3) #47
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.c = icmp sgt i64 %2, 15
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.0312.i = phi i32 [ %.2.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0288311.i = phi ptr [ %.2289.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0290310.i = phi ptr [ %.2292.i, %bb.d ], [ %3, %bb.a ] ; 4 uses
  %i.d = load <16 x i32>, ptr %.0288311.i, align 1 ; 8 uses
  %i.e = icmp ult <16 x i32> %i.d, splat (i32 65536)
  %i.f = bitcast <16 x i1> %i.e to i16            ; 3 uses
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = and <16 x i32> %i.d, splat (i32 63488)
  %i.i = icmp eq <16 x i32> %i.h, splat (i32 55296)
  %i.j = bitcast <16 x i1> %i.i to i16
  %i.k = zext i16 %i.j to i32
  %i.l = or i32 %.0312.i, %i.k
  %i.m = trunc <16 x i32> %i.d to <16 x i16>
  store <16 x i16> %i.m, ptr %.0290310.i, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0290310.i, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = xor i16 %i.f, -1
  %i.p = and <16 x i32> %i.d, splat (i32 -2048)
  %i.q = icmp eq <16 x i32> %i.p, splat (i32 55296)
  %i.r = icmp ugt <16 x i32> %i.d, splat (i32 1114111)
  %i.s = bitcast i16 %i.o to <16 x i1>            ; 2 uses
  %i.t = and <16 x i1> %i.r, %i.s
  %i.u = or <16 x i1> %i.q, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16
  %.not113.i = icmp eq i16 %i.v, 0
  br i1 %.not113.i, label %.thread.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread, !prof !303

.thread.i:                                        ; preds = %bb.c
  %i.w = zext i16 %i.f to i32
  %i.x = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.w, i32 -1431655766)
  %i.y = xor i32 %i.x, -1                         ; 2 uses
  %i.z = add <16 x i32> %i.d, splat (i32 983040)
  %i.aa = shl <16 x i32> %i.d, splat (i32 16)
  %i.ab = and <16 x i32> %i.aa, splat (i32 67043328)
  %i.ac = lshr <16 x i32> %i.z, splat (i32 10)
  %i.ad = and <16 x i32> %i.ac, splat (i32 1023)
  %i.ae = or disjoint <16 x i32> %i.ab, splat (i32 -603924480)
  %i.af = or disjoint <16 x i32> %i.ae, %i.ad
  %i.ag = select <16 x i1> %i.s, <16 x i32> %i.af, <16 x i32> %i.d
  %i.ah = bitcast <16 x i32> %i.ag to <32 x i16>
  %i.ai = bitcast i32 %i.y to <32 x i1>
  %i.aj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ah, <32 x i16> zeroinitializer, <32 x i1> %i.ai)
  %i.ak = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.y) ; 2 uses
  %i.al = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ak)
  %i.am = bitcast i32 %i.al to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.aj, ptr align 1 %.0290310.i, <32 x i1> %i.am)
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.0290310.i, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.b
  %.2292.i = phi ptr [ %i.n, %bb.b ], [ %i.ao, %.thread.i ] ; 2 uses
  %.2.i = phi i32 [ %i.l, %bb.b ], [ %.0312.i, %.thread.i ] ; 2 uses
  %.2289.i = getelementptr inbounds nuw i8, ptr %.0288311.i, i64 64 ; 3 uses
  %i.ap = ptrtoint ptr %.2289.i to i64
  %i.aq = sub i64 %i.b, %i.ap                     ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 15
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !304

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.0290.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2292.i, %bb.d ] ; 5 uses
  %.0288.lcssa.i = phi ptr [ %1, %bb.a ], [ %.2289.i, %bb.d ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.d ] ; 3 uses
  %.lcssa305.i = phi i64 [ %.idx.i, %bb.a ], [ %i.aq, %bb.d ] ; 3 uses
  %.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.ar, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0288.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.at = trunc i64 %.lcssa.i to i32
  %notmask.i = shl nsw i32 -1, %i.at
  %i.au = trunc i32 %notmask.i to i16
  %i.av = xor i16 %i.au, -1                       ; 4 uses
  %i.aw = bitcast i16 %i.av to <16 x i1>          ; 2 uses
  %i.ax = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0288.lcssa.i, <16 x i1> %i.aw, <16 x i32> zeroinitializer) ; 8 uses
  %i.ay = icmp ult <16 x i32> %i.ax, splat (i32 65536)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, %i.av                    ; 4 uses
  %i.bb = icmp eq i16 %i.ba, %i.av
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = and <16 x i32> %i.ax, splat (i32 63488)
  %i.bd = icmp eq <16 x i32> %i.bc, splat (i32 55296)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = zext i16 %i.be to i32
  %i.bg = or i32 %.0.lcssa.i, %i.bf
  %i.bh = trunc <16 x i32> %i.ax to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bh, ptr align 1 %.0290.lcssa.i, <16 x i1> %i.aw)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i, i64 %.lcssa.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i, i64 %.lcssa305.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = xor i16 %i.ba, %i.av
  %i.bl = and <16 x i32> %i.ax, splat (i32 63488)
  %i.bm = icmp eq <16 x i32> %i.bl, splat (i32 55296)
  %i.bn = bitcast i16 %i.ba to <16 x i1>
  %i.bo = and <16 x i1> %i.bm, %i.bn
  %i.bp = icmp ugt <16 x i32> %i.ax, splat (i32 1114111)
  %i.bq = bitcast i16 %i.bk to <16 x i1>          ; 2 uses
  %i.br = and <16 x i1> %i.bp, %i.bq
  %i.bs = or <16 x i1> %i.bo, %i.br
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %.not111.i = icmp eq i16 %i.bt, 0
  br i1 %.not111.i, label %.thread299.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread, !prof !303

.thread299.i:                                     ; preds = %bb.g
  %i.bu = zext i16 %i.ba to i32
  %i.bv = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.bu, i32 -1431655766)
  %i.bw = lshr exact i64 %.lcssa305.i, 1
  %i.bx = trunc i64 %i.bw to i32
  %notmask110.i = shl nsw i32 -1, %i.bx
  %.demorgan.i = or i32 %i.bv, %notmask110.i
  %i.by = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.bz = add <16 x i32> %i.ax, splat (i32 983040)
  %i.ca = shl <16 x i32> %i.ax, splat (i32 16)
  %i.cb = and <16 x i32> %i.ca, splat (i32 67043328)
  %i.cc = lshr <16 x i32> %i.bz, splat (i32 10)
  %i.cd = and <16 x i32> %i.cc, splat (i32 1023)
  %i.ce = or disjoint <16 x i32> %i.cb, splat (i32 -603924480)
  %i.cf = or disjoint <16 x i32> %i.ce, %i.cd
  %i.cg = select <16 x i1> %i.bq, <16 x i32> %i.cf, <16 x i32> %i.ax
  %i.ch = bitcast <16 x i32> %i.cg to <32 x i16>
  %i.ci = bitcast i32 %i.by to <32 x i1>
  %i.cj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ch, <32 x i16> zeroinitializer, <32 x i1> %i.ci)
  %i.ck = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.by) ; 2 uses
  %i.cl = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ck)
  %i.cm = bitcast i32 %i.cl to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cj, ptr align 1 %.0290.lcssa.i, <32 x i1> %i.cm)
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i, i64 %.lcssa305.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit: ; preds = %._crit_edge.i, %bb.f, %.thread299.i
  %.4294.i = phi ptr [ %.0290.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.f ], [ %i.co, %.thread299.i ]
  %.4.i = phi ptr [ %i.a, %._crit_edge.i ], [ %i.bj, %bb.f ], [ %i.cp, %.thread299.i ]
  %.5.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bg, %bb.f ], [ %.0.lcssa.i, %.thread299.i ]
  %.not112.i = icmp ne i32 %.5.i, 0
  %i.cq = icmp eq ptr %.4.i, null
  %i.cr = select i1 %.not112.i, i1 true, i1 %i.cq
  %i.cs = ptrtoint ptr %.4294.i to i64
  %i.ct = ptrtoint ptr %3 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 1
  %cond.fr = freeze i1 %i.cr
  br i1 %cond.fr, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread, label %bb.h

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread
  %i.cw = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread ], [ %i.cv, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit ]
  ret i64 %i.cw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.c = icmp sgt i64 %2, 15
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.0332.i = phi i32 [ %.2.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0308331.i = phi ptr [ %.2309.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0310330.i = phi ptr [ %.2312.i, %bb.d ], [ %3, %bb.a ] ; 4 uses
  %i.d = load <16 x i32>, ptr %.0308331.i, align 1 ; 8 uses
  %i.e = icmp ult <16 x i32> %i.d, splat (i32 65536)
  %i.f = bitcast <16 x i1> %i.e to i16            ; 3 uses
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = and <16 x i32> %i.d, splat (i32 63488)
  %i.i = icmp eq <16 x i32> %i.h, splat (i32 55296)
  %i.j = bitcast <16 x i1> %i.i to i16
  %i.k = zext i16 %i.j to i32
  %i.l = or i32 %.0332.i, %i.k
  %i.m = trunc <16 x i32> %i.d to <16 x i16>
  %i.n = bitcast <16 x i16> %i.m to <32 x i8>
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.o, ptr %.0310330.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0310330.i, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = xor i16 %i.f, -1
  %i.r = and <16 x i32> %i.d, splat (i32 -2048)
  %i.s = icmp eq <16 x i32> %i.r, splat (i32 55296)
  %i.t = icmp ugt <16 x i32> %i.d, splat (i32 1114111)
  %i.u = bitcast i16 %i.q to <16 x i1>            ; 2 uses
  %i.v = and <16 x i1> %i.t, %i.u
  %i.w = or <16 x i1> %i.s, %i.v
  %i.x = bitcast <16 x i1> %i.w to i16
  %.not117.i = icmp eq i16 %i.x, 0
  br i1 %.not117.i, label %.thread.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread, !prof !303

.thread.i:                                        ; preds = %bb.c
  %i.y = zext i16 %i.f to i32
  %i.z = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.y, i32 -1431655766)
  %i.aa = xor i32 %i.z, -1                        ; 2 uses
  %i.ab = add <16 x i32> %i.d, splat (i32 983040)
  %i.ac = shl <16 x i32> %i.d, splat (i32 16)
  %i.ad = and <16 x i32> %i.ac, splat (i32 67043328)
  %i.ae = lshr <16 x i32> %i.ab, splat (i32 10)
  %i.af = and <16 x i32> %i.ae, splat (i32 1023)
  %i.ag = or disjoint <16 x i32> %i.ad, splat (i32 -603924480)
  %i.ah = or disjoint <16 x i32> %i.ag, %i.af
  %i.ai = select <16 x i1> %i.u, <16 x i32> %i.ah, <16 x i32> %i.d
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.al = bitcast <64 x i8> %i.ak to <32 x i16>
  %i.am = bitcast i32 %i.aa to <32 x i1>
  %i.an = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.al, <32 x i16> zeroinitializer, <32 x i1> %i.am)
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aa) ; 2 uses
  %i.ap = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ao)
  %i.aq = bitcast i32 %i.ap to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.an, ptr align 1 %.0310330.i, <32 x i1> %i.aq)
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.0310330.i, i64 %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.b
  %.2312.i = phi ptr [ %i.p, %bb.b ], [ %i.as, %.thread.i ] ; 2 uses
  %.2.i = phi i32 [ %i.l, %bb.b ], [ %.0332.i, %.thread.i ] ; 2 uses
  %.2309.i = getelementptr inbounds nuw i8, ptr %.0308331.i, i64 64 ; 3 uses
  %i.at = ptrtoint ptr %.2309.i to i64
  %i.au = sub i64 %i.b, %i.at                     ; 2 uses
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 15
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !305

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.0310.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2312.i, %bb.d ] ; 5 uses
  %.0308.lcssa.i = phi ptr [ %1, %bb.a ], [ %.2309.i, %bb.d ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.d ] ; 3 uses
  %.lcssa325.i = phi i64 [ %.idx.i, %bb.a ], [ %i.au, %bb.d ] ; 3 uses
  %.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.av, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0308.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ax = trunc i64 %.lcssa.i to i32
  %notmask.i = shl nsw i32 -1, %i.ax
  %i.ay = trunc i32 %notmask.i to i16
  %i.az = xor i16 %i.ay, -1                       ; 4 uses
  %i.ba = bitcast i16 %i.az to <16 x i1>          ; 2 uses
  %i.bb = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0308.lcssa.i, <16 x i1> %i.ba, <16 x i32> zeroinitializer) ; 8 uses
  %i.bc = icmp ult <16 x i32> %i.bb, splat (i32 65536)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = and i16 %i.bd, %i.az                    ; 4 uses
  %i.bf = icmp eq i16 %i.be, %i.az
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = and <16 x i32> %i.bb, splat (i32 63488)
  %i.bh = icmp eq <16 x i32> %i.bg, splat (i32 55296)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = zext i16 %i.bi to i32
  %i.bk = or i32 %.0.lcssa.i, %i.bj
  %i.bl = trunc <16 x i32> %i.bb to <16 x i16>
  %i.bm = bitcast <16 x i16> %i.bl to <32 x i8>
  %i.bn = shufflevector <32 x i8> %i.bm, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.bo = bitcast <32 x i8> %i.bn to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bo, ptr align 1 %.0310.lcssa.i, <16 x i1> %i.ba)
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i, i64 %.lcssa.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i, i64 %.lcssa325.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.br = xor i16 %i.be, %i.az
  %i.bs = and <16 x i32> %i.bb, splat (i32 63488)
  %i.bt = icmp eq <16 x i32> %i.bs, splat (i32 55296)
  %i.bu = bitcast i16 %i.be to <16 x i1>
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = icmp ugt <16 x i32> %i.bb, splat (i32 1114111)
  %i.bx = bitcast i16 %i.br to <16 x i1>          ; 2 uses
  %i.by = and <16 x i1> %i.bw, %i.bx
  %i.bz = or <16 x i1> %i.bv, %i.by
  %i.ca = bitcast <16 x i1> %i.bz to i16
  %.not115.i = icmp eq i16 %i.ca, 0
  br i1 %.not115.i, label %.thread319.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread, !prof !303

.thread319.i:                                     ; preds = %bb.g
  %i.cb = zext i16 %i.be to i32
  %i.cc = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.cb, i32 -1431655766)
  %i.cd = lshr exact i64 %.lcssa325.i, 1
  %i.ce = trunc i64 %i.cd to i32
  %notmask114.i = shl nsw i32 -1, %i.ce
  %.demorgan.i = or i32 %i.cc, %notmask114.i
  %i.cf = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.cg = add <16 x i32> %i.bb, splat (i32 983040)
  %i.ch = shl <16 x i32> %i.bb, splat (i32 16)
  %i.ci = and <16 x i32> %i.ch, splat (i32 67043328)
  %i.cj = lshr <16 x i32> %i.cg, splat (i32 10)
  %i.ck = and <16 x i32> %i.cj, splat (i32 1023)
  %i.cl = or disjoint <16 x i32> %i.ci, splat (i32 -603924480)
  %i.cm = or disjoint <16 x i32> %i.cl, %i.ck
  %i.cn = select <16 x i1> %i.bx, <16 x i32> %i.cm, <16 x i32> %i.bb
  %i.co = bitcast <16 x i32> %i.cn to <64 x i8>
  %i.cp = shufflevector <64 x i8> %i.co, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.cq = bitcast <64 x i8> %i.cp to <32 x i16>
  %i.cr = bitcast i32 %i.cf to <32 x i1>
  %i.cs = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.cq, <32 x i16> zeroinitializer, <32 x i1> %i.cr)
  %i.ct = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.cf) ; 2 uses
  %i.cu = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ct)
  %i.cv = bitcast i32 %i.cu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cs, ptr align 1 %.0310.lcssa.i, <32 x i1> %i.cv)
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i, i64 %.lcssa325.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit: ; preds = %._crit_edge.i, %bb.f, %.thread319.i
  %.4314.i = phi ptr [ %.0310.lcssa.i, %._crit_edge.i ], [ %i.bp, %bb.f ], [ %i.cx, %.thread319.i ]
  %.4.i = phi ptr [ %i.a, %._crit_edge.i ], [ %i.bq, %bb.f ], [ %i.cy, %.thread319.i ]
  %.5.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bk, %bb.f ], [ %.0.lcssa.i, %.thread319.i ]
  %.not116.i = icmp ne i32 %.5.i, 0
  %i.cz = icmp eq ptr %.4.i, null
  %i.da = select i1 %.not116.i, i1 true, i1 %i.cz
  %i.db = ptrtoint ptr %.4314.i to i64
  %i.dc = ptrtoint ptr %3 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 1
  %cond.fr = freeze i1 %i.da
  br i1 %cond.fr, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread, label %bb.h

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread
  %i.df = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread ], [ %i.de, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit ]
  ret i64 %i.df
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation36convert_utf32_to_utf16le_with_errorsEPKDimPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 5 uses
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.d = icmp sgt i64 %2, 15
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %i.e = phi i64 [ %i.bk, %.critedge.i ], [ %i.c, %bb.a ] ; 2 uses
  %.0414.i = phi ptr [ %i.bj, %.critedge.i ], [ %1, %bb.a ] ; 2 uses
  %.0154413.i = phi i32 [ %.3157.i, %.critedge.i ], [ 0, %bb.a ] ; 2 uses
  %.0158412.i = phi i32 [ %.3161.i, %.critedge.i ], [ 0, %bb.a ] ; 2 uses
  %.0387411.i = phi ptr [ %.2.i, %.critedge.i ], [ %3, %bb.a ] ; 5 uses
  %i.f = load <16 x i32>, ptr %.0414.i, align 1, !noalias !306 ; 8 uses
  %i.g = icmp ult <16 x i32> %i.f, splat (i32 65536)
  %i.h = bitcast <16 x i1> %i.g to i16            ; 3 uses
  %i.i = icmp eq i16 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = and <16 x i32> %i.f, splat (i32 63488)
  %i.k = icmp eq <16 x i32> %i.j, splat (i32 55296)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = trunc <16 x i32> %i.f to <16 x i16>      ; 2 uses
  %.not194.i = icmp eq i16 %i.l, 0
  br i1 %.not194.i, label %.thread.i, label %bb.c, !prof !303

.thread.i:                                        ; preds = %bb.b
  store <16 x i16> %i.m, ptr %.0387411.i, align 1, !noalias !306
  %i.n = getelementptr inbounds nuw i8, ptr %.0387411.i, i64 32
  br label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %i.l to i32                     ; 3 uses
  %i.p = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true)
  %i.q = add nuw nsw i32 %i.o, 131071
  %i.r = xor i32 %i.q, %i.o
  %i.s = lshr i32 %i.r, 1
  %i.t = trunc i32 %i.s to i16
  %i.u = bitcast i16 %i.t to <16 x i1>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.m, ptr align 1 %.0387411.i, <16 x i1> %i.u), !noalias !306
  %i.v = sub i64 %i.e, %i.c
  %i.w = ashr exact i64 %i.v, 2
  %i.x = zext nneg i32 %i.p to i64
  %i.y = add nsw i64 %i.w, %i.x
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = zext i16 %i.h to i32
  %i.aa = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.z, i32 -1431655766)
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  %i.ac = xor i16 %i.h, -1
  %i.ad = and <16 x i32> %i.f, splat (i32 -2048)
  %i.ae = icmp eq <16 x i32> %i.ad, splat (i32 55296)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = icmp ugt <16 x i32> %i.f, splat (i32 1114111)
  %i.ah = bitcast i16 %i.ac to <16 x i1>          ; 2 uses
  %i.ai = and <16 x i1> %i.ag, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = or i16 %i.aj, %i.af
  %.not192.not.i = icmp eq i16 %i.ak, 0           ; 2 uses
  br i1 %.not192.not.i, label %bb.f, label %bb.e, !prof !303

bb.e:                                             ; preds = %bb.d
  %i.al = zext i16 %i.aj to i32
  %i.am = zext i16 %i.af to i32
  %i.an = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 false) ; 2 uses
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.am, i1 false) ; 2 uses
  %i.ap = icmp samesign ult i32 %i.an, %i.ao
  %..i = select i1 %i.ap, i32 5, i32 6
  %.195.i = tail call i32 @llvm.umin.i32(i32 %i.an, i32 %i.ao) ; 2 uses
  %i.aq = shl nuw nsw i32 %.195.i, 1
  %notmask193.i = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask193.i, -1
  %i.as = and i32 %i.ar, %i.ab
  br label %bb.f

end_hunk_1
begin_hunk_2_@_ZNK7simdutf7icelake14implementation36convert_utf32_to_utf16be_with_errorsEPKDimPDs:bb.a
  %.0162.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3165.i, %.critedge.i ]
  %.0158.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3161.i, %.critedge.i ]
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.lcssa418.i = phi i64 [ %i.c, %bb.a ], [ %i.bp, %.critedge.i ] ; 2 uses
  %.lcssa415.i = phi i64 [ %.idx.i, %bb.a ], [ %i.bq, %.critedge.i ]
  %.lcssa412.i = phi i64 [ %2, %bb.a ], [ %i.br, %.critedge.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bt = trunc i64 %.lcssa412.i to i32
  %notmask.i = shl nsw i32 -1, %i.bt
  %i.bu = trunc i32 %notmask.i to i16
  %i.bv = xor i16 %i.bu, -1                       ; 4 uses
  %i.bw = bitcast i16 %i.bv to <16 x i1>          ; 2 uses
  %i.bx = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0.lcssa.i, <16 x i1> %i.bw, <16 x i32> zeroinitializer), !noalias !310 ; 8 uses
  %i.by = icmp ult <16 x i32> %i.bx, splat (i32 65536)
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = and i16 %i.bz, %i.bv                    ; 4 uses
  %i.cb = icmp eq i16 %i.ca, %i.bv
  br i1 %i.cb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cc = and <16 x i32> %i.bx, splat (i32 63488)
  %i.cd = icmp eq <16 x i32> %i.cc, splat (i32 55296)
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = trunc <16 x i32> %i.bx to <16 x i16>
  %i.cg = bitcast <16 x i16> %i.cf to <32 x i8>
  %i.ch = shufflevector <32 x i8> %i.cg, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30> ; 2 uses
  %.not195.i = icmp eq i16 %i.ce, 0
  br i1 %.not195.i, label %.thread410.i, label %bb.i, !prof !303

.thread410.i:                                     ; preds = %bb.h
  %i.ci = bitcast <32 x i8> %i.ch to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ci, ptr align 1 %.0407.lcssa.i, <16 x i1> %i.bw), !noalias !310
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.0407.lcssa.i, i64 %.lcssa412.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18

bb.i:                                             ; preds = %bb.h
  %i.ck = zext i16 %i.ce to i32                   ; 3 uses
  %i.cl = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ck, i1 true)
  %i.cm = add nuw nsw i32 %i.ck, 131071
  %i.cn = xor i32 %i.cm, %i.ck
  %i.co = lshr i32 %i.cn, 1
  %i.cp = trunc i32 %i.co to i16
  %i.cq = bitcast <32 x i8> %i.ch to <16 x i16>
  %i.cr = bitcast i16 %i.cp to <16 x i1>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.cq, ptr align 1 %.0407.lcssa.i, <16 x i1> %i.cr), !noalias !310
  %i.cs = sub i64 %.lcssa418.i, %i.c
  %i.ct = ashr exact i64 %i.cs, 2
  %i.cu = zext nneg i32 %i.cl to i64
  %i.cv = add nsw i64 %i.ct, %i.cu
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.cw = zext i16 %i.ca to i32
  %i.cx = lshr exact i64 %.lcssa415.i, 1
  %i.cy = trunc i64 %i.cx to i32
  %notmask192.i = shl nsw i32 -1, %i.cy
  %i.cz = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.cw, i32 -1431655766)
  %.demorgan.i = or i32 %i.cz, %notmask192.i
  %i.da = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.db = xor i16 %i.ca, %i.bv
  %i.dc = and <16 x i32> %i.bx, splat (i32 63488)
  %i.dd = icmp eq <16 x i32> %i.dc, splat (i32 55296)
  %i.de = bitcast i16 %i.ca to <16 x i1>
  %i.df = and <16 x i1> %i.dd, %i.de
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %i.dh = icmp ugt <16 x i32> %i.bx, splat (i32 1114111)
  %i.di = bitcast i16 %i.db to <16 x i1>          ; 2 uses
  %i.dj = and <16 x i1> %i.dh, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = or i16 %i.dk, %i.dg
  %.not193.not.i = icmp eq i16 %i.dl, 0           ; 2 uses
  br i1 %.not193.not.i, label %bb.l, label %bb.k, !prof !303

bb.k:                                             ; preds = %bb.j
  %i.dm = zext i16 %i.dk to i32
  %i.dn = zext i16 %i.dg to i32
  %i.do = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dm, i1 false) ; 2 uses
  %i.dp = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dn, i1 false) ; 2 uses
  %i.dq = icmp samesign ult i32 %i.do, %i.dp
  %.202.i = select i1 %i.dq, i32 5, i32 6
  %.203.i = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %i.dp) ; 2 uses
  %i.dr = shl nuw nsw i32 %.203.i, 1
  %notmask194.i = shl nsw i32 -1, %i.dr
  %i.ds = xor i32 %notmask194.i, -1
  %i.dt = and i32 %i.ds, %i.da
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0181.i = phi i32 [ %i.dt, %bb.k ], [ %i.da, %bb.j ] ; 2 uses
  %.6168.i = phi i32 [ %.202.i, %bb.k ], [ %.0162.lcssa.i, %bb.j ]
  %.6.i = phi i32 [ %.203.i, %bb.k ], [ %.0158.lcssa.i, %bb.j ]
  %i.du = add <16 x i32> %i.bx, splat (i32 983040)
  %i.dv = shl <16 x i32> %i.bx, splat (i32 16)
  %i.dw = and <16 x i32> %i.dv, splat (i32 67043328)
  %i.dx = lshr <16 x i32> %i.du, splat (i32 10)
  %i.dy = and <16 x i32> %i.dx, splat (i32 1023)
  %i.dz = or disjoint <16 x i32> %i.dw, splat (i32 -603924480)
  %i.ea = or disjoint <16 x i32> %i.dz, %i.dy
  %i.eb = select <16 x i1> %i.di, <16 x i32> %i.ea, <16 x i32> %i.bx
  %i.ec = bitcast <16 x i32> %i.eb to <64 x i8>
  %i.ed = shufflevector <64 x i8> %i.ec, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.ee = bitcast <64 x i8> %i.ed to <32 x i16>
  %i.ef = bitcast i32 %.0181.i to <32 x i1>
  %i.eg = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ee, <32 x i16> zeroinitializer, <32 x i1> %i.ef)
  %i.eh = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0181.i) ; 2 uses
  %i.ei = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.eh)
  %i.ej = bitcast i32 %i.ei to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.eg, ptr align 1 %.0407.lcssa.i, <32 x i1> %i.ej), !noalias !310
  %i.ek = zext nneg i32 %i.eh to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.0407.lcssa.i, i64 %i.ek ; 2 uses
  br i1 %.not193.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit, !prof !303

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit: ; preds = %bb.f, %bb.l
  %.lcssa57.sink = phi i64 [ %.lcssa418.i, %bb.l ], [ %i.e, %bb.f ]
  %.2160.i.lcssa.sink = phi i32 [ %.6.i, %bb.l ], [ %.2160.i, %bb.f ]
  %.sink472.i = phi i32 [ %.6168.i, %bb.l ], [ %.2164.i, %bb.f ] ; 2 uses
  %.sink.i = phi ptr [ %i.el, %bb.l ], [ %i.bn, %bb.f ]
  %i.em = sub i64 %.lcssa57.sink, %i.c
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = zext nneg i32 %.2160.i.lcssa.sink to i64
  %i.ep = add nsw i64 %i.en, %i.eo
  %.not = icmp eq i32 %.sink472.i, 0
  br i1 %.not, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18: ; preds = %.thread410.i, %bb.l, %._crit_edge.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit
  %.sink.i24 = phi ptr [ %.sink.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ %.0407.lcssa.i, %._crit_edge.i ], [ %i.cj, %.thread410.i ], [ %i.el, %bb.l ]
  %i.eq = ptrtoint ptr %.sink.i24 to i64
  %i.er = ptrtoint ptr %3 to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread: ; preds = %bb.c, %bb.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18
  %.sink472.i15 = phi i32 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18 ], [ %.sink472.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ 6, %bb.i ], [ 6, %bb.c ]
  %.sroa.36.0 = phi i64 [ %i.et, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18 ], [ %i.ep, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ %i.cv, %bb.i ], [ %i.ab, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sink472.i15, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.36.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation30convert_valid_utf32_to_utf16leEPKDimPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %.idx.i.i = shl nuw nsw i64 %2, 2
  %i.c = icmp sgt i64 %2, 15
  br i1 %i.c, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.0312.i.i = phi i32 [ %.2.i.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0288311.i.i = phi ptr [ %.2289.i.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0290310.i.i = phi ptr [ %.2292.i.i, %bb.d ], [ %3, %bb.a ] ; 4 uses
  %i.d = load <16 x i32>, ptr %.0288311.i.i, align 1 ; 8 uses
  %i.e = icmp ult <16 x i32> %i.d, splat (i32 65536)
  %i.f = bitcast <16 x i1> %i.e to i16            ; 3 uses
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = and <16 x i32> %i.d, splat (i32 63488)
  %i.i = icmp eq <16 x i32> %i.h, splat (i32 55296)
  %i.j = bitcast <16 x i1> %i.i to i16
  %i.k = zext i16 %i.j to i32
  %i.l = or i32 %.0312.i.i, %i.k
  %i.m = trunc <16 x i32> %i.d to <16 x i16>
  store <16 x i16> %i.m, ptr %.0290310.i.i, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0290310.i.i, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = xor i16 %i.f, -1
  %i.p = and <16 x i32> %i.d, splat (i32 -2048)
  %i.q = icmp eq <16 x i32> %i.p, splat (i32 55296)
  %i.r = icmp ugt <16 x i32> %i.d, splat (i32 1114111)
  %i.s = bitcast i16 %i.o to <16 x i1>            ; 2 uses
  %i.t = and <16 x i1> %i.r, %i.s
  %i.u = or <16 x i1> %i.q, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16
  %.not113.i.i = icmp eq i16 %i.v, 0
  br i1 %.not113.i.i, label %.thread.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, !prof !303

.thread.i.i:                                      ; preds = %bb.c
  %i.w = zext i16 %i.f to i32
  %i.x = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.w, i32 -1431655766)
  %i.y = xor i32 %i.x, -1                         ; 2 uses
  %i.z = add <16 x i32> %i.d, splat (i32 983040)
  %i.aa = shl <16 x i32> %i.d, splat (i32 16)
  %i.ab = and <16 x i32> %i.aa, splat (i32 67043328)
  %i.ac = lshr <16 x i32> %i.z, splat (i32 10)
  %i.ad = and <16 x i32> %i.ac, splat (i32 1023)
  %i.ae = or disjoint <16 x i32> %i.ab, splat (i32 -603924480)
  %i.af = or disjoint <16 x i32> %i.ae, %i.ad
  %i.ag = select <16 x i1> %i.s, <16 x i32> %i.af, <16 x i32> %i.d
  %i.ah = bitcast <16 x i32> %i.ag to <32 x i16>
  %i.ai = bitcast i32 %i.y to <32 x i1>
  %i.aj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ah, <32 x i16> zeroinitializer, <32 x i1> %i.ai)
  %i.ak = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.y) ; 2 uses
  %i.al = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ak)
  %i.am = bitcast i32 %i.al to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.aj, ptr align 1 %.0290310.i.i, <32 x i1> %i.am)
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.0290310.i.i, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.b
  %.2292.i.i = phi ptr [ %i.n, %bb.b ], [ %i.ao, %.thread.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.l, %bb.b ], [ %.0312.i.i, %.thread.i.i ] ; 2 uses
  %.2289.i.i = getelementptr inbounds nuw i8, ptr %.0288311.i.i, i64 64 ; 3 uses
  %i.ap = ptrtoint ptr %.2289.i.i to i64
  %i.aq = sub i64 %i.b, %i.ap                     ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 15
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !304

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %.0290.lcssa.i.i = phi ptr [ %3, %bb.a ], [ %.2292.i.i, %bb.d ] ; 5 uses
  %.0288.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %.2289.i.i, %bb.d ] ; 4 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %.2.i.i, %bb.d ] ; 3 uses
  %.lcssa305.i.i = phi i64 [ %.idx.i.i, %bb.a ], [ %i.aq, %bb.d ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %2, %bb.a ], [ %i.ar, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %.0288.lcssa.i.i
  br i1 %.not.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.at = trunc i64 %.lcssa.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.at
  %i.au = trunc i32 %notmask.i.i to i16
  %i.av = xor i16 %i.au, -1                       ; 4 uses
  %i.aw = bitcast i16 %i.av to <16 x i1>          ; 2 uses
  %i.ax = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0288.lcssa.i.i, <16 x i1> %i.aw, <16 x i32> zeroinitializer) ; 8 uses
  %i.ay = icmp ult <16 x i32> %i.ax, splat (i32 65536)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, %i.av                    ; 4 uses
  %i.bb = icmp eq i16 %i.ba, %i.av
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = and <16 x i32> %i.ax, splat (i32 63488)
  %i.bd = icmp eq <16 x i32> %i.bc, splat (i32 55296)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = zext i16 %i.be to i32
  %i.bg = or i32 %.0.lcssa.i.i, %i.bf
  %i.bh = trunc <16 x i32> %i.ax to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bh, ptr align 1 %.0290.lcssa.i.i, <16 x i1> %i.aw)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i.i, i64 %.lcssa.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i.i, i64 %.lcssa305.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bk = xor i16 %i.ba, %i.av
  %i.bl = and <16 x i32> %i.ax, splat (i32 63488)
  %i.bm = icmp eq <16 x i32> %i.bl, splat (i32 55296)
  %i.bn = bitcast i16 %i.ba to <16 x i1>
  %i.bo = and <16 x i1> %i.bm, %i.bn
  %i.bp = icmp ugt <16 x i32> %i.ax, splat (i32 1114111)
  %i.bq = bitcast i16 %i.bk to <16 x i1>          ; 2 uses
  %i.br = and <16 x i1> %i.bp, %i.bq
  %i.bs = or <16 x i1> %i.bo, %i.br
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %.not111.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not111.i.i, label %.thread299.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, !prof !303

.thread299.i.i:                                   ; preds = %bb.g
  %i.bu = zext i16 %i.ba to i32
  %i.bv = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.bu, i32 -1431655766)
  %i.bw = lshr exact i64 %.lcssa305.i.i, 1
  %i.bx = trunc i64 %i.bw to i32
  %notmask110.i.i = shl nsw i32 -1, %i.bx
  %.demorgan.i.i = or i32 %i.bv, %notmask110.i.i
  %i.by = xor i32 %.demorgan.i.i, -1              ; 2 uses
  %i.bz = add <16 x i32> %i.ax, splat (i32 983040)
  %i.ca = shl <16 x i32> %i.ax, splat (i32 16)
  %i.cb = and <16 x i32> %i.ca, splat (i32 67043328)
  %i.cc = lshr <16 x i32> %i.bz, splat (i32 10)
  %i.cd = and <16 x i32> %i.cc, splat (i32 1023)
  %i.ce = or disjoint <16 x i32> %i.cb, splat (i32 -603924480)
  %i.cf = or disjoint <16 x i32> %i.ce, %i.cd
  %i.cg = select <16 x i1> %i.bq, <16 x i32> %i.cf, <16 x i32> %i.ax
  %i.ch = bitcast <16 x i32> %i.cg to <32 x i16>
  %i.ci = bitcast i32 %i.by to <32 x i1>
  %i.cj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ch, <32 x i16> zeroinitializer, <32 x i1> %i.ci)
  %i.ck = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.by) ; 2 uses
  %i.cl = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ck)
  %i.cm = bitcast i32 %i.cl to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cj, ptr align 1 %.0290.lcssa.i.i, <32 x i1> %i.cm)
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i.i, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i.i, i64 %.lcssa305.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i: ; preds = %.thread299.i.i, %bb.f, %._crit_edge.i.i
  %.4294.i.i = phi ptr [ %.0290.lcssa.i.i, %._crit_edge.i.i ], [ %i.bi, %bb.f ], [ %i.co, %.thread299.i.i ]
  %.4.i.i = phi ptr [ %i.a, %._crit_edge.i.i ], [ %i.bj, %bb.f ], [ %i.cp, %.thread299.i.i ]
  %.5.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.bg, %bb.f ], [ %.0.lcssa.i.i, %.thread299.i.i ]
  %.not112.i.i = icmp ne i32 %.5.i.i, 0
  %i.cq = icmp eq ptr %.4.i.i, null
  %i.cr = select i1 %.not112.i.i, i1 true, i1 %i.cq
  %i.cs = ptrtoint ptr %.4294.i.i to i64
  %i.ct = ptrtoint ptr %3 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 1
  %cond.fr.i = freeze i1 %i.cr
  br i1 %cond.fr.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i: ; preds = %bb.c, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i, %bb.g
  br label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs.exit

_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs.exit: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i
  %i.cw = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i ], [ %i.cv, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i ]
  ret i64 %i.cw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation30convert_valid_utf32_to_utf16beEPKDimPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %.idx.i.i = shl nuw nsw i64 %2, 2
  %i.c = icmp sgt i64 %2, 15
  br i1 %i.c, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.0332.i.i = phi i32 [ %.2.i.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0308331.i.i = phi ptr [ %.2309.i.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0310330.i.i = phi ptr [ %.2312.i.i, %bb.d ], [ %3, %bb.a ] ; 4 uses
  %i.d = load <16 x i32>, ptr %.0308331.i.i, align 1 ; 8 uses
  %i.e = icmp ult <16 x i32> %i.d, splat (i32 65536)
  %i.f = bitcast <16 x i1> %i.e to i16            ; 3 uses
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = and <16 x i32> %i.d, splat (i32 63488)
  %i.i = icmp eq <16 x i32> %i.h, splat (i32 55296)
  %i.j = bitcast <16 x i1> %i.i to i16
  %i.k = zext i16 %i.j to i32
  %i.l = or i32 %.0332.i.i, %i.k
  %i.m = trunc <16 x i32> %i.d to <16 x i16>
  %i.n = bitcast <16 x i16> %i.m to <32 x i8>
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.o, ptr %.0310330.i.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0310330.i.i, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = xor i16 %i.f, -1
  %i.r = and <16 x i32> %i.d, splat (i32 -2048)
  %i.s = icmp eq <16 x i32> %i.r, splat (i32 55296)
  %i.t = icmp ugt <16 x i32> %i.d, splat (i32 1114111)
  %i.u = bitcast i16 %i.q to <16 x i1>            ; 2 uses
  %i.v = and <16 x i1> %i.t, %i.u
  %i.w = or <16 x i1> %i.s, %i.v
  %i.x = bitcast <16 x i1> %i.w to i16
  %.not117.i.i = icmp eq i16 %i.x, 0
  br i1 %.not117.i.i, label %.thread.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, !prof !303

.thread.i.i:                                      ; preds = %bb.c
  %i.y = zext i16 %i.f to i32
  %i.z = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.y, i32 -1431655766)
  %i.aa = xor i32 %i.z, -1                        ; 2 uses
  %i.ab = add <16 x i32> %i.d, splat (i32 983040)
  %i.ac = shl <16 x i32> %i.d, splat (i32 16)
  %i.ad = and <16 x i32> %i.ac, splat (i32 67043328)
  %i.ae = lshr <16 x i32> %i.ab, splat (i32 10)
  %i.af = and <16 x i32> %i.ae, splat (i32 1023)
  %i.ag = or disjoint <16 x i32> %i.ad, splat (i32 -603924480)
  %i.ah = or disjoint <16 x i32> %i.ag, %i.af
  %i.ai = select <16 x i1> %i.u, <16 x i32> %i.ah, <16 x i32> %i.d
  %i.aj = bitcast <16 x i32> %i.ai to <64 x i8>
  %i.ak = shufflevector <64 x i8> %i.aj, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.al = bitcast <64 x i8> %i.ak to <32 x i16>
  %i.am = bitcast i32 %i.aa to <32 x i1>
  %i.an = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.al, <32 x i16> zeroinitializer, <32 x i1> %i.am)
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aa) ; 2 uses
  %i.ap = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ao)
  %i.aq = bitcast i32 %i.ap to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.an, ptr align 1 %.0310330.i.i, <32 x i1> %i.aq)
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.0310330.i.i, i64 %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.b
  %.2312.i.i = phi ptr [ %i.p, %bb.b ], [ %i.as, %.thread.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.l, %bb.b ], [ %.0332.i.i, %.thread.i.i ] ; 2 uses
  %.2309.i.i = getelementptr inbounds nuw i8, ptr %.0308331.i.i, i64 64 ; 3 uses
  %i.at = ptrtoint ptr %.2309.i.i to i64
  %i.au = sub i64 %i.b, %i.at                     ; 2 uses
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 15
  br i1 %i.aw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !305

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %.0310.lcssa.i.i = phi ptr [ %3, %bb.a ], [ %.2312.i.i, %bb.d ] ; 5 uses
  %.0308.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %.2309.i.i, %bb.d ] ; 4 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %.2.i.i, %bb.d ] ; 3 uses
  %.lcssa325.i.i = phi i64 [ %.idx.i.i, %bb.a ], [ %i.au, %bb.d ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %2, %bb.a ], [ %i.av, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %.0308.lcssa.i.i
  br i1 %.not.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ax = trunc i64 %.lcssa.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.ax
  %i.ay = trunc i32 %notmask.i.i to i16
  %i.az = xor i16 %i.ay, -1                       ; 4 uses
  %i.ba = bitcast i16 %i.az to <16 x i1>          ; 2 uses
  %i.bb = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0308.lcssa.i.i, <16 x i1> %i.ba, <16 x i32> zeroinitializer) ; 8 uses
  %i.bc = icmp ult <16 x i32> %i.bb, splat (i32 65536)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = and i16 %i.bd, %i.az                    ; 4 uses
  %i.bf = icmp eq i16 %i.be, %i.az
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = and <16 x i32> %i.bb, splat (i32 63488)
  %i.bh = icmp eq <16 x i32> %i.bg, splat (i32 55296)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = zext i16 %i.bi to i32
  %i.bk = or i32 %.0.lcssa.i.i, %i.bj
  %i.bl = trunc <16 x i32> %i.bb to <16 x i16>
  %i.bm = bitcast <16 x i16> %i.bl to <32 x i8>
  %i.bn = shufflevector <32 x i8> %i.bm, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.bo = bitcast <32 x i8> %i.bn to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bo, ptr align 1 %.0310.lcssa.i.i, <16 x i1> %i.ba)
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i.i, i64 %.lcssa.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i.i, i64 %.lcssa325.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.br = xor i16 %i.be, %i.az
  %i.bs = and <16 x i32> %i.bb, splat (i32 63488)
  %i.bt = icmp eq <16 x i32> %i.bs, splat (i32 55296)
  %i.bu = bitcast i16 %i.be to <16 x i1>
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = icmp ugt <16 x i32> %i.bb, splat (i32 1114111)
  %i.bx = bitcast i16 %i.br to <16 x i1>          ; 2 uses
  %i.by = and <16 x i1> %i.bw, %i.bx
  %i.bz = or <16 x i1> %i.bv, %i.by
  %i.ca = bitcast <16 x i1> %i.bz to i16
  %.not115.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not115.i.i, label %.thread319.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, !prof !303

.thread319.i.i:                                   ; preds = %bb.g
  %i.cb = zext i16 %i.be to i32
  %i.cc = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.cb, i32 -1431655766)
  %i.cd = lshr exact i64 %.lcssa325.i.i, 1
  %i.ce = trunc i64 %i.cd to i32
  %notmask114.i.i = shl nsw i32 -1, %i.ce
  %.demorgan.i.i = or i32 %i.cc, %notmask114.i.i
  %i.cf = xor i32 %.demorgan.i.i, -1              ; 2 uses
  %i.cg = add <16 x i32> %i.bb, splat (i32 983040)
  %i.ch = shl <16 x i32> %i.bb, splat (i32 16)
  %i.ci = and <16 x i32> %i.ch, splat (i32 67043328)
  %i.cj = lshr <16 x i32> %i.cg, splat (i32 10)
  %i.ck = and <16 x i32> %i.cj, splat (i32 1023)
  %i.cl = or disjoint <16 x i32> %i.ci, splat (i32 -603924480)
  %i.cm = or disjoint <16 x i32> %i.cl, %i.ck
  %i.cn = select <16 x i1> %i.bx, <16 x i32> %i.cm, <16 x i32> %i.bb
  %i.co = bitcast <16 x i32> %i.cn to <64 x i8>
  %i.cp = shufflevector <64 x i8> %i.co, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.cq = bitcast <64 x i8> %i.cp to <32 x i16>
  %i.cr = bitcast i32 %i.cf to <32 x i1>
  %i.cs = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.cq, <32 x i16> zeroinitializer, <32 x i1> %i.cr)
  %i.ct = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.cf) ; 2 uses
  %i.cu = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ct)
  %i.cv = bitcast i32 %i.cu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cs, ptr align 1 %.0310.lcssa.i.i, <32 x i1> %i.cv)
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i.i, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i.i, i64 %.lcssa325.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i: ; preds = %.thread319.i.i, %bb.f, %._crit_edge.i.i
  %.4314.i.i = phi ptr [ %.0310.lcssa.i.i, %._crit_edge.i.i ], [ %i.bp, %bb.f ], [ %i.cx, %.thread319.i.i ]
  %.4.i.i = phi ptr [ %i.a, %._crit_edge.i.i ], [ %i.bq, %bb.f ], [ %i.cy, %.thread319.i.i ]
  %.5.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.bk, %bb.f ], [ %.0.lcssa.i.i, %.thread319.i.i ]
  %.not116.i.i = icmp ne i32 %.5.i.i, 0
  %i.cz = icmp eq ptr %.4.i.i, null
  %i.da = select i1 %.not116.i.i, i1 true, i1 %i.cz
  %i.db = ptrtoint ptr %.4314.i.i to i64
  %i.dc = ptrtoint ptr %3 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 1
  %cond.fr.i = freeze i1 %i.da
  br i1 %cond.fr.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i: ; preds = %bb.c, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i, %bb.g
  br label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs.exit

_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs.exit: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i
  %i.df = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i ], [ %i.de, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i ]
  ret i64 %i.df
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387903) i64 @_ZNK7simdutf7icelake14implementation24convert_utf16le_to_utf32EPKDsmPDi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 31
  br i1 %i.c, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.061179.i = phi ptr [ %.3.i, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %.063178.i = phi i32 [ %.366.i, %bb.d ], [ 0, %bb.a ]
  %.0166177.i = phi ptr [ %.2168.i, %bb.d ], [ %3, %bb.a ] ; 5 uses
  %i.d = load <8 x i64>, ptr %.061179.i, align 1, !noalias !314 ; 5 uses
  %i.e = bitcast <8 x i64> %i.d to <32 x i16>
  %i.f = and <32 x i16> %i.e, splat (i16 -1024)   ; 2 uses
  %i.g = icmp eq <32 x i16> %i.f, splat (i16 -10240) ; 3 uses
  %i.h = bitcast <32 x i1> %i.g to i32            ; 3 uses
  %i.i = icmp eq <32 x i16> %i.f, splat (i16 -9216)
  %i.j = bitcast <32 x i1> %i.i to i32            ; 3 uses
  %i.k = or i32 %i.h, %i.j
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = shl i32 %i.h, 1
  %i.m = or i32 %i.l, %.063178.i
  %i.n = icmp eq i32 %i.m, %i.j
  br i1 %i.n, label %.thread.i, label %_ZN7simdutf7icelake12_GLOBAL__N_122convert_utf16_to_utf32ILNS_10endiannessE0EEESt5tupleIJPKDsPDibEES6_mS7_.exit

.thread.i:                                        ; preds = %bb.b
  %i.o = bitcast <8 x i64> %i.d to <32 x i16>
  %i.p = shufflevector <32 x i16> %i.o, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.q = zext <16 x i16> %i.p to <16 x i32>       ; 3 uses
  %i.r = bitcast <8 x i64> %i.d to <32 x i16>
  %i.s = shufflevector <32 x i16> %i.r, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.t = zext <16 x i16> %i.s to <16 x i32>       ; 4 uses
  %i.u = shufflevector <16 x i32> %i.q, <16 x i32> %i.t, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.v = shufflevector <16 x i32> %i.t, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.w = shl nuw nsw <16 x i32> %i.q, splat (i32 10)
  %i.x = shufflevector <32 x i1> %i.g, <32 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %bc.i = bitcast <32 x i1> %i.g to <2 x i16>
  %i.y = extractelement <2 x i16> %bc.i, i64 1
  %i.z = shl nuw nsw <16 x i32> %i.t, splat (i32 10)
  %i.aa = bitcast i16 %i.y to <16 x i1>
  %i.ab = add nsw <16 x i32> %i.w, splat (i32 -56613888)
  %i.ac = add nsw <16 x i32> %i.ab, %i.u
  %i.ad = select <16 x i1> %i.x, <16 x i32> %i.ac, <16 x i32> %i.q
  %i.ae = add nuw nsw <16 x i32> %i.v, splat (i32 -56613888)
  %i.af = add nsw <16 x i32> %i.ae, %i.z
  %i.ag = select <16 x i1> %i.aa, <16 x i32> %i.af, <16 x i32> %i.t
  %i.ah = and i32 %i.j, 2147483647
  %i.ai = xor i32 %i.ah, 2147483647               ; 3 uses
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = bitcast i16 %i.aj to <16 x i1>
  %i.al = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.ad, <16 x i32> zeroinitializer, <16 x i1> %i.ak)
  %.mask.i = and i32 %i.ai, 65535
  %i.am = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %.mask.i)
  %i.an = zext nneg i32 %i.am to i64
  store <16 x i32> %i.al, ptr %.0166177.i, align 1, !noalias !314
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0166177.i, i64 %i.an ; 2 uses
  %i.ap = lshr i32 %i.ai, 16                      ; 2 uses
  %i.aq = trunc nuw nsw i32 %i.ap to i16
  %i.ar = bitcast i16 %i.aq to <16 x i1>
  %i.as = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.ag, <16 x i32> zeroinitializer, <16 x i1> %i.ar)
  %i.at = tail call range(i32 0, 16) i32 @llvm.ctpop.i32(i32 %i.ap) ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i = shl nsw i32 -1, %i.at
  %i.av = trunc nsw i32 %notmask.i to i16
  %i.aw = xor i16 %i.av, -1
  %i.ax = bitcast i16 %i.aw to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.as, ptr align 1 %i.ao, <16 x i1> %i.ax), !noalias !314
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %.061179.i, i64 62
  %i.ba = lshr i32 %i.h, 30
  %i.bb = and i32 %i.ba, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.bc = bitcast <8 x i64> %i.d to <32 x i16>
  %i.bd = shufflevector <32 x i16> %i.bc, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_2
