Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf7icelake14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc:bb.a
  %i.cu = getelementptr inbounds i8, ptr %i.ck, i64 %i.cm
  %i.cv = add i64 %i.cl, %.02566.i
  %i.cw = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.cu, i64 noundef %i.cv, ptr noundef %3) ; 2 uses
  %i.cx = extractvalue { i32, i64 } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { i32, i64 } %i.cw, 1
  %.not33.i = icmp eq i32 %i.cx, 0
  %i.cz = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.cy, %i.cz
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.v ], [ %i.ct, %bb.u ], [ %i.cj, %bb.t ]
  %.sroa.0.3.i = phi i32 [ %i.cx, %bb.v ], [ 3, %bb.u ], [ 3, %bb.t ]
  %i.da = add i64 %.sroa.4.3.i, %i.ci
  br label %bb.w

bb.w:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_121utf8_to_latin1_avx512ERPKcmRPc.exit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit
  %.sroa.3.0 = phi i64 [ %i.da, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.358.i, %_ZN7simdutf7icelake12_GLOBAL__N_121utf8_to_latin1_avx512ERPKcmRPc.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_121utf8_to_latin1_avx512ERPKcmRPc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation28convert_valid_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !guid !619 {
bb.a:
  %.not82.i = icmp ult i64 %2, 64
  br i1 %.not82.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i
  %i.a = phi i64 [ %i.w, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ], [ 64, %bb.a ] ; 3 uses
  %.085.i = phi ptr [ %i.v, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ], [ %3, %bb.a ] ; 3 uses
  %.02484.i = phi i64 [ %i.a, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ], [ 0, %bb.a ]
  %.08083.i = phi i64 [ %.181.i, %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.02484.i
  %unmaskedload.i = load <64 x i8>, ptr %i.b, align 1 ; 6 uses
  %i.c = icmp slt <64 x i8> %unmaskedload.i, zeroinitializer
  %i.d = bitcast <64 x i1> %i.c to i64
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  store <64 x i8> %unmaskedload.i, ptr %.085.i, align 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = icmp ult <64 x i8> %unmaskedload.i, splat (i8 -64) ; 2 uses
  %i.g = icmp eq <64 x i8> %unmaskedload.i, splat (i8 -61)
  %i.h = bitcast <64 x i1> %i.g to i64            ; 2 uses
  %i.i = lshr i64 %i.h, 63                        ; 2 uses
  %i.j = bitcast <64 x i1> %i.f to i64            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN7simdutf7icelake12_GLOBAL__N_139process_valid_block_from_utf8_to_latin1ILb0EEEmPKcmPcDv8_xS6_PyS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.j) ; 2 uses
  %i.m = shl i64 %i.h, 1
  %i.n = or i64 %i.m, %.08083.i
  %i.o = bitcast i64 %i.n to <64 x i1>
  %i.p = add <64 x i8> %unmaskedload.i, splat (i8 64)
  %i.q = select <64 x i1> %i.o, <64 x i8> %i.p, <64 x i8> %unmaskedload.i
  %i.r = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.q, <64 x i8> zeroinitializer, <64 x i1> %i.f)
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
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !618

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
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !guid !621 {
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
  %4 = shufflevector <64 x i1> %i.v, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.al = bitcast <64 x i1> %4 to i64             ; 2 uses
  %5 = shufflevector <64 x i1> %i.x, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.am = bitcast <64 x i1> %5 to i64             ; 2 uses
  %i.an = icmp eq i64 %i.aj, 0
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ao = or i64 %i.al, %i.am
  %i.ap = or i64 %i.i, %i.w                       ; 2 uses
  %i.aq = xor i64 %i.ao, %i.ap
  %.not403.i = icmp eq i64 %i.aq, -1
  br i1 %.not403.i, label %bb.h, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = bitcast i64 %i.ap to <64 x i1>
  %i.as = shufflevector <64 x i1> %i.ar, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.at = bitcast <64 x i1> %i.as to i64          ; 2 uses
  %i.au = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.as)
  %i.av = shufflevector <64 x i8> %i.au, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aw = zext <32 x i8> %i.av to <32 x i16>      ; 3 uses
  %.inner10 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.ax = bitcast <32 x i16> %i.aw to <64 x i8>
  %i.ay = bitcast <8 x i64> %i.f to <64 x i8>
  %i.az = and <64 x i8> %.inner10, %i.ay          ; 3 uses
  %i.ba = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.az, <64 x i8> %i.ax)
  %i.bb = shufflevector <64 x i8> %i.ba, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bc = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bd = add nsw <32 x i16> %i.aw, splat (i16 -1)
  %i.be = select <64 x i1> %i.bc, <64 x i8> %i.az, <64 x i8> zeroinitializer
  %i.bf = bitcast <32 x i16> %i.bd to <64 x i8>
  %i.bg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.be, <64 x i8> %i.bf)
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bi = bitcast <64 x i8> %i.bh to <32 x i16>
  %i.bj = shl nuw nsw <32 x i16> %i.bi, splat (i16 6)
  %i.bk = add nsw <32 x i16> %i.aw, splat (i16 -2)
  %i.bl = select <64 x i1> %i.x, <64 x i8> %i.az, <64 x i8> zeroinitializer
  %i.bm = bitcast <32 x i16> %i.bk to <64 x i8>
  %i.bn = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bl, <64 x i8> %i.bm)
  %i.bo = shufflevector <64 x i8> %i.bn, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bp = bitcast <64 x i8> %i.bo to <32 x i16>
  %i.bq = shl <32 x i16> %i.bp, splat (i16 12)
  %i.br = bitcast <64 x i8> %i.bb to <16 x i32>
  %i.bs = bitcast <32 x i16> %i.bj to <16 x i32>
  %i.bt = bitcast <32 x i16> %i.bq to <16 x i32>
  %i.bu = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.br, <16 x i32> %i.bs, <16 x i32> %i.bt, i32 254) ; 2 uses
  %i.bv = shl i64 %i.y, 2
  %i.bw = tail call noundef i64 @llvm.pext.i64(i64 %i.bv, i64 %i.at)
  %i.bx = trunc i64 %i.bw to i32
  %i.by = bitcast <16 x i32> %i.bu to <32 x i16>  ; 2 uses
  %i.bz = icmp ult <32 x i16> %i.by, splat (i16 2048)
  %i.ca = bitcast i32 %i.bx to <32 x i1>
  %i.cb = bitcast <16 x i32> %i.bu to <32 x i16>
  %i.cc = and <32 x i16> %i.cb, splat (i16 -2048)
  %i.cd = icmp eq <32 x i16> %i.cc, splat (i16 -10240)
  %i.ce = or <32 x i1> %i.bz, %i.cd
  %i.cf = and <32 x i1> %i.ce, %i.ca
  %i.cg = bitcast <32 x i1> %i.cf to i32
  %.not222.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not222.i.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.at) ; 2 uses
  %i.ci = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ch) ; 2 uses
  %i.cj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.ck = sub nuw nsw i64 64, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.ck
  %notmask223.i.i = shl nsw i64 -1, %i.ci
  %i.cm = trunc i64 %notmask223.i.i to i32
  %i.cn = xor i32 %i.cm, -1
  %i.co = bitcast i32 %i.cn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.by, ptr align 1 %.0394405.i, <32 x i1> %i.co)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.ci
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %6 = shufflevector <64 x i1> %i.ai, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.cq = bitcast <64 x i1> %6 to i64             ; 3 uses
  %i.cr = or i64 %i.al, %i.am
  %i.cs = or i64 %i.cr, %i.cq
  %i.ct = or i64 %i.i, %i.w                       ; 2 uses
  %i.cu = or i64 %i.ct, %i.cq
  %i.cv = bitcast i64 %i.cu to <64 x i1>
  %i.cw = shufflevector <64 x i1> %i.cv, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.cx = or <64 x i1> %6, %i.cw                  ; 2 uses
  %i.cy = bitcast <64 x i1> %i.cx to i64          ; 3 uses
  %i.cz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.cx)
  %i.da = shufflevector <64 x i8> %i.cz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.db = zext <32 x i8> %i.da to <32 x i16>      ; 3 uses
  %.inner12 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dc = bitcast <32 x i16> %i.db to <64 x i8>
  %i.dd = bitcast <8 x i64> %i.f to <64 x i8>
  %i.de = and <64 x i8> %.inner12, %i.dd          ; 3 uses
  %i.df = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.de, <64 x i8> %i.dc)
  %i.dg = shufflevector <64 x i8> %i.df, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dh = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.di = add nsw <32 x i16> %i.db, splat (i16 -1)
  %i.dj = select <64 x i1> %i.dh, <64 x i8> %i.de, <64 x i8> zeroinitializer
  %i.dk = bitcast <32 x i16> %i.di to <64 x i8>
  %i.dl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dj, <64 x i8> %i.dk)
  %i.dm = shufflevector <64 x i8> %i.dl, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dn = bitcast <64 x i8> %i.dm to <32 x i16>
  %i.do = shl nuw nsw <32 x i16> %i.dn, splat (i16 6)
  %i.dp = add nsw <32 x i16> %i.db, splat (i16 -2)
  %i.dq = select <64 x i1> %i.x, <64 x i8> %i.de, <64 x i8> zeroinitializer
  %i.dr = bitcast <32 x i16> %i.dp to <64 x i8>
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dq, <64 x i8> %i.dr)
  %i.dt = shufflevector <64 x i8> %i.ds, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.du = bitcast <64 x i8> %i.dt to <32 x i16>
  %i.dv = shl <32 x i16> %i.du, splat (i16 12)
  %i.dw = bitcast <64 x i8> %i.dg to <16 x i32>
  %i.dx = bitcast <32 x i16> %i.do to <16 x i32>
  %i.dy = bitcast <32 x i16> %i.dv to <16 x i32>
  %i.dz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dw, <16 x i32> %i.dx, <16 x i32> %i.dy, i32 254)
  %i.ea = tail call noundef i64 @llvm.pext.i64(i64 %i.cq, i64 %i.cy) ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = lshr i64 %i.ea, 1                       ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = bitcast i32 %i.eb to <32 x i1>
  %i.ef = select <32 x i1> %i.ee, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.eg = bitcast <16 x i32> %i.dz to <32 x i16>  ; 2 uses
  %i.eh = lshr <32 x i16> %i.eg, splat (i16 4)
  %i.ei = or <32 x i16> %i.ef, %i.eg
  %i.ej = add nuw nsw <32 x i16> %i.eh, splat (i16 -10304)
  %i.ek = bitcast i32 %i.ed to <32 x i1>          ; 2 uses
  %i.el = select <32 x i1> %i.ek, <32 x i16> %i.ej, <32 x i16> %i.ei ; 3 uses
  %i.em = and i64 %i.ec, 2147483648
  %i.en = xor i64 %i.em, 4294967295
  %i.eo = tail call noundef i64 @llvm.pdep.i64(i64 %i.en, i64 %i.cy) ; 2 uses
  %i.ep = xor i64 %i.cs, %i.ct
  %.not401.i = icmp eq i64 %i.ep, -1
  br i1 %.not401.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.eq = xor i64 %i.aj, -1
  %i.er = and i64 %i.y, %i.eq
  %i.es = shl i64 %i.er, 2
  %i.et = tail call noundef i64 @llvm.pext.i64(i64 %i.es, i64 %i.cy)
  %i.eu = trunc i64 %i.et to i32
  %i.ev = icmp ult <32 x i16> %i.el, splat (i16 2048)
  %i.ew = bitcast i32 %i.eu to <32 x i1>
  %i.ex = add <32 x i16> %i.el, splat (i16 10240) ; 2 uses
  %i.ey = icmp ult <32 x i16> %i.ex, splat (i16 2048)
  %i.ez = icmp ugt <32 x i16> %i.ex, splat (i16 1023)
  %i.fa = and <32 x i1> %i.ez, %i.ek
  %i.fb = or <32 x i1> %i.ev, %i.ey
  %i.fc = and <32 x i1> %i.fb, %i.ew
  %i.fd = or <32 x i1> %i.fa, %i.fc
  %i.fe = bitcast <32 x i1> %i.fd to i32
  %.not402.i = icmp eq i32 %i.fe, 0
  br i1 %.not402.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.ff = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eo, i1 false)
  %i.fg = sub nuw nsw i64 64, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.fg
  %i.fi = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eo) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fi
  %i.fj = trunc i64 %notmask220.i.i to i32
  %i.fk = xor i32 %i.fj, -1
  %i.fl = bitcast i32 %i.fk to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.el, ptr align 1 %.0394405.i, <32 x i1> %i.fl)
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.fi
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fn = or i64 %i.i, %i.w                       ; 3 uses
  %7 = shufflevector <64 x i1> %i.v, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.fo = bitcast <64 x i1> %7 to i64
  %i.fp = xor i64 %i.fn, %i.fo
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %bb.n, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.n:                                             ; preds = %bb.m
  %i.fr = add <64 x i8> %i.g, splat (i8 62)
  %i.fs = select <64 x i1> %i.v, <64 x i8> %i.fr, <64 x i8> zeroinitializer
  %i.ft = xor <64 x i1> %i.v, splat (i1 true)
  %i.fu = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.fu, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %spec.select.v.i
  %i.fv = bitcast i64 %i.fn to <64 x i1>
  %i.fw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.fs, <64 x i8> zeroinitializer, <64 x i1> %i.fv)
  %i.fx = shufflevector <64 x i8> %i.fw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fy = zext <32 x i8> %i.fx to <32 x i16>
  %i.fz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.ft)
  %i.ga = shufflevector <64 x i8> %i.fz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gb = zext <32 x i8> %i.ga to <32 x i16>
  %i.gc = shl nuw nsw <32 x i16> %i.fy, splat (i16 6)
  %i.gd = add nuw nsw <32 x i16> %i.gc, %i.gb
  %i.ge = trunc i64 %i.fn to i32
  %i.gf = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ge)
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gg
  %i.gh = trunc i64 %notmask.i.i to i32
  %i.gi = xor i32 %i.gh, -1
  %i.gj = bitcast i32 %i.gi to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gd, ptr align 1 %.0394405.i, <32 x i1> %i.gj)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.gg
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gl = icmp ult ptr %.0396404.i, %i.a
  br i1 %i.gl, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.gm = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.gn = bitcast i64 %i.gm to <64 x i1>          ; 3 uses
  %i.go = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0396404.i, <64 x i1> %i.gn, <64 x i8> zeroinitializer) ; 11 uses
  %i.gp = icmp sgt <64 x i8> %i.go, splat (i8 -1)
  %i.gq = and <64 x i1> %i.gp, %i.gn              ; 3 uses
  %i.gr = bitcast <64 x i1> %i.gq to i64          ; 3 uses
  %i.gs = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gq, <64 x i1> %i.gn)
  %i.gt = and i32 %i.gs, 255
  %.not.i9.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gu = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.d ; 2 uses
  %i.gv = icmp ult i64 %i.d, 33
  %i.gw = shufflevector <64 x i8> %i.go, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gx = zext <32 x i8> %i.gw to <32 x i16>      ; 2 uses
  br i1 %i.gv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gy = trunc i64 %i.gm to i32
  %i.gz = bitcast i32 %i.gy to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gx, ptr align 1 %.0394405.i, <32 x i1> %i.gz)
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.gx, ptr %.0394405.i, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.0394405.i, i64 64
  %i.hc = shufflevector <64 x i8> %i.go, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hd = zext <32 x i8> %i.hc to <32 x i16>
  %i.he = trunc i64 %i.d to i32
  %i.hf = add i32 %i.he, -32
  %notmask247.i.i = shl nsw i32 -1, %i.hf
  %i.hg = xor i32 %notmask247.i.i, -1
  %i.hh = bitcast i32 %i.hg to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hd, ptr nonnull align 1 %i.hb, <32 x i1> %i.hh)
  %i.hi = getelementptr [2 x i8], ptr %.0394405.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.hj = icmp ugt <64 x i8> %i.go, splat (i8 -65) ; 5 uses
  %i.hk = bitcast <64 x i1> %i.hj to i64          ; 3 uses
  %i.hl = icmp ugt <64 x i8> %i.go, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.hm = bitcast <64 x i1> %i.hl to i64          ; 2 uses
  %i.hn = and <64 x i8> %i.go, splat (i8 -2)
  %i.ho = icmp eq <64 x i8> %i.hn, splat (i8 -64) ; 2 uses
  %i.hp = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ho, <64 x i1> %i.ho)
  %i.hq = and i32 %i.hp, 255
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hs = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hl, <64 x i1> %i.hl)
  %i.ht = and i32 %i.hs, 255
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.hv = icmp ugt <64 x i8> %i.go, splat (i8 -17) ; 2 uses
  %i.hw = bitcast <64 x i1> %i.hv to i64          ; 2 uses
  %i.hx = xor <64 x i1> %i.gq, splat (i1 true)
  %i.hy = bitcast <64 x i1> %i.hx to i64
  %i.hz = and i64 %i.hy, %i.gm                    ; 2 uses
  %8 = shufflevector <64 x i1> %i.hj, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ia = bitcast <64 x i1> %8 to i64             ; 2 uses
  %9 = shufflevector <64 x i1> %i.hl, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ib = bitcast <64 x i1> %9 to i64             ; 2 uses
  %i.ic = icmp eq i64 %i.hw, 0
  br i1 %i.ic, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.id = or i64 %i.ia, %i.ib
  %i.ie = or i64 %i.gr, %i.hk                     ; 2 uses
  %i.if = xor i64 %i.ie, %i.gm
  %.not244.i.i = icmp eq i64 %i.id, %i.if
  br i1 %.not244.i.i, label %bb.x, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.x:                                             ; preds = %bb.w
  %i.ig = bitcast i64 %i.ie to <64 x i1>
  %i.ih = shufflevector <64 x i1> %i.ig, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ii = bitcast <64 x i1> %i.ih to i64
  %i.ij = add i64 %i.d, -1
  %i.ik = shl nuw nsw i64 1, %i.ij
  %i.il = or i64 %i.ik, %i.ii                     ; 3 uses
  %i.im = bitcast i64 %i.il to <64 x i1>
  %i.in = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.im)
  %i.io = shufflevector <64 x i8> %i.in, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ip = zext <32 x i8> %i.io to <32 x i16>      ; 3 uses
  %i.iq = bitcast i64 %i.hz to <64 x i1>          ; 2 uses
  %.inner15 = select <64 x i1> %i.iq, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner16 = and <64 x i8> %.inner15, %i.go      ; 3 uses
  %i.ir = bitcast <32 x i16> %i.ip to <64 x i8>
  %i.is = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner16, <64 x i8> %i.ir)
  %i.it = shufflevector <64 x i8> %i.is, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.iu = shufflevector <64 x i1> %i.iq, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.iv = add nsw <32 x i16> %i.ip, splat (i16 -1)
  %i.iw = select <64 x i1> %i.iu, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.ix = bitcast <32 x i16> %i.iv to <64 x i8>
  %i.iy = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.iw, <64 x i8> %i.ix)
  %i.iz = shufflevector <64 x i8> %i.iy, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ja = bitcast <64 x i8> %i.iz to <32 x i16>
  %i.jb = shl nuw nsw <32 x i16> %i.ja, splat (i16 6)
  %i.jc = add nsw <32 x i16> %i.ip, splat (i16 -2)
  %i.jd = select <64 x i1> %i.hl, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.je = bitcast <32 x i16> %i.jc to <64 x i8>
  %i.jf = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jd, <64 x i8> %i.je)
  %i.jg = shufflevector <64 x i8> %i.jf, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jh = bitcast <64 x i8> %i.jg to <32 x i16>
  %i.ji = shl <32 x i16> %i.jh, splat (i16 12)
  %i.jj = bitcast <64 x i8> %i.it to <16 x i32>
  %i.jk = bitcast <32 x i16> %i.jb to <16 x i32>
  %i.jl = bitcast <32 x i16> %i.ji to <16 x i32>
  %i.jm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jj, <16 x i32> %i.jk, <16 x i32> %i.jl, i32 254) ; 2 uses
  %i.jn = and i64 %i.hm, %i.gm
  %i.jo = shl i64 %i.jn, 2
  %i.jp = tail call noundef i64 @llvm.pext.i64(i64 %i.jo, i64 %i.il)
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = bitcast <16 x i32> %i.jm to <32 x i16>  ; 2 uses
  %i.js = icmp ult <32 x i16> %i.jr, splat (i16 2048)
  %i.jt = bitcast i32 %i.jq to <32 x i1>
  %i.ju = bitcast <16 x i32> %i.jm to <32 x i16>
  %i.jv = and <32 x i16> %i.ju, splat (i16 -2048)
  %i.jw = icmp eq <32 x i16> %i.jv, splat (i16 -10240)
  %i.jx = or <32 x i1> %i.js, %i.jw
  %i.jy = and <32 x i1> %i.jx, %i.jt
  %i.jz = bitcast <32 x i1> %i.jy to i32
  %.not245.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not245.i.i, label %bb.y, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.y:                                             ; preds = %bb.x
  %i.ka = and i64 %i.il, %i.gm
  %i.kb = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ka) ; 2 uses
  %i.kc = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.kb) ; 2 uses
  %i.kd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kb, i1 false)
  %i.ke = sub nuw nsw i64 64, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.ke
  %notmask246.i.i = shl nsw i64 -1, %i.kc
  %i.kg = trunc i64 %notmask246.i.i to i32
  %i.kh = xor i32 %i.kg, -1
  %i.ki = bitcast i32 %i.kh to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.jr, ptr align 1 %.0394405.i, <32 x i1> %i.ki)
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.kc
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %10 = shufflevector <64 x i1> %i.hv, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.kk = bitcast <64 x i1> %10 to i64            ; 3 uses
  %i.kl = or i64 %i.ia, %i.ib
  %i.km = or i64 %i.kl, %i.kk
  %i.kn = or i64 %i.gr, %i.hk                     ; 2 uses
  %i.ko = or i64 %i.kn, %i.kk
  %i.kp = bitcast i64 %i.ko to <64 x i1>
  %i.kq = shufflevector <64 x i1> %i.kp, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.kr = or <64 x i1> %10, %i.kq
  %i.ks = bitcast <64 x i1> %i.kr to i64
  %i.kt = add i64 %i.d, -1
  %i.ku = shl nuw nsw i64 1, %i.kt
  %i.kv = or i64 %i.ku, %i.ks                     ; 4 uses
  %i.kw = bitcast i64 %i.kv to <64 x i1>
  %i.kx = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.kw)
  %i.ky = shufflevector <64 x i8> %i.kx, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kz = zext <32 x i8> %i.ky to <32 x i16>      ; 3 uses
  %i.la = bitcast i64 %i.hz to <64 x i1>          ; 2 uses
  %.inner18 = select <64 x i1> %i.la, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner19 = and <64 x i8> %.inner18, %i.go      ; 3 uses
  %i.lb = bitcast <32 x i16> %i.kz to <64 x i8>
  %i.lc = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner19, <64 x i8> %i.lb)
  %i.ld = shufflevector <64 x i8> %i.lc, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.le = shufflevector <64 x i1> %i.la, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lf = add nsw <32 x i16> %i.kz, splat (i16 -1)
  %i.lg = select <64 x i1> %i.le, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.lh = bitcast <32 x i16> %i.lf to <64 x i8>
  %i.li = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.lg, <64 x i8> %i.lh)
  %i.lj = shufflevector <64 x i8> %i.li, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lk = bitcast <64 x i8> %i.lj to <32 x i16>
  %i.ll = shl nuw nsw <32 x i16> %i.lk, splat (i16 6)
  %i.lm = add nsw <32 x i16> %i.kz, splat (i16 -2)
  %i.ln = select <64 x i1> %i.hl, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.lo = bitcast <32 x i16> %i.lm to <64 x i8>
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ln, <64 x i8> %i.lo)
  %i.lq = shufflevector <64 x i8> %i.lp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lr = bitcast <64 x i8> %i.lq to <32 x i16>
  %i.ls = shl <32 x i16> %i.lr, splat (i16 12)
  %i.lt = bitcast <64 x i8> %i.ld to <16 x i32>
  %i.lu = bitcast <32 x i16> %i.ll to <16 x i32>
  %i.lv = bitcast <32 x i16> %i.ls to <16 x i32>
  %i.lw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lt, <16 x i32> %i.lu, <16 x i32> %i.lv, i32 254)
  %i.lx = tail call noundef i64 @llvm.pext.i64(i64 %i.kk, i64 %i.kv) ; 2 uses
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = lshr i64 %i.lx, 1                       ; 2 uses
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = bitcast i32 %i.ly to <32 x i1>
  %i.mc = select <32 x i1> %i.mb, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.md = bitcast <16 x i32> %i.lw to <32 x i16>  ; 2 uses
  %i.me = lshr <32 x i16> %i.md, splat (i16 4)
  %i.mf = or <32 x i16> %i.mc, %i.md
  %i.mg = add nuw nsw <32 x i16> %i.me, splat (i16 -10304)
  %i.mh = bitcast i32 %i.ma to <32 x i1>          ; 2 uses
  %i.mi = select <32 x i1> %i.mh, <32 x i16> %i.mg, <32 x i16> %i.mf ; 3 uses
  %i.mj = and i64 %i.lz, 2147483648
  %i.mk = xor i64 %i.mj, 4294967295
  %i.ml = and i64 %i.kv, %i.gm
  %i.mm = tail call noundef i64 @llvm.pdep.i64(i64 %i.mk, i64 %i.ml) ; 2 uses
  %i.mn = xor i64 %i.kn, %i.gm
  %.not241.i.i = icmp eq i64 %i.km, %i.mn
  br i1 %.not241.i.i, label %bb.aa, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.aa:                                            ; preds = %bb.z
  %i.mo = xor i64 %i.hw, %i.gm
  %i.mp = and i64 %i.mo, %i.hm
  %i.mq = shl i64 %i.mp, 2
  %i.mr = tail call noundef i64 @llvm.pext.i64(i64 %i.mq, i64 %i.kv)
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = icmp ult <32 x i16> %i.mi, splat (i16 2048)
  %i.mu = bitcast i32 %i.ms to <32 x i1>
  %i.mv = add <32 x i16> %i.mi, splat (i16 10240) ; 2 uses
  %i.mw = icmp ult <32 x i16> %i.mv, splat (i16 2048)
  %i.mx = icmp ugt <32 x i16> %i.mv, splat (i16 1023)
  %i.my = and <32 x i1> %i.mx, %i.mh
  %i.mz = or <32 x i1> %i.mt, %i.mw
  %i.na = and <32 x i1> %i.mz, %i.mu
  %i.nb = or <32 x i1> %i.my, %i.na
  %i.nc = bitcast <32 x i1> %i.nb to i32
  %.not.i = icmp eq i32 %i.nc, 0
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.nd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mm, i1 false)
  %i.ne = sub nuw nsw i64 64, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.ne
  %i.ng = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.mm) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.ng
  %i.nh = trunc i64 %notmask243.i.i to i32
  %i.ni = xor i32 %i.nh, -1
  %i.nj = bitcast i32 %i.ni to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mi, ptr align 1 %.0394405.i, <32 x i1> %i.nj)
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.ng
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.nl = or i64 %i.gr, %i.hk
  %i.nm = and i64 %i.nl, %i.gm                    ; 3 uses
  %i.nn = xor i64 %i.nm, %i.gm
  %11 = shufflevector <64 x i1> %i.hj, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.no = bitcast <64 x i1> %11 to i64
  %.not239.i.i = icmp eq i64 %i.nn, %i.no
  br i1 %.not239.i.i, label %bb.ad, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.np = add <64 x i8> %i.go, splat (i8 62)
  %i.nq = select <64 x i1> %i.hj, <64 x i8> %i.np, <64 x i8> zeroinitializer
  %i.nr = xor <64 x i1> %i.hj, splat (i1 true)
  %i.ns = bitcast <64 x i1> %i.nr to i64
  %i.nt = and i64 %i.ns, %i.gm                    ; 2 uses
  %i.nu = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nt)
  %i.nv = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nu, i1 false)
  %i.nw = sub nuw nsw i64 64, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %.0396404.i, i64 %i.nw
  %i.ny = bitcast i64 %i.nm to <64 x i1>
  %i.nz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.nq, <64 x i8> zeroinitializer, <64 x i1> %i.ny)
  %i.oa = shufflevector <64 x i8> %i.nz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ob = zext <32 x i8> %i.oa to <32 x i16>
  %i.oc = bitcast i64 %i.nt to <64 x i1>
  %i.od = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.go, <64 x i8> zeroinitializer, <64 x i1> %i.oc)
  %i.oe = shufflevector <64 x i8> %i.od, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.of = zext <32 x i8> %i.oe to <32 x i16>
  %i.og = shl nuw nsw <32 x i16> %i.ob, splat (i16 6)
  %i.oh = add nuw nsw <32 x i16> %i.og, %i.of
  %i.oi = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nm)
  %i.oj = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.oi) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.oj
  %i.ok = trunc i64 %notmask240.i.i to i32
  %i.ol = xor i32 %i.ok, -1
  %i.om = bitcast i32 %i.ol to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oh, ptr align 1 %.0394405.i, <32 x i1> %i.om)
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %.0394405.i, i64 %i.oj
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0394405.i.be = phi ptr [ %i.u, %bb.c ], [ %i.ha, %bb.r ], [ %i.nk, %bb.ab ], [ %i.cp, %bb.i ], [ %i.kj, %bb.y ], [ %i.hi, %bb.s ], [ %i.on, %bb.ad ], [ %i.fm, %bb.l ], [ %i.gk, %bb.n ]
  %.0396404.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gu, %bb.r ], [ %i.nf, %bb.ab ], [ %i.cl, %bb.i ], [ %i.kf, %bb.y ], [ %i.gu, %bb.s ], [ %i.nx, %bb.ad ], [ %i.fh, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !620

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0394405.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
  %i.oo = icmp eq ptr %.2.i, null
  %i.op = ptrtoint ptr %.2.i to i64
  %i.oq = ptrtoint ptr %3 to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = ashr exact i64 %i.or, 1
  %.0 = select i1 %i.oo, i64 0, i64 %i.os
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7icelake14implementation23convert_utf8_to_utf16beEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !guid !623 {
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
  %4 = shufflevector <64 x i1> %i.z, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ap = bitcast <64 x i1> %4 to i64             ; 2 uses
  %5 = shufflevector <64 x i1> %i.ab, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.aq = bitcast <64 x i1> %5 to i64             ; 2 uses
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.as = or i64 %i.ap, %i.aq
  %i.at = or i64 %i.i, %i.aa                      ; 2 uses
  %i.au = xor i64 %i.as, %i.at
  %.not447.i = icmp eq i64 %i.au, -1
  br i1 %.not447.i, label %bb.h, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.h:                                             ; preds = %bb.g
  %i.av = bitcast i64 %i.at to <64 x i1>
  %i.aw = shufflevector <64 x i1> %i.av, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.ax = bitcast <64 x i1> %i.aw to i64          ; 2 uses
  %i.ay = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.aw)
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ba = zext <32 x i8> %i.az to <32 x i16>      ; 3 uses
  %.inner10 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.bb = bitcast <32 x i16> %i.ba to <64 x i8>
  %i.bc = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bd = and <64 x i8> %.inner10, %i.bc          ; 3 uses
  %i.be = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bd, <64 x i8> %i.bb)
  %i.bf = shufflevector <64 x i8> %i.be, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bg = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bh = add nsw <32 x i16> %i.ba, splat (i16 -1)
  %i.bi = select <64 x i1> %i.bg, <64 x i8> %i.bd, <64 x i8> zeroinitializer
  %i.bj = bitcast <32 x i16> %i.bh to <64 x i8>
  %i.bk = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bi, <64 x i8> %i.bj)
  %i.bl = shufflevector <64 x i8> %i.bk, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bm = bitcast <64 x i8> %i.bl to <32 x i16>
  %i.bn = shl nuw nsw <32 x i16> %i.bm, splat (i16 6)
  %i.bo = add nsw <32 x i16> %i.ba, splat (i16 -2)
  %i.bp = select <64 x i1> %i.ab, <64 x i8> %i.bd, <64 x i8> zeroinitializer
  %i.bq = bitcast <32 x i16> %i.bo to <64 x i8>
  %i.br = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bp, <64 x i8> %i.bq)
  %i.bs = shufflevector <64 x i8> %i.br, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bt = bitcast <64 x i8> %i.bs to <32 x i16>
  %i.bu = shl <32 x i16> %i.bt, splat (i16 12)
  %i.bv = bitcast <64 x i8> %i.bf to <16 x i32>
  %i.bw = bitcast <32 x i16> %i.bn to <16 x i32>
  %i.bx = bitcast <32 x i16> %i.bu to <16 x i32>
  %i.by = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bv, <16 x i32> %i.bw, <16 x i32> %i.bx, i32 254) ; 3 uses
  %i.bz = shl i64 %i.ac, 2
  %i.ca = tail call noundef i64 @llvm.pext.i64(i64 %i.bz, i64 %i.ax)
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = bitcast <16 x i32> %i.by to <32 x i16>
  %i.cd = icmp ult <32 x i16> %i.cc, splat (i16 2048)
  %i.ce = bitcast i32 %i.cb to <32 x i1>
  %i.cf = bitcast <16 x i32> %i.by to <32 x i16>
  %i.cg = and <32 x i16> %i.cf, splat (i16 -2048)
  %i.ch = icmp eq <32 x i16> %i.cg, splat (i16 -10240)
  %i.ci = or <32 x i1> %i.cd, %i.ch
  %i.cj = and <32 x i1> %i.ci, %i.ce
  %i.ck = bitcast <32 x i1> %i.cj to i32
  %.not232.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not232.i.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cl = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ax) ; 2 uses
  %i.cm = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cl) ; 2 uses
  %i.cn = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cl, i1 false)
  %i.co = sub nuw nsw i64 64, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.co
  %i.cq = bitcast <16 x i32> %i.by to <64 x i8>
  %i.cr = shufflevector <64 x i8> %i.cq, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.cm
  %i.cs = trunc i64 %notmask233.i.i to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = bitcast <64 x i8> %i.cr to <32 x i16>
  %i.cv = bitcast i32 %i.ct to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cu, ptr align 1 %.0438449.i, <32 x i1> %i.cv)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.cm
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %6 = shufflevector <64 x i1> %i.am, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.cx = bitcast <64 x i1> %6 to i64             ; 3 uses
  %i.cy = or i64 %i.ap, %i.aq
  %i.cz = or i64 %i.cy, %i.cx
  %i.da = or i64 %i.i, %i.aa                      ; 2 uses
  %i.db = or i64 %i.da, %i.cx
  %i.dc = bitcast i64 %i.db to <64 x i1>
  %i.dd = shufflevector <64 x i1> %i.dc, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.de = or <64 x i1> %6, %i.dd                  ; 2 uses
  %i.df = bitcast <64 x i1> %i.de to i64          ; 3 uses
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.de)
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.di = zext <32 x i8> %i.dh to <32 x i16>      ; 3 uses
  %.inner12 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dj = bitcast <32 x i16> %i.di to <64 x i8>
  %i.dk = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dl = and <64 x i8> %.inner12, %i.dk          ; 3 uses
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dl, <64 x i8> %i.dj)
  %i.dn = shufflevector <64 x i8> %i.dm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.do = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dp = add nsw <32 x i16> %i.di, splat (i16 -1)
  %i.dq = select <64 x i1> %i.do, <64 x i8> %i.dl, <64 x i8> zeroinitializer
  %i.dr = bitcast <32 x i16> %i.dp to <64 x i8>
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dq, <64 x i8> %i.dr)
  %i.dt = shufflevector <64 x i8> %i.ds, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.du = bitcast <64 x i8> %i.dt to <32 x i16>
  %i.dv = shl nuw nsw <32 x i16> %i.du, splat (i16 6)
  %i.dw = add nsw <32 x i16> %i.di, splat (i16 -2)
  %i.dx = select <64 x i1> %i.ab, <64 x i8> %i.dl, <64 x i8> zeroinitializer
  %i.dy = bitcast <32 x i16> %i.dw to <64 x i8>
  %i.dz = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dx, <64 x i8> %i.dy)
  %i.ea = shufflevector <64 x i8> %i.dz, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.eb = bitcast <64 x i8> %i.ea to <32 x i16>
  %i.ec = shl <32 x i16> %i.eb, splat (i16 12)
  %i.ed = bitcast <64 x i8> %i.dn to <16 x i32>
  %i.ee = bitcast <32 x i16> %i.dv to <16 x i32>
  %i.ef = bitcast <32 x i16> %i.ec to <16 x i32>
  %i.eg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ed, <16 x i32> %i.ee, <16 x i32> %i.ef, i32 254)
  %i.eh = tail call noundef i64 @llvm.pext.i64(i64 %i.cx, i64 %i.df) ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = lshr i64 %i.eh, 1                       ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = bitcast i32 %i.ei to <32 x i1>
  %i.em = select <32 x i1> %i.el, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.en = bitcast <16 x i32> %i.eg to <32 x i16>  ; 2 uses
  %i.eo = lshr <32 x i16> %i.en, splat (i16 4)
  %i.ep = or <32 x i16> %i.em, %i.en
  %i.eq = add nuw nsw <32 x i16> %i.eo, splat (i16 -10304)
  %i.er = bitcast i32 %i.ek to <32 x i1>          ; 2 uses
  %i.es = select <32 x i1> %i.er, <32 x i16> %i.eq, <32 x i16> %i.ep ; 3 uses
  %i.et = and i64 %i.ej, 2147483648
  %i.eu = xor i64 %i.et, 4294967295
  %i.ev = tail call noundef i64 @llvm.pdep.i64(i64 %i.eu, i64 %i.df) ; 2 uses
  %i.ew = xor i64 %i.cz, %i.da
  %.not445.i = icmp eq i64 %i.ew, -1
  br i1 %.not445.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.ex = xor i64 %i.an, -1
  %i.ey = and i64 %i.ac, %i.ex
  %i.ez = shl i64 %i.ey, 2
  %i.fa = tail call noundef i64 @llvm.pext.i64(i64 %i.ez, i64 %i.df)
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp ult <32 x i16> %i.es, splat (i16 2048)
  %i.fd = bitcast i32 %i.fb to <32 x i1>
  %i.fe = add <32 x i16> %i.es, splat (i16 10240) ; 2 uses
  %i.ff = icmp ult <32 x i16> %i.fe, splat (i16 2048)
  %i.fg = icmp ugt <32 x i16> %i.fe, splat (i16 1023)
  %i.fh = and <32 x i1> %i.fg, %i.er
  %i.fi = or <32 x i1> %i.fc, %i.ff
  %i.fj = and <32 x i1> %i.fi, %i.fd
  %i.fk = or <32 x i1> %i.fh, %i.fj
  %i.fl = bitcast <32 x i1> %i.fk to i32
  %.not446.i = icmp eq i32 %i.fl, 0
  br i1 %.not446.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fm = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false)
  %i.fn = sub nuw nsw i64 64, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.fn
  %i.fp = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ev) ; 2 uses
  %i.fq = bitcast <32 x i16> %i.es to <64 x i8>
  %i.fr = shufflevector <64 x i8> %i.fq, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fp
  %i.fs = trunc i64 %notmask230.i.i to i32
  %i.ft = xor i32 %i.fs, -1
  %i.fu = bitcast <64 x i8> %i.fr to <32 x i16>
  %i.fv = bitcast i32 %i.ft to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fu, ptr align 1 %.0438449.i, <32 x i1> %i.fv)
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.fp
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fx = or i64 %i.i, %i.aa                      ; 3 uses
  %7 = shufflevector <64 x i1> %i.z, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.fy = bitcast <64 x i1> %7 to i64
  %i.fz = xor i64 %i.fx, %i.fy
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.n, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.n:                                             ; preds = %bb.m
  %i.gb = add <64 x i8> %i.g, splat (i8 62)
  %i.gc = select <64 x i1> %i.z, <64 x i8> %i.gb, <64 x i8> zeroinitializer
  %i.gd = xor <64 x i1> %i.z, splat (i1 true)
  %i.ge = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.ge, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %spec.select.v.i
  %i.gf = bitcast i64 %i.fx to <64 x i1>
  %i.gg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gc, <64 x i8> zeroinitializer, <64 x i1> %i.gf)
  %i.gh = shufflevector <64 x i8> %i.gg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gi = zext <32 x i8> %i.gh to <32 x i16>
  %i.gj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.gd)
  %i.gk = shufflevector <64 x i8> %i.gj, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gl = zext <32 x i8> %i.gk to <32 x i16>
  %i.gm = shl nuw nsw <32 x i16> %i.gi, splat (i16 6)
  %i.gn = add nuw nsw <32 x i16> %i.gm, %i.gl
  %i.go = bitcast <32 x i16> %i.gn to <64 x i8>
  %i.gp = shufflevector <64 x i8> %i.go, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gq = trunc i64 %i.fx to i32
  %i.gr = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gq)
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gs
  %i.gt = trunc i64 %notmask.i.i to i32
  %i.gu = xor i32 %i.gt, -1
  %i.gv = bitcast <64 x i8> %i.gp to <32 x i16>
  %i.gw = bitcast i32 %i.gu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gv, ptr align 1 %.0438449.i, <32 x i1> %i.gw)
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.gs
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.gy = icmp ult ptr %.0440448.i, %i.a
  br i1 %i.gy, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.gz = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.ha = bitcast i64 %i.gz to <64 x i1>          ; 3 uses
  %i.hb = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0440448.i, <64 x i1> %i.ha, <64 x i8> zeroinitializer) ; 11 uses
  %i.hc = icmp sgt <64 x i8> %i.hb, splat (i8 -1)
  %i.hd = and <64 x i1> %i.hc, %i.ha              ; 3 uses
  %i.he = bitcast <64 x i1> %i.hd to i64          ; 3 uses
  %i.hf = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hd, <64 x i1> %i.ha)
  %i.hg = and i32 %i.hf, 255
  %.not.i9.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.d ; 2 uses
  %i.hi = icmp ult i64 %i.d, 33
  %i.hj = shufflevector <64 x i8> %i.hb, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hk = zext <32 x i8> %i.hj to <32 x i16>
  %i.hl = bitcast <32 x i16> %i.hk to <64 x i8>
  %i.hm = shufflevector <64 x i8> %i.hl, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62> ; 2 uses
  br i1 %i.hi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hn = trunc i64 %i.gz to i32
  %i.ho = bitcast <64 x i8> %i.hm to <32 x i16>
  %i.hp = bitcast i32 %i.hn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ho, ptr align 1 %.0438449.i, <32 x i1> %i.hp)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hm, ptr %.0438449.i, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.0438449.i, i64 64
  %i.hs = shufflevector <64 x i8> %i.hb, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ht = zext <32 x i8> %i.hs to <32 x i16>
  %i.hu = bitcast <32 x i16> %i.ht to <64 x i8>
  %i.hv = shufflevector <64 x i8> %i.hu, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.hw = trunc i64 %i.d to i32
  %i.hx = add i32 %i.hw, -32
  %notmask259.i.i = shl nsw i32 -1, %i.hx
  %i.hy = xor i32 %notmask259.i.i, -1
  %i.hz = bitcast <64 x i8> %i.hv to <32 x i16>
  %i.ia = bitcast i32 %i.hy to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hz, ptr nonnull align 1 %i.hr, <32 x i1> %i.ia)
  %i.ib = getelementptr [2 x i8], ptr %.0438449.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ic = icmp ugt <64 x i8> %i.hb, splat (i8 -65) ; 5 uses
  %i.id = bitcast <64 x i1> %i.ic to i64          ; 3 uses
  %i.ie = icmp ugt <64 x i8> %i.hb, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.if = bitcast <64 x i1> %i.ie to i64          ; 2 uses
  %i.ig = and <64 x i8> %i.hb, splat (i8 -2)
  %i.ih = icmp eq <64 x i8> %i.ig, splat (i8 -64) ; 2 uses
  %i.ii = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ih, <64 x i1> %i.ih)
  %i.ij = and i32 %i.ii, 255
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.il = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ie, <64 x i1> %i.ie)
  %i.im = and i32 %i.il, 255
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.io = icmp ugt <64 x i8> %i.hb, splat (i8 -17) ; 2 uses
  %i.ip = bitcast <64 x i1> %i.io to i64          ; 2 uses
  %i.iq = xor <64 x i1> %i.hd, splat (i1 true)
  %i.ir = bitcast <64 x i1> %i.iq to i64
  %i.is = and i64 %i.ir, %i.gz                    ; 2 uses
  %8 = shufflevector <64 x i1> %i.ic, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.it = bitcast <64 x i1> %8 to i64             ; 2 uses
  %9 = shufflevector <64 x i1> %i.ie, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.iu = bitcast <64 x i1> %9 to i64             ; 2 uses
  %i.iv = icmp eq i64 %i.ip, 0
  br i1 %i.iv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.iw = or i64 %i.it, %i.iu
  %i.ix = or i64 %i.he, %i.id                     ; 2 uses
  %i.iy = xor i64 %i.ix, %i.gz
  %.not256.i.i = icmp eq i64 %i.iw, %i.iy
  br i1 %.not256.i.i, label %bb.x, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.x:                                             ; preds = %bb.w
  %i.iz = bitcast i64 %i.ix to <64 x i1>
  %i.ja = shufflevector <64 x i1> %i.iz, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jb = bitcast <64 x i1> %i.ja to i64
  %i.jc = add i64 %i.d, -1
  %i.jd = shl nuw nsw i64 1, %i.jc
  %i.je = or i64 %i.jd, %i.jb                     ; 3 uses
  %i.jf = bitcast i64 %i.je to <64 x i1>
  %i.jg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.jf)
  %i.jh = shufflevector <64 x i8> %i.jg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ji = zext <32 x i8> %i.jh to <32 x i16>      ; 3 uses
  %i.jj = bitcast i64 %i.is to <64 x i1>          ; 2 uses
  %.inner15 = select <64 x i1> %i.jj, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner16 = and <64 x i8> %.inner15, %i.hb      ; 3 uses
  %i.jk = bitcast <32 x i16> %i.ji to <64 x i8>
  %i.jl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner16, <64 x i8> %i.jk)
  %i.jm = shufflevector <64 x i8> %i.jl, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jn = shufflevector <64 x i1> %i.jj, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jo = add nsw <32 x i16> %i.ji, splat (i16 -1)
  %i.jp = select <64 x i1> %i.jn, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jq = bitcast <32 x i16> %i.jo to <64 x i8>
  %i.jr = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jp, <64 x i8> %i.jq)
  %i.js = shufflevector <64 x i8> %i.jr, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jt = bitcast <64 x i8> %i.js to <32 x i16>
  %i.ju = shl nuw nsw <32 x i16> %i.jt, splat (i16 6)
  %i.jv = add nsw <32 x i16> %i.ji, splat (i16 -2)
  %i.jw = select <64 x i1> %i.ie, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jx = bitcast <32 x i16> %i.jv to <64 x i8>
  %i.jy = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jw, <64 x i8> %i.jx)
  %i.jz = shufflevector <64 x i8> %i.jy, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ka = bitcast <64 x i8> %i.jz to <32 x i16>
  %i.kb = shl <32 x i16> %i.ka, splat (i16 12)
  %i.kc = bitcast <64 x i8> %i.jm to <16 x i32>
  %i.kd = bitcast <32 x i16> %i.ju to <16 x i32>
  %i.ke = bitcast <32 x i16> %i.kb to <16 x i32>
  %i.kf = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kc, <16 x i32> %i.kd, <16 x i32> %i.ke, i32 254) ; 3 uses
  %i.kg = and i64 %i.if, %i.gz
  %i.kh = shl i64 %i.kg, 2
  %i.ki = tail call noundef i64 @llvm.pext.i64(i64 %i.kh, i64 %i.je)
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = bitcast <16 x i32> %i.kf to <32 x i16>
  %i.kl = icmp ult <32 x i16> %i.kk, splat (i16 2048)
  %i.km = bitcast i32 %i.kj to <32 x i1>
  %i.kn = bitcast <16 x i32> %i.kf to <32 x i16>
  %i.ko = and <32 x i16> %i.kn, splat (i16 -2048)
  %i.kp = icmp eq <32 x i16> %i.ko, splat (i16 -10240)
  %i.kq = or <32 x i1> %i.kl, %i.kp
  %i.kr = and <32 x i1> %i.kq, %i.km
  %i.ks = bitcast <32 x i1> %i.kr to i32
  %.not257.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not257.i.i, label %bb.y, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.y:                                             ; preds = %bb.x
  %i.kt = and i64 %i.je, %i.gz
  %i.ku = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kt) ; 2 uses
  %i.kv = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ku) ; 2 uses
  %i.kw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ku, i1 false)
  %i.kx = sub nuw nsw i64 64, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.kx
  %i.kz = bitcast <16 x i32> %i.kf to <64 x i8>
  %i.la = shufflevector <64 x i8> %i.kz, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask258.i.i = shl nsw i64 -1, %i.kv
  %i.lb = trunc i64 %notmask258.i.i to i32
  %i.lc = xor i32 %i.lb, -1
  %i.ld = bitcast <64 x i8> %i.la to <32 x i16>
  %i.le = bitcast i32 %i.lc to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ld, ptr align 1 %.0438449.i, <32 x i1> %i.le)
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.kv
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %10 = shufflevector <64 x i1> %i.io, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.lg = bitcast <64 x i1> %10 to i64            ; 3 uses
  %i.lh = or i64 %i.it, %i.iu
  %i.li = or i64 %i.lh, %i.lg
  %i.lj = or i64 %i.he, %i.id                     ; 2 uses
  %i.lk = or i64 %i.lj, %i.lg
  %i.ll = bitcast i64 %i.lk to <64 x i1>
  %i.lm = shufflevector <64 x i1> %i.ll, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ln = or <64 x i1> %10, %i.lm
  %i.lo = bitcast <64 x i1> %i.ln to i64
  %i.lp = add i64 %i.d, -1
  %i.lq = shl nuw nsw i64 1, %i.lp
  %i.lr = or i64 %i.lq, %i.lo                     ; 4 uses
  %i.ls = bitcast i64 %i.lr to <64 x i1>
  %i.lt = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ls)
  %i.lu = shufflevector <64 x i8> %i.lt, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lv = zext <32 x i8> %i.lu to <32 x i16>      ; 3 uses
  %i.lw = bitcast i64 %i.is to <64 x i1>          ; 2 uses
  %.inner18 = select <64 x i1> %i.lw, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner19 = and <64 x i8> %.inner18, %i.hb      ; 3 uses
  %i.lx = bitcast <32 x i16> %i.lv to <64 x i8>
  %i.ly = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner19, <64 x i8> %i.lx)
  %i.lz = shufflevector <64 x i8> %i.ly, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ma = shufflevector <64 x i1> %i.lw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.mb = add nsw <32 x i16> %i.lv, splat (i16 -1)
  %i.mc = select <64 x i1> %i.ma, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.md = bitcast <32 x i16> %i.mb to <64 x i8>
  %i.me = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mc, <64 x i8> %i.md)
  %i.mf = shufflevector <64 x i8> %i.me, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mg = bitcast <64 x i8> %i.mf to <32 x i16>
  %i.mh = shl nuw nsw <32 x i16> %i.mg, splat (i16 6)
  %i.mi = add nsw <32 x i16> %i.lv, splat (i16 -2)
  %i.mj = select <64 x i1> %i.ie, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.mk = bitcast <32 x i16> %i.mi to <64 x i8>
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mj, <64 x i8> %i.mk)
  %i.mm = shufflevector <64 x i8> %i.ml, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mn = bitcast <64 x i8> %i.mm to <32 x i16>
  %i.mo = shl <32 x i16> %i.mn, splat (i16 12)
  %i.mp = bitcast <64 x i8> %i.lz to <16 x i32>
  %i.mq = bitcast <32 x i16> %i.mh to <16 x i32>
  %i.mr = bitcast <32 x i16> %i.mo to <16 x i32>
  %i.ms = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mp, <16 x i32> %i.mq, <16 x i32> %i.mr, i32 254)
  %i.mt = tail call noundef i64 @llvm.pext.i64(i64 %i.lg, i64 %i.lr) ; 2 uses
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = lshr i64 %i.mt, 1                       ; 2 uses
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = bitcast i32 %i.mu to <32 x i1>
  %i.my = select <32 x i1> %i.mx, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.mz = bitcast <16 x i32> %i.ms to <32 x i16>  ; 2 uses
  %i.na = lshr <32 x i16> %i.mz, splat (i16 4)
  %i.nb = or <32 x i16> %i.my, %i.mz
  %i.nc = add nuw nsw <32 x i16> %i.na, splat (i16 -10304)
  %i.nd = bitcast i32 %i.mw to <32 x i1>          ; 2 uses
  %i.ne = select <32 x i1> %i.nd, <32 x i16> %i.nc, <32 x i16> %i.nb ; 3 uses
  %i.nf = and i64 %i.mv, 2147483648
  %i.ng = xor i64 %i.nf, 4294967295
  %i.nh = and i64 %i.lr, %i.gz
  %i.ni = tail call noundef i64 @llvm.pdep.i64(i64 %i.ng, i64 %i.nh) ; 2 uses
  %i.nj = xor i64 %i.lj, %i.gz
  %.not253.i.i = icmp eq i64 %i.li, %i.nj
  br i1 %.not253.i.i, label %bb.aa, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.aa:                                            ; preds = %bb.z
  %i.nk = xor i64 %i.ip, %i.gz
  %i.nl = and i64 %i.nk, %i.if
  %i.nm = shl i64 %i.nl, 2
  %i.nn = tail call noundef i64 @llvm.pext.i64(i64 %i.nm, i64 %i.lr)
  %i.no = trunc i64 %i.nn to i32
  %i.np = icmp ult <32 x i16> %i.ne, splat (i16 2048)
  %i.nq = bitcast i32 %i.no to <32 x i1>
  %i.nr = add <32 x i16> %i.ne, splat (i16 10240) ; 2 uses
  %i.ns = icmp ult <32 x i16> %i.nr, splat (i16 2048)
  %i.nt = icmp ugt <32 x i16> %i.nr, splat (i16 1023)
  %i.nu = and <32 x i1> %i.nt, %i.nd
  %i.nv = or <32 x i1> %i.np, %i.ns
  %i.nw = and <32 x i1> %i.nv, %i.nq
  %i.nx = or <32 x i1> %i.nu, %i.nw
  %i.ny = bitcast <32 x i1> %i.nx to i32
  %.not.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.nz = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ni, i1 false)
  %i.oa = sub nuw nsw i64 64, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.oa
  %i.oc = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ni) ; 2 uses
  %i.od = bitcast <32 x i16> %i.ne to <64 x i8>
  %i.oe = shufflevector <64 x i8> %i.od, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.oc
  %i.of = trunc i64 %notmask255.i.i to i32
  %i.og = xor i32 %i.of, -1
  %i.oh = bitcast <64 x i8> %i.oe to <32 x i16>
  %i.oi = bitcast i32 %i.og to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oh, ptr align 1 %.0438449.i, <32 x i1> %i.oi)
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.oc
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ok = or i64 %i.he, %i.id
  %i.ol = and i64 %i.ok, %i.gz                    ; 3 uses
  %i.om = xor i64 %i.ol, %i.gz
  %11 = shufflevector <64 x i1> %i.ic, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.on = bitcast <64 x i1> %11 to i64
  %.not251.i.i = icmp eq i64 %i.om, %i.on
  br i1 %.not251.i.i, label %bb.ad, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.oo = add <64 x i8> %i.hb, splat (i8 62)
  %i.op = select <64 x i1> %i.ic, <64 x i8> %i.oo, <64 x i8> zeroinitializer
  %i.oq = xor <64 x i1> %i.ic, splat (i1 true)
  %i.or = bitcast <64 x i1> %i.oq to i64
  %i.os = and i64 %i.or, %i.gz                    ; 2 uses
  %i.ot = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.os)
  %i.ou = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ot, i1 false)
  %i.ov = sub nuw nsw i64 64, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.0440448.i, i64 %i.ov
  %i.ox = bitcast i64 %i.ol to <64 x i1>
  %i.oy = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.op, <64 x i8> zeroinitializer, <64 x i1> %i.ox)
  %i.oz = shufflevector <64 x i8> %i.oy, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pa = zext <32 x i8> %i.oz to <32 x i16>
  %i.pb = bitcast i64 %i.os to <64 x i1>
  %i.pc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.hb, <64 x i8> zeroinitializer, <64 x i1> %i.pb)
  %i.pd = shufflevector <64 x i8> %i.pc, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pe = zext <32 x i8> %i.pd to <32 x i16>
  %i.pf = shl nuw nsw <32 x i16> %i.pa, splat (i16 6)
  %i.pg = add nuw nsw <32 x i16> %i.pf, %i.pe
  %i.ph = bitcast <32 x i16> %i.pg to <64 x i8>
  %i.pi = shufflevector <64 x i8> %i.ph, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.pj = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ol)
  %i.pk = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.pj) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.pk
  %i.pl = trunc i64 %notmask252.i.i to i32
  %i.pm = xor i32 %i.pl, -1
  %i.pn = bitcast <64 x i8> %i.pi to <32 x i16>
  %i.po = bitcast i32 %i.pm to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pn, ptr align 1 %.0438449.i, <32 x i1> %i.po)
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.0438449.i, i64 %i.pk
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0438449.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hq, %bb.r ], [ %i.oj, %bb.ab ], [ %i.cw, %bb.i ], [ %i.lf, %bb.y ], [ %i.ib, %bb.s ], [ %i.pp, %bb.ad ], [ %i.fw, %bb.l ], [ %i.gx, %bb.n ]
  %.0440448.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hh, %bb.r ], [ %i.ob, %bb.ab ], [ %i.cp, %bb.i ], [ %i.ky, %bb.y ], [ %i.hh, %bb.s ], [ %i.ow, %bb.ad ], [ %i.fo, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !622

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0438449.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
  %i.pq = icmp eq ptr %.2.i, null
  %i.pr = ptrtoint ptr %.2.i to i64
  %i.ps = ptrtoint ptr %3 to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = ashr exact i64 %i.pt, 1
  %.0 = select i1 %i.pq, i64 0, i64 %i.pu
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !guid !625 {
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
  %4 = shufflevector <64 x i1> %i.v, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.al = bitcast <64 x i1> %4 to i64             ; 2 uses
  %5 = shufflevector <64 x i1> %i.x, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.am = bitcast <64 x i1> %5 to i64             ; 2 uses
  %i.an = icmp eq i64 %i.aj, 0
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ao = or i64 %i.al, %i.am
  %i.ap = or i64 %i.i, %i.w                       ; 2 uses
  %i.aq = xor i64 %i.ao, %i.ap
  %.not439.i = icmp eq i64 %i.aq, -1
  br i1 %.not439.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ar = bitcast i64 %i.ap to <64 x i1>
  %i.as = shufflevector <64 x i1> %i.ar, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.at = bitcast <64 x i1> %i.as to i64          ; 2 uses
  %i.au = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.as)
  %i.av = shufflevector <64 x i8> %i.au, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aw = zext <32 x i8> %i.av to <32 x i16>      ; 3 uses
  %.inner50 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.ax = bitcast <32 x i16> %i.aw to <64 x i8>
  %i.ay = bitcast <8 x i64> %i.f to <64 x i8>
  %i.az = and <64 x i8> %.inner50, %i.ay          ; 3 uses
  %i.ba = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.az, <64 x i8> %i.ax)
  %i.bb = shufflevector <64 x i8> %i.ba, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bc = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bd = add nsw <32 x i16> %i.aw, splat (i16 -1)
  %i.be = select <64 x i1> %i.bc, <64 x i8> %i.az, <64 x i8> zeroinitializer
  %i.bf = bitcast <32 x i16> %i.bd to <64 x i8>
  %i.bg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.be, <64 x i8> %i.bf)
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bi = bitcast <64 x i8> %i.bh to <32 x i16>
  %i.bj = shl nuw nsw <32 x i16> %i.bi, splat (i16 6)
  %i.bk = add nsw <32 x i16> %i.aw, splat (i16 -2)
  %i.bl = select <64 x i1> %i.x, <64 x i8> %i.az, <64 x i8> zeroinitializer
  %i.bm = bitcast <32 x i16> %i.bk to <64 x i8>
  %i.bn = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bl, <64 x i8> %i.bm)
  %i.bo = shufflevector <64 x i8> %i.bn, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bp = bitcast <64 x i8> %i.bo to <32 x i16>
  %i.bq = shl <32 x i16> %i.bp, splat (i16 12)
  %i.br = bitcast <64 x i8> %i.bb to <16 x i32>
  %i.bs = bitcast <32 x i16> %i.bj to <16 x i32>
  %i.bt = bitcast <32 x i16> %i.bq to <16 x i32>
  %i.bu = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.br, <16 x i32> %i.bs, <16 x i32> %i.bt, i32 254) ; 2 uses
  %i.bv = shl i64 %i.y, 2
  %i.bw = tail call noundef i64 @llvm.pext.i64(i64 %i.bv, i64 %i.at)
  %i.bx = trunc i64 %i.bw to i32
  %i.by = bitcast <16 x i32> %i.bu to <32 x i16>  ; 2 uses
  %i.bz = icmp ult <32 x i16> %i.by, splat (i16 2048)
  %i.ca = bitcast i32 %i.bx to <32 x i1>
  %i.cb = bitcast <16 x i32> %i.bu to <32 x i16>
  %i.cc = and <32 x i16> %i.cb, splat (i16 -2048)
  %i.cd = icmp eq <32 x i16> %i.cc, splat (i16 -10240)
  %i.ce = or <32 x i1> %i.bz, %i.cd
  %i.cf = and <32 x i1> %i.ce, %i.ca
  %i.cg = bitcast <32 x i1> %i.cf to i32
  %.not222.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not222.i.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.ch = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.at) ; 2 uses
  %i.ci = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ch) ; 2 uses
  %i.cj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.ck = sub nuw nsw i64 64, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.ck
  %notmask223.i.i = shl nsw i64 -1, %i.ci
  %i.cm = trunc i64 %notmask223.i.i to i32
  %i.cn = xor i32 %i.cm, -1
  %i.co = bitcast i32 %i.cn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.by, ptr align 1 %.0447.i, <32 x i1> %i.co)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.ci
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %6 = shufflevector <64 x i1> %i.ai, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.cq = bitcast <64 x i1> %6 to i64             ; 3 uses
  %i.cr = or i64 %i.al, %i.am
  %i.cs = or i64 %i.cr, %i.cq
  %i.ct = or i64 %i.i, %i.w                       ; 2 uses
  %i.cu = or i64 %i.ct, %i.cq
  %i.cv = bitcast i64 %i.cu to <64 x i1>
  %i.cw = shufflevector <64 x i1> %i.cv, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.cx = or <64 x i1> %6, %i.cw                  ; 2 uses
  %i.cy = bitcast <64 x i1> %i.cx to i64          ; 3 uses
  %i.cz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.cx)
  %i.da = shufflevector <64 x i8> %i.cz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.db = zext <32 x i8> %i.da to <32 x i16>      ; 3 uses
  %.inner52 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dc = bitcast <32 x i16> %i.db to <64 x i8>
  %i.dd = bitcast <8 x i64> %i.f to <64 x i8>
  %i.de = and <64 x i8> %.inner52, %i.dd          ; 3 uses
  %i.df = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.de, <64 x i8> %i.dc)
  %i.dg = shufflevector <64 x i8> %i.df, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dh = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.di = add nsw <32 x i16> %i.db, splat (i16 -1)
  %i.dj = select <64 x i1> %i.dh, <64 x i8> %i.de, <64 x i8> zeroinitializer
  %i.dk = bitcast <32 x i16> %i.di to <64 x i8>
  %i.dl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dj, <64 x i8> %i.dk)
  %i.dm = shufflevector <64 x i8> %i.dl, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dn = bitcast <64 x i8> %i.dm to <32 x i16>
  %i.do = shl nuw nsw <32 x i16> %i.dn, splat (i16 6)
  %i.dp = add nsw <32 x i16> %i.db, splat (i16 -2)
  %i.dq = select <64 x i1> %i.x, <64 x i8> %i.de, <64 x i8> zeroinitializer
  %i.dr = bitcast <32 x i16> %i.dp to <64 x i8>
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dq, <64 x i8> %i.dr)
  %i.dt = shufflevector <64 x i8> %i.ds, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.du = bitcast <64 x i8> %i.dt to <32 x i16>
  %i.dv = shl <32 x i16> %i.du, splat (i16 12)
  %i.dw = bitcast <64 x i8> %i.dg to <16 x i32>
  %i.dx = bitcast <32 x i16> %i.do to <16 x i32>
  %i.dy = bitcast <32 x i16> %i.dv to <16 x i32>
  %i.dz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dw, <16 x i32> %i.dx, <16 x i32> %i.dy, i32 254)
  %i.ea = tail call noundef i64 @llvm.pext.i64(i64 %i.cq, i64 %i.cy) ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = lshr i64 %i.ea, 1                       ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = bitcast i32 %i.eb to <32 x i1>
  %i.ef = select <32 x i1> %i.ee, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.eg = bitcast <16 x i32> %i.dz to <32 x i16>  ; 2 uses
  %i.eh = lshr <32 x i16> %i.eg, splat (i16 4)
  %i.ei = or <32 x i16> %i.ef, %i.eg
  %i.ej = add nuw nsw <32 x i16> %i.eh, splat (i16 -10304)
  %i.ek = bitcast i32 %i.ed to <32 x i1>          ; 2 uses
  %i.el = select <32 x i1> %i.ek, <32 x i16> %i.ej, <32 x i16> %i.ei ; 3 uses
  %i.em = and i64 %i.ec, 2147483648
  %i.en = xor i64 %i.em, 4294967295
  %i.eo = tail call noundef i64 @llvm.pdep.i64(i64 %i.en, i64 %i.cy) ; 2 uses
  %i.ep = xor i64 %i.cs, %i.ct
  %.not437.i = icmp eq i64 %i.ep, -1
  br i1 %.not437.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.eq = xor i64 %i.aj, -1
  %i.er = and i64 %i.y, %i.eq
  %i.es = shl i64 %i.er, 2
  %i.et = tail call noundef i64 @llvm.pext.i64(i64 %i.es, i64 %i.cy)
  %i.eu = trunc i64 %i.et to i32
  %i.ev = icmp ult <32 x i16> %i.el, splat (i16 2048)
  %i.ew = bitcast i32 %i.eu to <32 x i1>
  %i.ex = add <32 x i16> %i.el, splat (i16 10240) ; 2 uses
  %i.ey = icmp ult <32 x i16> %i.ex, splat (i16 2048)
  %i.ez = icmp ugt <32 x i16> %i.ex, splat (i16 1023)
  %i.fa = and <32 x i1> %i.ez, %i.ek
  %i.fb = or <32 x i1> %i.ev, %i.ey
  %i.fc = and <32 x i1> %i.fb, %i.ew
  %i.fd = or <32 x i1> %i.fa, %i.fc
  %i.fe = bitcast <32 x i1> %i.fd to i32
  %.not438.i = icmp eq i32 %i.fe, 0
  br i1 %.not438.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.ff = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eo, i1 false)
  %i.fg = sub nuw nsw i64 64, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.fg
  %i.fi = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eo) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fi
  %i.fj = trunc i64 %notmask220.i.i to i32
  %i.fk = xor i32 %i.fj, -1
  %i.fl = bitcast i32 %i.fk to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.el, ptr align 1 %.0447.i, <32 x i1> %i.fl)
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.fi
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fn = or i64 %i.i, %i.w                       ; 3 uses
  %7 = shufflevector <64 x i1> %i.v, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.fo = bitcast <64 x i1> %7 to i64
  %i.fp = xor i64 %i.fn, %i.fo
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.fr = add <64 x i8> %i.g, splat (i8 62)
  %i.fs = select <64 x i1> %i.v, <64 x i8> %i.fr, <64 x i8> zeroinitializer
  %i.ft = xor <64 x i1> %i.v, splat (i1 true)
  %i.fu = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.fu, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %spec.select.v.i
  %i.fv = bitcast i64 %i.fn to <64 x i1>
  %i.fw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.fs, <64 x i8> zeroinitializer, <64 x i1> %i.fv)
  %i.fx = shufflevector <64 x i8> %i.fw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fy = zext <32 x i8> %i.fx to <32 x i16>
  %i.fz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.ft)
  %i.ga = shufflevector <64 x i8> %i.fz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gb = zext <32 x i8> %i.ga to <32 x i16>
  %i.gc = shl nuw nsw <32 x i16> %i.fy, splat (i16 6)
  %i.gd = add nuw nsw <32 x i16> %i.gc, %i.gb
  %i.ge = trunc i64 %i.fn to i32
  %i.gf = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ge)
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gg
  %i.gh = trunc i64 %notmask.i.i to i32
  %i.gi = xor i32 %i.gh, -1
  %i.gj = bitcast i32 %i.gi to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gd, ptr align 1 %.0447.i, <32 x i1> %i.gj)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.gg
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gl = icmp ult ptr %.0433446.i, %i.a
  br i1 %i.gl, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.gm = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.gn = bitcast i64 %i.gm to <64 x i1>          ; 3 uses
  %i.go = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0433446.i, <64 x i1> %i.gn, <64 x i8> zeroinitializer) ; 11 uses
  %i.gp = icmp sgt <64 x i8> %i.go, splat (i8 -1)
  %i.gq = and <64 x i1> %i.gp, %i.gn              ; 3 uses
  %i.gr = bitcast <64 x i1> %i.gq to i64          ; 3 uses
  %i.gs = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gq, <64 x i1> %i.gn)
  %i.gt = and i32 %i.gs, 255
  %.not.i42.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gu = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.d ; 2 uses
  %i.gv = icmp ult i64 %i.d, 33
  %i.gw = shufflevector <64 x i8> %i.go, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gx = zext <32 x i8> %i.gw to <32 x i16>      ; 2 uses
  br i1 %i.gv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gy = trunc i64 %i.gm to i32
  %i.gz = bitcast i32 %i.gy to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gx, ptr align 1 %.0447.i, <32 x i1> %i.gz)
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.gx, ptr %.0447.i, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.0447.i, i64 64
  %i.hc = shufflevector <64 x i8> %i.go, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hd = zext <32 x i8> %i.hc to <32 x i16>
  %i.he = trunc i64 %i.d to i32
  %i.hf = add i32 %i.he, -32
  %notmask247.i.i = shl nsw i32 -1, %i.hf
  %i.hg = xor i32 %notmask247.i.i, -1
  %i.hh = bitcast i32 %i.hg to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hd, ptr nonnull align 1 %i.hb, <32 x i1> %i.hh)
  %i.hi = getelementptr [2 x i8], ptr %.0447.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.hj = icmp ugt <64 x i8> %i.go, splat (i8 -65) ; 5 uses
  %i.hk = bitcast <64 x i1> %i.hj to i64          ; 3 uses
  %i.hl = icmp ugt <64 x i8> %i.go, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.hm = bitcast <64 x i1> %i.hl to i64          ; 2 uses
  %i.hn = and <64 x i8> %i.go, splat (i8 -2)
  %i.ho = icmp eq <64 x i8> %i.hn, splat (i8 -64) ; 2 uses
  %i.hp = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ho, <64 x i1> %i.ho)
  %i.hq = and i32 %i.hp, 255
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hs = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hl, <64 x i1> %i.hl)
  %i.ht = and i32 %i.hs, 255
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.hv = icmp ugt <64 x i8> %i.go, splat (i8 -17) ; 2 uses
  %i.hw = bitcast <64 x i1> %i.hv to i64          ; 2 uses
  %i.hx = xor <64 x i1> %i.gq, splat (i1 true)
  %i.hy = bitcast <64 x i1> %i.hx to i64
  %i.hz = and i64 %i.hy, %i.gm                    ; 2 uses
  %8 = shufflevector <64 x i1> %i.hj, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ia = bitcast <64 x i1> %8 to i64             ; 2 uses
  %9 = shufflevector <64 x i1> %i.hl, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ib = bitcast <64 x i1> %9 to i64             ; 2 uses
  %i.ic = icmp eq i64 %i.hw, 0
  br i1 %i.ic, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.id = or i64 %i.ia, %i.ib
  %i.ie = or i64 %i.gr, %i.hk                     ; 2 uses
  %i.if = xor i64 %i.ie, %i.gm
  %.not244.i.i = icmp eq i64 %i.id, %i.if
  br i1 %.not244.i.i, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.ig = bitcast i64 %i.ie to <64 x i1>
  %i.ih = shufflevector <64 x i1> %i.ig, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ii = bitcast <64 x i1> %i.ih to i64
  %i.ij = add i64 %i.d, -1
  %i.ik = shl nuw nsw i64 1, %i.ij
  %i.il = or i64 %i.ik, %i.ii                     ; 3 uses
  %i.im = bitcast i64 %i.il to <64 x i1>
  %i.in = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.im)
  %i.io = shufflevector <64 x i8> %i.in, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ip = zext <32 x i8> %i.io to <32 x i16>      ; 3 uses
  %i.iq = bitcast i64 %i.hz to <64 x i1>          ; 2 uses
  %.inner55 = select <64 x i1> %i.iq, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner56 = and <64 x i8> %.inner55, %i.go      ; 3 uses
  %i.ir = bitcast <32 x i16> %i.ip to <64 x i8>
  %i.is = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner56, <64 x i8> %i.ir)
  %i.it = shufflevector <64 x i8> %i.is, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.iu = shufflevector <64 x i1> %i.iq, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.iv = add nsw <32 x i16> %i.ip, splat (i16 -1)
  %i.iw = select <64 x i1> %i.iu, <64 x i8> %.inner56, <64 x i8> zeroinitializer
  %i.ix = bitcast <32 x i16> %i.iv to <64 x i8>
  %i.iy = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.iw, <64 x i8> %i.ix)
  %i.iz = shufflevector <64 x i8> %i.iy, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ja = bitcast <64 x i8> %i.iz to <32 x i16>
  %i.jb = shl nuw nsw <32 x i16> %i.ja, splat (i16 6)
  %i.jc = add nsw <32 x i16> %i.ip, splat (i16 -2)
  %i.jd = select <64 x i1> %i.hl, <64 x i8> %.inner56, <64 x i8> zeroinitializer
  %i.je = bitcast <32 x i16> %i.jc to <64 x i8>
  %i.jf = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jd, <64 x i8> %i.je)
  %i.jg = shufflevector <64 x i8> %i.jf, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jh = bitcast <64 x i8> %i.jg to <32 x i16>
  %i.ji = shl <32 x i16> %i.jh, splat (i16 12)
  %i.jj = bitcast <64 x i8> %i.it to <16 x i32>
  %i.jk = bitcast <32 x i16> %i.jb to <16 x i32>
  %i.jl = bitcast <32 x i16> %i.ji to <16 x i32>
  %i.jm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jj, <16 x i32> %i.jk, <16 x i32> %i.jl, i32 254) ; 2 uses
  %i.jn = and i64 %i.hm, %i.gm
  %i.jo = shl i64 %i.jn, 2
  %i.jp = tail call noundef i64 @llvm.pext.i64(i64 %i.jo, i64 %i.il)
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = bitcast <16 x i32> %i.jm to <32 x i16>  ; 2 uses
  %i.js = icmp ult <32 x i16> %i.jr, splat (i16 2048)
  %i.jt = bitcast i32 %i.jq to <32 x i1>
  %i.ju = bitcast <16 x i32> %i.jm to <32 x i16>
  %i.jv = and <32 x i16> %i.ju, splat (i16 -2048)
  %i.jw = icmp eq <32 x i16> %i.jv, splat (i16 -10240)
  %i.jx = or <32 x i1> %i.js, %i.jw
  %i.jy = and <32 x i1> %i.jx, %i.jt
  %i.jz = bitcast <32 x i1> %i.jy to i32
  %.not245.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not245.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.ka = and i64 %i.il, %i.gm
  %i.kb = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ka) ; 2 uses
  %i.kc = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.kb) ; 2 uses
  %i.kd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kb, i1 false)
  %i.ke = sub nuw nsw i64 64, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.ke
  %notmask246.i.i = shl nsw i64 -1, %i.kc
  %i.kg = trunc i64 %notmask246.i.i to i32
  %i.kh = xor i32 %i.kg, -1
  %i.ki = bitcast i32 %i.kh to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.jr, ptr align 1 %.0447.i, <32 x i1> %i.ki)
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.kc
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %10 = shufflevector <64 x i1> %i.hv, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.kk = bitcast <64 x i1> %10 to i64            ; 3 uses
  %i.kl = or i64 %i.ia, %i.ib
  %i.km = or i64 %i.kl, %i.kk
  %i.kn = or i64 %i.gr, %i.hk                     ; 2 uses
  %i.ko = or i64 %i.kn, %i.kk
  %i.kp = bitcast i64 %i.ko to <64 x i1>
  %i.kq = shufflevector <64 x i1> %i.kp, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.kr = or <64 x i1> %10, %i.kq
  %i.ks = bitcast <64 x i1> %i.kr to i64
  %i.kt = add i64 %i.d, -1
  %i.ku = shl nuw nsw i64 1, %i.kt
  %i.kv = or i64 %i.ku, %i.ks                     ; 4 uses
  %i.kw = bitcast i64 %i.kv to <64 x i1>
  %i.kx = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.kw)
  %i.ky = shufflevector <64 x i8> %i.kx, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kz = zext <32 x i8> %i.ky to <32 x i16>      ; 3 uses
  %i.la = bitcast i64 %i.hz to <64 x i1>          ; 2 uses
  %.inner58 = select <64 x i1> %i.la, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner59 = and <64 x i8> %.inner58, %i.go      ; 3 uses
  %i.lb = bitcast <32 x i16> %i.kz to <64 x i8>
  %i.lc = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner59, <64 x i8> %i.lb)
  %i.ld = shufflevector <64 x i8> %i.lc, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.le = shufflevector <64 x i1> %i.la, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lf = add nsw <32 x i16> %i.kz, splat (i16 -1)
  %i.lg = select <64 x i1> %i.le, <64 x i8> %.inner59, <64 x i8> zeroinitializer
  %i.lh = bitcast <32 x i16> %i.lf to <64 x i8>
  %i.li = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.lg, <64 x i8> %i.lh)
  %i.lj = shufflevector <64 x i8> %i.li, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lk = bitcast <64 x i8> %i.lj to <32 x i16>
  %i.ll = shl nuw nsw <32 x i16> %i.lk, splat (i16 6)
  %i.lm = add nsw <32 x i16> %i.kz, splat (i16 -2)
  %i.ln = select <64 x i1> %i.hl, <64 x i8> %.inner59, <64 x i8> zeroinitializer
  %i.lo = bitcast <32 x i16> %i.lm to <64 x i8>
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ln, <64 x i8> %i.lo)
  %i.lq = shufflevector <64 x i8> %i.lp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lr = bitcast <64 x i8> %i.lq to <32 x i16>
  %i.ls = shl <32 x i16> %i.lr, splat (i16 12)
  %i.lt = bitcast <64 x i8> %i.ld to <16 x i32>
  %i.lu = bitcast <32 x i16> %i.ll to <16 x i32>
  %i.lv = bitcast <32 x i16> %i.ls to <16 x i32>
  %i.lw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lt, <16 x i32> %i.lu, <16 x i32> %i.lv, i32 254)
  %i.lx = tail call noundef i64 @llvm.pext.i64(i64 %i.kk, i64 %i.kv) ; 2 uses
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = lshr i64 %i.lx, 1                       ; 2 uses
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = bitcast i32 %i.ly to <32 x i1>
  %i.mc = select <32 x i1> %i.mb, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.md = bitcast <16 x i32> %i.lw to <32 x i16>  ; 2 uses
  %i.me = lshr <32 x i16> %i.md, splat (i16 4)
  %i.mf = or <32 x i16> %i.mc, %i.md
  %i.mg = add nuw nsw <32 x i16> %i.me, splat (i16 -10304)
  %i.mh = bitcast i32 %i.ma to <32 x i1>          ; 2 uses
  %i.mi = select <32 x i1> %i.mh, <32 x i16> %i.mg, <32 x i16> %i.mf ; 3 uses
  %i.mj = and i64 %i.lz, 2147483648
  %i.mk = xor i64 %i.mj, 4294967295
  %i.ml = and i64 %i.kv, %i.gm
  %i.mm = tail call noundef i64 @llvm.pdep.i64(i64 %i.mk, i64 %i.ml) ; 2 uses
  %i.mn = xor i64 %i.kn, %i.gm
  %.not241.i.i = icmp eq i64 %i.km, %i.mn
  br i1 %.not241.i.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.mo = xor i64 %i.hw, %i.gm
  %i.mp = and i64 %i.mo, %i.hm
  %i.mq = shl i64 %i.mp, 2
  %i.mr = tail call noundef i64 @llvm.pext.i64(i64 %i.mq, i64 %i.kv)
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = icmp ult <32 x i16> %i.mi, splat (i16 2048)
  %i.mu = bitcast i32 %i.ms to <32 x i1>
  %i.mv = add <32 x i16> %i.mi, splat (i16 10240) ; 2 uses
  %i.mw = icmp ult <32 x i16> %i.mv, splat (i16 2048)
  %i.mx = icmp ugt <32 x i16> %i.mv, splat (i16 1023)
  %i.my = and <32 x i1> %i.mx, %i.mh
  %i.mz = or <32 x i1> %i.mt, %i.mw
  %i.na = and <32 x i1> %i.mz, %i.mu
  %i.nb = or <32 x i1> %i.my, %i.na
  %i.nc = bitcast <32 x i1> %i.nb to i32
  %.not.i = icmp eq i32 %i.nc, 0
  br i1 %.not.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.nd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mm, i1 false)
  %i.ne = sub nuw nsw i64 64, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.ne
  %i.ng = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.mm) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.ng
  %i.nh = trunc i64 %notmask243.i.i to i32
  %i.ni = xor i32 %i.nh, -1
  %i.nj = bitcast i32 %i.ni to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mi, ptr align 1 %.0447.i, <32 x i1> %i.nj)
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.ng
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.nl = or i64 %i.gr, %i.hk
  %i.nm = and i64 %i.nl, %i.gm                    ; 3 uses
  %i.nn = xor i64 %i.nm, %i.gm
  %11 = shufflevector <64 x i1> %i.hj, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.no = bitcast <64 x i1> %11 to i64
  %.not239.i.i = icmp eq i64 %i.nn, %i.no
  br i1 %.not239.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.np = add <64 x i8> %i.go, splat (i8 62)
  %i.nq = select <64 x i1> %i.hj, <64 x i8> %i.np, <64 x i8> zeroinitializer
  %i.nr = xor <64 x i1> %i.hj, splat (i1 true)
  %i.ns = bitcast <64 x i1> %i.nr to i64
  %i.nt = and i64 %i.ns, %i.gm                    ; 2 uses
  %i.nu = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nt)
  %i.nv = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nu, i1 false)
  %i.nw = sub nuw nsw i64 64, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %.0433446.i, i64 %i.nw
  %i.ny = bitcast i64 %i.nm to <64 x i1>
  %i.nz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.nq, <64 x i8> zeroinitializer, <64 x i1> %i.ny)
  %i.oa = shufflevector <64 x i8> %i.nz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ob = zext <32 x i8> %i.oa to <32 x i16>
  %i.oc = bitcast i64 %i.nt to <64 x i1>
  %i.od = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.go, <64 x i8> zeroinitializer, <64 x i1> %i.oc)
  %i.oe = shufflevector <64 x i8> %i.od, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.of = zext <32 x i8> %i.oe to <32 x i16>
  %i.og = shl nuw nsw <32 x i16> %i.ob, splat (i16 6)
  %i.oh = add nuw nsw <32 x i16> %i.og, %i.of
  %i.oi = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nm)
  %i.oj = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.oi) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.oj
  %i.ok = trunc i64 %notmask240.i.i to i32
  %i.ol = xor i32 %i.ok, -1
  %i.om = bitcast i32 %i.ol to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oh, ptr align 1 %.0447.i, <32 x i1> %i.om)
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %.0447.i, i64 %i.oj
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0447.i.be = phi ptr [ %i.u, %bb.c ], [ %i.ha, %bb.r ], [ %i.nk, %bb.ab ], [ %i.cp, %bb.i ], [ %i.kj, %bb.y ], [ %i.hi, %bb.s ], [ %i.on, %bb.ad ], [ %i.fm, %bb.l ], [ %i.gk, %bb.n ]
  %.0433446.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gu, %bb.r ], [ %i.nf, %bb.ab ], [ %i.cl, %bb.i ], [ %i.kf, %bb.y ], [ %i.gu, %bb.s ], [ %i.nx, %bb.ad ], [ %i.fh, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !624

.critedge.i:                                      ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.oo = ptrtoint ptr %1 to i64
  %i.op = sub i64 %i.c, %i.oo                     ; 7 uses
  %i.oq = icmp ult i64 %i.op, %2
  br i1 %i.oq, label %bb.ae, label %.critedge40.i.preheader

bb.ae:                                            ; preds = %.critedge.i
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.op ; 4 uses
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = icmp slt i8 %i.os, -64
  %i.ou = icmp ugt i64 %i.op, 63
  %or.cond.i = and i1 %i.ou, %i.ot
  br i1 %or.cond.i, label %bb.af, label %.critedge40.i.preheader

bb.af:                                            ; preds = %bb.ae
  %i.ov = getelementptr i8, ptr %i.or, i64 -1
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = icmp sgt i8 %i.ow, -65
  %i.oy = getelementptr i8, ptr %i.or, i64 -2
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = icmp sgt i8 %i.oz, -65
  %i.pb = getelementptr i8, ptr %i.or, i64 -3
  %i.pc = load i8, ptr %i.pb, align 1
  %i.pd = icmp sgt i8 %i.pc, -65
  %or.cond3.not38.i = select i1 %i.ox, i1 true, i1 %i.pa
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.pd
  br i1 %or.cond5.not.i, label %.critedge40.i.preheader, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

.critedge40.i.preheader:                          ; preds = %bb.af, %bb.ae, %.critedge.i
  br label %.critedge40.i

.critedge40.i:                                    ; preds = %.critedge40.i.preheader, %bb.ah
  %.02566.i.i = phi i64 [ %i.pk, %bb.ah ], [ 0, %.critedge40.i.preheader ] ; 6 uses
  %i.pe = sub nsw i64 0, %.02566.i.i              ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %.0433446.i, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1             ; 2 uses
  %i.ph = icmp sgt i8 %i.pg, -65
  br i1 %i.ph, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge40.i
  %i.pi = icmp ne i64 %.02566.i.i, 0
  %i.pj = icmp sgt i8 %i.pg, -1
  %or.cond.i.i = and i1 %i.pi, %i.pj
  br i1 %or.cond.i.i, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %.critedge40.i
  %i.pk = add i64 %.02566.i.i, 1                  ; 2 uses
  %.not.i44.i = icmp ugt i64 %i.pk, %i.op
  br i1 %.not.i44.i, label %bb.aj, label %.critedge40.i, !llvm.loop !24

bb.ai:                                            ; preds = %bb.ag
  %i.pl = sub i64 1, %.02566.i.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.pm = sub i64 0, %i.op
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.pn = getelementptr inbounds i8, ptr %.0433446.i, i64 %i.pe
  %i.po = add i64 %.02566.i.i, %i.d
  %i.pp = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.pn, i64 noundef %i.po, ptr noundef %.0447.i) ; 2 uses
  %i.pq = extractvalue { i32, i64 } %i.pp, 0      ; 2 uses
  %i.pr = extractvalue { i32, i64 } %i.pp, 1
  %.not33.i.i = icmp eq i32 %i.pq, 0
  %i.ps = select i1 %.not33.i.i, i64 0, i64 %.02566.i.i
  %spec.select.i.i = sub i64 %i.pr, %i.ps
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.4.3.i.i = phi i64 [ %spec.select.i.i, %bb.ak ], [ %i.pm, %bb.aj ], [ %i.pl, %bb.ai ]
  %.sroa.0.3.i.i = phi i32 [ %i.pq, %bb.ak ], [ 3, %bb.aj ], [ 3, %bb.ai ]
  %i.pt = add i64 %.sroa.4.3.i.i, %i.op
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.al:                                            ; preds = %bb.o
  %i.pu = ptrtoint ptr %.0447.i to i64
  %i.pv = ptrtoint ptr %3 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = ashr exact i64 %i.pw, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i, %bb.al
  %.sroa.4.0.i = phi i64 [ %i.px, %bb.al ], [ %i.pt, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i ], [ %i.op, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.al ], [ %.sroa.0.3.i.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit.i ], [ 3, %bb.af ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !guid !627 {
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
  %4 = shufflevector <64 x i1> %i.z, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ap = bitcast <64 x i1> %4 to i64             ; 2 uses
  %5 = shufflevector <64 x i1> %i.ab, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.aq = bitcast <64 x i1> %5 to i64             ; 2 uses
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.as = or i64 %i.ap, %i.aq
  %i.at = or i64 %i.i, %i.aa                      ; 2 uses
  %i.au = xor i64 %i.as, %i.at
  %.not483.i = icmp eq i64 %i.au, -1
  br i1 %.not483.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.av = bitcast i64 %i.at to <64 x i1>
  %i.aw = shufflevector <64 x i1> %i.av, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64> ; 2 uses
  %i.ax = bitcast <64 x i1> %i.aw to i64          ; 2 uses
  %i.ay = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.aw)
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ba = zext <32 x i8> %i.az to <32 x i16>      ; 3 uses
  %.inner50 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.bb = bitcast <32 x i16> %i.ba to <64 x i8>
  %i.bc = bitcast <8 x i64> %i.f to <64 x i8>
  %i.bd = and <64 x i8> %.inner50, %i.bc          ; 3 uses
  %i.be = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bd, <64 x i8> %i.bb)
  %i.bf = shufflevector <64 x i8> %i.be, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bg = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.bh = add nsw <32 x i16> %i.ba, splat (i16 -1)
  %i.bi = select <64 x i1> %i.bg, <64 x i8> %i.bd, <64 x i8> zeroinitializer
  %i.bj = bitcast <32 x i16> %i.bh to <64 x i8>
  %i.bk = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bi, <64 x i8> %i.bj)
  %i.bl = shufflevector <64 x i8> %i.bk, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bm = bitcast <64 x i8> %i.bl to <32 x i16>
  %i.bn = shl nuw nsw <32 x i16> %i.bm, splat (i16 6)
  %i.bo = add nsw <32 x i16> %i.ba, splat (i16 -2)
  %i.bp = select <64 x i1> %i.ab, <64 x i8> %i.bd, <64 x i8> zeroinitializer
  %i.bq = bitcast <32 x i16> %i.bo to <64 x i8>
  %i.br = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bp, <64 x i8> %i.bq)
  %i.bs = shufflevector <64 x i8> %i.br, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.bt = bitcast <64 x i8> %i.bs to <32 x i16>
  %i.bu = shl <32 x i16> %i.bt, splat (i16 12)
  %i.bv = bitcast <64 x i8> %i.bf to <16 x i32>
  %i.bw = bitcast <32 x i16> %i.bn to <16 x i32>
  %i.bx = bitcast <32 x i16> %i.bu to <16 x i32>
  %i.by = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bv, <16 x i32> %i.bw, <16 x i32> %i.bx, i32 254) ; 3 uses
  %i.bz = shl i64 %i.ac, 2
  %i.ca = tail call noundef i64 @llvm.pext.i64(i64 %i.bz, i64 %i.ax)
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = bitcast <16 x i32> %i.by to <32 x i16>
  %i.cd = icmp ult <32 x i16> %i.cc, splat (i16 2048)
  %i.ce = bitcast i32 %i.cb to <32 x i1>
  %i.cf = bitcast <16 x i32> %i.by to <32 x i16>
  %i.cg = and <32 x i16> %i.cf, splat (i16 -2048)
  %i.ch = icmp eq <32 x i16> %i.cg, splat (i16 -10240)
  %i.ci = or <32 x i1> %i.cd, %i.ch
  %i.cj = and <32 x i1> %i.ci, %i.ce
  %i.ck = bitcast <32 x i1> %i.cj to i32
  %.not232.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not232.i.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.cl = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ax) ; 2 uses
  %i.cm = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cl) ; 2 uses
  %i.cn = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cl, i1 false)
  %i.co = sub nuw nsw i64 64, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.co
  %i.cq = bitcast <16 x i32> %i.by to <64 x i8>
  %i.cr = shufflevector <64 x i8> %i.cq, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.cm
  %i.cs = trunc i64 %notmask233.i.i to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = bitcast <64 x i8> %i.cr to <32 x i16>
  %i.cv = bitcast i32 %i.ct to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cu, ptr align 1 %.0491.i, <32 x i1> %i.cv)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.cm
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %6 = shufflevector <64 x i1> %i.am, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.cx = bitcast <64 x i1> %6 to i64             ; 3 uses
  %i.cy = or i64 %i.ap, %i.aq
  %i.cz = or i64 %i.cy, %i.cx
  %i.da = or i64 %i.i, %i.aa                      ; 2 uses
  %i.db = or i64 %i.da, %i.cx
  %i.dc = bitcast i64 %i.db to <64 x i1>
  %i.dd = shufflevector <64 x i1> %i.dc, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.de = or <64 x i1> %6, %i.dd                  ; 2 uses
  %i.df = bitcast <64 x i1> %i.de to i64          ; 3 uses
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.de)
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.di = zext <32 x i8> %i.dh to <32 x i16>      ; 3 uses
  %.inner52 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dj = bitcast <32 x i16> %i.di to <64 x i8>
  %i.dk = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dl = and <64 x i8> %.inner52, %i.dk          ; 3 uses
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dl, <64 x i8> %i.dj)
  %i.dn = shufflevector <64 x i8> %i.dm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.do = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dp = add nsw <32 x i16> %i.di, splat (i16 -1)
  %i.dq = select <64 x i1> %i.do, <64 x i8> %i.dl, <64 x i8> zeroinitializer
  %i.dr = bitcast <32 x i16> %i.dp to <64 x i8>
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dq, <64 x i8> %i.dr)
  %i.dt = shufflevector <64 x i8> %i.ds, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.du = bitcast <64 x i8> %i.dt to <32 x i16>
  %i.dv = shl nuw nsw <32 x i16> %i.du, splat (i16 6)
  %i.dw = add nsw <32 x i16> %i.di, splat (i16 -2)
  %i.dx = select <64 x i1> %i.ab, <64 x i8> %i.dl, <64 x i8> zeroinitializer
  %i.dy = bitcast <32 x i16> %i.dw to <64 x i8>
  %i.dz = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dx, <64 x i8> %i.dy)
  %i.ea = shufflevector <64 x i8> %i.dz, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.eb = bitcast <64 x i8> %i.ea to <32 x i16>
  %i.ec = shl <32 x i16> %i.eb, splat (i16 12)
  %i.ed = bitcast <64 x i8> %i.dn to <16 x i32>
  %i.ee = bitcast <32 x i16> %i.dv to <16 x i32>
  %i.ef = bitcast <32 x i16> %i.ec to <16 x i32>
  %i.eg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ed, <16 x i32> %i.ee, <16 x i32> %i.ef, i32 254)
  %i.eh = tail call noundef i64 @llvm.pext.i64(i64 %i.cx, i64 %i.df) ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = lshr i64 %i.eh, 1                       ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = bitcast i32 %i.ei to <32 x i1>
  %i.em = select <32 x i1> %i.el, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.en = bitcast <16 x i32> %i.eg to <32 x i16>  ; 2 uses
  %i.eo = lshr <32 x i16> %i.en, splat (i16 4)
  %i.ep = or <32 x i16> %i.em, %i.en
  %i.eq = add nuw nsw <32 x i16> %i.eo, splat (i16 -10304)
  %i.er = bitcast i32 %i.ek to <32 x i1>          ; 2 uses
  %i.es = select <32 x i1> %i.er, <32 x i16> %i.eq, <32 x i16> %i.ep ; 3 uses
  %i.et = and i64 %i.ej, 2147483648
  %i.eu = xor i64 %i.et, 4294967295
  %i.ev = tail call noundef i64 @llvm.pdep.i64(i64 %i.eu, i64 %i.df) ; 2 uses
  %i.ew = xor i64 %i.cz, %i.da
  %.not481.i = icmp eq i64 %i.ew, -1
  br i1 %.not481.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ex = xor i64 %i.an, -1
  %i.ey = and i64 %i.ac, %i.ex
  %i.ez = shl i64 %i.ey, 2
  %i.fa = tail call noundef i64 @llvm.pext.i64(i64 %i.ez, i64 %i.df)
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp ult <32 x i16> %i.es, splat (i16 2048)
  %i.fd = bitcast i32 %i.fb to <32 x i1>
  %i.fe = add <32 x i16> %i.es, splat (i16 10240) ; 2 uses
  %i.ff = icmp ult <32 x i16> %i.fe, splat (i16 2048)
  %i.fg = icmp ugt <32 x i16> %i.fe, splat (i16 1023)
  %i.fh = and <32 x i1> %i.fg, %i.er
  %i.fi = or <32 x i1> %i.fc, %i.ff
  %i.fj = and <32 x i1> %i.fi, %i.fd
  %i.fk = or <32 x i1> %i.fh, %i.fj
  %i.fl = bitcast <32 x i1> %i.fk to i32
  %.not482.i = icmp eq i32 %i.fl, 0
  br i1 %.not482.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fm = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false)
  %i.fn = sub nuw nsw i64 64, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.fn
  %i.fp = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ev) ; 2 uses
  %i.fq = bitcast <32 x i16> %i.es to <64 x i8>
  %i.fr = shufflevector <64 x i8> %i.fq, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fp
  %i.fs = trunc i64 %notmask230.i.i to i32
  %i.ft = xor i32 %i.fs, -1
  %i.fu = bitcast <64 x i8> %i.fr to <32 x i16>
  %i.fv = bitcast i32 %i.ft to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fu, ptr align 1 %.0491.i, <32 x i1> %i.fv)
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.fp
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fx = or i64 %i.i, %i.aa                      ; 3 uses
  %7 = shufflevector <64 x i1> %i.z, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.fy = bitcast <64 x i1> %7 to i64
  %i.fz = xor i64 %i.fx, %i.fy
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.gb = add <64 x i8> %i.g, splat (i8 62)
  %i.gc = select <64 x i1> %i.z, <64 x i8> %i.gb, <64 x i8> zeroinitializer
  %i.gd = xor <64 x i1> %i.z, splat (i1 true)
  %i.ge = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.ge, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %spec.select.v.i
  %i.gf = bitcast i64 %i.fx to <64 x i1>
  %i.gg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gc, <64 x i8> zeroinitializer, <64 x i1> %i.gf)
  %i.gh = shufflevector <64 x i8> %i.gg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gi = zext <32 x i8> %i.gh to <32 x i16>
  %i.gj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.gd)
  %i.gk = shufflevector <64 x i8> %i.gj, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gl = zext <32 x i8> %i.gk to <32 x i16>
  %i.gm = shl nuw nsw <32 x i16> %i.gi, splat (i16 6)
  %i.gn = add nuw nsw <32 x i16> %i.gm, %i.gl
  %i.go = bitcast <32 x i16> %i.gn to <64 x i8>
  %i.gp = shufflevector <64 x i8> %i.go, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gq = trunc i64 %i.fx to i32
  %i.gr = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gq)
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gs
  %i.gt = trunc i64 %notmask.i.i to i32
  %i.gu = xor i32 %i.gt, -1
  %i.gv = bitcast <64 x i8> %i.gp to <32 x i16>
  %i.gw = bitcast i32 %i.gu to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gv, ptr align 1 %.0491.i, <32 x i1> %i.gw)
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.gs
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.gy = icmp ult ptr %.0477490.i, %i.a
  br i1 %i.gy, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.gz = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.ha = bitcast i64 %i.gz to <64 x i1>          ; 3 uses
  %i.hb = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0477490.i, <64 x i1> %i.ha, <64 x i8> zeroinitializer) ; 11 uses
  %i.hc = icmp sgt <64 x i8> %i.hb, splat (i8 -1)
  %i.hd = and <64 x i1> %i.hc, %i.ha              ; 3 uses
  %i.he = bitcast <64 x i1> %i.hd to i64          ; 3 uses
  %i.hf = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hd, <64 x i1> %i.ha)
  %i.hg = and i32 %i.hf, 255
  %.not.i42.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.d ; 2 uses
  %i.hi = icmp ult i64 %i.d, 33
  %i.hj = shufflevector <64 x i8> %i.hb, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hk = zext <32 x i8> %i.hj to <32 x i16>
  %i.hl = bitcast <32 x i16> %i.hk to <64 x i8>
  %i.hm = shufflevector <64 x i8> %i.hl, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62> ; 2 uses
  br i1 %i.hi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hn = trunc i64 %i.gz to i32
  %i.ho = bitcast <64 x i8> %i.hm to <32 x i16>
  %i.hp = bitcast i32 %i.hn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ho, ptr align 1 %.0491.i, <32 x i1> %i.hp)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hm, ptr %.0491.i, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.0491.i, i64 64
  %i.hs = shufflevector <64 x i8> %i.hb, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ht = zext <32 x i8> %i.hs to <32 x i16>
  %i.hu = bitcast <32 x i16> %i.ht to <64 x i8>
  %i.hv = shufflevector <64 x i8> %i.hu, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.hw = trunc i64 %i.d to i32
  %i.hx = add i32 %i.hw, -32
  %notmask259.i.i = shl nsw i32 -1, %i.hx
  %i.hy = xor i32 %notmask259.i.i, -1
  %i.hz = bitcast <64 x i8> %i.hv to <32 x i16>
  %i.ia = bitcast i32 %i.hy to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hz, ptr nonnull align 1 %i.hr, <32 x i1> %i.ia)
  %i.ib = getelementptr [2 x i8], ptr %.0491.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ic = icmp ugt <64 x i8> %i.hb, splat (i8 -65) ; 5 uses
  %i.id = bitcast <64 x i1> %i.ic to i64          ; 3 uses
  %i.ie = icmp ugt <64 x i8> %i.hb, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.if = bitcast <64 x i1> %i.ie to i64          ; 2 uses
  %i.ig = and <64 x i8> %i.hb, splat (i8 -2)
  %i.ih = icmp eq <64 x i8> %i.ig, splat (i8 -64) ; 2 uses
  %i.ii = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ih, <64 x i1> %i.ih)
  %i.ij = and i32 %i.ii, 255
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.il = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ie, <64 x i1> %i.ie)
  %i.im = and i32 %i.il, 255
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.io = icmp ugt <64 x i8> %i.hb, splat (i8 -17) ; 2 uses
  %i.ip = bitcast <64 x i1> %i.io to i64          ; 2 uses
  %i.iq = xor <64 x i1> %i.hd, splat (i1 true)
  %i.ir = bitcast <64 x i1> %i.iq to i64
  %i.is = and i64 %i.ir, %i.gz                    ; 2 uses
  %8 = shufflevector <64 x i1> %i.ic, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.it = bitcast <64 x i1> %8 to i64             ; 2 uses
  %9 = shufflevector <64 x i1> %i.ie, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i32> <i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.iu = bitcast <64 x i1> %9 to i64             ; 2 uses
  %i.iv = icmp eq i64 %i.ip, 0
  br i1 %i.iv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.iw = or i64 %i.it, %i.iu
  %i.ix = or i64 %i.he, %i.id                     ; 2 uses
  %i.iy = xor i64 %i.ix, %i.gz
  %.not256.i.i = icmp eq i64 %i.iw, %i.iy
  br i1 %.not256.i.i, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.iz = bitcast i64 %i.ix to <64 x i1>
  %i.ja = shufflevector <64 x i1> %i.iz, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jb = bitcast <64 x i1> %i.ja to i64
  %i.jc = add i64 %i.d, -1
  %i.jd = shl nuw nsw i64 1, %i.jc
  %i.je = or i64 %i.jd, %i.jb                     ; 3 uses
  %i.jf = bitcast i64 %i.je to <64 x i1>
  %i.jg = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.jf)
  %i.jh = shufflevector <64 x i8> %i.jg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ji = zext <32 x i8> %i.jh to <32 x i16>      ; 3 uses
  %i.jj = bitcast i64 %i.is to <64 x i1>          ; 2 uses
  %.inner55 = select <64 x i1> %i.jj, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner56 = and <64 x i8> %.inner55, %i.hb      ; 3 uses
  %i.jk = bitcast <32 x i16> %i.ji to <64 x i8>
  %i.jl = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner56, <64 x i8> %i.jk)
  %i.jm = shufflevector <64 x i8> %i.jl, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jn = shufflevector <64 x i1> %i.jj, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jo = add nsw <32 x i16> %i.ji, splat (i16 -1)
  %i.jp = select <64 x i1> %i.jn, <64 x i8> %.inner56, <64 x i8> zeroinitializer
  %i.jq = bitcast <32 x i16> %i.jo to <64 x i8>
  %i.jr = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jp, <64 x i8> %i.jq)
  %i.js = shufflevector <64 x i8> %i.jr, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jt = bitcast <64 x i8> %i.js to <32 x i16>
  %i.ju = shl nuw nsw <32 x i16> %i.jt, splat (i16 6)
  %i.jv = add nsw <32 x i16> %i.ji, splat (i16 -2)
  %i.jw = select <64 x i1> %i.ie, <64 x i8> %.inner56, <64 x i8> zeroinitializer
  %i.jx = bitcast <32 x i16> %i.jv to <64 x i8>
  %i.jy = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jw, <64 x i8> %i.jx)
  %i.jz = shufflevector <64 x i8> %i.jy, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ka = bitcast <64 x i8> %i.jz to <32 x i16>
  %i.kb = shl <32 x i16> %i.ka, splat (i16 12)
  %i.kc = bitcast <64 x i8> %i.jm to <16 x i32>
  %i.kd = bitcast <32 x i16> %i.ju to <16 x i32>
  %i.ke = bitcast <32 x i16> %i.kb to <16 x i32>
  %i.kf = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kc, <16 x i32> %i.kd, <16 x i32> %i.ke, i32 254) ; 3 uses
  %i.kg = and i64 %i.if, %i.gz
  %i.kh = shl i64 %i.kg, 2
  %i.ki = tail call noundef i64 @llvm.pext.i64(i64 %i.kh, i64 %i.je)
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = bitcast <16 x i32> %i.kf to <32 x i16>
  %i.kl = icmp ult <32 x i16> %i.kk, splat (i16 2048)
  %i.km = bitcast i32 %i.kj to <32 x i1>
  %i.kn = bitcast <16 x i32> %i.kf to <32 x i16>
  %i.ko = and <32 x i16> %i.kn, splat (i16 -2048)
  %i.kp = icmp eq <32 x i16> %i.ko, splat (i16 -10240)
  %i.kq = or <32 x i1> %i.kl, %i.kp
  %i.kr = and <32 x i1> %i.kq, %i.km
  %i.ks = bitcast <32 x i1> %i.kr to i32
  %.not257.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not257.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.kt = and i64 %i.je, %i.gz
  %i.ku = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kt) ; 2 uses
  %i.kv = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ku) ; 2 uses
  %i.kw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ku, i1 false)
  %i.kx = sub nuw nsw i64 64, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.kx
  %i.kz = bitcast <16 x i32> %i.kf to <64 x i8>
  %i.la = shufflevector <64 x i8> %i.kz, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask258.i.i = shl nsw i64 -1, %i.kv
  %i.lb = trunc i64 %notmask258.i.i to i32
  %i.lc = xor i32 %i.lb, -1
  %i.ld = bitcast <64 x i8> %i.la to <32 x i16>
  %i.le = bitcast i32 %i.lc to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ld, ptr align 1 %.0491.i, <32 x i1> %i.le)
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.kv
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %10 = shufflevector <64 x i1> %i.io, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i32> <i32 125, i32 126, i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60> ; 2 uses
  %i.lg = bitcast <64 x i1> %10 to i64            ; 3 uses
  %i.lh = or i64 %i.it, %i.iu
  %i.li = or i64 %i.lh, %i.lg
  %i.lj = or i64 %i.he, %i.id                     ; 2 uses
  %i.lk = or i64 %i.lj, %i.lg
  %i.ll = bitcast i64 %i.lk to <64 x i1>
  %i.lm = shufflevector <64 x i1> %i.ll, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ln = or <64 x i1> %10, %i.lm
  %i.lo = bitcast <64 x i1> %i.ln to i64
  %i.lp = add i64 %i.d, -1
  %i.lq = shl nuw nsw i64 1, %i.lp
  %i.lr = or i64 %i.lq, %i.lo                     ; 4 uses
  %i.ls = bitcast i64 %i.lr to <64 x i1>
  %i.lt = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ls)
  %i.lu = shufflevector <64 x i8> %i.lt, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lv = zext <32 x i8> %i.lu to <32 x i16>      ; 3 uses
  %i.lw = bitcast i64 %i.is to <64 x i1>          ; 2 uses
  %.inner58 = select <64 x i1> %i.lw, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner59 = and <64 x i8> %.inner58, %i.hb      ; 3 uses
  %i.lx = bitcast <32 x i16> %i.lv to <64 x i8>
  %i.ly = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner59, <64 x i8> %i.lx)
  %i.lz = shufflevector <64 x i8> %i.ly, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ma = shufflevector <64 x i1> %i.lw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.mb = add nsw <32 x i16> %i.lv, splat (i16 -1)
  %i.mc = select <64 x i1> %i.ma, <64 x i8> %.inner59, <64 x i8> zeroinitializer
  %i.md = bitcast <32 x i16> %i.mb to <64 x i8>
  %i.me = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mc, <64 x i8> %i.md)
  %i.mf = shufflevector <64 x i8> %i.me, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mg = bitcast <64 x i8> %i.mf to <32 x i16>
  %i.mh = shl nuw nsw <32 x i16> %i.mg, splat (i16 6)
  %i.mi = add nsw <32 x i16> %i.lv, splat (i16 -2)
  %i.mj = select <64 x i1> %i.ie, <64 x i8> %.inner59, <64 x i8> zeroinitializer
  %i.mk = bitcast <32 x i16> %i.mi to <64 x i8>
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mj, <64 x i8> %i.mk)
  %i.mm = shufflevector <64 x i8> %i.ml, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mn = bitcast <64 x i8> %i.mm to <32 x i16>
  %i.mo = shl <32 x i16> %i.mn, splat (i16 12)
  %i.mp = bitcast <64 x i8> %i.lz to <16 x i32>
  %i.mq = bitcast <32 x i16> %i.mh to <16 x i32>
  %i.mr = bitcast <32 x i16> %i.mo to <16 x i32>
  %i.ms = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mp, <16 x i32> %i.mq, <16 x i32> %i.mr, i32 254)
  %i.mt = tail call noundef i64 @llvm.pext.i64(i64 %i.lg, i64 %i.lr) ; 2 uses
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = lshr i64 %i.mt, 1                       ; 2 uses
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = bitcast i32 %i.mu to <32 x i1>
  %i.my = select <32 x i1> %i.mx, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.mz = bitcast <16 x i32> %i.ms to <32 x i16>  ; 2 uses
  %i.na = lshr <32 x i16> %i.mz, splat (i16 4)
  %i.nb = or <32 x i16> %i.my, %i.mz
  %i.nc = add nuw nsw <32 x i16> %i.na, splat (i16 -10304)
  %i.nd = bitcast i32 %i.mw to <32 x i1>          ; 2 uses
  %i.ne = select <32 x i1> %i.nd, <32 x i16> %i.nc, <32 x i16> %i.nb ; 3 uses
  %i.nf = and i64 %i.mv, 2147483648
  %i.ng = xor i64 %i.nf, 4294967295
  %i.nh = and i64 %i.lr, %i.gz
  %i.ni = tail call noundef i64 @llvm.pdep.i64(i64 %i.ng, i64 %i.nh) ; 2 uses
  %i.nj = xor i64 %i.lj, %i.gz
  %.not253.i.i = icmp eq i64 %i.li, %i.nj
  br i1 %.not253.i.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.nk = xor i64 %i.ip, %i.gz
  %i.nl = and i64 %i.nk, %i.if
  %i.nm = shl i64 %i.nl, 2
  %i.nn = tail call noundef i64 @llvm.pext.i64(i64 %i.nm, i64 %i.lr)
  %i.no = trunc i64 %i.nn to i32
  %i.np = icmp ult <32 x i16> %i.ne, splat (i16 2048)
  %i.nq = bitcast i32 %i.no to <32 x i1>
  %i.nr = add <32 x i16> %i.ne, splat (i16 10240) ; 2 uses
  %i.ns = icmp ult <32 x i16> %i.nr, splat (i16 2048)
  %i.nt = icmp ugt <32 x i16> %i.nr, splat (i16 1023)
  %i.nu = and <32 x i1> %i.nt, %i.nd
  %i.nv = or <32 x i1> %i.np, %i.ns
  %i.nw = and <32 x i1> %i.nv, %i.nq
  %i.nx = or <32 x i1> %i.nu, %i.nw
  %i.ny = bitcast <32 x i1> %i.nx to i32
  %.not.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.nz = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ni, i1 false)
  %i.oa = sub nuw nsw i64 64, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.oa
  %i.oc = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ni) ; 2 uses
  %i.od = bitcast <32 x i16> %i.ne to <64 x i8>
  %i.oe = shufflevector <64 x i8> %i.od, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.oc
  %i.of = trunc i64 %notmask255.i.i to i32
  %i.og = xor i32 %i.of, -1
  %i.oh = bitcast <64 x i8> %i.oe to <32 x i16>
  %i.oi = bitcast i32 %i.og to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oh, ptr align 1 %.0491.i, <32 x i1> %i.oi)
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.oc
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ok = or i64 %i.he, %i.id
  %i.ol = and i64 %i.ok, %i.gz                    ; 3 uses
  %i.om = xor i64 %i.ol, %i.gz
  %11 = shufflevector <64 x i1> %i.ic, <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i32> <i32 127, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.on = bitcast <64 x i1> %11 to i64
  %.not251.i.i = icmp eq i64 %i.om, %i.on
  br i1 %.not251.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.oo = add <64 x i8> %i.hb, splat (i8 62)
  %i.op = select <64 x i1> %i.ic, <64 x i8> %i.oo, <64 x i8> zeroinitializer
  %i.oq = xor <64 x i1> %i.ic, splat (i1 true)
  %i.or = bitcast <64 x i1> %i.oq to i64
  %i.os = and i64 %i.or, %i.gz                    ; 2 uses
  %i.ot = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.os)
  %i.ou = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ot, i1 false)
  %i.ov = sub nuw nsw i64 64, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.0477490.i, i64 %i.ov
  %i.ox = bitcast i64 %i.ol to <64 x i1>
  %i.oy = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.op, <64 x i8> zeroinitializer, <64 x i1> %i.ox)
  %i.oz = shufflevector <64 x i8> %i.oy, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pa = zext <32 x i8> %i.oz to <32 x i16>
  %i.pb = bitcast i64 %i.os to <64 x i1>
  %i.pc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.hb, <64 x i8> zeroinitializer, <64 x i1> %i.pb)
  %i.pd = shufflevector <64 x i8> %i.pc, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pe = zext <32 x i8> %i.pd to <32 x i16>
  %i.pf = shl nuw nsw <32 x i16> %i.pa, splat (i16 6)
  %i.pg = add nuw nsw <32 x i16> %i.pf, %i.pe
  %i.ph = bitcast <32 x i16> %i.pg to <64 x i8>
  %i.pi = shufflevector <64 x i8> %i.ph, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.pj = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ol)
  %i.pk = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.pj) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.pk
  %i.pl = trunc i64 %notmask252.i.i to i32
  %i.pm = xor i32 %i.pl, -1
  %i.pn = bitcast <64 x i8> %i.pi to <32 x i16>
  %i.po = bitcast i32 %i.pm to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pn, ptr align 1 %.0491.i, <32 x i1> %i.po)
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.0491.i, i64 %i.pk
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0491.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hq, %bb.r ], [ %i.oj, %bb.ab ], [ %i.cw, %bb.i ], [ %i.lf, %bb.y ], [ %i.ib, %bb.s ], [ %i.pp, %bb.ad ], [ %i.fw, %bb.l ], [ %i.gx, %bb.n ]
  %.0477490.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hh, %bb.r ], [ %i.ob, %bb.ab ], [ %i.cp, %bb.i ], [ %i.ky, %bb.y ], [ %i.hh, %bb.s ], [ %i.ow, %bb.ad ], [ %i.fo, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !626

.critedge.i:                                      ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.pq = ptrtoint ptr %1 to i64
  %i.pr = sub i64 %i.c, %i.pq                     ; 7 uses
  %i.ps = icmp ult i64 %i.pr, %2
  br i1 %i.ps, label %bb.ae, label %.critedge40.i.preheader

bb.ae:                                            ; preds = %.critedge.i
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %i.pr ; 4 uses
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = icmp slt i8 %i.pu, -64
  %i.pw = icmp ugt i64 %i.pr, 63
  %or.cond.i = and i1 %i.pw, %i.pv
  br i1 %or.cond.i, label %bb.af, label %.critedge40.i.preheader

bb.af:                                            ; preds = %bb.ae
  %i.px = getelementptr i8, ptr %i.pt, i64 -1
  %i.py = load i8, ptr %i.px, align 1
  %i.pz = icmp sgt i8 %i.py, -65
  %i.qa = getelementptr i8, ptr %i.pt, i64 -2
  %i.qb = load i8, ptr %i.qa, align 1
  %i.qc = icmp sgt i8 %i.qb, -65
  %i.qd = getelementptr i8, ptr %i.pt, i64 -3
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = icmp sgt i8 %i.qe, -65
  %or.cond3.not38.i = select i1 %i.pz, i1 true, i1 %i.qc
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.qf
  br i1 %or.cond5.not.i, label %.critedge40.i.preheader, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

.critedge40.i.preheader:                          ; preds = %bb.af, %bb.ae, %.critedge.i
  br label %.critedge40.i

.critedge40.i:                                    ; preds = %.critedge40.i.preheader, %bb.ah
  %.02566.i.i = phi i64 [ %i.qm, %bb.ah ], [ 0, %.critedge40.i.preheader ] ; 6 uses
  %i.qg = sub nsw i64 0, %.02566.i.i              ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %.0477490.i, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1             ; 2 uses
  %i.qj = icmp sgt i8 %i.qi, -65
  br i1 %i.qj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge40.i
  %i.qk = icmp ne i64 %.02566.i.i, 0
  %i.ql = icmp sgt i8 %i.qi, -1
  %or.cond.i.i = and i1 %i.qk, %i.ql
  br i1 %or.cond.i.i, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %.critedge40.i
  %i.qm = add i64 %.02566.i.i, 1                  ; 2 uses
  %.not.i44.i = icmp ugt i64 %i.qm, %i.pr
  br i1 %.not.i44.i, label %bb.aj, label %.critedge40.i, !llvm.loop !25

bb.ai:                                            ; preds = %bb.ag
  %i.qn = sub i64 1, %.02566.i.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.qo = sub i64 0, %i.pr
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.qp = getelementptr inbounds i8, ptr %.0477490.i, i64 %i.qg
  %i.qq = add i64 %.02566.i.i, %i.d
  %i.qr = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.qp, i64 noundef %i.qq, ptr noundef %.0491.i) ; 2 uses
  %i.qs = extractvalue { i32, i64 } %i.qr, 0      ; 2 uses
  %i.qt = extractvalue { i32, i64 } %i.qr, 1
  %.not33.i.i = icmp eq i32 %i.qs, 0
  %i.qu = select i1 %.not33.i.i, i64 0, i64 %.02566.i.i
  %spec.select.i.i = sub i64 %i.qt, %i.qu
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.4.3.i.i = phi i64 [ %spec.select.i.i, %bb.ak ], [ %i.qo, %bb.aj ], [ %i.qn, %bb.ai ]
  %.sroa.0.3.i.i = phi i32 [ %i.qs, %bb.ak ], [ 3, %bb.aj ], [ 3, %bb.ai ]
  %i.qv = add i64 %.sroa.4.3.i.i, %i.pr
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.al:                                            ; preds = %bb.o
  %i.qw = ptrtoint ptr %.0491.i to i64
  %i.qx = ptrtoint ptr %3 to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = ashr exact i64 %i.qy, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i, %bb.al
  %.sroa.4.0.i = phi i64 [ %i.qz, %bb.al ], [ %i.qv, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i ], [ %i.pr, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.al ], [ %.sroa.0.3.i.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit.i ], [ 3, %bb.af ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZNK7simdutf7icelake14implementation29convert_valid_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !guid !630 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp sgt i64 %2, 67
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.t
  %.0978.i = phi ptr [ %.1.i, %bb.t ], [ %1, %bb.a ] ; 3 uses
  %.0961977.i = phi ptr [ %.1962.i, %bb.t ], [ %3, %bb.a ] ; 10 uses
  %i.d = load <8 x i64>, ptr %.0978.i, align 1    ; 7 uses
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
  store <32 x i16> %i.l, ptr %.0961977.i, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.0961977.i, i64 64
  %i.n = bitcast <8 x i64> %i.d to <64 x i8>
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.p = zext <32 x i8> %i.o to <32 x i16>
  store <32 x i16> %i.p, ptr %i.m, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0961977.i, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %.0978.i, i64 64
  br label %bb.t, !llvm.loop !628

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
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7haswell14implementation22to_well_formed_utf16leEPKDsmPDs:bb.a
  %i.db = zext i16 %spec.select.i.i to i32
  %i.dc = and i32 %i.da, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.cz
  %i.de = trunc nuw i32 %i.dd to i16
  store i16 %i.de, ptr %3, align 2
  %i.df = xor <2 x i64> %i.cw, splat (i64 -1)
  %i.dg = and <2 x i64> %i.cg, %i.df
  %i.dh = and <2 x i64> %i.cw, splat (i64 -562958543486979)
  %i.di = or <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.cr, align 2
  br label %._crit_edge58.i.i

._crit_edge58.i.i:                                ; preds = %bb.aj, %.lr.ph57.preheader.i.i, %.preheader.i.i
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -18
  %i.dm = load <8 x i16>, ptr %i.dl, align 1
  %i.dn = load <2 x i64>, ptr %i.dk, align 1      ; 2 uses
  %i.do = and <8 x i16> %i.dm, splat (i16 -1024)
  %i.dp = icmp eq <8 x i16> %i.do, splat (i16 -10240) ; 2 uses
  %i.dq = sext <8 x i1> %i.dp to <8 x i16>        ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dn to <8 x i16>
  %i.ds = and <8 x i16> %i.dr, splat (i16 -1024)
  %i.dt = icmp eq <8 x i16> %i.ds, splat (i16 -9216) ; 2 uses
  %i.du = sext <8 x i1> %i.dt to <8 x i16>        ; 2 uses
  %.inner18 = xor <8 x i16> %i.du, %i.dq
  %i.dv = bitcast <8 x i16> %.inner18 to <16 x i8>
  %i.dw = icmp slt <16 x i8> %i.dv, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %.not.i47.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not.i47.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb1EEEvPDsPKDs.exit48.i.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge58.i.i
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %.inner19 = xor <8 x i16> %i.du, splat (i16 -1)
  %.inner20 = select <8 x i1> %i.dp, <8 x i16> %.inner19, <8 x i16> zeroinitializer ; 2 uses
  %.inner21 = xor <8 x i16> %i.dq, splat (i16 -1)
  %.inner22 = select <8 x i1> %i.dt, <8 x i16> %.inner21, <8 x i16> zeroinitializer
  %i.ea = bitcast <8 x i16> %.inner22 to <2 x i64>
  %i.eb = bitcast <8 x i16> %.inner20 to <16 x i8>
  %i.ec = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.ed = bitcast <16 x i8> %i.ec to <2 x i64>
  %i.ee = or <2 x i64> %i.ea, %i.ed               ; 2 uses
  %i.ef = bitcast <8 x i16> %.inner20 to <4 x i32>
  %i.eg = extractelement <4 x i32> %i.ef, i64 0   ; 2 uses
  %i.eh = and i32 %i.eg, 65533
  %i.ei = xor i32 %i.eg, -1
  %i.ej = getelementptr inbounds i8, ptr %i.dy, i64 -18 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = zext i16 %i.ek to i32
  %i.em = and i32 %i.el, %i.ei
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = trunc nuw i32 %i.en to i16
  store i16 %i.eo, ptr %i.ej, align 2
  %i.ep = xor <2 x i64> %i.ee, splat (i64 -1)
  %i.eq = and <2 x i64> %i.dn, %i.ep
  %i.er = and <2 x i64> %i.ee, splat (i64 -562958543486979)
  %i.es = or <2 x i64> %i.eq, %i.er
  store <2 x i64> %i.es, ptr %i.dz, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb1EEEvPDsPKDs.exit48.i.i

bb.al:                                            ; preds = %.lr.ph.preheader.i.i
  %.inner23 = xor <8 x i16> %i.ca, splat (i16 -1)
  %.inner24 = select <8 x i1> %i.bv, <8 x i16> %.inner23, <8 x i16> zeroinitializer ; 2 uses
  %.inner25 = xor <8 x i16> %i.bw, splat (i16 -1)
  %.inner26 = select <8 x i1> %i.bz, <8 x i16> %.inner25, <8 x i16> zeroinitializer
  %i.et = bitcast <8 x i16> %.inner26 to <2 x i64>
  %i.eu = bitcast <8 x i16> %.inner24 to <16 x i8>
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.ew = bitcast <16 x i8> %i.ev to <2 x i64>
  %i.ex = or <2 x i64> %i.et, %i.ew               ; 2 uses
  %i.ey = bitcast <8 x i16> %.inner24 to <4 x i32>
  %i.ez = extractelement <4 x i32> %i.ey, i64 0   ; 2 uses
  %i.fa = and i32 %i.ez, 65533
  %i.fb = xor i32 %i.ez, -1
  %i.fc = zext i16 %spec.select.i.i to i32
  %i.fd = and i32 %i.fb, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.fa
  %i.ff = trunc nuw i32 %i.fe to i16
  store i16 %i.ff, ptr %3, align 2
  %i.fg = xor <2 x i64> %i.ex, splat (i64 -1)
  %i.fh = and <2 x i64> %i.bt, %i.fg
  %i.fi = and <2 x i64> %i.ex, splat (i64 -562958543486979)
  %i.fj = or <2 x i64> %i.fh, %i.fi
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i.i

_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i.i: ; preds = %bb.al, %.lr.ph.preheader.i.i
  %storemerge.i.i.i = phi <2 x i64> [ %i.fj, %bb.al ], [ %i.bt, %.lr.ph.preheader.i.i ]
  store <2 x i64> %storemerge.i.i.i, ptr %i.bq, align 2
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i.i, %.preheader54.i.i
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -16
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -18
  %i.fp = load <8 x i16>, ptr %i.fo, align 1
  %i.fq = load <2 x i64>, ptr %i.fn, align 1      ; 3 uses
  %i.fr = and <8 x i16> %i.fp, splat (i16 -1024)
  %i.fs = icmp eq <8 x i16> %i.fr, splat (i16 -10240) ; 2 uses
  %i.ft = sext <8 x i1> %i.fs to <8 x i16>        ; 2 uses
  %i.fu = bitcast <2 x i64> %i.fq to <8 x i16>
  %i.fv = and <8 x i16> %i.fu, splat (i16 -1024)
  %i.fw = icmp eq <8 x i16> %i.fv, splat (i16 -9216) ; 2 uses
  %i.fx = sext <8 x i1> %i.fw to <8 x i16>        ; 2 uses
  %.inner28 = xor <8 x i16> %i.fx, %i.ft
  %i.fy = bitcast <8 x i16> %.inner28 to <16 x i8>
  %i.fz = icmp slt <16 x i8> %i.fy, zeroinitializer
  %i.ga = bitcast <16 x i1> %i.fz to i16
  %.not.i50.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not.i50.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit52.i.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i
  %.inner29 = xor <8 x i16> %i.fx, splat (i16 -1)
  %.inner30 = select <8 x i1> %i.fs, <8 x i16> %.inner29, <8 x i16> zeroinitializer ; 2 uses
  %.inner31 = xor <8 x i16> %i.ft, splat (i16 -1)
  %.inner32 = select <8 x i1> %i.fw, <8 x i16> %.inner31, <8 x i16> zeroinitializer
  %i.gb = bitcast <8 x i16> %.inner32 to <2 x i64>
  %i.gc = bitcast <8 x i16> %.inner30 to <16 x i8>
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.ge = bitcast <16 x i8> %i.gd to <2 x i64>
  %i.gf = or <2 x i64> %i.gb, %i.ge               ; 2 uses
  %i.gg = bitcast <8 x i16> %.inner30 to <4 x i32>
  %i.gh = extractelement <4 x i32> %i.gg, i64 0   ; 2 uses
  %i.gi = and i32 %i.gh, 65533
  %i.gj = xor i32 %i.gh, -1
  %i.gk = getelementptr inbounds i8, ptr %i.fk, i64 -18 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = zext i16 %i.gl to i32
  %i.gn = and i32 %i.gm, %i.gj
  %i.go = or disjoint i32 %i.gn, %i.gi
  %i.gp = trunc nuw i32 %i.go to i16
  store i16 %i.gp, ptr %i.gk, align 2
  %i.gq = xor <2 x i64> %i.gf, splat (i64 -1)
  %i.gr = and <2 x i64> %i.fq, %i.gq
  %i.gs = and <2 x i64> %i.gf, splat (i64 -562958543486979)
  %i.gt = or <2 x i64> %i.gr, %i.gs
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit52.i.i

_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit52.i.i: ; preds = %bb.am, %._crit_edge.i.i
  %storemerge.i51.i.i = phi <2 x i64> [ %i.gt, %bb.am ], [ %i.fq, %._crit_edge.i.i ]
  store <2 x i64> %storemerge.i51.i.i, ptr %i.fl, align 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb1EEEvPDsPKDs.exit48.i.i

_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb1EEEvPDsPKDs.exit48.i.i: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb0EEEvPDsPKDs.exit52.i.i, %bb.ak, %._crit_edge58.i.i
  %i.gu = getelementptr [2 x i8], ptr %3, i64 %2
  %i.gv = getelementptr i8, ptr %i.gu, i64 -2     ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2            ; 2 uses
  %i.gx = and i16 %i.gw, -1024
  %i.gy = icmp eq i16 %i.gx, -10240
  %spec.select53.i.i = select i1 %i.gy, i16 -3, i16 %i.gw
  store i16 %spec.select53.i.i, ptr %i.gv, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE0EEEvPKDsmPDs.exit

bb.an:                                            ; preds = %bb.a
  %i.gz = load i16, ptr %1, align 2               ; 2 uses
  %i.ha = and i16 %i.gz, -1024
  %i.hb = icmp eq i16 %i.ha, -9216
  %spec.select.i = select i1 %i.hb, i16 -3, i16 %i.gz
  store i16 %spec.select.i, ptr %3, align 2
  %i.hc = icmp eq ptr %1, %3
  %.not58.i = icmp eq i64 %2, 17                  ; 2 uses
  br i1 %i.hc, label %.preheader.i, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.an
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.an
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.preheader.i, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i
  %i.hd = phi i64 [ %i.ip, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i ], [ 17, %.preheader.i ] ; 2 uses
  %.055.i = phi i64 [ %i.hd, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.055.i ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -2
  %i.hg = load <16 x i16>, ptr %i.hf, align 1
  %i.hh = load <4 x i64>, ptr %i.he, align 1      ; 2 uses
  %i.hi = and <16 x i16> %i.hg, splat (i16 -1024)
  %i.hj = icmp eq <16 x i16> %i.hi, splat (i16 -10240) ; 2 uses
  %i.hk = sext <16 x i1> %i.hj to <16 x i16>      ; 2 uses
  %i.hl = bitcast <4 x i64> %i.hh to <16 x i16>
  %i.hm = and <16 x i16> %i.hl, splat (i16 -1024)
  %i.hn = icmp eq <16 x i16> %i.hm, splat (i16 -9216) ; 2 uses
  %i.ho = sext <16 x i1> %i.hn to <16 x i16>      ; 2 uses
  %.inner34 = xor <16 x i16> %i.ho, %i.hk
  %i.hp = bitcast <16 x i16> %.inner34 to <4 x i64> ; 2 uses
  %i.hq = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.hp, <4 x i64> %i.hp)
  %.not.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i, label %bb.ao, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i

bb.ao:                                            ; preds = %.lr.ph56.i
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.055.i ; 2 uses
  %.inner35 = xor <16 x i16> %i.ho, splat (i16 -1)
  %.inner36 = select <16 x i1> %i.hj, <16 x i16> %.inner35, <16 x i16> zeroinitializer ; 3 uses
  %i.hs = bitcast <16 x i16> %.inner36 to <32 x i8>
  %i.ht = shufflevector <32 x i8> %i.hs, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.hu = bitcast <16 x i16> %.inner36 to <32 x i8>
  %i.hv = shufflevector <32 x i8> %i.hu, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <16 x i8> %i.hv, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.hw = bitcast <16 x i8> %4 to <2 x i64>
  %i.hx = shufflevector <2 x i64> %i.hw, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hy = bitcast <32 x i8> %i.ht to <4 x i64>
  %.inner37 = xor <16 x i16> %i.hk, splat (i16 -1)
  %.inner38 = select <16 x i1> %i.hn, <16 x i16> %.inner37, <16 x i16> zeroinitializer
  %i.hz = bitcast <16 x i16> %.inner38 to <4 x i64>
  %i.ia = or <4 x i64> %i.hz, %i.hy
  %i.ib = or <4 x i64> %i.ia, %i.hx
  %i.ic = bitcast <16 x i16> %.inner36 to <8 x i32>
  %i.id = extractelement <8 x i32> %i.ic, i64 0   ; 2 uses
  %i.ie = and i32 %i.id, 65533
  %i.if = xor i32 %i.id, -1
  %i.ig = getelementptr inbounds i8, ptr %i.hr, i64 -2 ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = zext i16 %i.ih to i32
  %i.ij = and i32 %i.ii, %i.if
  %i.ik = or disjoint i32 %i.ij, %i.ie
  %i.il = trunc nuw i32 %i.ik to i16
  store i16 %i.il, ptr %i.ig, align 2
  %i.im = bitcast <4 x i64> %i.hh to <32 x i8>
  %i.in = bitcast <4 x i64> %i.ib to <32 x i8>
  %i.io = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.im, <32 x i8> <i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1>, <32 x i8> %i.in)
  store <32 x i8> %i.io, ptr %i.hr, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i: ; preds = %bb.ao, %.lr.ph56.i
  %i.ip = add nuw i64 %i.hd, 16                   ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %2
  br i1 %i.iq, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !946

._crit_edge57.i:                                  ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit.i, %.preheader.i
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -32
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 -34
  %i.iu = load <16 x i16>, ptr %i.it, align 1
  %i.iv = load <4 x i64>, ptr %i.is, align 1      ; 2 uses
  %i.iw = and <16 x i16> %i.iu, splat (i16 -1024)
  %i.ix = icmp eq <16 x i16> %i.iw, splat (i16 -10240) ; 2 uses
  %i.iy = sext <16 x i1> %i.ix to <16 x i16>      ; 2 uses
  %i.iz = bitcast <4 x i64> %i.iv to <16 x i16>
  %i.ja = and <16 x i16> %i.iz, splat (i16 -1024)
  %i.jb = icmp eq <16 x i16> %i.ja, splat (i16 -9216) ; 2 uses
  %i.jc = sext <16 x i1> %i.jb to <16 x i16>      ; 2 uses
  %.inner40 = xor <16 x i16> %i.jc, %i.iy
  %i.jd = bitcast <16 x i16> %.inner40 to <4 x i64> ; 2 uses
  %i.je = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.jd, <4 x i64> %i.jd)
  %.not.i46.i = icmp eq i32 %i.je, 0
  br i1 %.not.i46.i, label %bb.ap, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit47.i

bb.ap:                                            ; preds = %._crit_edge57.i
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -32
  %.inner41 = xor <16 x i16> %i.jc, splat (i16 -1)
  %.inner42 = select <16 x i1> %i.ix, <16 x i16> %.inner41, <16 x i16> zeroinitializer ; 3 uses
  %i.jh = bitcast <16 x i16> %.inner42 to <32 x i8>
  %i.ji = shufflevector <32 x i8> %i.jh, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.jj = bitcast <16 x i16> %.inner42 to <32 x i8>
  %i.jk = shufflevector <32 x i8> %i.jj, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <16 x i8> %i.jk, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.jl = bitcast <16 x i8> %5 to <2 x i64>
  %i.jm = shufflevector <2 x i64> %i.jl, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jn = bitcast <32 x i8> %i.ji to <4 x i64>
  %.inner43 = xor <16 x i16> %i.iy, splat (i16 -1)
  %.inner44 = select <16 x i1> %i.jb, <16 x i16> %.inner43, <16 x i16> zeroinitializer
  %i.jo = bitcast <16 x i16> %.inner44 to <4 x i64>
  %i.jp = or <4 x i64> %i.jo, %i.jn
  %i.jq = or <4 x i64> %i.jp, %i.jm
  %i.jr = bitcast <16 x i16> %.inner42 to <8 x i32>
  %i.js = extractelement <8 x i32> %i.jr, i64 0   ; 2 uses
  %i.jt = and i32 %i.js, 65533
  %i.ju = xor i32 %i.js, -1
  %i.jv = getelementptr inbounds i8, ptr %i.jf, i64 -34 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = zext i16 %i.jw to i32
  %i.jy = and i32 %i.jx, %i.ju
  %i.jz = or disjoint i32 %i.jy, %i.jt
  %i.ka = trunc nuw i32 %i.jz to i16
  store i16 %i.ka, ptr %i.jv, align 2
  %i.kb = bitcast <4 x i64> %i.iv to <32 x i8>
  %i.kc = bitcast <4 x i64> %i.jq to <32 x i8>
  %i.kd = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.kb, <32 x i8> <i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1>, <32 x i8> %i.kc)
  store <32 x i8> %i.kd, ptr %i.jg, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit47.i

.lr.ph.i:                                         ; preds = %.preheader53.i, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i
  %i.ke = phi i64 [ %i.lr, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i ], [ 17, %.preheader53.i ] ; 2 uses
  %.154.i = phi i64 [ %i.ke, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i ], [ 1, %.preheader53.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.154.i ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.154.i ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -2
  %i.ki = load <16 x i16>, ptr %i.kh, align 1
  %i.kj = load <4 x i64>, ptr %i.kg, align 1      ; 3 uses
  %i.kk = and <16 x i16> %i.ki, splat (i16 -1024)
  %i.kl = icmp eq <16 x i16> %i.kk, splat (i16 -10240) ; 2 uses
  %i.km = sext <16 x i1> %i.kl to <16 x i16>      ; 2 uses
  %i.kn = bitcast <4 x i64> %i.kj to <16 x i16>
  %i.ko = and <16 x i16> %i.kn, splat (i16 -1024)
  %i.kp = icmp eq <16 x i16> %i.ko, splat (i16 -9216) ; 2 uses
  %i.kq = sext <16 x i1> %i.kp to <16 x i16>      ; 2 uses
  %.inner46 = xor <16 x i16> %i.kq, %i.km
  %i.kr = bitcast <16 x i16> %.inner46 to <4 x i64> ; 2 uses
  %i.ks = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.kr, <4 x i64> %i.kr)
  %.not.i48.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i48.i, label %bb.aq, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i

bb.aq:                                            ; preds = %.lr.ph.i
  %.inner47 = xor <16 x i16> %i.kq, splat (i16 -1)
  %.inner48 = select <16 x i1> %i.kl, <16 x i16> %.inner47, <16 x i16> zeroinitializer ; 3 uses
  %i.kt = bitcast <16 x i16> %.inner48 to <32 x i8>
  %i.ku = shufflevector <32 x i8> %i.kt, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.kv = bitcast <16 x i16> %.inner48 to <32 x i8>
  %i.kw = shufflevector <32 x i8> %i.kv, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <16 x i8> %i.kw, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.kx = bitcast <16 x i8> %6 to <2 x i64>
  %i.ky = shufflevector <2 x i64> %i.kx, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kz = bitcast <32 x i8> %i.ku to <4 x i64>
  %.inner49 = xor <16 x i16> %i.km, splat (i16 -1)
  %.inner50 = select <16 x i1> %i.kp, <16 x i16> %.inner49, <16 x i16> zeroinitializer
  %i.la = bitcast <16 x i16> %.inner50 to <4 x i64>
  %i.lb = or <4 x i64> %i.la, %i.kz
  %i.lc = or <4 x i64> %i.lb, %i.ky
  %i.ld = bitcast <16 x i16> %.inner48 to <8 x i32>
  %i.le = extractelement <8 x i32> %i.ld, i64 0   ; 2 uses
  %i.lf = and i32 %i.le, 65533
  %i.lg = xor i32 %i.le, -1
  %i.lh = getelementptr inbounds i8, ptr %i.kf, i64 -2 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2
  %i.lj = zext i16 %i.li to i32
  %i.lk = and i32 %i.lj, %i.lg
  %i.ll = or disjoint i32 %i.lk, %i.lf
  %i.lm = trunc nuw i32 %i.ll to i16
  store i16 %i.lm, ptr %i.lh, align 2
  %i.ln = bitcast <4 x i64> %i.kj to <32 x i8>
  %i.lo = bitcast <4 x i64> %i.lc to <32 x i8>
  %i.lp = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.ln, <32 x i8> <i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1>, <32 x i8> %i.lo)
  %i.lq = bitcast <32 x i8> %i.lp to <4 x i64>
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i: ; preds = %bb.aq, %.lr.ph.i
  %storemerge.i.i = phi <4 x i64> [ %i.lq, %bb.aq ], [ %i.kj, %.lr.ph.i ]
  store <4 x i64> %storemerge.i.i, ptr %i.kf, align 1
  %i.lr = add nuw i64 %i.ke, 16                   ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %2
  br i1 %i.ls, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !947

._crit_edge.i:                                    ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit.i, %.preheader53.i
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -32
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -32
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 -34
  %i.ly = load <16 x i16>, ptr %i.lx, align 1
  %i.lz = load <4 x i64>, ptr %i.lw, align 1      ; 3 uses
  %i.ma = and <16 x i16> %i.ly, splat (i16 -1024)
  %i.mb = icmp eq <16 x i16> %i.ma, splat (i16 -10240) ; 2 uses
  %i.mc = sext <16 x i1> %i.mb to <16 x i16>      ; 2 uses
  %i.md = bitcast <4 x i64> %i.lz to <16 x i16>
  %i.me = and <16 x i16> %i.md, splat (i16 -1024)
  %i.mf = icmp eq <16 x i16> %i.me, splat (i16 -9216) ; 2 uses
  %i.mg = sext <16 x i1> %i.mf to <16 x i16>      ; 2 uses
  %.inner52 = xor <16 x i16> %i.mg, %i.mc
  %i.mh = bitcast <16 x i16> %.inner52 to <4 x i64> ; 2 uses
  %i.mi = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.mh, <4 x i64> %i.mh)
  %.not.i49.i = icmp eq i32 %i.mi, 0
  br i1 %.not.i49.i, label %bb.ar, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit51.i

bb.ar:                                            ; preds = %._crit_edge.i
  %.inner53 = xor <16 x i16> %i.mg, splat (i16 -1)
  %.inner54 = select <16 x i1> %i.mb, <16 x i16> %.inner53, <16 x i16> zeroinitializer ; 3 uses
  %i.mj = bitcast <16 x i16> %.inner54 to <32 x i8>
  %i.mk = shufflevector <32 x i8> %i.mj, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.ml = bitcast <16 x i16> %.inner54 to <32 x i8>
  %i.mm = shufflevector <32 x i8> %i.ml, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <16 x i8> %i.mm, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.mn = bitcast <16 x i8> %7 to <2 x i64>
  %i.mo = shufflevector <2 x i64> %i.mn, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mp = bitcast <32 x i8> %i.mk to <4 x i64>
  %.inner55 = xor <16 x i16> %i.mc, splat (i16 -1)
  %.inner56 = select <16 x i1> %i.mf, <16 x i16> %.inner55, <16 x i16> zeroinitializer
  %i.mq = bitcast <16 x i16> %.inner56 to <4 x i64>
  %i.mr = or <4 x i64> %i.mq, %i.mp
  %i.ms = or <4 x i64> %i.mr, %i.mo
  %i.mt = bitcast <16 x i16> %.inner54 to <8 x i32>
  %i.mu = extractelement <8 x i32> %i.mt, i64 0   ; 2 uses
  %i.mv = and i32 %i.mu, 65533
  %i.mw = xor i32 %i.mu, -1
  %i.mx = getelementptr inbounds i8, ptr %i.lt, i64 -34 ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2
  %i.mz = zext i16 %i.my to i32
  %i.na = and i32 %i.mz, %i.mw
  %i.nb = or disjoint i32 %i.na, %i.mv
  %i.nc = trunc nuw i32 %i.nb to i16
  store i16 %i.nc, ptr %i.mx, align 2
  %i.nd = bitcast <4 x i64> %i.lz to <32 x i8>
  %i.ne = bitcast <4 x i64> %i.ms to <32 x i8>
  %i.nf = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.nd, <32 x i8> <i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1>, <32 x i8> %i.ne)
  %i.ng = bitcast <32 x i8> %i.nf to <4 x i64>
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit51.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit51.i: ; preds = %bb.ar, %._crit_edge.i
  %storemerge.i50.i = phi <4 x i64> [ %i.ng, %bb.ar ], [ %i.lz, %._crit_edge.i ]
  store <4 x i64> %storemerge.i50.i, ptr %i.lu, align 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit47.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit47.i: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb0EEEvPDsPKDs.exit51.i, %bb.ap, %._crit_edge57.i
  %i.nh = getelementptr [2 x i8], ptr %3, i64 %2
  %i.ni = getelementptr i8, ptr %i.nh, i64 -2     ; 2 uses
  %i.nj = load i16, ptr %i.ni, align 2            ; 2 uses
  %i.nk = and i16 %i.nj, -1024
  %i.nl = icmp eq i16 %i.nk, -10240
  %spec.select52.i = select i1 %i.nl, i16 -3, i16 %i.nj
  store i16 %spec.select52.i, ptr %i.ni, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE0EEEvPKDsmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE0EEEvPKDsmPDs.exit: ; preds = %bb.c, %._crit_edge.i.i.i, %bb.ah, %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE0ELb1EEEvPDsPKDs.exit48.i.i, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE0ELb1EEEvPDsPKDs.exit47.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK7simdutf7haswell14implementation22to_well_formed_utf16beEPKDsmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #16 align 2 !guid !951 {
bb.a:
  %i.a = icmp ult i64 %2, 17
  br i1 %i.a, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, 9
  br i1 %i.b, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %.not33.i.i.i = icmp eq i64 %2, 0
  br i1 %.not33.i.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE1EEEvPKDsmPDs.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.c = load i16, ptr %1, align 2
  %i.d = and i16 %i.c, 252                        ; 2 uses
  %i.e = icmp eq i16 %i.d, 216                    ; 2 uses
  %i.f = icmp eq i16 %i.d, 220
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.g = load i16, ptr %1, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i16 [ %i.g, %bb.d ], [ -513, %.lr.ph.i.i.i ]
  store i16 %.sink.i.i.i, ptr %3, align 2
  %exitcond.not.i.i.i = icmp eq i64 %2, 1
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 252                        ; 2 uses
  %i.k = icmp eq i16 %i.j, 216                    ; 2 uses
  %i.l = icmp eq i16 %i.j, 220                    ; 2 uses
  %.not.i.i.i.1 = xor i1 %i.e, true               ; 2 uses
  %or.cond.i.i.i.1 = or i1 %i.l, %.not.i.i.i.1
  br i1 %or.cond.i.i.i.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.1
  store i16 -513, ptr %3, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.1
  %or.cond4.i.i.i.1 = and i1 %i.l, %.not.i.i.i.1
  br i1 %or.cond4.i.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i16, ptr %i.h, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i.i.i.1 = phi i16 [ %i.m, %bb.h ], [ -513, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.sink.i.i.i.1, ptr %i.n, align 2
  %exitcond.not.i.i.i.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, 252                        ; 2 uses
  %i.r = icmp eq i16 %i.q, 216                    ; 2 uses
  %i.s = icmp eq i16 %i.q, 220                    ; 2 uses
  %.not.i.i.i.2 = xor i1 %i.k, true               ; 2 uses
  %or.cond.i.i.i.2 = or i1 %i.s, %.not.i.i.i.2
  br i1 %or.cond.i.i.i.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.2
  %i.t = getelementptr i8, ptr %3, i64 2
  store i16 -513, ptr %i.t, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i.2
  %or.cond4.i.i.i.2 = and i1 %i.s, %.not.i.i.i.2
  br i1 %or.cond4.i.i.i.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load i16, ptr %i.o, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.i.i.2 = phi i16 [ %i.u, %bb.l ], [ -513, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %.sink.i.i.i.2, ptr %i.v, align 2
  %exitcond.not.i.i.i.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, 252                        ; 2 uses
  %i.z = icmp eq i16 %i.y, 216                    ; 2 uses
  %i.aa = icmp eq i16 %i.y, 220                   ; 2 uses
  %.not.i.i.i.3 = xor i1 %i.r, true               ; 2 uses
  %or.cond.i.i.i.3 = or i1 %i.aa, %.not.i.i.i.3
  br i1 %or.cond.i.i.i.3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.3
  %i.ab = getelementptr i8, ptr %3, i64 4
  store i16 -513, ptr %i.ab, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i.3
  %or.cond4.i.i.i.3 = and i1 %i.aa, %.not.i.i.i.3
  br i1 %or.cond4.i.i.i.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i16, ptr %i.w, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i.i.i.3 = phi i16 [ %i.ac, %bb.p ], [ -513, %bb.o ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %.sink.i.i.i.3, ptr %i.ad, align 2
  %exitcond.not.i.i.i.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 252                      ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 216                  ; 2 uses
  %i.ai = icmp eq i16 %i.ag, 220                  ; 2 uses
  %.not.i.i.i.4 = xor i1 %i.z, true               ; 2 uses
  %or.cond.i.i.i.4 = or i1 %i.ai, %.not.i.i.i.4
  br i1 %or.cond.i.i.i.4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.4
  %i.aj = getelementptr i8, ptr %3, i64 6
  store i16 -513, ptr %i.aj, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i.4
  %or.cond4.i.i.i.4 = and i1 %i.ai, %.not.i.i.i.4
  br i1 %or.cond4.i.i.i.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = load i16, ptr %i.ae, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink.i.i.i.4 = phi i16 [ %i.ak, %bb.t ], [ -513, %bb.s ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %.sink.i.i.i.4, ptr %i.al, align 2
  %exitcond.not.i.i.i.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.i.i.i.4, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = and i16 %i.an, 252                      ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 216                  ; 2 uses
  %i.aq = icmp eq i16 %i.ao, 220                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7haswell14implementation22to_well_formed_utf16beEPKDsmPDs:bb.a
  %i.db = zext i16 %spec.select.i.i to i32
  %i.dc = and i32 %i.da, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.cz
  %i.de = trunc nuw i32 %i.dd to i16
  store i16 %i.de, ptr %3, align 2
  %i.df = xor <2 x i64> %i.cw, splat (i64 -1)
  %i.dg = and <2 x i64> %i.cg, %i.df
  %i.dh = and <2 x i64> %i.cw, splat (i64 -144117387132666369)
  %i.di = or <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.cr, align 2
  br label %._crit_edge58.i.i

._crit_edge58.i.i:                                ; preds = %bb.aj, %.lr.ph57.preheader.i.i, %.preheader.i.i
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -18
  %i.dm = load <8 x i16>, ptr %i.dl, align 1
  %i.dn = load <2 x i64>, ptr %i.dk, align 1      ; 2 uses
  %i.do = and <8 x i16> %i.dm, splat (i16 252)
  %i.dp = icmp eq <8 x i16> %i.do, splat (i16 216) ; 2 uses
  %i.dq = sext <8 x i1> %i.dp to <8 x i16>        ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dn to <8 x i16>
  %i.ds = and <8 x i16> %i.dr, splat (i16 252)
  %i.dt = icmp eq <8 x i16> %i.ds, splat (i16 220) ; 2 uses
  %i.du = sext <8 x i1> %i.dt to <8 x i16>        ; 2 uses
  %.inner18 = xor <8 x i16> %i.du, %i.dq
  %i.dv = bitcast <8 x i16> %.inner18 to <16 x i8>
  %i.dw = icmp slt <16 x i8> %i.dv, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %.not.i47.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not.i47.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb1EEEvPDsPKDs.exit48.i.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge58.i.i
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %.inner19 = xor <8 x i16> %i.du, splat (i16 -1)
  %.inner20 = select <8 x i1> %i.dp, <8 x i16> %.inner19, <8 x i16> zeroinitializer ; 2 uses
  %.inner21 = xor <8 x i16> %i.dq, splat (i16 -1)
  %.inner22 = select <8 x i1> %i.dt, <8 x i16> %.inner21, <8 x i16> zeroinitializer
  %i.ea = bitcast <8 x i16> %.inner22 to <2 x i64>
  %i.eb = bitcast <8 x i16> %.inner20 to <16 x i8>
  %i.ec = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.ed = bitcast <16 x i8> %i.ec to <2 x i64>
  %i.ee = or <2 x i64> %i.ea, %i.ed               ; 2 uses
  %i.ef = bitcast <8 x i16> %.inner20 to <4 x i32>
  %i.eg = extractelement <4 x i32> %i.ef, i64 0   ; 2 uses
  %i.eh = and i32 %i.eg, 65023
  %i.ei = xor i32 %i.eg, -1
  %i.ej = getelementptr inbounds i8, ptr %i.dy, i64 -18 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = zext i16 %i.ek to i32
  %i.em = and i32 %i.el, %i.ei
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = trunc nuw i32 %i.en to i16
  store i16 %i.eo, ptr %i.ej, align 2
  %i.ep = xor <2 x i64> %i.ee, splat (i64 -1)
  %i.eq = and <2 x i64> %i.dn, %i.ep
  %i.er = and <2 x i64> %i.ee, splat (i64 -144117387132666369)
  %i.es = or <2 x i64> %i.eq, %i.er
  store <2 x i64> %i.es, ptr %i.dz, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb1EEEvPDsPKDs.exit48.i.i

bb.al:                                            ; preds = %.lr.ph.preheader.i.i
  %.inner23 = xor <8 x i16> %i.ca, splat (i16 -1)
  %.inner24 = select <8 x i1> %i.bv, <8 x i16> %.inner23, <8 x i16> zeroinitializer ; 2 uses
  %.inner25 = xor <8 x i16> %i.bw, splat (i16 -1)
  %.inner26 = select <8 x i1> %i.bz, <8 x i16> %.inner25, <8 x i16> zeroinitializer
  %i.et = bitcast <8 x i16> %.inner26 to <2 x i64>
  %i.eu = bitcast <8 x i16> %.inner24 to <16 x i8>
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.ew = bitcast <16 x i8> %i.ev to <2 x i64>
  %i.ex = or <2 x i64> %i.et, %i.ew               ; 2 uses
  %i.ey = bitcast <8 x i16> %.inner24 to <4 x i32>
  %i.ez = extractelement <4 x i32> %i.ey, i64 0   ; 2 uses
  %i.fa = and i32 %i.ez, 65023
  %i.fb = xor i32 %i.ez, -1
  %i.fc = zext i16 %spec.select.i.i to i32
  %i.fd = and i32 %i.fb, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.fa
  %i.ff = trunc nuw i32 %i.fe to i16
  store i16 %i.ff, ptr %3, align 2
  %i.fg = xor <2 x i64> %i.ex, splat (i64 -1)
  %i.fh = and <2 x i64> %i.bt, %i.fg
  %i.fi = and <2 x i64> %i.ex, splat (i64 -144117387132666369)
  %i.fj = or <2 x i64> %i.fh, %i.fi
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i.i

_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i.i: ; preds = %bb.al, %.lr.ph.preheader.i.i
  %storemerge.i.i.i = phi <2 x i64> [ %i.fj, %bb.al ], [ %i.bt, %.lr.ph.preheader.i.i ]
  store <2 x i64> %storemerge.i.i.i, ptr %i.bq, align 2
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i.i, %.preheader54.i.i
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -16
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -18
  %i.fp = load <8 x i16>, ptr %i.fo, align 1
  %i.fq = load <2 x i64>, ptr %i.fn, align 1      ; 3 uses
  %i.fr = and <8 x i16> %i.fp, splat (i16 252)
  %i.fs = icmp eq <8 x i16> %i.fr, splat (i16 216) ; 2 uses
  %i.ft = sext <8 x i1> %i.fs to <8 x i16>        ; 2 uses
  %i.fu = bitcast <2 x i64> %i.fq to <8 x i16>
  %i.fv = and <8 x i16> %i.fu, splat (i16 252)
  %i.fw = icmp eq <8 x i16> %i.fv, splat (i16 220) ; 2 uses
  %i.fx = sext <8 x i1> %i.fw to <8 x i16>        ; 2 uses
  %.inner28 = xor <8 x i16> %i.fx, %i.ft
  %i.fy = bitcast <8 x i16> %.inner28 to <16 x i8>
  %i.fz = icmp slt <16 x i8> %i.fy, zeroinitializer
  %i.ga = bitcast <16 x i1> %i.fz to i16
  %.not.i50.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not.i50.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit52.i.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i
  %.inner29 = xor <8 x i16> %i.fx, splat (i16 -1)
  %.inner30 = select <8 x i1> %i.fs, <8 x i16> %.inner29, <8 x i16> zeroinitializer ; 2 uses
  %.inner31 = xor <8 x i16> %i.ft, splat (i16 -1)
  %.inner32 = select <8 x i1> %i.fw, <8 x i16> %.inner31, <8 x i16> zeroinitializer
  %i.gb = bitcast <8 x i16> %.inner32 to <2 x i64>
  %i.gc = bitcast <8 x i16> %.inner30 to <16 x i8>
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.ge = bitcast <16 x i8> %i.gd to <2 x i64>
  %i.gf = or <2 x i64> %i.gb, %i.ge               ; 2 uses
  %i.gg = bitcast <8 x i16> %.inner30 to <4 x i32>
  %i.gh = extractelement <4 x i32> %i.gg, i64 0   ; 2 uses
  %i.gi = and i32 %i.gh, 65023
  %i.gj = xor i32 %i.gh, -1
  %i.gk = getelementptr inbounds i8, ptr %i.fk, i64 -18 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = zext i16 %i.gl to i32
  %i.gn = and i32 %i.gm, %i.gj
  %i.go = or disjoint i32 %i.gn, %i.gi
  %i.gp = trunc nuw i32 %i.go to i16
  store i16 %i.gp, ptr %i.gk, align 2
  %i.gq = xor <2 x i64> %i.gf, splat (i64 -1)
  %i.gr = and <2 x i64> %i.fq, %i.gq
  %i.gs = and <2 x i64> %i.gf, splat (i64 -144117387132666369)
  %i.gt = or <2 x i64> %i.gr, %i.gs
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit52.i.i

_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit52.i.i: ; preds = %bb.am, %._crit_edge.i.i
  %storemerge.i51.i.i = phi <2 x i64> [ %i.gt, %bb.am ], [ %i.fq, %._crit_edge.i.i ]
  store <2 x i64> %storemerge.i51.i.i, ptr %i.fl, align 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb1EEEvPDsPKDs.exit48.i.i

_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb1EEEvPDsPKDs.exit48.i.i: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb0EEEvPDsPKDs.exit52.i.i, %bb.ak, %._crit_edge58.i.i
  %i.gu = getelementptr [2 x i8], ptr %3, i64 %2
  %i.gv = getelementptr i8, ptr %i.gu, i64 -2     ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2            ; 2 uses
  %i.gx = and i16 %i.gw, 252
  %i.gy = icmp eq i16 %i.gx, 216
  %spec.select53.i.i = select i1 %i.gy, i16 -513, i16 %i.gw
  store i16 %spec.select53.i.i, ptr %i.gv, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE1EEEvPKDsmPDs.exit

bb.an:                                            ; preds = %bb.a
  %i.gz = load i16, ptr %1, align 2               ; 2 uses
  %i.ha = and i16 %i.gz, 252
  %i.hb = icmp eq i16 %i.ha, 220
  %spec.select.i = select i1 %i.hb, i16 -513, i16 %i.gz
  store i16 %spec.select.i, ptr %3, align 2
  %i.hc = icmp eq ptr %1, %3
  %.not58.i = icmp eq i64 %2, 17                  ; 2 uses
  br i1 %i.hc, label %.preheader.i, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.an
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.an
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.preheader.i, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i
  %i.hd = phi i64 [ %i.ip, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i ], [ 17, %.preheader.i ] ; 2 uses
  %.055.i = phi i64 [ %i.hd, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.055.i ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -2
  %i.hg = load <16 x i16>, ptr %i.hf, align 1
  %i.hh = load <4 x i64>, ptr %i.he, align 1      ; 2 uses
  %i.hi = and <16 x i16> %i.hg, splat (i16 252)
  %i.hj = icmp eq <16 x i16> %i.hi, splat (i16 216) ; 2 uses
  %i.hk = sext <16 x i1> %i.hj to <16 x i16>      ; 2 uses
  %i.hl = bitcast <4 x i64> %i.hh to <16 x i16>
  %i.hm = and <16 x i16> %i.hl, splat (i16 252)
  %i.hn = icmp eq <16 x i16> %i.hm, splat (i16 220) ; 2 uses
  %i.ho = sext <16 x i1> %i.hn to <16 x i16>      ; 2 uses
  %.inner34 = xor <16 x i16> %i.ho, %i.hk
  %i.hp = bitcast <16 x i16> %.inner34 to <4 x i64> ; 2 uses
  %i.hq = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.hp, <4 x i64> %i.hp)
  %.not.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i, label %bb.ao, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i

bb.ao:                                            ; preds = %.lr.ph56.i
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.055.i ; 2 uses
  %.inner35 = xor <16 x i16> %i.ho, splat (i16 -1)
  %.inner36 = select <16 x i1> %i.hj, <16 x i16> %.inner35, <16 x i16> zeroinitializer ; 3 uses
  %i.hs = bitcast <16 x i16> %.inner36 to <32 x i8>
  %i.ht = shufflevector <32 x i8> %i.hs, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.hu = bitcast <16 x i16> %.inner36 to <32 x i8>
  %i.hv = shufflevector <32 x i8> %i.hu, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <16 x i8> %i.hv, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.hw = bitcast <16 x i8> %4 to <2 x i64>
  %i.hx = shufflevector <2 x i64> %i.hw, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hy = bitcast <32 x i8> %i.ht to <4 x i64>
  %.inner37 = xor <16 x i16> %i.hk, splat (i16 -1)
  %.inner38 = select <16 x i1> %i.hn, <16 x i16> %.inner37, <16 x i16> zeroinitializer
  %i.hz = bitcast <16 x i16> %.inner38 to <4 x i64>
  %i.ia = or <4 x i64> %i.hz, %i.hy
  %i.ib = or <4 x i64> %i.ia, %i.hx
  %i.ic = bitcast <16 x i16> %.inner36 to <8 x i32>
  %i.id = extractelement <8 x i32> %i.ic, i64 0   ; 2 uses
  %i.ie = and i32 %i.id, 65023
  %i.if = xor i32 %i.id, -1
  %i.ig = getelementptr inbounds i8, ptr %i.hr, i64 -2 ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = zext i16 %i.ih to i32
  %i.ij = and i32 %i.ii, %i.if
  %i.ik = or disjoint i32 %i.ij, %i.ie
  %i.il = trunc nuw i32 %i.ik to i16
  store i16 %i.il, ptr %i.ig, align 2
  %i.im = bitcast <4 x i64> %i.hh to <32 x i8>
  %i.in = bitcast <4 x i64> %i.ib to <32 x i8>
  %i.io = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.im, <32 x i8> <i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3>, <32 x i8> %i.in)
  store <32 x i8> %i.io, ptr %i.hr, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i: ; preds = %bb.ao, %.lr.ph56.i
  %i.ip = add nuw i64 %i.hd, 16                   ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %2
  br i1 %i.iq, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !949

._crit_edge57.i:                                  ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit.i, %.preheader.i
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -32
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 -34
  %i.iu = load <16 x i16>, ptr %i.it, align 1
  %i.iv = load <4 x i64>, ptr %i.is, align 1      ; 2 uses
  %i.iw = and <16 x i16> %i.iu, splat (i16 252)
  %i.ix = icmp eq <16 x i16> %i.iw, splat (i16 216) ; 2 uses
  %i.iy = sext <16 x i1> %i.ix to <16 x i16>      ; 2 uses
  %i.iz = bitcast <4 x i64> %i.iv to <16 x i16>
  %i.ja = and <16 x i16> %i.iz, splat (i16 252)
  %i.jb = icmp eq <16 x i16> %i.ja, splat (i16 220) ; 2 uses
  %i.jc = sext <16 x i1> %i.jb to <16 x i16>      ; 2 uses
  %.inner40 = xor <16 x i16> %i.jc, %i.iy
  %i.jd = bitcast <16 x i16> %.inner40 to <4 x i64> ; 2 uses
  %i.je = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.jd, <4 x i64> %i.jd)
  %.not.i46.i = icmp eq i32 %i.je, 0
  br i1 %.not.i46.i, label %bb.ap, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit47.i

bb.ap:                                            ; preds = %._crit_edge57.i
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -32
  %.inner41 = xor <16 x i16> %i.jc, splat (i16 -1)
  %.inner42 = select <16 x i1> %i.ix, <16 x i16> %.inner41, <16 x i16> zeroinitializer ; 3 uses
  %i.jh = bitcast <16 x i16> %.inner42 to <32 x i8>
  %i.ji = shufflevector <32 x i8> %i.jh, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.jj = bitcast <16 x i16> %.inner42 to <32 x i8>
  %i.jk = shufflevector <32 x i8> %i.jj, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <16 x i8> %i.jk, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.jl = bitcast <16 x i8> %5 to <2 x i64>
  %i.jm = shufflevector <2 x i64> %i.jl, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jn = bitcast <32 x i8> %i.ji to <4 x i64>
  %.inner43 = xor <16 x i16> %i.iy, splat (i16 -1)
  %.inner44 = select <16 x i1> %i.jb, <16 x i16> %.inner43, <16 x i16> zeroinitializer
  %i.jo = bitcast <16 x i16> %.inner44 to <4 x i64>
  %i.jp = or <4 x i64> %i.jo, %i.jn
  %i.jq = or <4 x i64> %i.jp, %i.jm
  %i.jr = bitcast <16 x i16> %.inner42 to <8 x i32>
  %i.js = extractelement <8 x i32> %i.jr, i64 0   ; 2 uses
  %i.jt = and i32 %i.js, 65023
  %i.ju = xor i32 %i.js, -1
  %i.jv = getelementptr inbounds i8, ptr %i.jf, i64 -34 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = zext i16 %i.jw to i32
  %i.jy = and i32 %i.jx, %i.ju
  %i.jz = or disjoint i32 %i.jy, %i.jt
  %i.ka = trunc nuw i32 %i.jz to i16
  store i16 %i.ka, ptr %i.jv, align 2
  %i.kb = bitcast <4 x i64> %i.iv to <32 x i8>
  %i.kc = bitcast <4 x i64> %i.jq to <32 x i8>
  %i.kd = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.kb, <32 x i8> <i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3>, <32 x i8> %i.kc)
  store <32 x i8> %i.kd, ptr %i.jg, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit47.i

.lr.ph.i:                                         ; preds = %.preheader53.i, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i
  %i.ke = phi i64 [ %i.lr, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i ], [ 17, %.preheader53.i ] ; 2 uses
  %.154.i = phi i64 [ %i.ke, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i ], [ 1, %.preheader53.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.154.i ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.154.i ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -2
  %i.ki = load <16 x i16>, ptr %i.kh, align 1
  %i.kj = load <4 x i64>, ptr %i.kg, align 1      ; 3 uses
  %i.kk = and <16 x i16> %i.ki, splat (i16 252)
  %i.kl = icmp eq <16 x i16> %i.kk, splat (i16 216) ; 2 uses
  %i.km = sext <16 x i1> %i.kl to <16 x i16>      ; 2 uses
  %i.kn = bitcast <4 x i64> %i.kj to <16 x i16>
  %i.ko = and <16 x i16> %i.kn, splat (i16 252)
  %i.kp = icmp eq <16 x i16> %i.ko, splat (i16 220) ; 2 uses
  %i.kq = sext <16 x i1> %i.kp to <16 x i16>      ; 2 uses
  %.inner46 = xor <16 x i16> %i.kq, %i.km
  %i.kr = bitcast <16 x i16> %.inner46 to <4 x i64> ; 2 uses
  %i.ks = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.kr, <4 x i64> %i.kr)
  %.not.i48.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i48.i, label %bb.aq, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i

bb.aq:                                            ; preds = %.lr.ph.i
  %.inner47 = xor <16 x i16> %i.kq, splat (i16 -1)
  %.inner48 = select <16 x i1> %i.kl, <16 x i16> %.inner47, <16 x i16> zeroinitializer ; 3 uses
  %i.kt = bitcast <16 x i16> %.inner48 to <32 x i8>
  %i.ku = shufflevector <32 x i8> %i.kt, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.kv = bitcast <16 x i16> %.inner48 to <32 x i8>
  %i.kw = shufflevector <32 x i8> %i.kv, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <16 x i8> %i.kw, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.kx = bitcast <16 x i8> %6 to <2 x i64>
  %i.ky = shufflevector <2 x i64> %i.kx, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kz = bitcast <32 x i8> %i.ku to <4 x i64>
  %.inner49 = xor <16 x i16> %i.km, splat (i16 -1)
  %.inner50 = select <16 x i1> %i.kp, <16 x i16> %.inner49, <16 x i16> zeroinitializer
  %i.la = bitcast <16 x i16> %.inner50 to <4 x i64>
  %i.lb = or <4 x i64> %i.la, %i.kz
  %i.lc = or <4 x i64> %i.lb, %i.ky
  %i.ld = bitcast <16 x i16> %.inner48 to <8 x i32>
  %i.le = extractelement <8 x i32> %i.ld, i64 0   ; 2 uses
  %i.lf = and i32 %i.le, 65023
  %i.lg = xor i32 %i.le, -1
  %i.lh = getelementptr inbounds i8, ptr %i.kf, i64 -2 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2
  %i.lj = zext i16 %i.li to i32
  %i.lk = and i32 %i.lj, %i.lg
  %i.ll = or disjoint i32 %i.lk, %i.lf
  %i.lm = trunc nuw i32 %i.ll to i16
  store i16 %i.lm, ptr %i.lh, align 2
  %i.ln = bitcast <4 x i64> %i.kj to <32 x i8>
  %i.lo = bitcast <4 x i64> %i.lc to <32 x i8>
  %i.lp = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.ln, <32 x i8> <i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3>, <32 x i8> %i.lo)
  %i.lq = bitcast <32 x i8> %i.lp to <4 x i64>
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i: ; preds = %bb.aq, %.lr.ph.i
  %storemerge.i.i = phi <4 x i64> [ %i.lq, %bb.aq ], [ %i.kj, %.lr.ph.i ]
  store <4 x i64> %storemerge.i.i, ptr %i.kf, align 1
  %i.lr = add nuw i64 %i.ke, 16                   ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %2
  br i1 %i.ls, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !950

._crit_edge.i:                                    ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit.i, %.preheader53.i
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %2 ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -32
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -32
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 -34
  %i.ly = load <16 x i16>, ptr %i.lx, align 1
  %i.lz = load <4 x i64>, ptr %i.lw, align 1      ; 3 uses
  %i.ma = and <16 x i16> %i.ly, splat (i16 252)
  %i.mb = icmp eq <16 x i16> %i.ma, splat (i16 216) ; 2 uses
  %i.mc = sext <16 x i1> %i.mb to <16 x i16>      ; 2 uses
  %i.md = bitcast <4 x i64> %i.lz to <16 x i16>
  %i.me = and <16 x i16> %i.md, splat (i16 252)
  %i.mf = icmp eq <16 x i16> %i.me, splat (i16 220) ; 2 uses
  %i.mg = sext <16 x i1> %i.mf to <16 x i16>      ; 2 uses
  %.inner52 = xor <16 x i16> %i.mg, %i.mc
  %i.mh = bitcast <16 x i16> %.inner52 to <4 x i64> ; 2 uses
  %i.mi = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.mh, <4 x i64> %i.mh)
  %.not.i49.i = icmp eq i32 %i.mi, 0
  br i1 %.not.i49.i, label %bb.ar, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit51.i

bb.ar:                                            ; preds = %._crit_edge.i
  %.inner53 = xor <16 x i16> %i.mg, splat (i16 -1)
  %.inner54 = select <16 x i1> %i.mb, <16 x i16> %.inner53, <16 x i16> zeroinitializer ; 3 uses
  %i.mj = bitcast <16 x i16> %.inner54 to <32 x i8>
  %i.mk = shufflevector <32 x i8> %i.mj, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.ml = bitcast <16 x i16> %.inner54 to <32 x i8>
  %i.mm = shufflevector <32 x i8> %i.ml, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <16 x i8> %i.mm, <16 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1>
  %i.mn = bitcast <16 x i8> %7 to <2 x i64>
  %i.mo = shufflevector <2 x i64> %i.mn, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mp = bitcast <32 x i8> %i.mk to <4 x i64>
  %.inner55 = xor <16 x i16> %i.mc, splat (i16 -1)
  %.inner56 = select <16 x i1> %i.mf, <16 x i16> %.inner55, <16 x i16> zeroinitializer
  %i.mq = bitcast <16 x i16> %.inner56 to <4 x i64>
  %i.mr = or <4 x i64> %i.mq, %i.mp
  %i.ms = or <4 x i64> %i.mr, %i.mo
  %i.mt = bitcast <16 x i16> %.inner54 to <8 x i32>
  %i.mu = extractelement <8 x i32> %i.mt, i64 0   ; 2 uses
  %i.mv = and i32 %i.mu, 65023
  %i.mw = xor i32 %i.mu, -1
  %i.mx = getelementptr inbounds i8, ptr %i.lt, i64 -34 ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2
  %i.mz = zext i16 %i.my to i32
  %i.na = and i32 %i.mz, %i.mw
  %i.nb = or disjoint i32 %i.na, %i.mv
  %i.nc = trunc nuw i32 %i.nb to i16
  store i16 %i.nc, ptr %i.mx, align 2
  %i.nd = bitcast <4 x i64> %i.lz to <32 x i8>
  %i.ne = bitcast <4 x i64> %i.ms to <32 x i8>
  %i.nf = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.nd, <32 x i8> <i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3, i8 -1, i8 -3>, <32 x i8> %i.ne)
  %i.ng = bitcast <32 x i8> %i.nf to <4 x i64>
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit51.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit51.i: ; preds = %bb.ar, %._crit_edge.i
  %storemerge.i50.i = phi <4 x i64> [ %i.ng, %bb.ar ], [ %i.lz, %._crit_edge.i ]
  store <4 x i64> %storemerge.i50.i, ptr %i.lu, align 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit47.i

_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit47.i: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb0EEEvPDsPKDs.exit51.i, %bb.ap, %._crit_edge57.i
  %i.nh = getelementptr [2 x i8], ptr %3, i64 %2
  %i.ni = getelementptr i8, ptr %i.nh, i64 -2     ; 2 uses
  %i.nj = load i16, ptr %i.ni, align 2            ; 2 uses
  %i.nk = and i16 %i.nj, 252
  %i.nl = icmp eq i16 %i.nk, 216
  %spec.select52.i = select i1 %i.nl, i16 -513, i16 %i.nj
  store i16 %spec.select52.i, ptr %i.ni, align 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE1EEEvPKDsmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE1EEEvPKDsmPDs.exit: ; preds = %bb.c, %._crit_edge.i.i.i, %bb.ah, %_ZN7simdutf7haswell12_GLOBAL__N_118utf16fix_block_sseILNS_10endiannessE1ELb1EEEvPDsPKDs.exit48.i.i, %_ZN7simdutf7haswell12_GLOBAL__N_114utf16fix_blockILNS_10endiannessE1ELb1EEEvPDsPKDs.exit47.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf7haswell14implementation14validate_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 !guid !953 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf328validateEPKDim.exit, label %bb.b, !prof !143

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %i.c = icmp ugt i64 %2, 8
  br i1 %i.c, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.e = phi ptr [ %i.l, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.010.i128 = phi ptr [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.f = phi <8 x i32> [ %i.k, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.g = phi <8 x i32> [ %i.i, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.h = load <8 x i32>, ptr %.010.i128, align 1  ; 2 uses
  %i.i = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.g, <8 x i32> %i.h) ; 2 uses
  %i.j = add <8 x i32> %i.h, splat (i32 -57344)
  %i.k = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.f, <8 x i32> %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.b
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !952

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp ugt <8 x i32> %i.i, splat (i32 1114111)
  %i.o = sext <8 x i1> %i.n to <8 x i32>
  %i.p = bitcast <8 x i32> %i.o to <32 x i8>
  %i.q = icmp slt <32 x i8> %i.p, zeroinitializer
  %i.r = bitcast <32 x i1> %i.q to i32
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp ugt <8 x i32> %i.k, splat (i32 -2049)
  %i.u = sext <8 x i1> %i.t to <8 x i32>
  %i.v = bitcast <8 x i32> %i.u to <32 x i8>
  %i.w = icmp slt <32 x i8> %i.v, zeroinitializer
  %i.x = bitcast <32 x i1> %i.w to i32
  %i.y = icmp ne i32 %i.x, 0
  %brmerge = select i1 %i.s, i1 true, i1 %i.y
  br i1 %brmerge, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf328validateEPKDim.exit, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.b
  %.010.i.lcssa139142 = phi ptr [ %i.e, %._crit_edge ], [ %1, %bb.b ] ; 3 uses
  %i.z = ptrtoint ptr %i.b to i64
  %i.aa = ptrtoint ptr %.010.i.lcssa139142 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = icmp eq ptr %i.b, %.010.i.lcssa139142
  br i1 %i.ad, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf328validateEPKDim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %.lr.ph.i
  %.01115.i = phi i64 [ %i.ai, %.lr.ph.i ], [ 0, %.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.010.i.lcssa139142, i64 %.01115.i
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp ult i32 %i.af, 1114112
  %i.ah = and i32 %i.af, 2095104
  %or.cond.i = icmp ne i32 %i.ah, 55296
  %or.cond14.not.i = and i1 %i.ag, %or.cond.i     ; 2 uses
  %i.ai = add nuw i64 %.01115.i, 1                ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.ai, %i.ac
  %or.cond.not = select i1 %or.cond14.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf328validateEPKDim.exit, !llvm.loop !4

_ZN7simdutf7haswell12_GLOBAL__N_15utf328validateEPKDim.exit: ; preds = %.lr.ph.i, %._crit_edge, %.thread, %bb.a
  %.2.i = phi i1 [ true, %bb.a ], [ false, %._crit_edge ], [ true, %.thread ], [ %or.cond14.not.i, %.lr.ph.i ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation26validate_utf32_with_errorsEPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 !guid !955 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit, label %bb.b, !prof !143

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.037.0 = phi i32 [ undef, %bb.b ], [ %.sroa.037.2, %bb.g ]
  %.sroa.638.0 = phi i64 [ undef, %bb.b ], [ %.sroa.638.2, %bb.g ]
  %.0.i = phi ptr [ %1, %bb.b ], [ %.1.i, %bb.g ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.b
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = load <8 x i32>, ptr %.0.i, align 1       ; 2 uses
  %i.h = icmp ugt <8 x i32> %i.g, splat (i32 1114111)
  %i.i = and <8 x i32> %i.g, splat (i32 -2048)
  %i.j = icmp eq <8 x i32> %i.i, splat (i32 55296)
  %i.k = or <8 x i1> %i.h, %i.j
  %i.l = sext <8 x i1> %i.k to <8 x i32>
  %i.m = bitcast <8 x i32> %i.l to <32 x i8>
  %i.n = icmp slt <32 x i8> %i.m, zeroinitializer
  %i.o = bitcast <32 x i1> %i.n to i32
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %bb.g, label %.lr.ph.i.preheader, !prof !155

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = sub i64 %i.p, %i.c
  %i.r = ashr exact i64 %i.q, 2
  %i.s = sub i64 %i.d, %i.p
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.01315.i = phi i64 [ %i.y, %bb.f ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %.01315.i
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp ugt i32 %i.v, 1114111
  br i1 %i.w, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = and i32 %i.v, 2095104
  %or.cond.i = icmp eq i32 %i.x, 55296
  br i1 %or.cond.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw i64 %.01315.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.t
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit, label %.lr.ph.i, !llvm.loop !11

_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit: ; preds = %bb.f, %bb.e, %.lr.ph.i
  %.013.lcssa.i.ph = phi i64 [ %.01315.i, %.lr.ph.i ], [ %.01315.i, %bb.e ], [ %i.t, %bb.f ]
  %.sroa.0.0.i.ph = phi i32 [ 5, %.lr.ph.i ], [ 6, %bb.e ], [ 0, %bb.f ]
  %i.z = add i64 %.013.lcssa.i.ph, %i.r
  br label %bb.g

bb.g:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit, %bb.d
  %.sroa.037.2 = phi i32 [ %.sroa.0.0.i.ph, %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit ], [ %.sroa.037.0, %bb.d ] ; 2 uses
  %.sroa.638.2 = phi i64 [ %i.z, %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit ], [ %.sroa.638.0, %bb.d ] ; 2 uses
  %.1.i = phi ptr [ %.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit.loopexit ], [ %i.e, %bb.d ]
  br i1 %.not, label %bb.c, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit, !llvm.loop !954

bb.h:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ab = sub i64 %i.aa, %i.c
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = sub i64 %i.d, %i.aa
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %.not.i3 = icmp eq ptr %i.b, %.0.i
  br i1 %.not.i3, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit12, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.h, %bb.j
  %.01315.i5 = phi i64 [ %i.aj, %bb.j ], [ 0, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %.01315.i5
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 1114111
end_hunk_2
begin_hunk_3_@_ZNK7simdutf7haswell14implementation23convert_latin1_to_utf32EPKcmPDi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.015.i
  %i.g = load <8 x i8>, ptr %i.f, align 1
  %i.h = zext <8 x i8> %i.g to <8 x i32>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.015.i
  store <8 x i32> %i.h, ptr %i.i, align 1
  %i.j = or disjoint i64 %.015.i, 8               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load <8 x i8>, ptr %i.k, align 1
  %i.m = zext <8 x i8> %i.l to <8 x i32>
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  store <8 x i32> %i.m, ptr %i.n, align 1
  %i.o = or disjoint i64 %.015.i, 16              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load <8 x i8>, ptr %i.p, align 1
  %i.r = zext <8 x i8> %i.q to <8 x i32>
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o
  store <8 x i32> %i.r, ptr %i.s, align 1
  %i.t = or disjoint i64 %.015.i, 24              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load <8 x i8>, ptr %i.u, align 1
  %i.w = zext <8 x i8> %i.v to <8 x i32>
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  store <8 x i32> %i.w, ptr %i.x, align 1
  %i.y = add nuw i64 %.015.i, 32                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !966

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit: ; preds = %bb.a
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %bb.c, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.015.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.015.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.015.i.epil
  %i.ab = load <8 x i8>, ptr %i.aa, align 1
  %i.ac = zext <8 x i8> %i.ab to <8 x i32>
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.015.i.epil
  store <8 x i32> %i.ac, ptr %i.ad, align 1
  %i.ae = add nuw i64 %.015.i.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread, label %.lr.ph.i.epil, !llvm.loop !967

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 7 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.a ; 9 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %.not = icmp samesign eq i64 %i.a, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread
  %i.ai = and i64 %2, 7                           ; 7 uses
  %.not.i23 = icmp eq i64 %i.ai, 0                ; 2 uses
  br i1 %.not.i23, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.b
  %i.aj = load i8, ptr %i.af, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store i32 %i.ak, ptr %i.ag, align 4
  %exitcond.not.i = icmp eq i64 %i.ai, 1
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i24.1

.lr.ph.i24.1:                                     ; preds = %.lr.ph.i24
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store i32 %i.ao, ptr %i.al, align 4
  %exitcond.not.i.1 = icmp eq i64 %i.ai, 2
  br i1 %exitcond.not.i.1, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i24.2

.lr.ph.i24.2:                                     ; preds = %.lr.ph.i24.1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  store i32 %i.as, ptr %i.ap, align 4
  %exitcond.not.i.2 = icmp eq i64 %i.ai, 3
  br i1 %exitcond.not.i.2, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i24.3

.lr.ph.i24.3:                                     ; preds = %.lr.ph.i24.2
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store i32 %i.aw, ptr %i.at, align 4
  %exitcond.not.i.3 = icmp eq i64 %i.ai, 4
  br i1 %exitcond.not.i.3, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i24.4

.lr.ph.i24.4:                                     ; preds = %.lr.ph.i24.3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  store i32 %i.ba, ptr %i.ax, align 4
  %exitcond.not.i.4 = icmp eq i64 %i.ai, 5
  br i1 %exitcond.not.i.4, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i24.5

.lr.ph.i24.5:                                     ; preds = %.lr.ph.i24.4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store i32 %i.be, ptr %i.bb, align 4
  %exitcond.not.i.5 = icmp eq i64 %i.ai, 6
  br i1 %exitcond.not.i.5, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i24.6

.lr.ph.i24.6:                                     ; preds = %.lr.ph.i24.5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %i.bi, ptr %i.bf, align 4
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit: ; preds = %.lr.ph.i24.6, %.lr.ph.i24.5, %.lr.ph.i24.4, %.lr.ph.i24.3, %.lr.ph.i24.2, %.lr.ph.i24.1, %.lr.ph.i24
  %.lcssa = phi ptr [ %i.al, %.lr.ph.i24 ], [ %i.ap, %.lr.ph.i24.1 ], [ %i.at, %.lr.ph.i24.2 ], [ %i.ax, %.lr.ph.i24.3 ], [ %i.bb, %.lr.ph.i24.4 ], [ %i.bf, %.lr.ph.i24.5 ], [ %i.bj, %.lr.ph.i24.6 ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit ], [ %i.ah, %bb.b ]
  %i.bk = sub i64 %.pre-phi, %i.ah
  %i.bl = ashr exact i64 %i.bk, 2
  %i.bm = add nsw i64 %i.bl, %i.a
  %spec.select = select i1 %.not.i23, i64 0, i64 %i.bm
  br label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit ], [ %spec.select, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit ], [ %2, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_latin1_to_utf32EPKcmPDi.exit.thread ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation22convert_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #19 align 2 !guid !976 {
bb.a:
  %.not641 = icmp eq i64 %2, 0
  br i1 %.not641, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047.i623 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.048.i622 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.047.i623
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.048.i622, %i.e         ; 2 uses
  %i.g = add i64 %.047.i623, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 16
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !969

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.047.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.047.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i631 = icmp ugt i64 %i.m, %2
  br i1 %.not.i631, label %._crit_edge637, label %.lr.ph636

.lr.ph636:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.db, %.loopexit ], [ 64, %._crit_edge ]
  %.049.i634 = phi i64 [ %.453.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0633 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0632 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i634 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !977 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !978 ; 5 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph636
  store <4 x i64> %i.p, ptr %.0632, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.0632, i64 32
  store <4 x i64> %i.r, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0632, i64 64
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph636
  %i.z = bitcast <4 x i64> %i.p to <32 x i8>      ; 2 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.aa = bitcast <4 x i64> %4 to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> %i.z, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ac = bitcast <32 x i8> %i.ab to <16 x i16>
  %i.ad = lshr <16 x i16> %i.ac, splat (i16 4)
  %i.ae = bitcast <16 x i16> %i.ad to <32 x i8>
  %i.af = and <32 x i8> %i.ae, splat (i8 15)
  %i.ag = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.af)
  %i.ah = and <32 x i8> %i.ab, splat (i8 15)
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ah)
  %i.aj = bitcast <4 x i64> %i.p to <16 x i16>
  %i.ak = lshr <16 x i16> %i.aj, splat (i16 4)
  %i.al = bitcast <16 x i16> %i.ak to <32 x i8>
  %i.am = and <32 x i8> %i.al, splat (i8 15)
  %i.an = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.am)
  %i.ao = and <32 x i8> %i.ai, %i.ag
  %i.ap = and <32 x i8> %i.ao, %i.an
  %i.aq = bitcast <4 x i64> %i.r to <32 x i8>     ; 2 uses
  %i.ar = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.as = bitcast <4 x i64> %i.ar to <32 x i8>
  %i.at = shufflevector <32 x i8> %i.as, <32 x i8> %i.aq, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.au = bitcast <32 x i8> %i.at to <16 x i16>
  %i.av = lshr <16 x i16> %i.au, splat (i16 4)
  %i.aw = bitcast <16 x i16> %i.av to <32 x i8>
  %i.ax = and <32 x i8> %i.aw, splat (i8 15)
  %i.ay = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ax)
  %i.az = and <32 x i8> %i.at, splat (i8 15)
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.az)
  %i.bb = bitcast <4 x i64> %i.r to <16 x i16>
  %i.bc = lshr <16 x i16> %i.bb, splat (i16 4)
  %i.bd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.be = and <32 x i8> %i.bd, splat (i8 15)
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.be)
  %i.bg = and <32 x i8> %i.ba, %i.ay
  %i.bh = and <32 x i8> %i.bg, %i.bf
  %i.bi = or <32 x i8> %i.bh, %i.ap
  %i.bj = bitcast <32 x i8> %i.bi to <4 x i64>
  %i.bk = or <4 x i64> %.sroa.0.0633, %i.bj       ; 2 uses
  %i.bl = icmp slt <32 x i8> %i.z, splat (i8 -64)
  %i.bm = bitcast <32 x i1> %i.bl to i32
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = and i64 %i.bn, 1
  %.not57.i = icmp eq i64 %i.bo, 0
  br i1 %.not57.i, label %bb.d, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.d:                                             ; preds = %bb.c
  %i.bp = add i64 %.049.i634, 52
  %i.bq = icmp ult i64 %.049.i634, -52
  br i1 %i.bq, label %.lr.ph628.preheader, label %.loopexit

.lr.ph628.preheader:                              ; preds = %bb.d
  %i.br = icmp slt <32 x i8> %i.aq, splat (i8 -64)
  %i.bs = bitcast <32 x i1> %i.br to i32
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = or disjoint i64 %i.bu, %i.bn
  %i.bw = xor i64 %i.bv, -1
  %i.bx = lshr i64 %i.bw, 1
  br label %.lr.ph628

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.043.i626 = phi i64 [ %i.cz, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.bx, %.lr.ph628.preheader ] ; 3 uses
  %.150.i625 = phi i64 [ %i.cy, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.049.i634, %.lr.ph628.preheader ] ; 2 uses
  %.1624 = phi ptr [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0632, %.lr.ph628.preheader ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i625
  %.val = load <2 x i64>, ptr %i.by, align 1      ; 2 uses
  %i.bz = icmp eq i64 %.043.i626, 4095
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph628
  store <2 x i64> %.val, ptr %.1624, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.1624, i64 12
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.f:                                             ; preds = %.lr.ph628
  %i.cb = and i64 %.043.i626, 4095
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 2             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp ugt i8 %i.cd, 63
  br i1 %i.cg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = zext nneg i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ch
  %i.cj = load <16 x i8>, ptr %i.ci, align 16
  %i.ck = bitcast <2 x i64> %.val to <16 x i8>
  %i.cl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ck, <16 x i8> %i.cj) ; 2 uses
  %i.cm = bitcast <16 x i8> %i.cl to <2 x i64>
  %i.cn = and <2 x i64> %i.cm, splat (i64 35747867511423103)
  %i.co = bitcast <16 x i8> %i.cl to <8 x i16>
  %i.cp = lshr <8 x i16> %i.co, splat (i16 2)
  %i.cq = bitcast <8 x i16> %i.cp to <2 x i64>
  %i.cr = and <2 x i64> %i.cq, splat (i64 558454875139082176)
  %i.cs = or <2 x i64> %i.cr, %i.cn
  %i.ct = bitcast <2 x i64> %i.cs to <8 x i16>
  %i.cu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ct, <8 x i16> poison)
  %i.cv = bitcast <16 x i8> %i.cu to <2 x i64>
  %i.cw = extractelement <2 x i64> %i.cv, i64 0
  store i64 %i.cw, ptr %.1624, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.1624, i64 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4 = phi ptr [ %.1624, %bb.f ], [ %i.cx, %bb.g ]
  %.0.i = zext i8 %i.cf to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.e, %bb.h
  %.5 = phi ptr [ %i.ca, %bb.e ], [ %.4, %bb.h ]  ; 2 uses
  %.1.i = phi i64 [ 12, %bb.e ], [ %.0.i, %bb.h ] ; 2 uses
  %i.cy = add i64 %.1.i, %.150.i625               ; 3 uses
  %i.cz = lshr i64 %.043.i626, %.1.i
  %i.da = icmp ult i64 %i.cy, %i.bp
  br i1 %i.da, label %.lr.ph628, label %.loopexit, !llvm.loop !974

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.y, %bb.b ], [ %.0632, %bb.d ], [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0633, %bb.b ], [ %i.bk, %bb.d ], [ %i.bk, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.453.i = phi i64 [ %i.n, %bb.b ], [ %.049.i634, %bb.d ], [ %i.cy, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.db = add i64 %.453.i, 64                     ; 2 uses
  %i.dc = add i64 %i.l, %i.db
  %.not.i = icmp ugt i64 %i.dc, %2
  br i1 %.not.i, label %._crit_edge637, label %.lr.ph636, !llvm.loop !975

._crit_edge637:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 5 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.049.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.453.i, %.loopexit ] ; 3 uses
  %i.dd = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge637
  %i.de = icmp ult i64 %.049.i.lcssa, %2
  br i1 %i.de, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i.lcssa ; 2 uses
  %i.dg = sub nuw i64 %2, %.049.i.lcssa           ; 3 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.j, %.backedge.i
  %.04778.i = phi i64 [ %.047.be.i, %.backedge.i ], [ 0, %bb.j ] ; 6 uses
  %.05077.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %.0.lcssa, %bb.j ] ; 20 uses
  %i.dh = add i64 %.04778.i, 16                   ; 2 uses
  %.not.i2 = icmp ugt i64 %i.dh, %i.dg
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.04778.i ; 17 uses
  br i1 %.not.i2, label %.lr.ph79..thread_crit_edge.i, label %bb.k

.lr.ph79..thread_crit_edge.i:                     ; preds = %.lr.ph79.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.k:                                             ; preds = %.lr.ph79.i
  %.0.copyload15.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.di, align 1
  %i.dj = or i64 %.0.copyload.i, %.0.copyload15.i
  %i.dk = and i64 %i.dj, -9187201950435737472
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = trunc i64 %.0.copyload15.i to i8        ; 2 uses
  br i1 %i.dl, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.k
  %i.dn = icmp ult i64 %.04778.i, -16
  br i1 %i.dn, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.do = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  store i8 %i.dm, ptr %.05077.i, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.05077.i, i64 2
  store i8 %i.dq, ptr %i.do, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.05077.i, i64 3
  store i8 %i.dt, ptr %i.dr, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.05077.i, i64 4
  store i8 %i.dw, ptr %i.du, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.05077.i, i64 5
  store i8 %i.dz, ptr %i.dx, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.05077.i, i64 6
  store i8 %i.ec, ptr %i.ea, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.05077.i, i64 7
  store i8 %i.ef, ptr %i.ed, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.05077.i, i64 8
  store i8 %i.ei, ptr %i.eg, align 1
  %i.ek = load i8, ptr %i.di, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %.05077.i, i64 9
  store i8 %i.ek, ptr %i.ej, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %.05077.i, i64 10
  store i8 %i.en, ptr %i.el, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.05077.i, i64 11
  store i8 %i.eq, ptr %i.eo, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.05077.i, i64 12
  store i8 %i.et, ptr %i.er, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.05077.i, i64 13
  store i8 %i.ew, ptr %i.eu, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.05077.i, i64 14
  store i8 %i.ez, ptr %i.ex, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.05077.i, i64 15
  store i8 %i.fc, ptr %i.fa, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.05077.i, i64 16
  store i8 %i.ff, ptr %i.fd, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.k, %.lr.ph79..thread_crit_edge.i
  %i.fh = phi i8 [ %.pre.i, %.lr.ph79..thread_crit_edge.i ], [ %i.dm, %bb.k ] ; 4 uses
  %i.fi = zext i8 %i.fh to i32                    ; 2 uses
  %i.fj = icmp sgt i8 %i.fh, -1
  br i1 %i.fj, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.fk = and i32 %i.fi, 224
  %i.fl = icmp eq i32 %i.fk, 192
  br i1 %i.fl, label %bb.m, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.fm = add nuw i64 %.04778.i, 1                ; 2 uses
  %.not67.i = icmp ult i64 %i.fm, %i.dg
  br i1 %.not67.i, label %bb.n, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.n:                                             ; preds = %bb.m
  %i.fn = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1             ; 2 uses
  %.not68.i = icmp slt i8 %i.fo, -64
  %i.fp = and i32 %i.fi, 30
  %or.cond.not.i = icmp eq i32 %i.fp, 2
  %or.cond.i = and i1 %or.cond.not.i, %.not68.i
  br i1 %or.cond.i, label %bb.o, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.o:                                             ; preds = %bb.n
  %i.fq = shl i8 %i.fh, 6
  %i.fr = and i8 %i.fo, 63
  %i.fs = or disjoint i8 %i.fr, %i.fq
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i
  %.sink87.i = phi i8 [ %i.fs, %bb.o ], [ %i.fh, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.o ], [ 1, %.thread.i ]
  store i8 %.sink87.i, ptr %.05077.i, align 1
  %i.ft = add nuw i64 %.sink.i, %.04778.i
  %.656.i = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %.lr.ph.preheader.i, %.preheader.i
  %.050.be.i = phi ptr [ %.656.i, %bb.p ], [ %.05077.i, %.preheader.i ], [ %i.fg, %.lr.ph.preheader.i ] ; 3 uses
  %.047.be.i = phi i64 [ %i.ft, %bb.p ], [ %.04778.i, %.preheader.i ], [ %i.dh, %.lr.ph.preheader.i ] ; 2 uses
  %i.fu = icmp ult i64 %.047.be.i, %i.dg
  br i1 %i.fu, label %.lr.ph79.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit: ; preds = %.backedge.i
  %.not56.i = icmp eq ptr %.050.be.i, %.0.lcssa
  br i1 %.not56.i, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit
  %i.fv = ptrtoint ptr %.0.lcssa to i64
  %i.fw = ptrtoint ptr %.050.be.i to i64
  %i.fx = sub i64 %i.fw, %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.fx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.3 = phi ptr [ %i.fy, %bb.q ], [ %.0.lcssa, %bb.i ]
  %i.fz = ptrtoint ptr %.3 to i64
  %i.ga = ptrtoint ptr %3 to i64
  %i.gb = sub i64 %i.fz, %i.ga
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit: ; preds = %bb.c, %bb.l, %bb.n, %bb.m, %._crit_edge637, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit, %bb.r
  %.5.i = phi i64 [ 0, %bb.l ], [ 0, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit ], [ %i.gb, %bb.r ], [ 0, %._crit_edge637 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 !guid !986 {
bb.a:
  %.not701 = icmp eq i64 %2, 0
  br i1 %.not701, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.054.i677 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.055.i676 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.054.i677
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.055.i676, %i.e         ; 2 uses
  %i.g = add i64 %.054.i677, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !979

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.054.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.054.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i686 = icmp ugt i64 %i.m, %2
  br i1 %.not.i686, label %._crit_edge694, label %.lr.ph693

.lr.ph693:                                        ; preds = %._crit_edge, %.loopexit.thread
  %i.n = phi i64 [ %i.dp, %.loopexit.thread ], [ 64, %._crit_edge ]
  %i.o = phi i64 [ %i.do, %.loopexit.thread ], [ 0, %._crit_edge ]
  %.0.i691 = phi i64 [ %.4.i, %.loopexit.thread ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0690 = phi <4 x i64> [ %.sroa.0.1, %.loopexit.thread ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0689 = phi ptr [ %.3, %.loopexit.thread ], [ %3, %._crit_edge ] ; 7 uses
  %.sroa.056.0688 = phi i32 [ %.sroa.056.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %.sroa.757.0687 = phi i64 [ %.sroa.757.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i691 ; 4 uses
  %i.q = load <4 x i64>, ptr %i.p, align 1, !noalias !987 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load <4 x i64>, ptr %i.r, align 1, !noalias !988 ; 6 uses
  %i.t = or <4 x i64> %i.s, %i.q
  %i.u = bitcast <4 x i64> %i.t to <32 x i8>
  %i.v = icmp slt <32 x i8> %i.u, zeroinitializer
  %i.w = bitcast <32 x i1> %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph693
  store <4 x i64> %i.q, ptr %.0689, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0689, i64 32
  store <4 x i64> %i.s, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.0689, i64 64
  br label %.loopexit.thread

bb.c:                                             ; preds = %.lr.ph693
  %i.aa = bitcast <4 x i64> %i.q to <32 x i8>
  %4 = shufflevector <4 x i64> %i.q, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.ab = bitcast <4 x i64> %4 to <32 x i8>
  %i.ac = shufflevector <32 x i8> %i.ab, <32 x i8> %i.aa, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ad = bitcast <32 x i8> %i.ac to <16 x i16>
  %i.ae = lshr <16 x i16> %i.ad, splat (i16 4)
  %i.af = bitcast <16 x i16> %i.ae to <32 x i8>
  %i.ag = and <32 x i8> %i.af, splat (i8 15)
  %i.ah = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ag)
  %i.ai = and <32 x i8> %i.ac, splat (i8 15)
  %i.aj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ai)
  %i.ak = bitcast <4 x i64> %i.q to <16 x i16>
  %i.al = lshr <16 x i16> %i.ak, splat (i16 4)
  %i.am = bitcast <16 x i16> %i.al to <32 x i8>
  %i.an = and <32 x i8> %i.am, splat (i8 15)
  %i.ao = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.an)
  %i.ap = and <32 x i8> %i.aj, %i.ah
  %i.aq = and <32 x i8> %i.ap, %i.ao
  %i.ar = bitcast <4 x i64> %i.s to <32 x i8>
  %i.as = shufflevector <4 x i64> %i.q, <4 x i64> %i.s, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.at = bitcast <4 x i64> %i.as to <32 x i8>
  %i.au = shufflevector <32 x i8> %i.at, <32 x i8> %i.ar, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.av = bitcast <32 x i8> %i.au to <16 x i16>
  %i.aw = lshr <16 x i16> %i.av, splat (i16 4)
  %i.ax = bitcast <16 x i16> %i.aw to <32 x i8>
  %i.ay = and <32 x i8> %i.ax, splat (i8 15)
  %i.az = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ay)
  %i.ba = and <32 x i8> %i.au, splat (i8 15)
  %i.bb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ba)
  %i.bc = bitcast <4 x i64> %i.s to <16 x i16>
  %i.bd = lshr <16 x i16> %i.bc, splat (i16 4)
  %i.be = bitcast <16 x i16> %i.bd to <32 x i8>
  %i.bf = and <32 x i8> %i.be, splat (i8 15)
  %i.bg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bf)
  %i.bh = and <32 x i8> %i.bb, %i.az
  %i.bi = and <32 x i8> %i.bh, %i.bg
  %i.bj = or <32 x i8> %i.bi, %i.aq
  %i.bk = bitcast <32 x i8> %i.bj to <4 x i64>
  %i.bl = or <4 x i64> %.sroa.0.0690, %i.bk       ; 4 uses
  %i.bm = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.bl, <4 x i64> %i.bl)
  %.not = icmp eq i32 %i.bm, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.bn = add i64 %i.o, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.02566.i = phi i64 [ 0, %bb.d ], [ %i.bu, %bb.g ] ; 6 uses
  %i.bo = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.p, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = icmp ne i64 %.02566.i, 0
  %i.bt = icmp sgt i8 %i.bq, -1
  %or.cond.i = and i1 %i.bs, %i.bt
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bu = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i2 = icmp ugt i64 %i.bu, %.0.i691
  br i1 %.not.i2, label %bb.i, label %bb.e, !llvm.loop !23

bb.h:                                             ; preds = %bb.f
  %i.bv = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.i:                                             ; preds = %bb.g
  %i.bw = sub i64 0, %.0.i691
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.j:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds i8, ptr %i.p, i64 %i.bo
  %i.by = add i64 %i.bn, %.02566.i
  %i.bz = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.bx, i64 noundef %i.by, ptr noundef %.0689) ; 2 uses
  %i.ca = extractvalue { i32, i64 } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { i32, i64 } %i.bz, 1
  %.not33.i = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.cb, %i.cc
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.bw, %bb.i ], [ %i.bv, %bb.h ]
  %.sroa.0.3.i = phi i32 [ %i.ca, %bb.j ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.cd = add i64 %.sroa.4.3.i, %.0.i691
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %i.ce = add i64 %.0.i691, 52
  %i.cf = icmp ult i64 %.0.i691, -52
  br i1 %i.cf, label %.lr.ph682.preheader, label %.loopexit.thread

.lr.ph682.preheader:                              ; preds = %bb.k
  %i.cg = shufflevector <4 x i64> %i.q, <4 x i64> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = bitcast <8 x i64> %i.cg to <64 x i8>
  %i.ci = icmp sgt <64 x i8> %i.ch, splat (i8 -65)
  %i.cj = bitcast <64 x i1> %i.ci to i64
  %i.ck = lshr i64 %i.cj, 1
  br label %.lr.ph682

.lr.ph682:                                        ; preds = %.lr.ph682.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i680 = phi i64 [ %i.dl, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i691, %.lr.ph682.preheader ] ; 2 uses
  %.051.i679 = phi i64 [ %i.dm, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.ck, %.lr.ph682.preheader ] ; 3 uses
  %.1678 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0689, %.lr.ph682.preheader ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i680
  %.val = load <2 x i64>, ptr %i.cl, align 1      ; 2 uses
  %i.cm = icmp eq i64 %.051.i679, 4095
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph682
  store <2 x i64> %.val, ptr %.1678, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.1678, i64 12
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.m:                                             ; preds = %.lr.ph682
  %i.co = and i64 %.051.i679, 4095
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 2             ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp ugt i8 %i.cq, 63
  br i1 %i.ct, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = zext nneg i8 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.cu
  %i.cw = load <16 x i8>, ptr %i.cv, align 16
  %i.cx = bitcast <2 x i64> %.val to <16 x i8>
  %i.cy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cx, <16 x i8> %i.cw) ; 2 uses
  %i.cz = bitcast <16 x i8> %i.cy to <2 x i64>
  %i.da = and <2 x i64> %i.cz, splat (i64 35747867511423103)
  %i.db = bitcast <16 x i8> %i.cy to <8 x i16>
  %i.dc = lshr <8 x i16> %i.db, splat (i16 2)
  %i.dd = bitcast <8 x i16> %i.dc to <2 x i64>
  %i.de = and <2 x i64> %i.dd, splat (i64 558454875139082176)
  %i.df = or <2 x i64> %i.de, %i.da
  %i.dg = bitcast <2 x i64> %i.df to <8 x i16>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dg, <8 x i16> poison)
  %i.di = bitcast <16 x i8> %i.dh to <2 x i64>
  %i.dj = extractelement <2 x i64> %i.di, i64 0
  store i64 %i.dj, ptr %.1678, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.1678, i64 6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi ptr [ %.1678, %bb.m ], [ %i.dk, %bb.n ]
  %.0.i5 = zext i8 %i.cs to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.l, %bb.o
  %.6 = phi ptr [ %i.cn, %bb.l ], [ %.5, %bb.o ]  ; 2 uses
  %.1.i6 = phi i64 [ 12, %bb.l ], [ %.0.i5, %bb.o ] ; 2 uses
  %i.dl = add i64 %.1.i6, %.1.i680                ; 3 uses
  %i.dm = lshr i64 %.051.i679, %.1.i6
  %i.dn = icmp ult i64 %i.dl, %i.ce
  br i1 %i.dn, label %.lr.ph682, label %.loopexit, !llvm.loop !984

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit
  %.sroa.757.1 = phi i64 [ %i.cd, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.sroa.757.0687, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.056.1 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.sroa.056.0688, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2 = phi ptr [ %.0689, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ]
  %.2.i = phi i64 [ %.0.i691, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %i.dl, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ]
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.k, %.loopexit, %bb.b
  %.sroa.757.2 = phi i64 [ %.sroa.757.0687, %bb.b ], [ %.sroa.757.1, %.loopexit ], [ %.sroa.757.0687, %bb.k ]
  %.sroa.056.2 = phi i32 [ %.sroa.056.0688, %bb.b ], [ %.sroa.056.1, %.loopexit ], [ %.sroa.056.0688, %bb.k ]
  %.3 = phi ptr [ %i.z, %bb.b ], [ %.2, %.loopexit ], [ %.0689, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0690, %bb.b ], [ %i.bl, %.loopexit ], [ %i.bl, %bb.k ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.2.i, %.loopexit ], [ %.0.i691, %bb.k ] ; 4 uses
  %i.do = sub i64 0, %.4.i                        ; 2 uses
  %i.dp = add i64 %.4.i, 64                       ; 2 uses
  %i.dq = add i64 %i.l, %i.dp
  %.not.i = icmp ugt i64 %i.dq, %2
  br i1 %.not.i, label %._crit_edge694, label %.lr.ph693, !llvm.loop !985

._crit_edge694:                                   ; preds = %.loopexit.thread, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.3, %.loopexit.thread ] ; 4 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit.thread ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit.thread ] ; 8 uses
  %.lcssa671 = phi i64 [ 0, %._crit_edge ], [ %i.do, %.loopexit.thread ] ; 3 uses
  %i.dr = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not656 = icmp eq i32 %i.dr, 0
  br i1 %.not656, label %bb.p, label %bb.w

bb.p:                                             ; preds = %._crit_edge694
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.dt = add i64 %.lcssa671, %2
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.02566.i7 = phi i64 [ 0, %bb.p ], [ %i.ea, %bb.s ] ; 6 uses
  %i.du = sub nsw i64 0, %.02566.i7               ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1             ; 2 uses
  %i.dx = icmp sgt i8 %i.dw, -65
  br i1 %i.dx, label %bb.r, label %bb.s

end_hunk_3
begin_hunk_4_@_ZNK7simdutf7haswell14implementation28convert_valid_utf8_to_latin1EPKcmPc:bb.a

.preheader.i:                                     ; preds = %bb.i
  %i.bu = icmp ult i64 %.04475.i, -16
  br i1 %i.bu, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  store i8 %i.bt, ptr %.04774.i, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04774.i, i64 2
  store i8 %i.bx, ptr %i.bv, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.04774.i, i64 3
  store i8 %i.ca, ptr %i.by, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.04774.i, i64 4
  store i8 %i.cd, ptr %i.cb, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.04774.i, i64 5
  store i8 %i.cg, ptr %i.ce, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.04774.i, i64 6
  store i8 %i.cj, ptr %i.ch, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.04774.i, i64 7
  store i8 %i.cm, ptr %i.ck, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.04774.i, i64 8
  store i8 %i.cp, ptr %i.cn, align 1
  %i.cr = load i8, ptr %i.bp, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.04774.i, i64 9
  store i8 %i.cr, ptr %i.cq, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.04774.i, i64 10
  store i8 %i.cu, ptr %i.cs, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.04774.i, i64 11
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.04774.i, i64 12
  store i8 %i.da, ptr %i.cy, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.04774.i, i64 13
  store i8 %i.dd, ptr %i.db, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.04774.i, i64 14
  store i8 %i.dg, ptr %i.de, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.04774.i, i64 15
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.04774.i, i64 16
  store i8 %i.dm, ptr %i.dk, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.i, %.lr.ph76..thread_crit_edge.i
  %i.do = phi i8 [ %.pre.i, %.lr.ph76..thread_crit_edge.i ], [ %i.bt, %bb.i ] ; 4 uses
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.dq = and i8 %i.do, -32
  %i.dr = icmp eq i8 %i.dq, -64
  br i1 %i.dr, label %bb.k, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.k:                                             ; preds = %bb.j
  %i.ds = add nuw i64 %.04475.i, 1                ; 2 uses
  %.not57.i = icmp ult i64 %i.ds, %i.bn
  br i1 %.not57.i, label %bb.l, label %.thread66.i

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1             ; 2 uses
  %.not58.i = icmp slt i8 %i.du, -64
  br i1 %.not58.i, label %bb.m, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.dv = shl i8 %i.do, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = or disjoint i8 %i.dw, %i.dv
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %.sink86.i = phi i8 [ %i.dx, %bb.m ], [ %i.do, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.m ], [ 1, %.thread.i ]
  store i8 %.sink86.i, ptr %.04774.i, align 1
  %i.dy = add nuw i64 %.sink.i, %.04475.i
  %.451.i = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.n, %.lr.ph.preheader.i, %.preheader.i
  %.047.be.i = phi ptr [ %.451.i, %bb.n ], [ %.04774.i, %.preheader.i ], [ %i.dn, %.lr.ph.preheader.i ] ; 2 uses
  %.044.be.i = phi i64 [ %i.dy, %bb.n ], [ %.04475.i, %.preheader.i ], [ %i.bo, %.lr.ph.preheader.i ] ; 2 uses
  %i.dz = icmp ult i64 %.044.be.i, %i.bn
  br i1 %i.dz, label %.lr.ph76.i, label %.thread66.i

.thread66.i:                                      ; preds = %.backedge.i, %bb.k
  %.047.lcssa.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.04774.i, %bb.k ]
  %i.ea = ptrtoint ptr %.047.lcssa.i to i64
  %i.eb = ptrtoint ptr %.0.lcssa to i64
  %i.ec = sub i64 %i.ea, %i.eb
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %bb.j, %bb.l, %.thread66.i
  %.2.i5 = phi i64 [ %i.ec, %.thread66.i ], [ 0, %bb.l ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.2.i5
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %._crit_edge111, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit
  %.3 = phi ptr [ %i.ed, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit ], [ %.0.lcssa, %._crit_edge111 ]
  %i.ee = ptrtoint ptr %.3 to i64
  %i.ef = ptrtoint ptr %3 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  ret i64 %i.eg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7haswell14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 !guid !1006 {
bb.a:
  %.not988 = icmp eq i64 %2, 0
  br i1 %.not988, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047.i970 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.048.i969 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.047.i970
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.048.i969, %i.e         ; 2 uses
  %i.g = add i64 %.047.i970, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !999

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.047.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.047.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i978 = icmp ugt i64 %i.m, %2
  br i1 %.not.i978, label %._crit_edge984, label %.lr.ph983

.lr.ph983:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.hp, %.loopexit ], [ 64, %._crit_edge ]
  %.049.i981 = phi i64 [ %.453.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0980 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0979 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i981 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !1007 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !1008 ; 6 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph983
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = zext <16 x i8> %i.y to <16 x i16>
  %i.aa = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = zext <16 x i8> %i.ab to <16 x i16>
  store <16 x i16> %i.z, ptr %.0979, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0979, i64 32
  store <16 x i16> %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0979, i64 64
  %i.af = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ag = shufflevector <32 x i8> %i.af, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <16 x i8> %i.ag to <16 x i16>
  %i.ai = bitcast <4 x i64> %i.r to <32 x i8>
  %i.aj = shufflevector <32 x i8> %i.ai, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ak = zext <16 x i8> %i.aj to <16 x i16>
  store <16 x i16> %i.ah, ptr %i.ae, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0979, i64 96
  store <16 x i16> %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0979, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph983
  %i.an = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.ao = bitcast <4 x i64> %4 to <32 x i8>       ; 3 uses
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> %i.an, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.aq = bitcast <32 x i8> %i.ap to <16 x i16>
  %i.ar = lshr <16 x i16> %i.aq, splat (i16 4)
  %i.as = bitcast <16 x i16> %i.ar to <32 x i8>
  %i.at = and <32 x i8> %i.as, splat (i8 15)
  %i.au = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.at)
  %i.av = and <32 x i8> %i.ap, splat (i8 15)
  %i.aw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.av)
  %i.ax = bitcast <4 x i64> %i.p to <16 x i16>
  %i.ay = lshr <16 x i16> %i.ax, splat (i16 4)
  %i.az = bitcast <16 x i16> %i.ay to <32 x i8>
  %i.ba = and <32 x i8> %i.az, splat (i8 15)
  %i.bb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.ba)
  %i.bc = and <32 x i8> %i.aw, %i.au
  %i.bd = and <32 x i8> %i.bc, %i.bb
  %i.be = shufflevector <32 x i8> %i.ao, <32 x i8> %i.an, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bf = shufflevector <32 x i8> %i.ao, <32 x i8> %i.an, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bg = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.be, <32 x i8> splat (i8 96))
  %i.bh = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bf, <32 x i8> splat (i8 112))
  %i.bi = or <32 x i8> %i.bg, %i.bh
  %.inner1001 = and <32 x i8> %i.bi, splat (i8 -128)
  %.inner1002 = xor <32 x i8> %.inner1001, %i.bd
  %i.bj = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.bk = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bl = bitcast <4 x i64> %i.bk to <32 x i8>    ; 3 uses
  %i.bm = shufflevector <32 x i8> %i.bl, <32 x i8> %i.bj, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bn = bitcast <32 x i8> %i.bm to <16 x i16>
  %i.bo = lshr <16 x i16> %i.bn, splat (i16 4)
  %i.bp = bitcast <16 x i16> %i.bo to <32 x i8>
  %i.bq = and <32 x i8> %i.bp, splat (i8 15)
  %i.br = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bq)
  %i.bs = and <32 x i8> %i.bm, splat (i8 15)
  %i.bt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bs)
  %i.bu = bitcast <4 x i64> %i.r to <16 x i16>
  %i.bv = lshr <16 x i16> %i.bu, splat (i16 4)
  %i.bw = bitcast <16 x i16> %i.bv to <32 x i8>
  %i.bx = and <32 x i8> %i.bw, splat (i8 15)
  %i.by = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bx)
  %i.bz = and <32 x i8> %i.bt, %i.br
  %i.ca = and <32 x i8> %i.bz, %i.by
  %i.cb = shufflevector <32 x i8> %i.bl, <32 x i8> %i.bj, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cc = shufflevector <32 x i8> %i.bl, <32 x i8> %i.bj, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cd = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cb, <32 x i8> splat (i8 96))
  %i.ce = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cc, <32 x i8> splat (i8 112))
  %i.cf = or <32 x i8> %i.cd, %i.ce
  %.inner1005 = and <32 x i8> %i.cf, splat (i8 -128)
  %.inner1006 = xor <32 x i8> %.inner1005, %i.ca
  %.inner1007 = or <32 x i8> %.inner1002, %.inner1006
  %i.cg = bitcast <32 x i8> %.inner1007 to <4 x i64>
  %i.ch = or <4 x i64> %.sroa.0.0980, %i.cg       ; 2 uses
  %i.ci = icmp slt <32 x i8> %i.an, splat (i8 -64)
  %i.cj = bitcast <32 x i1> %i.ci to i32
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = and i64 %i.ck, 1
  %.not57.i = icmp eq i64 %i.cl, 0
  br i1 %.not57.i, label %bb.d, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit

bb.d:                                             ; preds = %bb.c
  %i.cm = add i64 %.049.i981, 52
  %i.cn = icmp ult i64 %.049.i981, -52
  br i1 %i.cn, label %.lr.ph975.preheader, label %.loopexit

.lr.ph975.preheader:                              ; preds = %bb.d
  %i.co = icmp slt <32 x i8> %i.bj, splat (i8 -64)
  %i.cp = bitcast <32 x i1> %i.co to i32
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw i64 %i.cq, 32
  %i.cs = or disjoint i64 %i.cr, %i.ck
  %i.ct = xor i64 %i.cs, -1
  %i.cu = lshr i64 %i.ct, 1
  br label %.lr.ph975

.lr.ph975:                                        ; preds = %.lr.ph975.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit
  %.043.i973 = phi i64 [ %i.hn, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %i.cu, %.lr.ph975.preheader ] ; 4 uses
  %.150.i972 = phi i64 [ %i.hm, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.049.i981, %.lr.ph975.preheader ] ; 2 uses
  %.1971 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.0979, %.lr.ph975.preheader ] ; 14 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i972
  %.val = load <2 x i64>, ptr %i.cv, align 1      ; 6 uses
  %i.cw = icmp eq i64 %.043.i973, 4095
  br i1 %i.cw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph975
  %i.cx = bitcast <2 x i64> %.val to <16 x i8>
  %i.cy = zext <16 x i8> %i.cx to <16 x i16>
  store <16 x i16> %i.cy, ptr %.1971, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.1971, i64 24
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.f:                                             ; preds = %.lr.ph975
  %i.da = and i64 %.043.i973, 65535
  %i.db = icmp eq i64 %i.da, 43690
  br i1 %i.db, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dc = bitcast <2 x i64> %.val to <16 x i8>
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.de = bitcast <16 x i8> %i.dd to <2 x i64>
  %i.df = and <2 x i64> %i.de, splat (i64 35747867511423103)
  %i.dg = bitcast <16 x i8> %i.dd to <8 x i16>
  %i.dh = lshr <8 x i16> %i.dg, splat (i16 2)
  %i.di = bitcast <8 x i16> %i.dh to <2 x i64>
  %i.dj = and <2 x i64> %i.di, splat (i64 558454875139082176)
  %i.dk = or <2 x i64> %i.dj, %i.df
  store <2 x i64> %i.dk, ptr %.1971, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.1971, i64 16
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.dm = and i64 %.043.i973, 4095                ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 2340
  br i1 %i.dn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.do = bitcast <2 x i64> %.val to <16 x i8>
  %i.dp = shufflevector <16 x i8> %i.do, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.dq = bitcast <16 x i8> %i.dp to <2 x i64>
  %i.dr = and <2 x i64> %i.dq, splat (i64 545460846719)
  %i.ds = bitcast <16 x i8> %i.dp to <4 x i32>    ; 2 uses
  %i.dt = lshr <4 x i32> %i.ds, splat (i32 2)
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = and <2 x i64> %i.du, splat (i64 17317308141504)
  %i.dw = lshr <4 x i32> %i.ds, splat (i32 4)
  %i.dx = bitcast <4 x i32> %i.dw to <2 x i64>
  %i.dy = and <2 x i64> %i.dx, splat (i64 263882790727680)
  %i.dz = or <2 x i64> %i.dv, %i.dr
  %i.ea = or disjoint <2 x i64> %i.dz, %i.dy
  %i.eb = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ec = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eb, <4 x i32> %i.eb)
  store <8 x i16> %i.ec, ptr %.1971, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.1971, i64 8
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.j:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.dm ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 2             ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp ult i8 %i.ef, 64
  br i1 %i.ei, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ej = zext nneg i8 %i.ef to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ej
  %i.el = load <16 x i8>, ptr %i.ek, align 16
  %i.em = bitcast <2 x i64> %.val to <16 x i8>
  %i.en = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.em, <16 x i8> %i.el) ; 2 uses
  %i.eo = bitcast <16 x i8> %i.en to <2 x i64>
  %i.ep = and <2 x i64> %i.eo, splat (i64 35747867511423103)
  %i.eq = bitcast <16 x i8> %i.en to <8 x i16>
  %i.er = lshr <8 x i16> %i.eq, splat (i16 2)
  %i.es = bitcast <8 x i16> %i.er to <2 x i64>
  %i.et = and <2 x i64> %i.es, splat (i64 558454875139082176)
  %i.eu = or <2 x i64> %i.et, %i.ep
  store <2 x i64> %i.eu, ptr %.1971, align 1
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ev = icmp ult i8 %i.ef, -111
  br i1 %i.ev, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = zext i8 %i.ef to i64
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ew
  %i.ey = load <16 x i8>, ptr %i.ex, align 16
  %i.ez = bitcast <2 x i64> %.val to <16 x i8>
  %i.fa = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ez, <16 x i8> %i.ey) ; 2 uses
  %i.fb = bitcast <16 x i8> %i.fa to <2 x i64>
  %i.fc = and <2 x i64> %i.fb, splat (i64 545460846719)
  %i.fd = bitcast <16 x i8> %i.fa to <4 x i32>    ; 2 uses
  %i.fe = lshr <4 x i32> %i.fd, splat (i32 2)
  %i.ff = bitcast <4 x i32> %i.fe to <2 x i64>
  %i.fg = and <2 x i64> %i.ff, splat (i64 17317308141504)
  %i.fh = lshr <4 x i32> %i.fd, splat (i32 4)
  %i.fi = bitcast <4 x i32> %i.fh to <2 x i64>
  %i.fj = and <2 x i64> %i.fi, splat (i64 263882790727680)
  %i.fk = or <2 x i64> %i.fg, %i.fc
  %i.fl = or disjoint <2 x i64> %i.fk, %i.fj
  %i.fm = bitcast <2 x i64> %i.fl to <4 x i32>    ; 2 uses
  %i.fn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fm, <4 x i32> %i.fm)
  store <8 x i16> %i.fn, ptr %.1971, align 1
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.fo = icmp samesign ult i8 %i.ef, -47
  br i1 %i.fo, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.fp = zext i8 %i.ef to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.fp
  %i.fr = load <16 x i8>, ptr %i.fq, align 16
  %i.fs = bitcast <2 x i64> %.val to <16 x i8>
  %i.ft = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fs, <16 x i8> %i.fr) ; 3 uses
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = and <2 x i64> %i.fu, splat (i64 545460846719)
  %i.fw = bitcast <16 x i8> %i.ft to <4 x i32>    ; 3 uses
  %i.fx = lshr <4 x i32> %i.fw, splat (i32 2)
  %i.fy = bitcast <4 x i32> %i.fx to <2 x i64>
  %i.fz = and <2 x i64> %i.fy, splat (i64 17317308141504)
  %i.ga = bitcast <16 x i8> %i.ft to <2 x i64>
end_hunk_4
begin_hunk_5_@_ZNK7simdutf7haswell14implementation23convert_utf8_to_utf16leEPKcmPDs:bb.a
  %.inner1026 = or disjoint <4 x i32> %.inner1025, %.inner1023 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <4 x i32> %i.go, i64 0 ; 2 uses
  %i.gs = icmp samesign ugt i32 %.sroa.03.0.vec.extract.i, 62914560
  br i1 %i.gs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gt = bitcast <4 x i32> %.inner1026 to <8 x i16> ; 2 uses
  %i.gu = extractelement <8 x i16> %i.gt, i64 0
  %i.gv = extractelement <8 x i16> %i.gt, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.1971, i64 2
  store i16 %i.gv, ptr %i.gw, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.gx = trunc i32 %.sroa.03.0.vec.extract.i to i16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi i16 [ %i.gu, %bb.p ], [ %i.gx, %bb.q ]
  %.sink7.i = phi i64 [ 4, %bb.p ], [ 2, %bb.q ]
  store i16 %.sink, ptr %.1971, align 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.1971, i64 %.sink7.i ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <4 x i32> %i.go, i64 1 ; 2 uses
  %i.gz = icmp samesign ugt i32 %.sroa.03.4.vec.extract.i, 62914560
  br i1 %i.gz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ha = trunc i32 %.sroa.03.4.vec.extract.i to i16
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.hb = bitcast <4 x i32> %.inner1026 to <8 x i16> ; 2 uses
  %i.hc = extractelement <8 x i16> %i.hb, i64 2
  %i.hd = extractelement <8 x i16> %i.hb, i64 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  store i16 %i.hd, ptr %i.he, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink990 = phi i16 [ %i.hc, %bb.t ], [ %i.ha, %bb.s ]
  %.sink8.i = phi i64 [ 4, %bb.t ], [ 2, %bb.s ]
  store i16 %.sink990, ptr %i.gy, align 2
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sink8.i ; 4 uses
  %.sroa.03.8.vec.extract.i = extractelement <4 x i32> %i.go, i64 2 ; 2 uses
  %i.hg = icmp samesign ugt i32 %.sroa.03.8.vec.extract.i, 62914560
  br i1 %i.hg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hh = trunc i32 %.sroa.03.8.vec.extract.i to i16
  store i16 %i.hh, ptr %i.hf, align 2
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.hi = bitcast <4 x i32> %.inner1026 to <8 x i16>
  %i.hj = shufflevector <8 x i16> %i.hi, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.hj, ptr %i.hf, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %bb.m, %bb.k
  %.5 = phi ptr [ %.1971, %bb.k ], [ %.1971, %bb.m ], [ %i.hf, %bb.w ], [ %i.hf, %bb.v ]
  %.sink11.i = phi i64 [ 12, %bb.k ], [ 8, %bb.m ], [ 4, %bb.w ], [ 2, %bb.v ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink11.i
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.n
  %.4 = phi ptr [ %i.hk, %.sink.split.i ], [ %.1971, %bb.n ]
  %i.hl = zext i8 %i.eh to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.x
  %.6 = phi ptr [ %i.cz, %bb.e ], [ %i.dl, %bb.g ], [ %i.ed, %bb.i ], [ %.4, %bb.x ] ; 2 uses
  %.0101.i = phi i64 [ 12, %bb.e ], [ 16, %bb.g ], [ 12, %bb.i ], [ %i.hl, %bb.x ] ; 2 uses
  %i.hm = add i64 %.0101.i, %.150.i972            ; 3 uses
  %i.hn = lshr i64 %.043.i973, %.0101.i
  %i.ho = icmp ult i64 %i.hm, %i.cm
  br i1 %i.ho, label %.lr.ph975, label %.loopexit, !llvm.loop !1004

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.am, %bb.b ], [ %.0979, %bb.d ], [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0980, %bb.b ], [ %i.ch, %bb.d ], [ %i.ch, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.453.i = phi i64 [ %i.n, %bb.b ], [ %.049.i981, %bb.d ], [ %i.hm, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 3 uses
  %i.hp = add i64 %.453.i, 64                     ; 2 uses
  %i.hq = add i64 %i.l, %i.hp
  %.not.i = icmp ugt i64 %i.hq, %2
  br i1 %.not.i, label %._crit_edge984, label %.lr.ph983, !llvm.loop !1005

._crit_edge984:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.049.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.453.i, %.loopexit ] ; 3 uses
  %i.hr = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.hr, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge984
  %i.hs = icmp ult i64 %.049.i.lcssa, %2
  br i1 %i.hs, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i.lcssa
  %i.hu = sub nuw i64 %2, %.049.i.lcssa
  %i.hv = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs(ptr noundef %i.ht, i64 noundef %i.hu, ptr noundef %.0.lcssa) ; 2 uses
  %.not56.i = icmp eq i64 %i.hv, 0
  br i1 %.not56.i, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %i.hv
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.3 = phi ptr [ %i.hw, %bb.aa ], [ %.0.lcssa, %bb.y ]
  %i.hx = ptrtoint ptr %.3 to i64
  %i.hy = ptrtoint ptr %3 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit: ; preds = %bb.c, %._crit_edge984, %bb.z, %bb.ab
  %.5.i = phi i64 [ 0, %._crit_edge984 ], [ 0, %bb.z ], [ %i.ia, %bb.ab ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7haswell14implementation23convert_utf8_to_utf16beEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 !guid !1016 {
bb.a:
  %.not1003 = icmp eq i64 %2, 0
  br i1 %.not1003, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047.i985 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.048.i984 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.047.i985
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.048.i984, %i.e         ; 2 uses
  %i.g = add i64 %.047.i985, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1009

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.047.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.047.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i993 = icmp ugt i64 %i.m, %2
  br i1 %.not.i993, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.iq, %.loopexit ], [ 64, %._crit_edge ]
  %.049.i996 = phi i64 [ %.453.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0995 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0994 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i996 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !1017 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !1018 ; 6 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph998
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = zext <16 x i8> %i.y to <16 x i16>
  %i.aa = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = zext <16 x i8> %i.ab to <16 x i16>
  %i.ad = bitcast <16 x i16> %i.z to <32 x i8>
  %i.ae = shufflevector <32 x i8> %i.ad, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.af = bitcast <16 x i16> %i.ac to <32 x i8>
  %i.ag = shufflevector <32 x i8> %i.af, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.ae, ptr %.0994, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0994, i64 32
  store <32 x i8> %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0994, i64 64
  %i.aj = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = zext <16 x i8> %i.ak to <16 x i16>
  %i.am = bitcast <4 x i64> %i.r to <32 x i8>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ao = zext <16 x i8> %i.an to <16 x i16>
  %i.ap = bitcast <16 x i16> %i.al to <32 x i8>
  %i.aq = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.ar = bitcast <16 x i16> %i.ao to <32 x i8>
  %i.as = shufflevector <32 x i8> %i.ar, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.aq, ptr %i.ai, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0994, i64 96
  store <32 x i8> %i.as, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0994, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph998
  %i.av = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.aw = bitcast <4 x i64> %4 to <32 x i8>       ; 3 uses
  %i.ax = shufflevector <32 x i8> %i.aw, <32 x i8> %i.av, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ay = bitcast <32 x i8> %i.ax to <16 x i16>
  %i.az = lshr <16 x i16> %i.ay, splat (i16 4)
  %i.ba = bitcast <16 x i16> %i.az to <32 x i8>
  %i.bb = and <32 x i8> %i.ba, splat (i8 15)
  %i.bc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bb)
  %i.bd = and <32 x i8> %i.ax, splat (i8 15)
  %i.be = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bd)
  %i.bf = bitcast <4 x i64> %i.p to <16 x i16>
  %i.bg = lshr <16 x i16> %i.bf, splat (i16 4)
  %i.bh = bitcast <16 x i16> %i.bg to <32 x i8>
  %i.bi = and <32 x i8> %i.bh, splat (i8 15)
  %i.bj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bi)
  %i.bk = and <32 x i8> %i.be, %i.bc
  %i.bl = and <32 x i8> %i.bk, %i.bj
  %i.bm = shufflevector <32 x i8> %i.aw, <32 x i8> %i.av, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bn = shufflevector <32 x i8> %i.aw, <32 x i8> %i.av, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bo = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bm, <32 x i8> splat (i8 96))
  %i.bp = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bn, <32 x i8> splat (i8 112))
  %i.bq = or <32 x i8> %i.bo, %i.bp
  %.inner1016 = and <32 x i8> %i.bq, splat (i8 -128)
  %.inner1017 = xor <32 x i8> %.inner1016, %i.bl
  %i.br = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.bs = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bt = bitcast <4 x i64> %i.bs to <32 x i8>    ; 3 uses
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> %i.br, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bv = bitcast <32 x i8> %i.bu to <16 x i16>
  %i.bw = lshr <16 x i16> %i.bv, splat (i16 4)
  %i.bx = bitcast <16 x i16> %i.bw to <32 x i8>
  %i.by = and <32 x i8> %i.bx, splat (i8 15)
  %i.bz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.by)
  %i.ca = and <32 x i8> %i.bu, splat (i8 15)
  %i.cb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.ca)
  %i.cc = bitcast <4 x i64> %i.r to <16 x i16>
  %i.cd = lshr <16 x i16> %i.cc, splat (i16 4)
  %i.ce = bitcast <16 x i16> %i.cd to <32 x i8>
  %i.cf = and <32 x i8> %i.ce, splat (i8 15)
  %i.cg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cf)
  %i.ch = and <32 x i8> %i.cb, %i.bz
  %i.ci = and <32 x i8> %i.ch, %i.cg
  %i.cj = shufflevector <32 x i8> %i.bt, <32 x i8> %i.br, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ck = shufflevector <32 x i8> %i.bt, <32 x i8> %i.br, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cl = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cj, <32 x i8> splat (i8 96))
  %i.cm = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ck, <32 x i8> splat (i8 112))
  %i.cn = or <32 x i8> %i.cl, %i.cm
  %.inner1020 = and <32 x i8> %i.cn, splat (i8 -128)
  %.inner1021 = xor <32 x i8> %.inner1020, %i.ci
  %.inner1022 = or <32 x i8> %.inner1017, %.inner1021
  %i.co = bitcast <32 x i8> %.inner1022 to <4 x i64>
  %i.cp = or <4 x i64> %.sroa.0.0995, %i.co       ; 2 uses
  %i.cq = icmp slt <32 x i8> %i.av, splat (i8 -64)
  %i.cr = bitcast <32 x i1> %i.cq to i32
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %.not57.i = icmp eq i64 %i.ct, 0
  br i1 %.not57.i, label %bb.d, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit

bb.d:                                             ; preds = %bb.c
  %i.cu = add i64 %.049.i996, 52
  %i.cv = icmp ult i64 %.049.i996, -52
  br i1 %i.cv, label %.lr.ph990.preheader, label %.loopexit

.lr.ph990.preheader:                              ; preds = %bb.d
  %i.cw = icmp slt <32 x i8> %i.br, splat (i8 -64)
  %i.cx = bitcast <32 x i1> %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw i64 %i.cy, 32
  %i.da = or disjoint i64 %i.cz, %i.cs
  %i.db = xor i64 %i.da, -1
  %i.dc = lshr i64 %i.db, 1
  br label %.lr.ph990

.lr.ph990:                                        ; preds = %.lr.ph990.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit
  %.043.i988 = phi i64 [ %i.io, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %i.dc, %.lr.ph990.preheader ] ; 4 uses
  %.150.i987 = phi i64 [ %i.in, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.049.i996, %.lr.ph990.preheader ] ; 2 uses
  %.1986 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.0994, %.lr.ph990.preheader ] ; 14 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i987
  %.val = load <2 x i64>, ptr %i.dd, align 1      ; 6 uses
  %i.de = icmp eq i64 %.043.i988, 4095
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph990
  %i.df = bitcast <2 x i64> %.val to <16 x i8>
  %i.dg = zext <16 x i8> %i.df to <16 x i16>
  %i.dh = bitcast <16 x i16> %i.dg to <32 x i8>
  %i.di = shufflevector <32 x i8> %i.dh, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.di, ptr %.1986, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.1986, i64 24
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.f:                                             ; preds = %.lr.ph990
  %i.dk = and i64 %.043.i988, 65535
  %i.dl = icmp eq i64 %i.dk, 43690
  br i1 %i.dl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dm = bitcast <2 x i64> %.val to <16 x i8>
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %i.dp = and <2 x i64> %i.do, splat (i64 35747867511423103)
  %i.dq = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 2)
  %i.ds = bitcast <8 x i16> %i.dr to <2 x i64>
  %i.dt = and <2 x i64> %i.ds, splat (i64 558454875139082176)
  %i.du = or <2 x i64> %i.dt, %i.dp
  %i.dv = bitcast <2 x i64> %i.du to <16 x i8>
  %i.dw = shufflevector <16 x i8> %i.dv, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.dw, ptr %.1986, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.1986, i64 16
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.dy = and i64 %.043.i988, 4095                ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 2340
  br i1 %i.dz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ea = bitcast <2 x i64> %.val to <16 x i8>
  %i.eb = shufflevector <16 x i8> %i.ea, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>
  %i.ed = and <2 x i64> %i.ec, splat (i64 545460846719)
  %i.ee = bitcast <16 x i8> %i.eb to <4 x i32>    ; 2 uses
  %i.ef = lshr <4 x i32> %i.ee, splat (i32 2)
  %i.eg = bitcast <4 x i32> %i.ef to <2 x i64>
  %i.eh = and <2 x i64> %i.eg, splat (i64 17317308141504)
  %i.ei = lshr <4 x i32> %i.ee, splat (i32 4)
  %i.ej = bitcast <4 x i32> %i.ei to <2 x i64>
  %i.ek = and <2 x i64> %i.ej, splat (i64 263882790727680)
  %i.el = or <2 x i64> %i.eh, %i.ed
  %i.em = or disjoint <2 x i64> %i.el, %i.ek
  %i.en = bitcast <2 x i64> %i.em to <4 x i32>    ; 2 uses
  %i.eo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.en, <4 x i32> %i.en)
  %i.ep = bitcast <8 x i16> %i.eo to <16 x i8>
  %i.eq = shufflevector <16 x i8> %i.ep, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.eq, ptr %.1986, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.1986, i64 8
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.j:                                             ; preds = %bb.h
  %i.es = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.dy ; 2 uses
  %i.et = load i8, ptr %i.es, align 2             ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = icmp ult i8 %i.et, 64
  br i1 %i.ew, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ex
  %i.ez = load <16 x i8>, ptr %i.ey, align 16
  %i.fa = bitcast <2 x i64> %.val to <16 x i8>
  %i.fb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fa, <16 x i8> %i.ez) ; 2 uses
  %i.fc = bitcast <16 x i8> %i.fb to <2 x i64>
  %i.fd = and <2 x i64> %i.fc, splat (i64 35747867511423103)
  %i.fe = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.ff = lshr <8 x i16> %i.fe, splat (i16 2)
  %i.fg = bitcast <8 x i16> %i.ff to <2 x i64>
  %i.fh = and <2 x i64> %i.fg, splat (i64 558454875139082176)
  %i.fi = or <2 x i64> %i.fh, %i.fd
  %i.fj = bitcast <2 x i64> %i.fi to <16 x i8>
  %i.fk = shufflevector <16 x i8> %i.fj, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.fk, ptr %.1986, align 1
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fl = icmp ult i8 %i.et, -111
  br i1 %i.fl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fm = zext i8 %i.et to i64
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.fm
  %i.fo = load <16 x i8>, ptr %i.fn, align 16
  %i.fp = bitcast <2 x i64> %.val to <16 x i8>
  %i.fq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fp, <16 x i8> %i.fo) ; 2 uses
  %i.fr = bitcast <16 x i8> %i.fq to <2 x i64>
  %i.fs = and <2 x i64> %i.fr, splat (i64 545460846719)
  %i.ft = bitcast <16 x i8> %i.fq to <4 x i32>    ; 2 uses
  %i.fu = lshr <4 x i32> %i.ft, splat (i32 2)
  %i.fv = bitcast <4 x i32> %i.fu to <2 x i64>
  %i.fw = and <2 x i64> %i.fv, splat (i64 17317308141504)
  %i.fx = lshr <4 x i32> %i.ft, splat (i32 4)
  %i.fy = bitcast <4 x i32> %i.fx to <2 x i64>
  %i.fz = and <2 x i64> %i.fy, splat (i64 263882790727680)
  %i.ga = or <2 x i64> %i.fw, %i.fs
  %i.gb = or disjoint <2 x i64> %i.ga, %i.fz
  %i.gc = bitcast <2 x i64> %i.gb to <4 x i32>    ; 2 uses
  %i.gd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gc, <4 x i32> %i.gc)
  %i.ge = bitcast <8 x i16> %i.gd to <16 x i8>
  %i.gf = shufflevector <16 x i8> %i.ge, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.gf, ptr %.1986, align 1
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.gg = icmp samesign ult i8 %i.et, -47
  br i1 %i.gg, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.gh = zext i8 %i.et to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.gh
end_hunk_5
begin_hunk_6_@_ZNK7simdutf7haswell14implementation23convert_utf8_to_utf16beEPKcmPDs:bb.a
  %.inner1040 = or disjoint <4 x i32> %.inner1038, %.inner1039
  %i.hl = bitcast <2 x i64> %i.hg to <16 x i8>
  %i.hm = shufflevector <16 x i8> %i.hl, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.hn = bitcast <4 x i32> %.inner1040 to <16 x i8>
  %i.ho = or <16 x i8> %i.hn, <i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.hp = shufflevector <16 x i8> %i.ho, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %.sroa.09.0.vec.extract.i = extractelement <4 x i32> %i.hh, i64 0
  %i.hq = icmp samesign ugt i32 %.sroa.09.0.vec.extract.i, 62914560
  br i1 %i.hq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hr = bitcast <16 x i8> %i.hp to <8 x i16>    ; 2 uses
  %i.hs = extractelement <8 x i16> %i.hr, i64 0
  %i.ht = extractelement <8 x i16> %i.hr, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.1986, i64 2
  store i16 %i.ht, ptr %i.hu, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.hv = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.hw = extractelement <8 x i16> %i.hv, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi i16 [ %i.hs, %bb.p ], [ %i.hw, %bb.q ]
  %.sink13.i = phi i64 [ 4, %bb.p ], [ 2, %bb.q ]
  store i16 %.sink, ptr %.1986, align 2
  %i.hx = getelementptr inbounds nuw i8, ptr %.1986, i64 %.sink13.i ; 3 uses
  %.sroa.09.4.vec.extract.i = extractelement <4 x i32> %i.hh, i64 1
  %i.hy = icmp samesign ugt i32 %.sroa.09.4.vec.extract.i, 62914560
  br i1 %i.hy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hz = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.ia = extractelement <8 x i16> %i.hz, i64 2
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ib = bitcast <16 x i8> %i.hp to <8 x i16>    ; 2 uses
  %i.ic = extractelement <8 x i16> %i.ib, i64 2
  %i.id = extractelement <8 x i16> %i.ib, i64 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  store i16 %i.id, ptr %i.ie, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink1005 = phi i16 [ %i.ic, %bb.t ], [ %i.ia, %bb.s ]
  %.sink14.i = phi i64 [ 4, %bb.t ], [ 2, %bb.s ]
  store i16 %.sink1005, ptr %i.hx, align 2
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sink14.i ; 4 uses
  %.sroa.09.8.vec.extract.i = extractelement <4 x i32> %i.hh, i64 2
  %i.ig = icmp samesign ugt i32 %.sroa.09.8.vec.extract.i, 62914560
  br i1 %i.ig, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ih = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.ii = extractelement <8 x i16> %i.ih, i64 4
  store i16 %i.ii, ptr %i.if, align 2
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.ij = bitcast <16 x i8> %i.hp to <8 x i16>
  %i.ik = shufflevector <8 x i16> %i.ij, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.ik, ptr %i.if, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %bb.m, %bb.k
  %.5 = phi ptr [ %.1986, %bb.k ], [ %.1986, %bb.m ], [ %i.if, %bb.w ], [ %i.if, %bb.v ]
  %.sink17.i = phi i64 [ 12, %bb.k ], [ 8, %bb.m ], [ 4, %bb.w ], [ 2, %bb.v ]
  %i.il = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink17.i
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.n
  %.4 = phi ptr [ %i.il, %.sink.split.i ], [ %.1986, %bb.n ]
  %i.im = zext i8 %i.ev to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.x
  %.6 = phi ptr [ %i.dj, %bb.e ], [ %i.dx, %bb.g ], [ %i.er, %bb.i ], [ %.4, %bb.x ] ; 2 uses
  %.0108.i = phi i64 [ 12, %bb.e ], [ 16, %bb.g ], [ 12, %bb.i ], [ %i.im, %bb.x ] ; 2 uses
  %i.in = add i64 %.0108.i, %.150.i987            ; 3 uses
  %i.io = lshr i64 %.043.i988, %.0108.i
  %i.ip = icmp ult i64 %i.in, %i.cu
  br i1 %i.ip, label %.lr.ph990, label %.loopexit, !llvm.loop !1014

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.au, %bb.b ], [ %.0994, %bb.d ], [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0995, %bb.b ], [ %i.cp, %bb.d ], [ %i.cp, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.453.i = phi i64 [ %i.n, %bb.b ], [ %.049.i996, %bb.d ], [ %i.in, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 3 uses
  %i.iq = add i64 %.453.i, 64                     ; 2 uses
  %i.ir = add i64 %i.l, %i.iq
  %.not.i = icmp ugt i64 %i.ir, %2
  br i1 %.not.i, label %._crit_edge999, label %.lr.ph998, !llvm.loop !1015

._crit_edge999:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.049.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.453.i, %.loopexit ] ; 3 uses
  %i.is = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.is, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge999
  %i.it = icmp ult i64 %.049.i.lcssa, %2
  br i1 %i.it, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i.lcssa
  %i.iv = sub nuw i64 %2, %.049.i.lcssa
  %i.iw = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs(ptr noundef %i.iu, i64 noundef %i.iv, ptr noundef %.0.lcssa) ; 2 uses
  %.not56.i = icmp eq i64 %i.iw, 0
  br i1 %.not56.i, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %i.iw
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.3 = phi ptr [ %i.ix, %bb.aa ], [ %.0.lcssa, %bb.y ]
  %i.iy = ptrtoint ptr %.3 to i64
  %i.iz = ptrtoint ptr %3 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit: ; preds = %bb.c, %._crit_edge999, %bb.z, %bb.ab
  %.5.i = phi i64 [ 0, %._crit_edge999 ], [ 0, %bb.z ], [ %i.jb, %bb.ab ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 !guid !1026 {
bb.a:
  %.not1052 = icmp eq i64 %2, 0
  br i1 %.not1052, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.055.i1028 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.056.i1027 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.055.i1028
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.056.i1027, %i.e        ; 2 uses
  %i.g = add i64 %.055.i1028, -1                  ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1019

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.055.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i1038 = icmp ugt i64 %i.m, %2
  br i1 %.not.i1038, label %._crit_edge1044, label %.lr.ph1043

.lr.ph1043:                                       ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.ii, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i1041 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.01040 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.01039 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i1041 ; 4 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !1027 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !1028 ; 6 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph1043
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = zext <16 x i8> %i.y to <16 x i16>
  %i.aa = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = zext <16 x i8> %i.ab to <16 x i16>
  store <16 x i16> %i.z, ptr %.01039, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01039, i64 32
  store <16 x i16> %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.01039, i64 64
  %i.af = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ag = shufflevector <32 x i8> %i.af, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <16 x i8> %i.ag to <16 x i16>
  %i.ai = bitcast <4 x i64> %i.r to <32 x i8>
  %i.aj = shufflevector <32 x i8> %i.ai, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ak = zext <16 x i8> %i.aj to <16 x i16>
  store <16 x i16> %i.ah, ptr %i.ae, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.01039, i64 96
  store <16 x i16> %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.01039, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph1043
  %i.an = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.ao = bitcast <4 x i64> %4 to <32 x i8>       ; 3 uses
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> %i.an, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.aq = bitcast <32 x i8> %i.ap to <16 x i16>
  %i.ar = lshr <16 x i16> %i.aq, splat (i16 4)
  %i.as = bitcast <16 x i16> %i.ar to <32 x i8>
  %i.at = and <32 x i8> %i.as, splat (i8 15)
  %i.au = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.at)
  %i.av = and <32 x i8> %i.ap, splat (i8 15)
  %i.aw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.av)
  %i.ax = bitcast <4 x i64> %i.p to <16 x i16>
  %i.ay = lshr <16 x i16> %i.ax, splat (i16 4)
  %i.az = bitcast <16 x i16> %i.ay to <32 x i8>
  %i.ba = and <32 x i8> %i.az, splat (i8 15)
  %i.bb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.ba)
  %i.bc = and <32 x i8> %i.aw, %i.au
  %i.bd = and <32 x i8> %i.bc, %i.bb
  %i.be = shufflevector <32 x i8> %i.ao, <32 x i8> %i.an, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bf = shufflevector <32 x i8> %i.ao, <32 x i8> %i.an, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bg = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.be, <32 x i8> splat (i8 96))
  %i.bh = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bf, <32 x i8> splat (i8 112))
  %i.bi = or <32 x i8> %i.bg, %i.bh
  %.inner1131 = and <32 x i8> %i.bi, splat (i8 -128)
  %.inner1132 = xor <32 x i8> %.inner1131, %i.bd
  %i.bj = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.bk = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bl = bitcast <4 x i64> %i.bk to <32 x i8>    ; 3 uses
  %i.bm = shufflevector <32 x i8> %i.bl, <32 x i8> %i.bj, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bn = bitcast <32 x i8> %i.bm to <16 x i16>
  %i.bo = lshr <16 x i16> %i.bn, splat (i16 4)
  %i.bp = bitcast <16 x i16> %i.bo to <32 x i8>
  %i.bq = and <32 x i8> %i.bp, splat (i8 15)
  %i.br = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bq)
  %i.bs = and <32 x i8> %i.bm, splat (i8 15)
  %i.bt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bs)
  %i.bu = bitcast <4 x i64> %i.r to <16 x i16>
  %i.bv = lshr <16 x i16> %i.bu, splat (i16 4)
  %i.bw = bitcast <16 x i16> %i.bv to <32 x i8>
  %i.bx = and <32 x i8> %i.bw, splat (i8 15)
  %i.by = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bx)
  %i.bz = and <32 x i8> %i.bt, %i.br
  %i.ca = and <32 x i8> %i.bz, %i.by
  %i.cb = shufflevector <32 x i8> %i.bl, <32 x i8> %i.bj, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cc = shufflevector <32 x i8> %i.bl, <32 x i8> %i.bj, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cd = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cb, <32 x i8> splat (i8 96))
  %i.ce = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cc, <32 x i8> splat (i8 112))
  %i.cf = or <32 x i8> %i.cd, %i.ce
  %.inner1135 = and <32 x i8> %i.cf, splat (i8 -128)
  %.inner1136 = xor <32 x i8> %.inner1135, %i.ca
  %.inner1137 = or <32 x i8> %.inner1132, %.inner1136
  %i.cg = bitcast <32 x i8> %.inner1137 to <4 x i64>
  %i.ch = or <4 x i64> %.sroa.0.01040, %i.cg      ; 4 uses
  %i.ci = icmp slt <32 x i8> %i.an, splat (i8 -64)
  %i.cj = bitcast <32 x i1> %i.ci to i32
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ch, <4 x i64> %i.ch)
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = and i64 %i.ck, 1
  %.not60.i = icmp eq i64 %i.cn, 0
  %or.cond.i = and i1 %.not60.i, %i.cm
  br i1 %or.cond.i, label %bb.j, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.co = sub i64 %2, %.0.i1041
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.critedge.critedge.i
  %.02566.i = phi i64 [ 0, %.critedge.critedge.i ], [ %i.cv, %bb.f ] ; 6 uses
  %i.cp = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.o, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1             ; 2 uses
  %i.cs = icmp sgt i8 %i.cr, -65
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = icmp ne i64 %.02566.i, 0
  %i.cu = icmp sgt i8 %i.cr, -1
  %or.cond.i5 = and i1 %i.ct, %i.cu
  br i1 %or.cond.i5, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.cv = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i2 = icmp ugt i64 %i.cv, %.0.i1041
  br i1 %.not.i2, label %bb.h, label %bb.d, !llvm.loop !24

bb.g:                                             ; preds = %bb.e
  %i.cw = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.cx = sub i64 0, %.0.i1041
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit

bb.i:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds i8, ptr %i.o, i64 %i.cp
  %i.cz = add i64 %i.co, %.02566.i
  %i.da = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.cy, i64 noundef %i.cz, ptr noundef %.01039) ; 2 uses
  %i.db = extractvalue { i32, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { i32, i64 } %i.da, 1
  %.not33.i = icmp eq i32 %i.db, 0
  %i.dd = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.dc, %i.dd
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.i ], [ %i.cx, %bb.h ], [ %i.cw, %bb.g ]
  %.sroa.0.3.i = phi i32 [ %i.db, %bb.i ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.de = add i64 %.sroa.4.3.i, %.0.i1041
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.j:                                             ; preds = %bb.c
  %i.df = add i64 %.0.i1041, 52
  %i.dg = icmp ult i64 %.0.i1041, -52
  br i1 %i.dg, label %.lr.ph1033.preheader, label %.loopexit

.lr.ph1033.preheader:                             ; preds = %bb.j
  %i.dh = icmp slt <32 x i8> %i.bj, splat (i8 -64)
  %i.di = bitcast <32 x i1> %i.dh to i32
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw i64 %i.dj, 32
  %i.dl = or disjoint i64 %i.dk, %i.ck
  %i.dm = xor i64 %i.dl, -1
  %i.dn = lshr i64 %i.dm, 1
  br label %.lr.ph1033

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit
  %.1.i1031 = phi i64 [ %i.if, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.0.i1041, %.lr.ph1033.preheader ] ; 2 uses
  %.052.i1030 = phi i64 [ %i.ig, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %i.dn, %.lr.ph1033.preheader ] ; 4 uses
  %.11029 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.01039, %.lr.ph1033.preheader ] ; 14 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i1031
  %.val = load <2 x i64>, ptr %i.do, align 1      ; 6 uses
  %i.dp = icmp eq i64 %.052.i1030, 4095
  br i1 %i.dp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph1033
  %i.dq = bitcast <2 x i64> %.val to <16 x i8>
  %i.dr = zext <16 x i8> %i.dq to <16 x i16>
  store <16 x i16> %i.dr, ptr %.11029, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.11029, i64 24
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.l:                                             ; preds = %.lr.ph1033
  %i.dt = and i64 %.052.i1030, 65535
  %i.du = icmp eq i64 %i.dt, 43690
  br i1 %i.du, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dv = bitcast <2 x i64> %.val to <16 x i8>
  %i.dw = shufflevector <16 x i8> %i.dv, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.dx = bitcast <16 x i8> %i.dw to <2 x i64>
  %i.dy = and <2 x i64> %i.dx, splat (i64 35747867511423103)
  %i.dz = bitcast <16 x i8> %i.dw to <8 x i16>
  %i.ea = lshr <8 x i16> %i.dz, splat (i16 2)
  %i.eb = bitcast <8 x i16> %i.ea to <2 x i64>
  %i.ec = and <2 x i64> %i.eb, splat (i64 558454875139082176)
  %i.ed = or <2 x i64> %i.ec, %i.dy
  store <2 x i64> %i.ed, ptr %.11029, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.11029, i64 16
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.n:                                             ; preds = %bb.l
  %i.ef = and i64 %.052.i1030, 4095               ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 2340
  br i1 %i.eg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eh = bitcast <2 x i64> %.val to <16 x i8>
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.ej = bitcast <16 x i8> %i.ei to <2 x i64>
  %i.ek = and <2 x i64> %i.ej, splat (i64 545460846719)
  %i.el = bitcast <16 x i8> %i.ei to <4 x i32>    ; 2 uses
  %i.em = lshr <4 x i32> %i.el, splat (i32 2)
  %i.en = bitcast <4 x i32> %i.em to <2 x i64>
  %i.eo = and <2 x i64> %i.en, splat (i64 17317308141504)
  %i.ep = lshr <4 x i32> %i.el, splat (i32 4)
  %i.eq = bitcast <4 x i32> %i.ep to <2 x i64>
  %i.er = and <2 x i64> %i.eq, splat (i64 263882790727680)
  %i.es = or <2 x i64> %i.eo, %i.ek
  %i.et = or disjoint <2 x i64> %i.es, %i.er
  %i.eu = bitcast <2 x i64> %i.et to <4 x i32>    ; 2 uses
  %i.ev = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eu, <4 x i32> %i.eu)
  store <8 x i16> %i.ev, ptr %.11029, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.11029, i64 8
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.p:                                             ; preds = %bb.n
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.ef ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 2             ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp ult i8 %i.ey, 64
  br i1 %i.fb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fc = zext nneg i8 %i.ey to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.fc
  %i.fe = load <16 x i8>, ptr %i.fd, align 16
  %i.ff = bitcast <2 x i64> %.val to <16 x i8>
  %i.fg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ff, <16 x i8> %i.fe) ; 2 uses
  %i.fh = bitcast <16 x i8> %i.fg to <2 x i64>
  %i.fi = and <2 x i64> %i.fh, splat (i64 35747867511423103)
end_hunk_6
begin_hunk_7_@_ZNK7simdutf7haswell14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs:bb.a
  %.0.i.lcssa1037 = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit ] ; 10 uses
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %i.ik = sub i64 0, %.0.i.lcssa1037              ; 2 uses
  %i.il = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.il, 0
  br i1 %.not, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge1044
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa1037 ; 2 uses
  %i.in = sub i64 %2, %.0.i.lcssa1037
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.02566.i6 = phi i64 [ 0, %bb.ae ], [ %i.iu, %bb.ah ] ; 6 uses
  %i.io = sub nsw i64 0, %.02566.i6               ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.im, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1             ; 2 uses
  %i.ir = icmp sgt i8 %i.iq, -65
  br i1 %i.ir, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.is = icmp ne i64 %.02566.i6, 0
  %i.it = icmp sgt i8 %i.iq, -1
  %or.cond.i12 = and i1 %i.is, %i.it
  br i1 %or.cond.i12, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.iu = add i64 %.02566.i6, 1                   ; 2 uses
  %.not.i7 = icmp ugt i64 %i.iu, %.0.i.lcssa1037
  br i1 %.not.i7, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15, label %bb.af, !llvm.loop !24

bb.ai:                                            ; preds = %bb.ag
  %i.iv = sub i64 1, %.02566.i6
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15

bb.aj:                                            ; preds = %bb.ag
  %i.iw = getelementptr inbounds i8, ptr %i.im, i64 %i.io
  %i.ix = add i64 %i.in, %.02566.i6
  %i.iy = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.iw, i64 noundef %i.ix, ptr noundef %.0.lcssa) ; 2 uses
  %i.iz = extractvalue { i32, i64 } %i.iy, 0      ; 2 uses
  %i.ja = extractvalue { i32, i64 } %i.iy, 1
  %.not33.i13 = icmp eq i32 %i.iz, 0
  %i.jb = select i1 %.not33.i13, i64 0, i64 %.02566.i6
  %spec.select.i14 = sub i64 %i.ja, %i.jb
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.3.i8 = phi i64 [ %spec.select.i14, %bb.aj ], [ %i.iv, %bb.ai ], [ %i.ik, %bb.ah ]
  %.sroa.0.3.i9 = phi i32 [ %i.iz, %bb.aj ], [ 3, %bb.ai ], [ 3, %bb.ah ]
  %i.jc = add i64 %.sroa.4.3.i8, %.0.i.lcssa1037
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.ak:                                            ; preds = %._crit_edge1044
  %i.jd = icmp ult i64 %.0.i.lcssa1037, %2
  br i1 %i.jd, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa1037 ; 2 uses
  %i.jf = sub nuw i64 %2, %.0.i.lcssa1037
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.02566.i16 = phi i64 [ 0, %bb.al ], [ %i.jm, %bb.ao ] ; 6 uses
  %i.jg = sub nsw i64 0, %.02566.i16              ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1             ; 2 uses
  %i.jj = icmp sgt i8 %i.ji, -65
  br i1 %i.jj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jk = icmp ne i64 %.02566.i16, 0
  %i.jl = icmp sgt i8 %i.ji, -1
  %or.cond.i22 = and i1 %i.jk, %i.jl
  br i1 %or.cond.i22, label %bb.ap, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25

bb.ao:                                            ; preds = %bb.am
  %i.jm = add i64 %.02566.i16, 1                  ; 2 uses
  %.not.i17 = icmp ugt i64 %i.jm, %.0.i.lcssa1037
  br i1 %.not.i17, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread, label %bb.am, !llvm.loop !24

bb.ap:                                            ; preds = %bb.an
  %i.jn = sub i64 1, %.02566.i16
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25: ; preds = %bb.an
  %i.jo = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  %i.jp = add i64 %i.jf, %.02566.i16
  %i.jq = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.jo, i64 noundef %i.jp, ptr noundef %.0.lcssa) ; 2 uses
  %i.jr = extractvalue { i32, i64 } %i.jq, 0      ; 2 uses
  %i.js = extractvalue { i32, i64 } %i.jq, 1
  %.not33.i23 = icmp eq i32 %i.jr, 0              ; 2 uses
  %i.jt = select i1 %.not33.i23, i64 0, i64 %.02566.i16
  %spec.select.i24 = sub i64 %i.js, %i.jt         ; 2 uses
  br i1 %.not33.i23, label %bb.aq, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread: ; preds = %bb.ao, %bb.ap, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25
  %.sroa.0.3.i191006 = phi i32 [ %i.jr, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25 ], [ 3, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.4.3.i181005 = phi i64 [ %spec.select.i24, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25 ], [ %i.jn, %bb.ap ], [ %i.ik, %bb.ao ]
  %i.ju = add i64 %.sroa.4.3.i181005, %.0.i.lcssa1037
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.aq:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %spec.select.i24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.3 = phi ptr [ %i.jv, %bb.aq ], [ %.0.lcssa, %bb.ak ]
  %i.jw = ptrtoint ptr %.3 to i64
  %i.jx = ptrtoint ptr %3 to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = ashr exact i64 %i.jy, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread, %bb.ar
  %.sroa.770.0 = phi i64 [ %i.jc, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15 ], [ %i.jz, %bb.ar ], [ %i.ju, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread ], [ %i.de, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.sroa.069.0 = phi i32 [ %.sroa.0.3.i9, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15 ], [ 0, %bb.ar ], [ %.sroa.0.3.i191006, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread ], [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.069.0, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.770.0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 !guid !1036 {
bb.a:
  %.not1067 = icmp eq i64 %2, 0
  br i1 %.not1067, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.055.i1043 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.056.i1042 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.055.i1043
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.056.i1042, %i.e        ; 2 uses
  %i.g = add i64 %.055.i1043, -1                  ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1029

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.055.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i1053 = icmp ugt i64 %i.m, %2
  br i1 %.not.i1053, label %._crit_edge1059, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.jj, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i1056 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.01055 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.01054 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i1056 ; 4 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !1037 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !1038 ; 6 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph1058
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = zext <16 x i8> %i.y to <16 x i16>
  %i.aa = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = zext <16 x i8> %i.ab to <16 x i16>
  %i.ad = bitcast <16 x i16> %i.z to <32 x i8>
  %i.ae = shufflevector <32 x i8> %i.ad, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.af = bitcast <16 x i16> %i.ac to <32 x i8>
  %i.ag = shufflevector <32 x i8> %i.af, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.ae, ptr %.01054, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.01054, i64 32
  store <32 x i8> %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01054, i64 64
  %i.aj = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = zext <16 x i8> %i.ak to <16 x i16>
  %i.am = bitcast <4 x i64> %i.r to <32 x i8>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ao = zext <16 x i8> %i.an to <16 x i16>
  %i.ap = bitcast <16 x i16> %i.al to <32 x i8>
  %i.aq = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.ar = bitcast <16 x i16> %i.ao to <32 x i8>
  %i.as = shufflevector <32 x i8> %i.ar, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.aq, ptr %i.ai, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.01054, i64 96
  store <32 x i8> %i.as, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.01054, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph1058
  %i.av = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.aw = bitcast <4 x i64> %4 to <32 x i8>       ; 3 uses
  %i.ax = shufflevector <32 x i8> %i.aw, <32 x i8> %i.av, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ay = bitcast <32 x i8> %i.ax to <16 x i16>
  %i.az = lshr <16 x i16> %i.ay, splat (i16 4)
  %i.ba = bitcast <16 x i16> %i.az to <32 x i8>
  %i.bb = and <32 x i8> %i.ba, splat (i8 15)
  %i.bc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bb)
  %i.bd = and <32 x i8> %i.ax, splat (i8 15)
  %i.be = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bd)
  %i.bf = bitcast <4 x i64> %i.p to <16 x i16>
  %i.bg = lshr <16 x i16> %i.bf, splat (i16 4)
  %i.bh = bitcast <16 x i16> %i.bg to <32 x i8>
  %i.bi = and <32 x i8> %i.bh, splat (i8 15)
  %i.bj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bi)
  %i.bk = and <32 x i8> %i.be, %i.bc
  %i.bl = and <32 x i8> %i.bk, %i.bj
  %i.bm = shufflevector <32 x i8> %i.aw, <32 x i8> %i.av, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bn = shufflevector <32 x i8> %i.aw, <32 x i8> %i.av, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bo = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bm, <32 x i8> splat (i8 96))
  %i.bp = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bn, <32 x i8> splat (i8 112))
  %i.bq = or <32 x i8> %i.bo, %i.bp
  %.inner1146 = and <32 x i8> %i.bq, splat (i8 -128)
  %.inner1147 = xor <32 x i8> %.inner1146, %i.bl
  %i.br = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.bs = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bt = bitcast <4 x i64> %i.bs to <32 x i8>    ; 3 uses
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> %i.br, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bv = bitcast <32 x i8> %i.bu to <16 x i16>
  %i.bw = lshr <16 x i16> %i.bv, splat (i16 4)
  %i.bx = bitcast <16 x i16> %i.bw to <32 x i8>
  %i.by = and <32 x i8> %i.bx, splat (i8 15)
  %i.bz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.by)
  %i.ca = and <32 x i8> %i.bu, splat (i8 15)
  %i.cb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.ca)
  %i.cc = bitcast <4 x i64> %i.r to <16 x i16>
  %i.cd = lshr <16 x i16> %i.cc, splat (i16 4)
  %i.ce = bitcast <16 x i16> %i.cd to <32 x i8>
  %i.cf = and <32 x i8> %i.ce, splat (i8 15)
  %i.cg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cf)
  %i.ch = and <32 x i8> %i.cb, %i.bz
  %i.ci = and <32 x i8> %i.ch, %i.cg
  %i.cj = shufflevector <32 x i8> %i.bt, <32 x i8> %i.br, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ck = shufflevector <32 x i8> %i.bt, <32 x i8> %i.br, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cl = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cj, <32 x i8> splat (i8 96))
  %i.cm = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ck, <32 x i8> splat (i8 112))
  %i.cn = or <32 x i8> %i.cl, %i.cm
  %.inner1150 = and <32 x i8> %i.cn, splat (i8 -128)
  %.inner1151 = xor <32 x i8> %.inner1150, %i.ci
  %.inner1152 = or <32 x i8> %.inner1147, %.inner1151
  %i.co = bitcast <32 x i8> %.inner1152 to <4 x i64>
  %i.cp = or <4 x i64> %.sroa.0.01055, %i.co      ; 4 uses
  %i.cq = icmp slt <32 x i8> %i.av, splat (i8 -64)
  %i.cr = bitcast <32 x i1> %i.cq to i32
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.cp, <4 x i64> %i.cp)
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = and i64 %i.cs, 1
  %.not60.i = icmp eq i64 %i.cv, 0
  %or.cond.i = and i1 %.not60.i, %i.cu
  br i1 %or.cond.i, label %bb.j, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.cw = sub i64 %2, %.0.i1056
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.critedge.critedge.i
  %.02566.i = phi i64 [ 0, %.critedge.critedge.i ], [ %i.dd, %bb.f ] ; 6 uses
  %i.cx = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.o, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1             ; 2 uses
  %i.da = icmp sgt i8 %i.cz, -65
  br i1 %i.da, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = icmp ne i64 %.02566.i, 0
  %i.dc = icmp sgt i8 %i.cz, -1
  %or.cond.i5 = and i1 %i.db, %i.dc
  br i1 %or.cond.i5, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.dd = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i2 = icmp ugt i64 %i.dd, %.0.i1056
  br i1 %.not.i2, label %bb.h, label %bb.d, !llvm.loop !25

bb.g:                                             ; preds = %bb.e
  %i.de = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.df = sub i64 0, %.0.i1056
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit

bb.i:                                             ; preds = %bb.e
  %i.dg = getelementptr inbounds i8, ptr %i.o, i64 %i.cx
  %i.dh = add i64 %i.cw, %.02566.i
  %i.di = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.dg, i64 noundef %i.dh, ptr noundef %.01054) ; 2 uses
  %i.dj = extractvalue { i32, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { i32, i64 } %i.di, 1
  %.not33.i = icmp eq i32 %i.dj, 0
  %i.dl = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.dk, %i.dl
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.i ], [ %i.df, %bb.h ], [ %i.de, %bb.g ]
  %.sroa.0.3.i = phi i32 [ %i.dj, %bb.i ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.dm = add i64 %.sroa.4.3.i, %.0.i1056
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.j:                                             ; preds = %bb.c
  %i.dn = add i64 %.0.i1056, 52
  %i.do = icmp ult i64 %.0.i1056, -52
  br i1 %i.do, label %.lr.ph1048.preheader, label %.loopexit

.lr.ph1048.preheader:                             ; preds = %bb.j
  %i.dp = icmp slt <32 x i8> %i.br, splat (i8 -64)
  %i.dq = bitcast <32 x i1> %i.dp to i32
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw i64 %i.dr, 32
  %i.dt = or disjoint i64 %i.ds, %i.cs
  %i.du = xor i64 %i.dt, -1
  %i.dv = lshr i64 %i.du, 1
  br label %.lr.ph1048

.lr.ph1048:                                       ; preds = %.lr.ph1048.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit
  %.1.i1046 = phi i64 [ %i.jg, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.0.i1056, %.lr.ph1048.preheader ] ; 2 uses
  %.052.i1045 = phi i64 [ %i.jh, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %i.dv, %.lr.ph1048.preheader ] ; 4 uses
  %.11044 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.01054, %.lr.ph1048.preheader ] ; 14 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i1046
  %.val = load <2 x i64>, ptr %i.dw, align 1      ; 6 uses
  %i.dx = icmp eq i64 %.052.i1045, 4095
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph1048
  %i.dy = bitcast <2 x i64> %.val to <16 x i8>
  %i.dz = zext <16 x i8> %i.dy to <16 x i16>
  %i.ea = bitcast <16 x i16> %i.dz to <32 x i8>
  %i.eb = shufflevector <32 x i8> %i.ea, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.eb, ptr %.11044, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.11044, i64 24
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.l:                                             ; preds = %.lr.ph1048
  %i.ed = and i64 %.052.i1045, 65535
  %i.ee = icmp eq i64 %i.ed, 43690
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ef = bitcast <2 x i64> %.val to <16 x i8>
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.eh = bitcast <16 x i8> %i.eg to <2 x i64>
  %i.ei = and <2 x i64> %i.eh, splat (i64 35747867511423103)
  %i.ej = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ek = lshr <8 x i16> %i.ej, splat (i16 2)
  %i.el = bitcast <8 x i16> %i.ek to <2 x i64>
  %i.em = and <2 x i64> %i.el, splat (i64 558454875139082176)
  %i.en = or <2 x i64> %i.em, %i.ei
  %i.eo = bitcast <2 x i64> %i.en to <16 x i8>
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.ep, ptr %.11044, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.11044, i64 16
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.n:                                             ; preds = %bb.l
  %i.er = and i64 %.052.i1045, 4095               ; 2 uses
  %i.es = icmp eq i64 %i.er, 2340
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.et = bitcast <2 x i64> %.val to <16 x i8>
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.ev = bitcast <16 x i8> %i.eu to <2 x i64>
  %i.ew = and <2 x i64> %i.ev, splat (i64 545460846719)
  %i.ex = bitcast <16 x i8> %i.eu to <4 x i32>    ; 2 uses
  %i.ey = lshr <4 x i32> %i.ex, splat (i32 2)
  %i.ez = bitcast <4 x i32> %i.ey to <2 x i64>
  %i.fa = and <2 x i64> %i.ez, splat (i64 17317308141504)
  %i.fb = lshr <4 x i32> %i.ex, splat (i32 4)
  %i.fc = bitcast <4 x i32> %i.fb to <2 x i64>
  %i.fd = and <2 x i64> %i.fc, splat (i64 263882790727680)
  %i.fe = or <2 x i64> %i.fa, %i.ew
  %i.ff = or disjoint <2 x i64> %i.fe, %i.fd
  %i.fg = bitcast <2 x i64> %i.ff to <4 x i32>    ; 2 uses
  %i.fh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fg, <4 x i32> %i.fg)
  %i.fi = bitcast <8 x i16> %i.fh to <16 x i8>
  %i.fj = shufflevector <16 x i8> %i.fi, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.fj, ptr %.11044, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.11044, i64 8
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.p:                                             ; preds = %bb.n
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.er ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 2             ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp ult i8 %i.fm, 64
  br i1 %i.fp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fq = zext nneg i8 %i.fm to i64
end_hunk_7
begin_hunk_8_@_ZNK7simdutf7haswell14implementation29convert_valid_utf8_to_utf16beEPKcmPDs:bb.a
  %.inner21 = and <4 x i32> %i.ew, <i32 67043328, i32 67043328, i32 67043328, i32 poison>
  %.inner22 = or disjoint <4 x i32> %.inner20, %.inner21
  %i.ex = bitcast <2 x i64> %i.es to <16 x i8>
  %i.ey = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.ez = bitcast <4 x i32> %.inner22 to <16 x i8>
  %i.fa = or <16 x i8> %i.ez, <i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.fb = shufflevector <16 x i8> %i.fa, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <4 x i32> %i.et, i64 0
  %i.fc = icmp samesign ugt i32 %.sroa.09.0.vec.extract.i.i, 62914560
  br i1 %i.fc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fd = bitcast <16 x i8> %i.fb to <8 x i16>    ; 2 uses
  %i.fe = extractelement <8 x i16> %i.fd, i64 0
  %i.ff = extractelement <8 x i16> %i.fd, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.1151153.i, i64 2
  store i16 %i.ff, ptr %i.fg, align 2
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fh = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fi = extractelement <8 x i16> %i.fh, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i = phi i16 [ %i.fe, %bb.o ], [ %i.fi, %bb.p ]
  %.sink13.i.i = phi i64 [ 4, %bb.o ], [ 2, %bb.p ]
  store i16 %.sink.i, ptr %.1151153.i, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %.1151153.i, i64 %.sink13.i.i ; 3 uses
  %.sroa.09.4.vec.extract.i.i = extractelement <4 x i32> %i.et, i64 1
  %i.fk = icmp samesign ugt i32 %.sroa.09.4.vec.extract.i.i, 62914560
  br i1 %i.fk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fm = extractelement <8 x i16> %i.fl, i64 2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fn = bitcast <16 x i8> %i.fb to <8 x i16>    ; 2 uses
  %i.fo = extractelement <8 x i16> %i.fn, i64 2
  %i.fp = extractelement <8 x i16> %i.fn, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i16 %i.fp, ptr %i.fq, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink163.i = phi i16 [ %i.fo, %bb.s ], [ %i.fm, %bb.r ]
  %.sink14.i.i = phi i64 [ 4, %bb.s ], [ 2, %bb.r ]
  store i16 %.sink163.i, ptr %i.fj, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sink14.i.i ; 4 uses
  %.sroa.09.8.vec.extract.i.i = extractelement <4 x i32> %i.et, i64 2
  %i.fs = icmp samesign ugt i32 %.sroa.09.8.vec.extract.i.i, 62914560
  br i1 %i.fs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fu = extractelement <8 x i16> %i.ft, i64 4
  store i16 %i.fu, ptr %i.fr, align 2
  br label %.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.fv = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.fw = shufflevector <8 x i16> %i.fv, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.fw, ptr %i.fr, align 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v, %bb.u, %bb.l, %bb.j
  %.4.i = phi ptr [ %.1151153.i, %bb.j ], [ %.1151153.i, %bb.l ], [ %i.fr, %bb.v ], [ %i.fr, %bb.u ]
  %.sink17.i.i = phi i64 [ 12, %bb.j ], [ 8, %bb.l ], [ 4, %bb.v ], [ 2, %bb.u ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.4.i, i64 %.sink17.i.i
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i, %bb.m
  %.3.i = phi ptr [ %i.fx, %.sink.split.i.i ], [ %.1151153.i, %bb.m ]
  %i.fy = zext i8 %i.ch to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i

_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i: ; preds = %bb.w, %bb.h, %bb.f, %bb.d
  %.5.i = phi ptr [ %i.av, %bb.d ], [ %i.bj, %bb.f ], [ %i.cd, %bb.h ], [ %.3.i, %bb.w ] ; 2 uses
  %.0108.i.i = phi i64 [ 12, %bb.d ], [ 16, %bb.f ], [ 12, %bb.h ], [ %i.fy, %bb.w ] ; 2 uses
  %i.fz = add i64 %.0108.i.i, %.1155.i            ; 3 uses
  %i.ga = lshr i64 %.021154.i, %.0108.i.i
  %i.gb = icmp ult i64 %i.fz, %i.ai
  br i1 %i.gb, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1052

.loopexit.i:                                      ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i, %bb.c, %bb.b
  %.2152.i = phi ptr [ %i.ah, %bb.b ], [ %.0150158.i, %bb.c ], [ %.5.i, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i ] ; 2 uses
  %.2.i = phi i64 [ %i.a, %bb.b ], [ %.0159.i, %bb.c ], [ %i.fz, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i ] ; 4 uses
  %i.gc = add i64 %.2.i, 64
  %i.gd = add i64 %.2.i, 80
  %.not.i = icmp ugt i64 %i.gd, %2
  br i1 %.not.i, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE1EEEmPKcmPDs.exit, label %.lr.ph160.i, !llvm.loop !1053

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE1EEEmPKcmPDs.exit: ; preds = %.loopexit.i, %bb.a
  %.0150.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2152.i, %.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  %i.gf = sub i64 %2, %.0.lcssa.i
  %i.gg = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE1EEEmPKcmPDs(ptr noundef readonly %i.ge, i64 noundef %i.gf, ptr noundef %.0150.lcssa.i)
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.0150.lcssa.i, i64 %i.gg
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %3 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 1
  ret i64 %i.gl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -2305843009213693952, 2305843009213693952) i64 @_ZNK7simdutf7haswell14implementation21convert_utf8_to_utf32EPKcmPDi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 !guid !1064 {
bb.a:
  %.not1001 = icmp eq i64 %2, 0
  br i1 %.not1001, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047.i983 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.048.i982 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.047.i983
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.048.i982, %i.e         ; 2 uses
  %i.g = add i64 %.047.i983, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1057

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.047.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.047.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i991 = icmp ugt i64 %i.m, %2
  br i1 %.not.i991, label %._crit_edge997, label %.lr.ph996

.lr.ph996:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.hq, %.loopexit ], [ 64, %._crit_edge ]
  %.049.i994 = phi i64 [ %.453.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0993 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0992 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i994 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !1065 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !1066 ; 8 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph996
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = zext <8 x i8> %i.y to <8 x i32>
  store <8 x i32> %i.z, ptr %.0992, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0992, i64 32
  %i.ab = shufflevector <4 x i64> %i.p, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = bitcast <2 x i64> %i.ab to <16 x i8>
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  store <8 x i32> %i.ae, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0992, i64 64
  %i.ag = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ah = shufflevector <32 x i8> %i.ag, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ai = zext <8 x i8> %i.ah to <8 x i32>
  store <8 x i32> %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0992, i64 96
  %i.ak = bitcast <4 x i64> %i.p to <32 x i8>
  %i.al = shufflevector <32 x i8> %i.ak, <32 x i8> poison, <8 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.am = zext <8 x i8> %i.al to <8 x i32>
  store <8 x i32> %i.am, ptr %i.aj, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0992, i64 128
  %i.ao = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = zext <8 x i8> %i.ap to <8 x i32>
  store <8 x i32> %i.aq, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0992, i64 160
  %i.as = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = bitcast <2 x i64> %i.as to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.av = zext <8 x i8> %i.au to <8 x i32>
  store <8 x i32> %i.av, ptr %i.ar, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0992, i64 192
  %i.ax = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ay = shufflevector <32 x i8> %i.ax, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.az = zext <8 x i8> %i.ay to <8 x i32>
  store <8 x i32> %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0992, i64 224
  %i.bb = bitcast <4 x i64> %i.r to <32 x i8>
  %i.bc = shufflevector <32 x i8> %i.bb, <32 x i8> poison, <8 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = zext <8 x i8> %i.bc to <8 x i32>
  store <8 x i32> %i.bd, ptr %i.ba, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0992, i64 256
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph996
  %i.bf = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.bg = bitcast <4 x i64> %4 to <32 x i8>       ; 3 uses
  %i.bh = shufflevector <32 x i8> %i.bg, <32 x i8> %i.bf, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bi = bitcast <32 x i8> %i.bh to <16 x i16>
  %i.bj = lshr <16 x i16> %i.bi, splat (i16 4)
  %i.bk = bitcast <16 x i16> %i.bj to <32 x i8>
  %i.bl = and <32 x i8> %i.bk, splat (i8 15)
  %i.bm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bl)
  %i.bn = and <32 x i8> %i.bh, splat (i8 15)
  %i.bo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bn)
  %i.bp = bitcast <4 x i64> %i.p to <16 x i16>
  %i.bq = lshr <16 x i16> %i.bp, splat (i16 4)
  %i.br = bitcast <16 x i16> %i.bq to <32 x i8>
  %i.bs = and <32 x i8> %i.br, splat (i8 15)
  %i.bt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bs)
  %i.bu = and <32 x i8> %i.bo, %i.bm
  %i.bv = and <32 x i8> %i.bu, %i.bt
  %i.bw = shufflevector <32 x i8> %i.bg, <32 x i8> %i.bf, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bx = shufflevector <32 x i8> %i.bg, <32 x i8> %i.bf, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.by = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bw, <32 x i8> splat (i8 96))
  %i.bz = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bx, <32 x i8> splat (i8 112))
  %i.ca = or <32 x i8> %i.by, %i.bz
  %.inner1013 = and <32 x i8> %i.ca, splat (i8 -128)
  %.inner1014 = xor <32 x i8> %.inner1013, %i.bv
  %i.cb = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.cc = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.cd = bitcast <4 x i64> %i.cc to <32 x i8>    ; 3 uses
  %i.ce = shufflevector <32 x i8> %i.cd, <32 x i8> %i.cb, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.cf = bitcast <32 x i8> %i.ce to <16 x i16>
  %i.cg = lshr <16 x i16> %i.cf, splat (i16 4)
  %i.ch = bitcast <16 x i16> %i.cg to <32 x i8>
  %i.ci = and <32 x i8> %i.ch, splat (i8 15)
  %i.cj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.ci)
  %i.ck = and <32 x i8> %i.ce, splat (i8 15)
  %i.cl = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.ck)
  %i.cm = bitcast <4 x i64> %i.r to <16 x i16>
  %i.cn = lshr <16 x i16> %i.cm, splat (i16 4)
  %i.co = bitcast <16 x i16> %i.cn to <32 x i8>
  %i.cp = and <32 x i8> %i.co, splat (i8 15)
  %i.cq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cp)
  %i.cr = and <32 x i8> %i.cl, %i.cj
  %i.cs = and <32 x i8> %i.cr, %i.cq
  %i.ct = shufflevector <32 x i8> %i.cd, <32 x i8> %i.cb, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cu = shufflevector <32 x i8> %i.cd, <32 x i8> %i.cb, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cv = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ct, <32 x i8> splat (i8 96))
  %i.cw = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cu, <32 x i8> splat (i8 112))
  %i.cx = or <32 x i8> %i.cv, %i.cw
  %.inner1017 = and <32 x i8> %i.cx, splat (i8 -128)
  %.inner1018 = xor <32 x i8> %.inner1017, %i.cs
  %.inner1019 = or <32 x i8> %.inner1014, %.inner1018
  %i.cy = bitcast <32 x i8> %.inner1019 to <4 x i64>
  %i.cz = or <4 x i64> %.sroa.0.0993, %i.cy       ; 2 uses
  %i.da = icmp slt <32 x i8> %i.bf, splat (i8 -64)
  %i.db = bitcast <32 x i1> %i.da to i32
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = and i64 %i.dc, 1
  %.not57.i = icmp eq i64 %i.dd, 0
  br i1 %.not57.i, label %bb.d, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit

bb.d:                                             ; preds = %bb.c
  %i.de = add i64 %.049.i994, 52
  %i.df = icmp ult i64 %.049.i994, -52
  br i1 %i.df, label %.lr.ph988.preheader, label %.loopexit

.lr.ph988.preheader:                              ; preds = %bb.d
  %i.dg = icmp slt <32 x i8> %i.cb, splat (i8 -64)
  %i.dh = bitcast <32 x i1> %i.dg to i32
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl nuw i64 %i.di, 32
  %i.dk = or disjoint i64 %i.dj, %i.dc
  %i.dl = xor i64 %i.dk, -1
  %i.dm = lshr i64 %i.dl, 1
  br label %.lr.ph988

.lr.ph988:                                        ; preds = %.lr.ph988.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit
  %.043.i986 = phi i64 [ %i.ho, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %i.dm, %.lr.ph988.preheader ] ; 4 uses
  %.150.i985 = phi i64 [ %i.hn, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.049.i994, %.lr.ph988.preheader ] ; 2 uses
  %.1984 = phi ptr [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.0992, %.lr.ph988.preheader ] ; 12 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i985
  %.val = load <2 x i64>, ptr %i.dn, align 1      ; 6 uses
  %i.do = icmp eq i64 %.043.i986, 4095
  br i1 %i.do, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph988
  %i.dp = bitcast <2 x i64> %.val to <16 x i8>    ; 2 uses
  %i.dq = shufflevector <16 x i8> %i.dp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dr = zext <8 x i8> %i.dq to <8 x i32>
  store <8 x i32> %i.dr, ptr %.1984, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.1984, i64 32
  %i.dt = shufflevector <16 x i8> %i.dp, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.du = zext <8 x i8> %i.dt to <8 x i32>
  store <8 x i32> %i.du, ptr %i.ds, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.1984, i64 48
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.f:                                             ; preds = %.lr.ph988
  %i.dw = and i64 %.043.i986, 65535
  %i.dx = icmp eq i64 %i.dw, 43690
  br i1 %i.dx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dy = bitcast <2 x i64> %.val to <16 x i8>
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = and <2 x i64> %i.ea, splat (i64 35747867511423103)
  %i.ec = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.ed = lshr <8 x i16> %i.ec, splat (i16 2)
  %i.ee = bitcast <8 x i16> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.ee, splat (i64 558454875139082176)
  %i.eg = or <2 x i64> %i.ef, %i.eb
  %i.eh = bitcast <2 x i64> %i.eg to <8 x i16>
  %i.ei = zext nneg <8 x i16> %i.eh to <8 x i32>
  store <8 x i32> %i.ei, ptr %.1984, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.1984, i64 32
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.h:                                             ; preds = %bb.f
  %i.ek = and i64 %.043.i986, 4095                ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2340
  br i1 %i.el, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.em = bitcast <2 x i64> %.val to <16 x i8>
  %i.en = shufflevector <16 x i8> %i.em, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.eo = bitcast <16 x i8> %i.en to <2 x i64>
  %i.ep = and <2 x i64> %i.eo, splat (i64 545460846719)
  %i.eq = bitcast <16 x i8> %i.en to <4 x i32>    ; 2 uses
  %i.er = lshr <4 x i32> %i.eq, splat (i32 2)
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>
  %i.et = and <2 x i64> %i.es, splat (i64 17317308141504)
  %i.eu = lshr <4 x i32> %i.eq, splat (i32 4)
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  %i.ew = and <2 x i64> %i.ev, splat (i64 263882790727680)
  %i.ex = or <2 x i64> %i.et, %i.ep
  %i.ey = or disjoint <2 x i64> %i.ex, %i.ew
  store <2 x i64> %i.ey, ptr %.1984, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1984, i64 16
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.j:                                             ; preds = %bb.h
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.ek ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 2             ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp ult i8 %i.fb, 64
  br i1 %i.fe, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ff = zext nneg i8 %i.fb to i64
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ff
  %i.fh = load <16 x i8>, ptr %i.fg, align 16
  %i.fi = bitcast <2 x i64> %.val to <16 x i8>
  %i.fj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fi, <16 x i8> %i.fh) ; 2 uses
  %i.fk = bitcast <16 x i8> %i.fj to <2 x i64>
  %i.fl = and <2 x i64> %i.fk, splat (i64 35747867511423103)
  %i.fm = bitcast <16 x i8> %i.fj to <8 x i16>
  %i.fn = lshr <8 x i16> %i.fm, splat (i16 2)
  %i.fo = bitcast <8 x i16> %i.fn to <2 x i64>
  %i.fp = and <2 x i64> %i.fo, splat (i64 558454875139082176)
  %i.fq = or <2 x i64> %i.fp, %i.fl
  %i.fr = bitcast <2 x i64> %i.fq to <8 x i16>
  %i.fs = zext nneg <8 x i16> %i.fr to <8 x i32>
  store <8 x i32> %i.fs, ptr %.1984, align 1
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ft = icmp ult i8 %i.fb, -111
  br i1 %i.ft, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fu = zext i8 %i.fb to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.fu
  %i.fw = load <16 x i8>, ptr %i.fv, align 16
  %i.fx = bitcast <2 x i64> %.val to <16 x i8>
  %i.fy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fx, <16 x i8> %i.fw) ; 2 uses
  %i.fz = bitcast <16 x i8> %i.fy to <2 x i64>
  %i.ga = and <2 x i64> %i.fz, splat (i64 545460846719)
  %i.gb = bitcast <16 x i8> %i.fy to <4 x i32>    ; 2 uses
  %i.gc = lshr <4 x i32> %i.gb, splat (i32 2)
  %i.gd = bitcast <4 x i32> %i.gc to <2 x i64>
  %i.ge = and <2 x i64> %i.gd, splat (i64 17317308141504)
  %i.gf = lshr <4 x i32> %i.gb, splat (i32 4)
  %i.gg = bitcast <4 x i32> %i.gf to <2 x i64>
  %i.gh = and <2 x i64> %i.gg, splat (i64 263882790727680)
  %i.gi = or <2 x i64> %i.ge, %i.ga
  %i.gj = or disjoint <2 x i64> %i.gi, %i.gh
  store <2 x i64> %i.gj, ptr %.1984, align 1
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.gk = icmp samesign ult i8 %i.fb, -47
  br i1 %i.gk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gl = zext i8 %i.fb to i64
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.gl
  %i.gn = load <16 x i8>, ptr %i.gm, align 16
  %i.go = bitcast <2 x i64> %.val to <16 x i8>
  %i.gp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.go, <16 x i8> %i.gn) ; 3 uses
  %i.gq = bitcast <16 x i8> %i.gp to <2 x i64>
  %i.gr = and <2 x i64> %i.gq, splat (i64 545460846719)
  %i.gs = bitcast <16 x i8> %i.gp to <4 x i32>    ; 3 uses
  %i.gt = lshr <4 x i32> %i.gs, splat (i32 2)
  %i.gu = bitcast <4 x i32> %i.gt to <2 x i64>
  %i.gv = and <2 x i64> %i.gu, splat (i64 17317308141504)
  %i.gw = bitcast <16 x i8> %i.gp to <2 x i64>
  %i.gx = and <2 x i64> %i.gw, splat (i64 17732923536900096)
  %i.gy = lshr <4 x i32> %i.gs, splat (i32 1)
  %i.gz = bitcast <4 x i32> %i.gy to <2 x i64>
  %i.ha = and <2 x i64> %i.gz, splat (i64 9007199256838144)
  %i.hb = xor <2 x i64> %i.ha, %i.gx
  %i.hc = bitcast <2 x i64> %i.hb to <4 x i32>
  %i.hd = lshr exact <4 x i32> %i.hc, splat (i32 4)
  %i.he = bitcast <4 x i32> %i.hd to <2 x i64>
  %i.hf = lshr <4 x i32> %i.gs, splat (i32 6)
  %i.hg = bitcast <4 x i32> %i.hf to <2 x i64>
  %i.hh = and <2 x i64> %i.hg, splat (i64 7881299349733376)
  %i.hi = or <2 x i64> %i.gv, %i.gr
  %i.hj = or disjoint <2 x i64> %i.hi, %i.hh
  %i.hk = or disjoint <2 x i64> %i.hj, %i.he
  store <2 x i64> %i.hk, ptr %.1984, align 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.m, %bb.k
  %.sink11.i = phi i64 [ 16, %bb.m ], [ 12, %bb.o ], [ 24, %bb.k ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.1984, i64 %.sink11.i
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %bb.n
  %.4 = phi ptr [ %i.hl, %.sink.split.i ], [ %.1984, %bb.n ]
  %i.hm = zext i8 %i.fd to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.p
  %.5 = phi ptr [ %i.dv, %bb.e ], [ %i.ej, %bb.g ], [ %i.ez, %bb.i ], [ %.4, %bb.p ] ; 2 uses
  %.0.i = phi i64 [ 12, %bb.e ], [ 16, %bb.g ], [ 12, %bb.i ], [ %i.hm, %bb.p ] ; 2 uses
  %i.hn = add i64 %.0.i, %.150.i985               ; 3 uses
  %i.ho = lshr i64 %.043.i986, %.0.i
  %i.hp = icmp ult i64 %i.hn, %i.de
  br i1 %i.hp, label %.lr.ph988, label %.loopexit, !llvm.loop !1062

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.be, %bb.b ], [ %.0992, %bb.d ], [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0993, %bb.b ], [ %i.cz, %bb.d ], [ %i.cz, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ] ; 2 uses
  %.453.i = phi i64 [ %i.n, %bb.b ], [ %.049.i994, %bb.d ], [ %i.hn, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ] ; 3 uses
  %i.hq = add i64 %.453.i, 64                     ; 2 uses
  %i.hr = add i64 %i.l, %i.hq
  %.not.i = icmp ugt i64 %i.hr, %2
  br i1 %.not.i, label %._crit_edge997, label %.lr.ph996, !llvm.loop !1063

._crit_edge997:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.049.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.453.i, %.loopexit ] ; 3 uses
  %i.hs = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.hs, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge997
  %i.ht = icmp ult i64 %.049.i.lcssa, %2
  br i1 %i.ht, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i.lcssa
  %i.hv = sub nuw i64 %2, %.049.i.lcssa
  %i.hw = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf327convertEPKcmPDi(ptr noundef %i.hu, i64 noundef %i.hv, ptr noundef %.0.lcssa) ; 2 uses
  %.not56.i = icmp eq i64 %i.hw, 0
  br i1 %.not56.i, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa, i64 %i.hw
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.3 = phi ptr [ %i.hx, %bb.s ], [ %.0.lcssa, %bb.q ]
  %i.hy = ptrtoint ptr %.3 to i64
  %i.hz = ptrtoint ptr %3 to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 2
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit: ; preds = %bb.c, %._crit_edge997, %bb.r, %bb.t
  %.5.i = phi i64 [ 0, %._crit_edge997 ], [ 0, %bb.r ], [ %i.ib, %bb.t ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation33convert_utf8_to_utf32_with_errorsEPKcmPDi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 !guid !1074 {
bb.a:
  %.not1067 = icmp eq i64 %2, 0
  br i1 %.not1067, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.055.i1042 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.056.i1041 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.055.i1042
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.056.i1041, %i.e        ; 2 uses
  %i.g = add i64 %.055.i1042, -1                  ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1067

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.055.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i1053 = icmp ugt i64 %i.m, %2
  br i1 %.not.i1053, label %._crit_edge1059, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.io, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i1056 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 11 uses
  %.sroa.0.01055 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.01054 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i1056 ; 7 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !1075 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !1076 ; 8 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph1058
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = zext <8 x i8> %i.y to <8 x i32>
  store <8 x i32> %i.z, ptr %.01054, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.01054, i64 32
  %i.ab = shufflevector <4 x i64> %i.p, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = bitcast <2 x i64> %i.ab to <16 x i8>
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  store <8 x i32> %i.ae, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.01054, i64 64
  %i.ag = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ah = shufflevector <32 x i8> %i.ag, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ai = zext <8 x i8> %i.ah to <8 x i32>
  store <8 x i32> %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.01054, i64 96
  %i.ak = bitcast <4 x i64> %i.p to <32 x i8>
  %i.al = shufflevector <32 x i8> %i.ak, <32 x i8> poison, <8 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.am = zext <8 x i8> %i.al to <8 x i32>
  store <8 x i32> %i.am, ptr %i.aj, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.01054, i64 128
  %i.ao = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = zext <8 x i8> %i.ap to <8 x i32>
  store <8 x i32> %i.aq, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.01054, i64 160
  %i.as = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = bitcast <2 x i64> %i.as to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.av = zext <8 x i8> %i.au to <8 x i32>
  store <8 x i32> %i.av, ptr %i.ar, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01054, i64 192
  %i.ax = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ay = shufflevector <32 x i8> %i.ax, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.az = zext <8 x i8> %i.ay to <8 x i32>
  store <8 x i32> %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.01054, i64 224
  %i.bb = bitcast <4 x i64> %i.r to <32 x i8>
  %i.bc = shufflevector <32 x i8> %i.bb, <32 x i8> poison, <8 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = zext <8 x i8> %i.bc to <8 x i32>
  store <8 x i32> %i.bd, ptr %i.ba, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01054, i64 256
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph1058
  %i.bf = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %4 = shufflevector <4 x i64> %i.p, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 poison, i32 7, i32 poison, i32 1>
  %i.bg = bitcast <4 x i64> %4 to <32 x i8>       ; 3 uses
  %i.bh = shufflevector <32 x i8> %i.bg, <32 x i8> %i.bf, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bi = bitcast <32 x i8> %i.bh to <16 x i16>
  %i.bj = lshr <16 x i16> %i.bi, splat (i16 4)
  %i.bk = bitcast <16 x i16> %i.bj to <32 x i8>
  %i.bl = and <32 x i8> %i.bk, splat (i8 15)
  %i.bm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bl)
  %i.bn = and <32 x i8> %i.bh, splat (i8 15)
  %i.bo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bn)
  %i.bp = bitcast <4 x i64> %i.p to <16 x i16>
  %i.bq = lshr <16 x i16> %i.bp, splat (i16 4)
  %i.br = bitcast <16 x i16> %i.bq to <32 x i8>
  %i.bs = and <32 x i8> %i.br, splat (i8 15)
  %i.bt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bs)
  %i.bu = and <32 x i8> %i.bo, %i.bm
  %i.bv = and <32 x i8> %i.bu, %i.bt
  %i.bw = shufflevector <32 x i8> %i.bg, <32 x i8> %i.bf, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bx = shufflevector <32 x i8> %i.bg, <32 x i8> %i.bf, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.by = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bw, <32 x i8> splat (i8 96))
  %i.bz = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bx, <32 x i8> splat (i8 112))
  %i.ca = or <32 x i8> %i.by, %i.bz
  %.inner1142 = and <32 x i8> %i.ca, splat (i8 -128)
  %.inner1143 = xor <32 x i8> %.inner1142, %i.bv
  %i.cb = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.cc = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.cd = bitcast <4 x i64> %i.cc to <32 x i8>    ; 3 uses
  %i.ce = shufflevector <32 x i8> %i.cd, <32 x i8> %i.cb, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.cf = bitcast <32 x i8> %i.ce to <16 x i16>
  %i.cg = lshr <16 x i16> %i.cf, splat (i16 4)
  %i.ch = bitcast <16 x i16> %i.cg to <32 x i8>
  %i.ci = and <32 x i8> %i.ch, splat (i8 15)
  %i.cj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.ci)
  %i.ck = and <32 x i8> %i.ce, splat (i8 15)
  %i.cl = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.ck)
  %i.cm = bitcast <4 x i64> %i.r to <16 x i16>
  %i.cn = lshr <16 x i16> %i.cm, splat (i16 4)
  %i.co = bitcast <16 x i16> %i.cn to <32 x i8>
  %i.cp = and <32 x i8> %i.co, splat (i8 15)
  %i.cq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cp)
  %i.cr = and <32 x i8> %i.cl, %i.cj
  %i.cs = and <32 x i8> %i.cr, %i.cq
  %i.ct = shufflevector <32 x i8> %i.cd, <32 x i8> %i.cb, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cu = shufflevector <32 x i8> %i.cd, <32 x i8> %i.cb, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cv = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ct, <32 x i8> splat (i8 96))
  %i.cw = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cu, <32 x i8> splat (i8 112))
  %i.cx = or <32 x i8> %i.cv, %i.cw
  %.inner1146 = and <32 x i8> %i.cx, splat (i8 -128)
  %.inner1147 = xor <32 x i8> %.inner1146, %i.cs
  %.inner1148 = or <32 x i8> %.inner1143, %.inner1147
  %i.cy = bitcast <32 x i8> %.inner1148 to <4 x i64>
  %i.cz = or <4 x i64> %.sroa.0.01055, %i.cy      ; 4 uses
  %i.da = icmp slt <32 x i8> %i.bf, splat (i8 -64)
  %i.db = bitcast <32 x i1> %i.da to i32
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.cz, <4 x i64> %i.cz)
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = and i64 %i.dc, 1
  %.not60.i = icmp eq i64 %i.df, 0
  %or.cond.i = and i1 %.not60.i, %i.de
  br i1 %or.cond.i, label %bb.n, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.dg = sub i64 %2, %.0.i1056
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i1056, i64 3)
  %i.dh = load i8, ptr %i.o, align 1              ; 2 uses
  %i.di = icmp slt i8 %i.dh, -64                  ; 2 uses
  br i1 %i.di, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.f, %.critedge.critedge.i
  %.02771.i.lcssa = phi i64 [ 0, %.critedge.critedge.i ], [ 1, %bb.f ], [ 2, %bb.h ], [ 3, %bb.j ] ; 3 uses
  %.lcssa1175 = phi i64 [ 0, %.critedge.critedge.i ], [ -1, %bb.f ], [ -2, %bb.h ], [ -3, %bb.j ]
  %.lcssa1173 = phi i8 [ %i.dh, %.critedge.critedge.i ], [ %i.dl, %bb.f ], [ %i.do, %bb.h ], [ %i.dr, %bb.j ]
  %i.dj = icmp sgt i8 %.lcssa1173, -1
  %or.cond.i4 = and i1 %i.di, %i.dj
  br i1 %or.cond.i4, label %bb.k, label %bb.m

bb.e:                                             ; preds = %.critedge.critedge.i
  %exitcond.not.i = icmp eq i64 %.0.i1056, 0
  br i1 %exitcond.not.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = getelementptr inbounds i8, ptr %i.o, i64 -1
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dm = icmp sgt i8 %i.dl, -65
  br i1 %i.dm, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond.not.i.1 = icmp eq i64 %.0.i1056, 1
  br i1 %exitcond.not.i.1, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds i8, ptr %i.o, i64 -2
  %i.do = load i8, ptr %i.dn, align 1             ; 2 uses
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %bb.d, label %bb.i

bb.i:                                             ; preds = %bb.h
  %exitcond.not.i.2 = icmp eq i64 %.0.i1056, 2
  br i1 %exitcond.not.i.2, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %i.ds = icmp sgt i8 %i.dr, -65
  br i1 %i.ds, label %bb.d, label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.dt = sub nsw i64 1, %.02771.i.lcssa
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.e
  %i.du = sub nsw i64 0, %spec.select.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit

bb.m:                                             ; preds = %bb.d
  %i.dv = getelementptr inbounds i8, ptr %i.o, i64 %.lcssa1175
  %i.dw = add i64 %i.dg, %.02771.i.lcssa
  %i.dx = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3219convert_with_errorsEPKcmPDi(ptr noundef nonnull readonly %i.dv, i64 noundef %i.dw, ptr noundef %.01054) ; 2 uses
  %i.dy = extractvalue { i32, i64 } %i.dx, 0      ; 2 uses
  %i.dz = extractvalue { i32, i64 } %i.dx, 1
  %.not37.i = icmp eq i32 %i.dy, 0
  %i.ea = select i1 %.not37.i, i64 0, i64 %.02771.i.lcssa
  %spec.select38.i = sub i64 %i.dz, %i.ea
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.4.3.i = phi i64 [ %spec.select38.i, %bb.m ], [ %i.du, %bb.l ], [ %i.dt, %bb.k ]
  %.sroa.0.3.i = phi i32 [ %i.dy, %bb.m ], [ 3, %bb.l ], [ 3, %bb.k ]
  %i.eb = add i64 %.sroa.4.3.i, %.0.i1056
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf3221validating_transcoder19convert_with_errorsEPKcmPDi.exit

bb.n:                                             ; preds = %bb.c
  %i.ec = add i64 %.0.i1056, 52
  %i.ed = icmp ult i64 %.0.i1056, -52
  br i1 %i.ed, label %.lr.ph1047.preheader, label %.loopexit

.lr.ph1047.preheader:                             ; preds = %bb.n
  %i.ee = icmp slt <32 x i8> %i.cb, splat (i8 -64)
  %i.ef = bitcast <32 x i1> %i.ee to i32
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %i.ei = or disjoint i64 %i.eh, %i.dc
  %i.ej = xor i64 %i.ei, -1
  %i.ek = lshr i64 %i.ej, 1
  br label %.lr.ph1047

.lr.ph1047:                                       ; preds = %.lr.ph1047.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit
  %.1.i1045 = phi i64 [ %i.il, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.0.i1056, %.lr.ph1047.preheader ] ; 2 uses
  %.052.i1044 = phi i64 [ %i.im, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %i.ek, %.lr.ph1047.preheader ] ; 4 uses
  %.11043 = phi ptr [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.01054, %.lr.ph1047.preheader ] ; 12 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i1045
  %.val = load <2 x i64>, ptr %i.el, align 1      ; 6 uses
  %i.em = icmp eq i64 %.052.i1044, 4095
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph1047
  %i.en = bitcast <2 x i64> %.val to <16 x i8>    ; 2 uses
  %i.eo = shufflevector <16 x i8> %i.en, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ep = zext <8 x i8> %i.eo to <8 x i32>
  store <8 x i32> %i.ep, ptr %.11043, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.11043, i64 32
  %i.er = shufflevector <16 x i8> %i.en, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = zext <8 x i8> %i.er to <8 x i32>
  store <8 x i32> %i.es, ptr %i.eq, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.11043, i64 48
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.p:                                             ; preds = %.lr.ph1047
  %i.eu = and i64 %.052.i1044, 65535
  %i.ev = icmp eq i64 %i.eu, 43690
  br i1 %i.ev, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ew = bitcast <2 x i64> %.val to <16 x i8>
  %i.ex = shufflevector <16 x i8> %i.ew, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.ey = bitcast <16 x i8> %i.ex to <2 x i64>
  %i.ez = and <2 x i64> %i.ey, splat (i64 35747867511423103)
  %i.fa = bitcast <16 x i8> %i.ex to <8 x i16>
  %i.fb = lshr <8 x i16> %i.fa, splat (i16 2)
  %i.fc = bitcast <8 x i16> %i.fb to <2 x i64>
  %i.fd = and <2 x i64> %i.fc, splat (i64 558454875139082176)
  %i.fe = or <2 x i64> %i.fd, %i.ez
  %i.ff = bitcast <2 x i64> %i.fe to <8 x i16>
  %i.fg = zext nneg <8 x i16> %i.ff to <8 x i32>
  store <8 x i32> %i.fg, ptr %.11043, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.11043, i64 32
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.r:                                             ; preds = %bb.p
  %i.fi = and i64 %.052.i1044, 4095               ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 2340
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = bitcast <2 x i64> %.val to <16 x i8>
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.fm = bitcast <16 x i8> %i.fl to <2 x i64>
  %i.fn = and <2 x i64> %i.fm, splat (i64 545460846719)
  %i.fo = bitcast <16 x i8> %i.fl to <4 x i32>    ; 2 uses
  %i.fp = lshr <4 x i32> %i.fo, splat (i32 2)
end_hunk_8
begin_hunk_9_@_ZNK7simdutf8westmere14implementation25convert_latin1_to_utf16leEPKcmPDs:bb.a
  %i.c = lshr i64 %i.b, 4                         ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.019.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.019.i
  %i.g = load <16 x i8>, ptr %i.f, align 1        ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.019.i ; 2 uses
  store <16 x i8> %i.h, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <16 x i8> %i.i, ptr %i.k, align 1
  %i.l = or disjoint i64 %.019.i, 16              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load <16 x i8>, ptr %i.m, align 1        ; 2 uses
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = shufflevector <16 x i8> %i.n, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.l ; 2 uses
  store <16 x i8> %i.o, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.p, ptr %i.r, align 1
  %i.s = add nuw i64 %.019.i, 32                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1543

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.a
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.c, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.u = and i64 %i.b, 16
  %lcmp.mod.not.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.019.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.s, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.019.i.epil.init
  %i.w = load <16 x i8>, ptr %i.v, align 1        ; 2 uses
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.y = shufflevector <16 x i8> %i.w, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.019.i.epil.init ; 2 uses
  store <16 x i8> %i.x, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.y, ptr %i.aa, align 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread: ; preds = %.lr.ph.i.epil.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 9 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.a ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %.not = icmp samesign eq i64 %i.a, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread
  %i.ae = and i64 %2, 15                          ; 2 uses
  %.not.i23 = icmp eq i64 %i.ae, 0                ; 2 uses
  br i1 %.not.i23, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.b
  %xtraiter29 = and i64 %2, 7                     ; 3 uses
  %i.af = icmp samesign ult i64 %i.ae, 8
  br i1 %i.af, label %.lr.ph.i24.epil.preheader, label %.lr.ph.i24.preheader.new

.lr.ph.i24.preheader.new:                         ; preds = %.lr.ph.i24.preheader
  %unroll_iter33 = and i64 %2, 8
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.i24.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i24.preheader.new ], [ %i.bt, %.lr.ph.i24 ] ; 9 uses
  %.01112.i = phi ptr [ %i.ac, %.lr.ph.i24.preheader.new ], [ %i.bs, %.lr.ph.i24 ] ; 9 uses
  %niter34 = phi i64 [ 0, %.lr.ph.i24.preheader.new ], [ %niter34.next.7, %.lr.ph.i24 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01112.i, i64 2
  store i16 %i.ai, ptr %.01112.i, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %.01112.i, i64 4
  store i16 %i.an, ptr %i.aj, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %.01112.i, i64 6
  store i16 %i.as, ptr %i.ao, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.01112.i, i64 8
  store i16 %i.ax, ptr %i.at, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %.01112.i, i64 10
  store i16 %i.bc, ptr %i.ay, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %.01112.i, i64 12
  store i16 %i.bh, ptr %i.bd, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.01112.i, i64 14
  store i16 %i.bm, ptr %i.bi, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.01112.i, i64 16 ; 3 uses
  store i16 %i.br, ptr %i.bn, align 2
  %i.bt = add nuw nsw i64 %.013.i, 8              ; 2 uses
  %niter34.next.7 = add i64 %niter34, 8           ; 2 uses
  %niter34.ncmp.7 = icmp eq i64 %niter34.next.7, %unroll_iter33
  br i1 %niter34.ncmp.7, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa, label %.lr.ph.i24, !llvm.loop !40

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i24
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit, label %.lr.ph.i24.epil.preheader

.lr.ph.i24.epil.preheader:                        ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa, %.lr.ph.i24.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i24.preheader ], [ %i.bt, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i24.preheader ], [ %i.bs, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i24.epil

.lr.ph.i24.epil:                                  ; preds = %.lr.ph.i24.epil, %.lr.ph.i24.epil.preheader
  %.013.i.epil = phi i64 [ %i.by, %.lr.ph.i24.epil ], [ %.013.i.epil.init, %.lr.ph.i24.epil.preheader ] ; 2 uses
  %.01112.i.epil = phi ptr [ %i.bx, %.lr.ph.i24.epil ], [ %.01112.i.epil.init, %.lr.ph.i24.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i24.epil ], [ 0, %.lr.ph.i24.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.i.epil
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %.01112.i.epil, i64 2 ; 2 uses
  store i16 %i.bw, ptr %.01112.i.epil, align 2
  %i.by = add nuw nsw i64 %.013.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter29
  br i1 %epil.iter.cmp.not, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit, label %.lr.ph.i24.epil, !llvm.loop !1544

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit: ; preds = %.lr.ph.i24.epil, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.bs, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit.unr-lcssa ], [ %i.bx, %.lr.ph.i24.epil ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit.loopexit ], [ %i.ad, %bb.b ]
  %i.bz = sub i64 %.pre-phi, %i.ad
  %i.ca = ashr exact i64 %i.bz, 1
  %i.cb = add nsw i64 %i.ca, %i.a
  %spec.select = select i1 %.not.i23, i64 0, i64 %i.cb
  br label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit ], [ %spec.select, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs.exit ], [ %2, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit.thread ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZNK7simdutf8westmere14implementation25convert_latin1_to_utf16beEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 !guid !1548 {
bb.a:
  %i.a = and i64 %2, -16                          ; 5 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = add i64 %2, -16                          ; 2 uses
  %i.c = lshr i64 %i.b, 4                         ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.019.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.o, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.019.i
  %i.g = load <16 x i8>, ptr %i.f, align 1        ; 2 uses
  %4 = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %5 = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15>
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.019.i ; 2 uses
  store <16 x i8> %4, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %5, ptr %i.i, align 1
  %i.j = or disjoint i64 %.019.i, 16              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load <16 x i8>, ptr %i.k, align 1        ; 2 uses
  %6 = shufflevector <16 x i8> %i.l, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %7 = shufflevector <16 x i8> %i.l, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15>
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.j ; 2 uses
  store <16 x i8> %6, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <16 x i8> %7, ptr %i.n, align 1
  %i.o = add nuw i64 %.019.i, 32                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1546

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.a
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.c, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.q = and i64 %i.b, 16
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.019.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.o, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.019.i.epil.init
  %i.s = load <16 x i8>, ptr %i.r, align 1        ; 2 uses
  %8 = shufflevector <16 x i8> %i.s, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %9 = shufflevector <16 x i8> %i.s, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15>
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.019.i.epil.init ; 2 uses
  store <16 x i8> %8, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %9, ptr %i.u, align 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread: ; preds = %.lr.ph.i.epil.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread.loopexit.unr-lcssa, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.a ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %.not = icmp samesign eq i64 %i.a, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread
  %i.y = and i64 %2, 15                           ; 2 uses
  %.not.i23 = icmp eq i64 %i.y, 0                 ; 2 uses
  br i1 %.not.i23, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.b
  %xtraiter29 = and i64 %2, 3                     ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, 4
  br i1 %i.z, label %.lr.ph.i24.epil.preheader, label %.lr.ph.i24.preheader.new

.lr.ph.i24.preheader.new:                         ; preds = %.lr.ph.i24.preheader
  %unroll_iter33 = and i64 %2, 12
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.i24.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i24.preheader.new ], [ %i.ax, %.lr.ph.i24 ] ; 5 uses
  %.01112.i = phi ptr [ %i.w, %.lr.ph.i24.preheader.new ], [ %i.aw, %.lr.ph.i24 ] ; 5 uses
  %niter34 = phi i64 [ 0, %.lr.ph.i24.preheader.new ], [ %niter34.next.3, %.lr.ph.i24 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.013.i
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = shl nuw i16 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01112.i, i64 2
  store i16 %i.ad, ptr %.01112.i, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.013.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01112.i, i64 4
  store i16 %i.aj, ptr %i.ae, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %.013.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i16
  %i.ap = shl nuw i16 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01112.i, i64 6
  store i16 %i.ap, ptr %i.ak, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %.013.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01112.i, i64 8 ; 3 uses
  store i16 %i.av, ptr %i.aq, align 2
  %i.ax = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa, label %.lr.ph.i24, !llvm.loop !41

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i24
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit, label %.lr.ph.i24.epil.preheader

.lr.ph.i24.epil.preheader:                        ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa, %.lr.ph.i24.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i24.preheader ], [ %i.ax, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %i.w, %.lr.ph.i24.preheader ], [ %i.aw, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i24.epil

.lr.ph.i24.epil:                                  ; preds = %.lr.ph.i24.epil, %.lr.ph.i24.epil.preheader
  %.013.i.epil = phi i64 [ %i.bd, %.lr.ph.i24.epil ], [ %.013.i.epil.init, %.lr.ph.i24.epil.preheader ] ; 2 uses
  %.01112.i.epil = phi ptr [ %i.bc, %.lr.ph.i24.epil ], [ %.01112.i.epil.init, %.lr.ph.i24.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i24.epil ], [ 0, %.lr.ph.i24.epil.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %.013.i.epil
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = shl nuw i16 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01112.i.epil, i64 2 ; 2 uses
  store i16 %i.bb, ptr %.01112.i.epil, align 2
  %i.bd = add nuw nsw i64 %.013.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter29
  br i1 %epil.iter.cmp.not, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit, label %.lr.ph.i24.epil, !llvm.loop !1547

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit: ; preds = %.lr.ph.i24.epil, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.aw, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.i24.epil ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit.loopexit ], [ %i.x, %bb.b ]
  %i.be = sub i64 %.pre-phi, %i.x
  %i.bf = ashr exact i64 %i.be, 1
  %i.bg = add nsw i64 %i.bf, %i.a
  %spec.select = select i1 %.not.i23, i64 0, i64 %i.bg
  br label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit ], [ %spec.select, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs.exit ], [ %2, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit.thread ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387903) i64 @_ZNK7simdutf8westmere14implementation23convert_latin1_to_utf32EPKcmPDi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 !guid !1555 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp sgt i64 %2, 15
  br i1 %i.c, label %.lr.ph.i.preheader, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = add nsw i64 %2, -16                      ; 2 uses
  %i.e = and i64 %i.d, 16
  %lcmp.mod.not.not = icmp eq i64 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.f = load <16 x i8>, ptr %1, align 1          ; 4 uses
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.h = zext <4 x i8> %i.g to <4 x i32>
  %i.i = shufflevector <16 x i8> %i.f, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.j = zext <4 x i8> %i.i to <4 x i32>
  %i.k = shufflevector <16 x i8> %i.f, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.l = zext <4 x i8> %i.k to <4 x i32>
  %i.m = shufflevector <16 x i8> %i.f, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.n = zext <4 x i8> %i.m to <4 x i32>
  store <4 x i32> %i.h, ptr %3, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %i.j, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x i32> %i.l, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> %i.n, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.022.i.unr = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.02021.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.lcssa45.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.lcssa44.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %i.t = icmp ult i64 %i.d, 16
  br i1 %i.t, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.022.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.022.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.02021.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.02021.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = load <16 x i8>, ptr %.02021.i, align 1   ; 4 uses
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = zext <4 x i8> %i.v to <4 x i32>
  %i.x = shufflevector <16 x i8> %i.u, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.y = zext <4 x i8> %i.x to <4 x i32>
  %i.z = shufflevector <16 x i8> %i.u, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.aa = zext <4 x i8> %i.z to <4 x i32>
  %i.ab = shufflevector <16 x i8> %i.u, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.ac = zext <4 x i8> %i.ab to <4 x i32>
  store <4 x i32> %i.w, ptr %.022.i, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store <4 x i32> %i.y, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.022.i, i64 32
  store <4 x i32> %i.aa, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.022.i, i64 48
  store <4 x i32> %i.ac, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.022.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.02021.i, i64 16
  %i.ai = load <16 x i8>, ptr %i.ah, align 1      ; 4 uses
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ak = zext <4 x i8> %i.aj to <4 x i32>
  %i.al = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.am = zext <4 x i8> %i.al to <4 x i32>
  %i.an = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ao = zext <4 x i8> %i.an to <4 x i32>
  %i.ap = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.aq = zext <4 x i8> %i.ap to <4 x i32>
  store <4 x i32> %i.ak, ptr %i.ag, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i, i64 80
  store <4 x i32> %i.am, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.022.i, i64 96
  store <4 x i32> %i.ao, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.022.i, i64 112
  store <4 x i32> %i.aq, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.022.i, i64 128 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02021.i, i64 32 ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.b, %i.aw
  %i.ay = icmp sgt i64 %i.ax, 15
  br i1 %i.ay, label %.lr.ph.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread, !llvm.loop !1549

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit: ; preds = %bb.a
  %i.az = icmp eq ptr %1, null
  br i1 %i.az, label %bb.c, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit
  %.0.lcssa.i29 = phi ptr [ %3, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit ], [ %.lcssa45.unr, %.lr.ph.i.prol.loopexit ], [ %i.au, %.lr.ph.i ] ; 7 uses
  %.020.lcssa.i28 = phi ptr [ %1, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit ], [ %.lcssa44.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ] ; 6 uses
  %i.ba = ptrtoint ptr %.0.lcssa.i29 to i64       ; 3 uses
  %i.bb = ptrtoint ptr %3 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 2 uses
  %.not = icmp eq ptr %.020.lcssa.i28, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread
  %i.be = ptrtoint ptr %.020.lcssa.i28 to i64     ; 2 uses
  %i.bf = ptrtoint ptr %1 to i64                  ; 2 uses
  %.neg = sub i64 %i.bf, %i.be
  %i.bg = add i64 %.neg, %2                       ; 6 uses
  %.not.i = icmp eq i64 %i.bg, 0                  ; 2 uses
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.bg, 20
  br i1 %min.iters.check, label %.lr.ph.i23.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i23.preheader
  %i.bh = add i64 %2, %i.bf
  %i.bi = sub i64 %i.bh, %i.be
  %i.bj = shl i64 %i.bi, 2
  %i.bk = getelementptr i8, ptr %.0.lcssa.i29, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.020.lcssa.i28, i64 %i.bg
  %bound0 = icmp ult ptr %.0.lcssa.i29, %i.bl
  %bound1 = icmp ult ptr %.020.lcssa.i28, %i.bk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i23.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -8                      ; 4 uses
  %i.bm = shl i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %.0.lcssa.i29, i64 %i.bm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i29, i64 %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.020.lcssa.i28, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load = load <4 x i8>, ptr %i.bp, align 1, !alias.scope !1556
  %wide.load40 = load <4 x i8>, ptr %i.bq, align 1, !alias.scope !1556
  %i.br = zext <4 x i8> %wide.load to <4 x i32>
  %i.bs = zext <4 x i8> %wide.load40 to <4 x i32>
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.br, ptr %next.gep, align 4, !alias.scope !1557, !noalias !1556
  store <4 x i32> %i.bs, ptr %i.bt, align 4, !alias.scope !1557, !noalias !1556
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1553

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i23.preheader42

.lr.ph.i23.preheader42:                           ; preds = %vector.memcheck, %.lr.ph.i23.preheader, %middle.block
  %.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i23.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi ptr [ %.0.lcssa.i29, %vector.memcheck ], [ %.0.lcssa.i29, %.lr.ph.i23.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader42, %.lr.ph.i23
  %.011.i = phi i64 [ %i.bz, %.lr.ph.i23 ], [ %.011.i.ph, %.lr.ph.i23.preheader42 ] ; 2 uses
  %.0910.i = phi ptr [ %i.by, %.lr.ph.i23 ], [ %.0910.i.ph, %.lr.ph.i23.preheader42 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.020.lcssa.i28, i64 %.011.i
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4 ; 2 uses
  store i32 %i.bx, ptr %.0910.i, align 4
  %i.bz = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %i.bg
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, label %.lr.ph.i23, !llvm.loop !1554

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit: ; preds = %.lr.ph.i23, %middle.block
  %.lcssa = phi ptr [ %i.bn, %middle.block ], [ %i.by, %.lr.ph.i23 ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit.loopexit ], [ %i.ba, %bb.b ]
  %i.ca = sub i64 %.pre-phi, %i.ba
  %i.cb = ashr exact i64 %i.ca, 2
  %i.cc = add nsw i64 %i.cb, %i.bd
  %spec.select = select i1 %.not.i, i64 0, i64 %i.cc
  br label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit ], [ %spec.select, %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit ], [ %i.bd, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_latin1_to_utf32EPKcmPDi.exit.thread ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22convert_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #27 align 2 !guid !1561 {
bb.a:
  %.not256 = icmp eq i64 %2, 0
  br i1 %.not256, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059.i238 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.060.i237 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.060.i237
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.059.i238, %i.e         ; 2 uses
  %i.g = add i64 %.060.i237, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 16
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1558

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.060.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.060.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i246 = icmp ugt i64 %i.m, %2
  br i1 %.not.i246, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.eu, %.loopexit ], [ 64, %._crit_edge ]
  %.054.i249 = phi i64 [ %.458.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0248 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0247 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i249 ; 4 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph251
  store <2 x i64> %i.p, ptr %.0247, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0247, i64 16
  store <2 x i64> %i.r, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0247, i64 32
  store <2 x i64> %i.t, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0247, i64 48
  store <2 x i64> %i.v, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0247, i64 64
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph251
  %i.ah = bitcast <2 x i64> %i.p to <16 x i8>     ; 3 uses
  %4 = shufflevector <16 x i8> %i.ah, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.ai = bitcast <16 x i8> %4 to <8 x i16>
  %i.aj = lshr <8 x i16> %i.ai, splat (i16 4)
  %i.ak = bitcast <8 x i16> %i.aj to <16 x i8>
  %i.al = and <16 x i8> %i.ak, splat (i8 15)
  %i.am = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.al)
  %i.an = and <16 x i8> %4, splat (i8 15)
  %i.ao = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.an)
  %i.ap = bitcast <2 x i64> %i.p to <8 x i16>
  %i.aq = lshr <8 x i16> %i.ap, splat (i16 4)
  %i.ar = bitcast <8 x i16> %i.aq to <16 x i8>
  %i.as = and <16 x i8> %i.ar, splat (i8 15)
  %i.at = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.as)
  %i.au = and <16 x i8> %i.ao, %i.am
  %i.av = and <16 x i8> %i.au, %i.at
  %i.aw = bitcast <2 x i64> %i.r to <16 x i8>     ; 3 uses
  %i.ax = shufflevector <16 x i8> %i.ah, <16 x i8> %i.aw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ay = bitcast <16 x i8> %i.ax to <8 x i16>
  %i.az = lshr <8 x i16> %i.ay, splat (i16 4)
  %i.ba = bitcast <8 x i16> %i.az to <16 x i8>
  %i.bb = and <16 x i8> %i.ba, splat (i8 15)
  %i.bc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bb)
  %i.bd = and <16 x i8> %i.ax, splat (i8 15)
  %i.be = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bd)
  %i.bf = bitcast <2 x i64> %i.r to <8 x i16>
  %i.bg = lshr <8 x i16> %i.bf, splat (i16 4)
  %i.bh = bitcast <8 x i16> %i.bg to <16 x i8>
  %i.bi = and <16 x i8> %i.bh, splat (i8 15)
  %i.bj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bi)
  %i.bk = and <16 x i8> %i.be, %i.bc
  %i.bl = and <16 x i8> %i.bk, %i.bj
  %i.bm = or <16 x i8> %i.bl, %i.av
  %i.bn = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.bo = shufflevector <16 x i8> %i.aw, <16 x i8> %i.bn, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.bp = bitcast <16 x i8> %i.bo to <8 x i16>
  %i.bq = lshr <8 x i16> %i.bp, splat (i16 4)
  %i.br = bitcast <8 x i16> %i.bq to <16 x i8>
  %i.bs = and <16 x i8> %i.br, splat (i8 15)
  %i.bt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bs)
  %i.bu = and <16 x i8> %i.bo, splat (i8 15)
  %i.bv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bu)
  %i.bw = bitcast <2 x i64> %i.t to <8 x i16>
  %i.bx = lshr <8 x i16> %i.bw, splat (i16 4)
  %i.by = bitcast <8 x i16> %i.bx to <16 x i8>
  %i.bz = and <16 x i8> %i.by, splat (i8 15)
  %i.ca = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bz)
  %i.cb = and <16 x i8> %i.bv, %i.bt
  %i.cc = and <16 x i8> %i.cb, %i.ca
  %i.cd = or <16 x i8> %i.bm, %i.cc
  %i.ce = bitcast <2 x i64> %i.v to <16 x i8>
  %i.cf = shufflevector <16 x i8> %i.bn, <16 x i8> %i.ce, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.cg = bitcast <16 x i8> %i.cf to <8 x i16>
  %i.ch = lshr <8 x i16> %i.cg, splat (i16 4)
  %i.ci = bitcast <8 x i16> %i.ch to <16 x i8>
  %i.cj = and <16 x i8> %i.ci, splat (i8 15)
  %i.ck = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.cj)
  %i.cl = and <16 x i8> %i.cf, splat (i8 15)
  %i.cm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.cl)
  %i.cn = bitcast <2 x i64> %i.v to <8 x i16>
  %i.co = lshr <8 x i16> %i.cn, splat (i16 4)
  %i.cp = bitcast <8 x i16> %i.co to <16 x i8>
  %i.cq = and <16 x i8> %i.cp, splat (i8 15)
  %i.cr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cq)
  %i.cs = and <16 x i8> %i.cm, %i.ck
  %i.ct = and <16 x i8> %i.cs, %i.cr
  %i.cu = or <16 x i8> %i.cd, %i.ct
  %i.cv = bitcast <16 x i8> %i.cu to <2 x i64>
  %i.cw = or <2 x i64> %.sroa.0.0248, %i.cv       ; 2 uses
  %i.cx = icmp slt <16 x i8> %i.ah, splat (i8 -64)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = zext i16 %i.cy to i64                   ; 2 uses
  %i.da = and i64 %i.cz, 1
  %.not64.i = icmp eq i64 %i.da, 0
  br i1 %.not64.i, label %bb.d, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.d:                                             ; preds = %bb.c
  %i.db = add i64 %.054.i249, 52
  %i.dc = icmp ult i64 %.054.i249, -52
  br i1 %i.dc, label %.lr.ph243.preheader, label %.loopexit

.lr.ph243.preheader:                              ; preds = %bb.d
  %i.dd = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.de = bitcast <4 x i64> %i.dd to <32 x i8>
  %i.df = icmp slt <32 x i8> %i.de, splat (i8 -64)
  %i.dg = bitcast <32 x i1> %i.df to i32
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw i64 %i.dh, 32
  %i.dj = icmp slt <16 x i8> %i.aw, splat (i8 -64)
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %i.dl = zext i16 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 16
  %i.dn = or disjoint i64 %i.dm, %i.di
  %i.do = or disjoint i64 %i.dn, %i.cz
  %i.dp = xor i64 %i.do, -1
  %i.dq = lshr i64 %i.dp, 1
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.050.i241 = phi i64 [ %i.es, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.dq, %.lr.ph243.preheader ] ; 3 uses
  %.155.i240 = phi i64 [ %i.er, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.054.i249, %.lr.ph243.preheader ] ; 2 uses
  %.1239 = phi ptr [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0247, %.lr.ph243.preheader ] ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %.155.i240
  %.val = load <2 x i64>, ptr %i.dr, align 1      ; 2 uses
  %i.ds = icmp eq i64 %.050.i241, 4095
  br i1 %i.ds, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph243
  store <2 x i64> %.val, ptr %.1239, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.1239, i64 12
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.f:                                             ; preds = %.lr.ph243
  %i.du = and i64 %.050.i241, 4095
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 2             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp ugt i8 %i.dw, 63
  br i1 %i.dz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = zext nneg i8 %i.dw to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ea
  %i.ec = load <16 x i8>, ptr %i.eb, align 16
  %i.ed = bitcast <2 x i64> %.val to <16 x i8>
  %i.ee = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ed, <16 x i8> %i.ec) ; 2 uses
  %i.ef = bitcast <16 x i8> %i.ee to <2 x i64>
  %i.eg = and <2 x i64> %i.ef, splat (i64 35747867511423103)
  %i.eh = bitcast <16 x i8> %i.ee to <8 x i16>
  %i.ei = lshr <8 x i16> %i.eh, splat (i16 2)
  %i.ej = bitcast <8 x i16> %i.ei to <2 x i64>
  %i.ek = and <2 x i64> %i.ej, splat (i64 558454875139082176)
  %i.el = or <2 x i64> %i.ek, %i.eg
  %i.em = bitcast <2 x i64> %i.el to <8 x i16>
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.em, <8 x i16> poison)
  %i.eo = bitcast <16 x i8> %i.en to <2 x i64>
  %i.ep = extractelement <2 x i64> %i.eo, i64 0
  store i64 %i.ep, ptr %.1239, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.1239, i64 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4 = phi ptr [ %.1239, %bb.f ], [ %i.eq, %bb.g ]
  %.0.i = zext i8 %i.dy to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.e, %bb.h
  %.5 = phi ptr [ %i.dt, %bb.e ], [ %.4, %bb.h ]  ; 2 uses
  %.1.i = phi i64 [ 12, %bb.e ], [ %.0.i, %bb.h ] ; 2 uses
  %i.er = add i64 %.1.i, %.155.i240               ; 3 uses
  %i.es = lshr i64 %.050.i241, %.1.i
  %i.et = icmp ult i64 %i.er, %i.db
  br i1 %i.et, label %.lr.ph243, label %.loopexit, !llvm.loop !1559

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.ag, %bb.b ], [ %.0247, %bb.d ], [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0248, %bb.b ], [ %i.cw, %bb.d ], [ %i.cw, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.458.i = phi i64 [ %i.n, %bb.b ], [ %.054.i249, %bb.d ], [ %i.er, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.eu = add i64 %.458.i, 64                     ; 2 uses
  %i.ev = add i64 %i.l, %i.eu
  %.not.i = icmp ugt i64 %i.ev, %2
  br i1 %.not.i, label %._crit_edge252, label %.lr.ph251, !llvm.loop !1560

._crit_edge252:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 5 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.054.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.458.i, %.loopexit ] ; 3 uses
  %i.ew = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.ew, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge252
  %i.ex = icmp ult i64 %.054.i.lcssa, %2
  br i1 %i.ex, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i.lcssa ; 2 uses
  %i.ez = sub nuw i64 %2, %.054.i.lcssa           ; 3 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.j, %.backedge.i
  %.04778.i = phi i64 [ %.047.be.i, %.backedge.i ], [ 0, %bb.j ] ; 6 uses
  %.05077.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %.0.lcssa, %bb.j ] ; 20 uses
  %i.fa = add i64 %.04778.i, 16                   ; 2 uses
  %.not.i5 = icmp ugt i64 %i.fa, %i.ez
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.04778.i ; 17 uses
  br i1 %.not.i5, label %.lr.ph79..thread_crit_edge.i, label %bb.k

.lr.ph79..thread_crit_edge.i:                     ; preds = %.lr.ph79.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.k:                                             ; preds = %.lr.ph79.i
  %.0.copyload15.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.fb, align 1
  %i.fc = or i64 %.0.copyload.i, %.0.copyload15.i
  %i.fd = and i64 %i.fc, -9187201950435737472
  %i.fe = icmp eq i64 %i.fd, 0
  %i.ff = trunc i64 %.0.copyload15.i to i8        ; 2 uses
  br i1 %i.fe, label %.preheader.i, label %.thread.i
end_hunk_9
begin_hunk_10_@_ZNK7simdutf8westmere14implementation22convert_utf8_to_latin1EPKcmPc:bb.a

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  store i8 %i.ff, ptr %.05077.i, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.05077.i, i64 2
  store i8 %i.fj, ptr %i.fh, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.05077.i, i64 3
  store i8 %i.fm, ptr %i.fk, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.05077.i, i64 4
  store i8 %i.fp, ptr %i.fn, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.05077.i, i64 5
  store i8 %i.fs, ptr %i.fq, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.05077.i, i64 6
  store i8 %i.fv, ptr %i.ft, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.05077.i, i64 7
  store i8 %i.fy, ptr %i.fw, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.05077.i, i64 8
  store i8 %i.gb, ptr %i.fz, align 1
  %i.gd = load i8, ptr %i.fb, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.05077.i, i64 9
  store i8 %i.gd, ptr %i.gc, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.05077.i, i64 10
  store i8 %i.gg, ptr %i.ge, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.05077.i, i64 11
  store i8 %i.gj, ptr %i.gh, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.05077.i, i64 12
  store i8 %i.gm, ptr %i.gk, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.05077.i, i64 13
  store i8 %i.gp, ptr %i.gn, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.05077.i, i64 14
  store i8 %i.gs, ptr %i.gq, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.05077.i, i64 15
  store i8 %i.gv, ptr %i.gt, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.05077.i, i64 16
  store i8 %i.gy, ptr %i.gw, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.k, %.lr.ph79..thread_crit_edge.i
  %i.ha = phi i8 [ %.pre.i, %.lr.ph79..thread_crit_edge.i ], [ %i.ff, %bb.k ] ; 4 uses
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = icmp sgt i8 %i.ha, -1
  br i1 %i.hc, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.hd = and i32 %i.hb, 224
  %i.he = icmp eq i32 %i.hd, 192
  br i1 %i.he, label %bb.m, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.hf = add nuw i64 %.04778.i, 1                ; 2 uses
  %.not67.i = icmp ult i64 %i.hf, %i.ez
  br i1 %.not67.i, label %bb.n, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.n:                                             ; preds = %bb.m
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1             ; 2 uses
  %.not68.i = icmp slt i8 %i.hh, -64
  %i.hi = and i32 %i.hb, 30
  %or.cond.not.i = icmp eq i32 %i.hi, 2
  %or.cond.i = and i1 %or.cond.not.i, %.not68.i
  br i1 %or.cond.i, label %bb.o, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.o:                                             ; preds = %bb.n
  %i.hj = shl i8 %i.ha, 6
  %i.hk = and i8 %i.hh, 63
  %i.hl = or disjoint i8 %i.hk, %i.hj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i
  %.sink87.i = phi i8 [ %i.hl, %bb.o ], [ %i.ha, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.o ], [ 1, %.thread.i ]
  store i8 %.sink87.i, ptr %.05077.i, align 1
  %i.hm = add nuw i64 %.sink.i, %.04778.i
  %.656.i = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %.lr.ph.preheader.i, %.preheader.i
  %.050.be.i = phi ptr [ %.656.i, %bb.p ], [ %.05077.i, %.preheader.i ], [ %i.gz, %.lr.ph.preheader.i ] ; 3 uses
  %.047.be.i = phi i64 [ %i.hm, %bb.p ], [ %.04778.i, %.preheader.i ], [ %i.fa, %.lr.ph.preheader.i ] ; 2 uses
  %i.hn = icmp ult i64 %.047.be.i, %i.ez
  br i1 %i.hn, label %.lr.ph79.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit: ; preds = %.backedge.i
  %.not63.i = icmp eq ptr %.050.be.i, %.0.lcssa
  br i1 %.not63.i, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit
  %i.ho = ptrtoint ptr %.0.lcssa to i64
  %i.hp = ptrtoint ptr %.050.be.i to i64
  %i.hq = sub i64 %i.hp, %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.hq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.3 = phi ptr [ %i.hr, %bb.q ], [ %.0.lcssa, %bb.i ]
  %i.hs = ptrtoint ptr %.3 to i64
  %i.ht = ptrtoint ptr %3 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit: ; preds = %bb.c, %bb.l, %bb.n, %bb.m, %._crit_edge252, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit, %bb.r
  %.5.i = phi i64 [ 0, %bb.l ], [ 0, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit ], [ %i.hu, %bb.r ], [ 0, %._crit_edge252 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 !guid !1565 {
bb.a:
  %.not312 = icmp eq i64 %2, 0
  br i1 %.not312, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.061.i288 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.062.i287 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.062.i287
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.061.i288, %i.e         ; 2 uses
  %i.g = add i64 %.062.i287, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1562

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.062.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.062.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i297 = icmp ugt i64 %i.m, %2
  br i1 %.not.i297, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %._crit_edge, %.loopexit.thread
  %i.n = phi i64 [ %i.fl, %.loopexit.thread ], [ 64, %._crit_edge ]
  %i.o = phi i64 [ %i.fk, %.loopexit.thread ], [ 0, %._crit_edge ]
  %.0.i302 = phi i64 [ %.4.i, %.loopexit.thread ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0301 = phi <2 x i64> [ %.sroa.0.1, %.loopexit.thread ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0300 = phi ptr [ %.3, %.loopexit.thread ], [ %3, %._crit_edge ] ; 9 uses
  %.sroa.064.0299 = phi i32 [ %.sroa.064.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %.sroa.765.0298 = phi i64 [ %.sroa.765.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i302 ; 6 uses
  %i.q = load <2 x i64>, ptr %i.p, align 1        ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load <2 x i64>, ptr %i.r, align 1        ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load <2 x i64>, ptr %i.t, align 1        ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.w = load <2 x i64>, ptr %i.v, align 1        ; 4 uses
  %i.x = or <2 x i64> %i.s, %i.q
  %i.y = or <2 x i64> %i.x, %i.u
  %i.z = or <2 x i64> %i.y, %i.w
  %i.aa = bitcast <2 x i64> %i.z to <16 x i8>
  %i.ab = icmp slt <16 x i8> %i.aa, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph304
  store <2 x i64> %i.q, ptr %.0300, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0300, i64 16
  store <2 x i64> %i.s, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0300, i64 32
  store <2 x i64> %i.u, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0300, i64 48
  store <2 x i64> %i.w, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0300, i64 64
  br label %.loopexit.thread

bb.c:                                             ; preds = %.lr.ph304
  %i.ai = bitcast <2 x i64> %i.q to <16 x i8>     ; 3 uses
  %4 = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.aj = bitcast <16 x i8> %4 to <8 x i16>
  %i.ak = lshr <8 x i16> %i.aj, splat (i16 4)
  %i.al = bitcast <8 x i16> %i.ak to <16 x i8>
  %i.am = and <16 x i8> %i.al, splat (i8 15)
  %i.an = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.am)
  %i.ao = and <16 x i8> %4, splat (i8 15)
  %i.ap = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.ao)
  %i.aq = bitcast <2 x i64> %i.q to <8 x i16>
  %i.ar = lshr <8 x i16> %i.aq, splat (i16 4)
  %i.as = bitcast <8 x i16> %i.ar to <16 x i8>
  %i.at = and <16 x i8> %i.as, splat (i8 15)
  %i.au = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.at)
  %i.av = and <16 x i8> %i.ap, %i.an
  %i.aw = and <16 x i8> %i.av, %i.au
  %i.ax = bitcast <2 x i64> %i.s to <16 x i8>     ; 3 uses
  %i.ay = shufflevector <16 x i8> %i.ai, <16 x i8> %i.ax, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.az = bitcast <16 x i8> %i.ay to <8 x i16>
  %i.ba = lshr <8 x i16> %i.az, splat (i16 4)
  %i.bb = bitcast <8 x i16> %i.ba to <16 x i8>
  %i.bc = and <16 x i8> %i.bb, splat (i8 15)
  %i.bd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bc)
  %i.be = and <16 x i8> %i.ay, splat (i8 15)
  %i.bf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.be)
  %i.bg = bitcast <2 x i64> %i.s to <8 x i16>
  %i.bh = lshr <8 x i16> %i.bg, splat (i16 4)
  %i.bi = bitcast <8 x i16> %i.bh to <16 x i8>
  %i.bj = and <16 x i8> %i.bi, splat (i8 15)
  %i.bk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bj)
  %i.bl = and <16 x i8> %i.bf, %i.bd
  %i.bm = and <16 x i8> %i.bl, %i.bk
  %i.bn = or <16 x i8> %i.bm, %i.aw
  %i.bo = bitcast <2 x i64> %i.u to <16 x i8>     ; 3 uses
  %i.bp = shufflevector <16 x i8> %i.ax, <16 x i8> %i.bo, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.bq = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.br = lshr <8 x i16> %i.bq, splat (i16 4)
  %i.bs = bitcast <8 x i16> %i.br to <16 x i8>
  %i.bt = and <16 x i8> %i.bs, splat (i8 15)
  %i.bu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bt)
  %i.bv = and <16 x i8> %i.bp, splat (i8 15)
  %i.bw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bv)
  %i.bx = bitcast <2 x i64> %i.u to <8 x i16>
  %i.by = lshr <8 x i16> %i.bx, splat (i16 4)
  %i.bz = bitcast <8 x i16> %i.by to <16 x i8>
  %i.ca = and <16 x i8> %i.bz, splat (i8 15)
  %i.cb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ca)
  %i.cc = and <16 x i8> %i.bw, %i.bu
  %i.cd = and <16 x i8> %i.cc, %i.cb
  %i.ce = or <16 x i8> %i.bn, %i.cd
  %i.cf = bitcast <2 x i64> %i.w to <16 x i8>     ; 2 uses
  %i.cg = shufflevector <16 x i8> %i.bo, <16 x i8> %i.cf, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ch = bitcast <16 x i8> %i.cg to <8 x i16>
  %i.ci = lshr <8 x i16> %i.ch, splat (i16 4)
  %i.cj = bitcast <8 x i16> %i.ci to <16 x i8>
  %i.ck = and <16 x i8> %i.cj, splat (i8 15)
  %i.cl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.ck)
  %i.cm = and <16 x i8> %i.cg, splat (i8 15)
  %i.cn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.cm)
  %i.co = bitcast <2 x i64> %i.w to <8 x i16>
  %i.cp = lshr <8 x i16> %i.co, splat (i16 4)
  %i.cq = bitcast <8 x i16> %i.cp to <16 x i8>
  %i.cr = and <16 x i8> %i.cq, splat (i8 15)
  %i.cs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cr)
  %i.ct = and <16 x i8> %i.cn, %i.cl
  %i.cu = and <16 x i8> %i.ct, %i.cs
  %i.cv = or <16 x i8> %i.ce, %i.cu
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.cx = or <2 x i64> %.sroa.0.0301, %i.cw       ; 4 uses
  %i.cy = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.cx, <2 x i64> %i.cx)
  %.not = icmp eq i32 %i.cy, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.cz = add i64 %i.o, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.02566.i = phi i64 [ 0, %bb.d ], [ %i.dg, %bb.g ] ; 6 uses
  %i.da = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.p, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1             ; 2 uses
  %i.dd = icmp sgt i8 %i.dc, -65
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.de = icmp ne i64 %.02566.i, 0
  %i.df = icmp sgt i8 %i.dc, -1
  %or.cond.i = and i1 %i.de, %i.df
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.dg = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.dg, %.0.i302
  br i1 %.not.i5, label %bb.i, label %bb.e, !llvm.loop !23

bb.h:                                             ; preds = %bb.f
  %i.dh = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.i:                                             ; preds = %bb.g
  %i.di = sub i64 0, %.0.i302
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.j:                                             ; preds = %bb.f
  %i.dj = getelementptr inbounds i8, ptr %i.p, i64 %i.da
  %i.dk = add i64 %i.cz, %.02566.i
  %i.dl = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.dj, i64 noundef %i.dk, ptr noundef %.0300) ; 2 uses
  %i.dm = extractvalue { i32, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dl, 1
  %.not33.i = icmp eq i32 %i.dm, 0
  %i.do = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.dn, %i.do
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.di, %bb.i ], [ %i.dh, %bb.h ]
  %.sroa.0.3.i = phi i32 [ %i.dm, %bb.j ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.dp = add i64 %.sroa.4.3.i, %.0.i302
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %i.dq = add i64 %.0.i302, 52
  %i.dr = icmp ult i64 %.0.i302, -52
  br i1 %i.dr, label %.lr.ph293.preheader, label %.loopexit.thread

.lr.ph293.preheader:                              ; preds = %bb.k
  %i.ds = icmp slt <16 x i8> %i.ax, splat (i8 -64)
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %i.du = icmp slt <16 x i8> %i.ai, splat (i8 -64)
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = icmp slt <16 x i8> %i.bo, splat (i8 -64)
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = icmp slt <16 x i8> %i.cf, splat (i8 -64)
  %i.dz = bitcast <16 x i1> %i.dy to i16
  %i.ea = insertelement <4 x i16> poison, i16 %i.dv, i64 0
  %i.eb = insertelement <4 x i16> %i.ea, i16 %i.dt, i64 1
  %i.ec = insertelement <4 x i16> %i.eb, i16 %i.dx, i64 2
  %i.ed = insertelement <4 x i16> %i.ec, i16 %i.dz, i64 3
  %i.ee = bitcast <4 x i16> %i.ed to i64
  %i.ef = xor i64 %i.ee, -1
  %i.eg = lshr i64 %i.ef, 1
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i291 = phi i64 [ %i.fh, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i302, %.lr.ph293.preheader ] ; 2 uses
  %.058.i290 = phi i64 [ %i.fi, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.eg, %.lr.ph293.preheader ] ; 3 uses
  %.1289 = phi ptr [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0300, %.lr.ph293.preheader ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i291
  %.val = load <2 x i64>, ptr %i.eh, align 1      ; 2 uses
  %i.ei = icmp eq i64 %.058.i290, 4095
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph293
  store <2 x i64> %.val, ptr %.1289, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.1289, i64 12
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.m:                                             ; preds = %.lr.ph293
  %i.ek = and i64 %.058.i290, 4095
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.ek ; 2 uses
  %i.em = load i8, ptr %i.el, align 2             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = icmp ugt i8 %i.em, 63
  br i1 %i.ep, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eq = zext nneg i8 %i.em to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.eq
  %i.es = load <16 x i8>, ptr %i.er, align 16
  %i.et = bitcast <2 x i64> %.val to <16 x i8>
  %i.eu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.et, <16 x i8> %i.es) ; 2 uses
  %i.ev = bitcast <16 x i8> %i.eu to <2 x i64>
  %i.ew = and <2 x i64> %i.ev, splat (i64 35747867511423103)
  %i.ex = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.ey = lshr <8 x i16> %i.ex, splat (i16 2)
  %i.ez = bitcast <8 x i16> %i.ey to <2 x i64>
  %i.fa = and <2 x i64> %i.ez, splat (i64 558454875139082176)
  %i.fb = or <2 x i64> %i.fa, %i.ew
  %i.fc = bitcast <2 x i64> %i.fb to <8 x i16>
  %i.fd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fc, <8 x i16> poison)
  %i.fe = bitcast <16 x i8> %i.fd to <2 x i64>
  %i.ff = extractelement <2 x i64> %i.fe, i64 0
  store i64 %i.ff, ptr %.1289, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.1289, i64 6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi ptr [ %.1289, %bb.m ], [ %i.fg, %bb.n ]
  %.0.i8 = zext i8 %i.eo to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.l, %bb.o
  %.6 = phi ptr [ %i.ej, %bb.l ], [ %.5, %bb.o ]  ; 2 uses
  %.1.i9 = phi i64 [ 12, %bb.l ], [ %.0.i8, %bb.o ] ; 2 uses
  %i.fh = add i64 %.1.i9, %.1.i291                ; 3 uses
  %i.fi = lshr i64 %.058.i290, %.1.i9
  %i.fj = icmp ult i64 %i.fh, %i.dq
  br i1 %i.fj, label %.lr.ph293, label %.loopexit, !llvm.loop !1563

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit
end_hunk_10
begin_hunk_11_@_ZNK7simdutf8westmere14implementation28convert_valid_utf8_to_latin1EPKcmPc:bb.a
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.04774.i, i64 5
  store i8 %i.dc, ptr %i.da, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.04774.i, i64 6
  store i8 %i.df, ptr %i.dd, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.04774.i, i64 7
  store i8 %i.di, ptr %i.dg, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.04774.i, i64 8
  store i8 %i.dl, ptr %i.dj, align 1
  %i.dn = load i8, ptr %i.cl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.04774.i, i64 9
  store i8 %i.dn, ptr %i.dm, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.04774.i, i64 10
  store i8 %i.dq, ptr %i.do, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.04774.i, i64 11
  store i8 %i.dt, ptr %i.dr, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.04774.i, i64 12
  store i8 %i.dw, ptr %i.du, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.04774.i, i64 13
  store i8 %i.dz, ptr %i.dx, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.04774.i, i64 14
  store i8 %i.ec, ptr %i.ea, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.04774.i, i64 15
  store i8 %i.ef, ptr %i.ed, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.04774.i, i64 16
  store i8 %i.ei, ptr %i.eg, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.i, %.lr.ph76..thread_crit_edge.i
  %i.ek = phi i8 [ %.pre.i, %.lr.ph76..thread_crit_edge.i ], [ %i.cp, %bb.i ] ; 4 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.em = and i8 %i.ek, -32
  %i.en = icmp eq i8 %i.em, -64
  br i1 %i.en, label %bb.k, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.k:                                             ; preds = %bb.j
  %i.eo = add nuw i64 %.04475.i, 1                ; 2 uses
  %.not57.i = icmp ult i64 %i.eo, %i.cj
  br i1 %.not57.i, label %bb.l, label %.thread66.i

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %.not58.i = icmp slt i8 %i.eq, -64
  br i1 %.not58.i, label %bb.m, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.er = shl i8 %i.ek, 6
  %i.es = and i8 %i.eq, 63
  %i.et = or disjoint i8 %i.es, %i.er
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %.sink86.i = phi i8 [ %i.et, %bb.m ], [ %i.ek, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.m ], [ 1, %.thread.i ]
  store i8 %.sink86.i, ptr %.04774.i, align 1
  %i.eu = add nuw i64 %.sink.i, %.04475.i
  %.451.i = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.n, %.lr.ph.preheader.i, %.preheader.i
  %.047.be.i = phi ptr [ %.451.i, %bb.n ], [ %.04774.i, %.preheader.i ], [ %i.ej, %.lr.ph.preheader.i ] ; 2 uses
  %.044.be.i = phi i64 [ %i.eu, %bb.n ], [ %.04475.i, %.preheader.i ], [ %i.ck, %.lr.ph.preheader.i ] ; 2 uses
  %i.ev = icmp ult i64 %.044.be.i, %i.cj
  br i1 %i.ev, label %.lr.ph76.i, label %.thread66.i

.thread66.i:                                      ; preds = %.backedge.i, %bb.k
  %.047.lcssa.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.04774.i, %bb.k ]
  %i.ew = ptrtoint ptr %.047.lcssa.i to i64
  %i.ex = ptrtoint ptr %.0.lcssa to i64
  %i.ey = sub i64 %i.ew, %i.ex
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %bb.j, %bb.l, %.thread66.i
  %.2.i5 = phi i64 [ %i.ey, %.thread66.i ], [ 0, %bb.l ], [ 0, %bb.j ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.2.i5
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %._crit_edge59, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit
  %.3 = phi ptr [ %i.ez, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit ], [ %.0.lcssa, %._crit_edge59 ]
  %i.fa = ptrtoint ptr %.3 to i64
  %i.fb = ptrtoint ptr %3 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  ret i64 %i.fc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf8westmere14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 !guid !1573 {
bb.a:
  %.not396 = icmp eq i64 %2, 0
  br i1 %.not396, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059.i378 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.060.i377 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.060.i377
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.059.i378, %i.e         ; 2 uses
  %i.g = add i64 %.060.i377, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1570

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.060.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.060.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i386 = icmp ugt i64 %i.m, %2
  br i1 %.not.i386, label %._crit_edge392, label %.lr.ph391

.lr.ph391:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.kb, %.loopexit ], [ 64, %._crit_edge ]
  %.054.i389 = phi i64 [ %.458.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0388 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0387 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i389 ; 4 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 9 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph391
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  %i.ag = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  store <8 x i16> %i.af, ptr %.0387, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0387, i64 16
  store <8 x i16> %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0387, i64 32
  %i.ak = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = zext <8 x i8> %i.al to <8 x i16>
  %i.an = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = zext <8 x i8> %i.an to <8 x i16>
  store <8 x i16> %i.am, ptr %i.aj, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0387, i64 48
  store <8 x i16> %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0387, i64 64
  %i.ar = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = zext <8 x i8> %i.as to <8 x i16>
  %i.au = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = zext <8 x i8> %i.au to <8 x i16>
  store <8 x i16> %i.at, ptr %i.aq, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0387, i64 80
  store <8 x i16> %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0387, i64 96
  %i.ay = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = zext <8 x i8> %i.az to <8 x i16>
  %i.bb = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = zext <8 x i8> %i.bb to <8 x i16>
  store <8 x i16> %i.ba, ptr %i.ax, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0387, i64 112
  store <8 x i16> %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0387, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph391
  %4 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bf = bitcast <16 x i8> %4 to <8 x i16>
  %i.bg = lshr <8 x i16> %i.bf, splat (i16 4)
  %i.bh = bitcast <8 x i16> %i.bg to <16 x i8>
  %i.bi = and <16 x i8> %i.bh, splat (i8 15)
  %i.bj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.bi)
  %i.bk = and <16 x i8> %4, splat (i8 15)
  %i.bl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.bk)
  %i.bm = bitcast <2 x i64> %i.p to <8 x i16>
  %i.bn = lshr <8 x i16> %i.bm, splat (i16 4)
  %i.bo = bitcast <8 x i16> %i.bn to <16 x i8>
  %i.bp = and <16 x i8> %i.bo, splat (i8 15)
  %i.bq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bp)
  %i.br = and <16 x i8> %i.bl, %i.bj
  %i.bs = and <16 x i8> %i.br, %i.bq
  %5 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %6 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i32> <i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.bt = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %5, <16 x i8> splat (i8 96))
  %i.bu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %6, <16 x i8> splat (i8 112))
  %i.bv = or <16 x i8> %i.bt, %i.bu
  %.inner409 = and <16 x i8> %i.bv, splat (i8 -128)
  %.inner410 = xor <16 x i8> %.inner409, %i.bs
  %i.bw = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.bx = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.by = bitcast <16 x i8> %i.bx to <8 x i16>
  %i.bz = lshr <8 x i16> %i.by, splat (i16 4)
  %i.ca = bitcast <8 x i16> %i.bz to <16 x i8>
  %i.cb = and <16 x i8> %i.ca, splat (i8 15)
  %i.cc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cb)
  %i.cd = and <16 x i8> %i.bx, splat (i8 15)
  %i.ce = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cd)
  %i.cf = bitcast <2 x i64> %i.r to <8 x i16>
  %i.cg = lshr <8 x i16> %i.cf, splat (i16 4)
  %i.ch = bitcast <8 x i16> %i.cg to <16 x i8>
  %i.ci = and <16 x i8> %i.ch, splat (i8 15)
  %i.cj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ci)
  %i.ck = and <16 x i8> %i.ce, %i.cc
  %i.cl = and <16 x i8> %i.ck, %i.cj
  %i.cm = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.cn = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bw, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.co = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cm, <16 x i8> splat (i8 96))
  %i.cp = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cn, <16 x i8> splat (i8 112))
  %i.cq = or <16 x i8> %i.co, %i.cp
  %.inner413 = and <16 x i8> %i.cq, splat (i8 -128)
  %.inner414 = xor <16 x i8> %.inner413, %i.cl
  %i.cr = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.cs = shufflevector <16 x i8> %i.bw, <16 x i8> %i.cr, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ct = bitcast <16 x i8> %i.cs to <8 x i16>
  %i.cu = lshr <8 x i16> %i.ct, splat (i16 4)
  %i.cv = bitcast <8 x i16> %i.cu to <16 x i8>
  %i.cw = and <16 x i8> %i.cv, splat (i8 15)
  %i.cx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cw)
  %i.cy = and <16 x i8> %i.cs, splat (i8 15)
  %i.cz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cy)
  %i.da = bitcast <2 x i64> %i.t to <8 x i16>
  %i.db = lshr <8 x i16> %i.da, splat (i16 4)
  %i.dc = bitcast <8 x i16> %i.db to <16 x i8>
  %i.dd = and <16 x i8> %i.dc, splat (i8 15)
  %i.de = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dd)
  %i.df = and <16 x i8> %i.cz, %i.cx
  %i.dg = and <16 x i8> %i.df, %i.de
  %i.dh = shufflevector <16 x i8> %i.bw, <16 x i8> %i.cr, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.di = shufflevector <16 x i8> %i.bw, <16 x i8> %i.cr, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dj = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dh, <16 x i8> splat (i8 96))
  %i.dk = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.di, <16 x i8> splat (i8 112))
  %i.dl = or <16 x i8> %i.dj, %i.dk
  %.inner417 = and <16 x i8> %i.dl, splat (i8 -128)
  %.inner418 = xor <16 x i8> %.inner417, %i.dg
  %i.dm = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.dn = shufflevector <16 x i8> %i.cr, <16 x i8> %i.dm, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.do = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.dp = lshr <8 x i16> %i.do, splat (i16 4)
  %i.dq = bitcast <8 x i16> %i.dp to <16 x i8>
  %i.dr = and <16 x i8> %i.dq, splat (i8 15)
  %i.ds = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.dr)
  %i.dt = and <16 x i8> %i.dn, splat (i8 15)
  %i.du = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dt)
  %i.dv = bitcast <2 x i64> %i.v to <8 x i16>
  %i.dw = lshr <8 x i16> %i.dv, splat (i16 4)
  %i.dx = bitcast <8 x i16> %i.dw to <16 x i8>
  %i.dy = and <16 x i8> %i.dx, splat (i8 15)
  %i.dz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dy)
  %i.ea = and <16 x i8> %i.du, %i.ds
  %i.eb = and <16 x i8> %i.ea, %i.dz
  %i.ec = shufflevector <16 x i8> %i.cr, <16 x i8> %i.dm, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ed = shufflevector <16 x i8> %i.cr, <16 x i8> %i.dm, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.ee = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ec, <16 x i8> splat (i8 96))
  %i.ef = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ed, <16 x i8> splat (i8 112))
  %i.eg = or <16 x i8> %i.ee, %i.ef
  %.inner421 = and <16 x i8> %i.eg, splat (i8 -128)
  %.inner422 = xor <16 x i8> %.inner421, %i.eb
  %.inner423 = or <16 x i8> %.inner410, %.inner414
  %.inner424 = or <16 x i8> %.inner423, %.inner418
  %.inner425 = or <16 x i8> %.inner424, %.inner422
  %i.eh = bitcast <16 x i8> %.inner425 to <2 x i64>
  %i.ei = or <2 x i64> %.sroa.0.0388, %i.eh       ; 2 uses
  %i.ej = icmp slt <16 x i8> %i.ad, splat (i8 -64)
  %i.ek = bitcast <16 x i1> %i.ej to i16
  %i.el = zext i16 %i.ek to i64                   ; 2 uses
  %i.em = and i64 %i.el, 1
  %.not64.i = icmp eq i64 %i.em, 0
  br i1 %.not64.i, label %bb.d, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit

bb.d:                                             ; preds = %bb.c
  %i.en = add i64 %.054.i389, 52
  %i.eo = icmp ult i64 %.054.i389, -52
  br i1 %i.eo, label %.lr.ph383.preheader, label %.loopexit

.lr.ph383.preheader:                              ; preds = %bb.d
  %i.ep = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eq = bitcast <4 x i64> %i.ep to <32 x i8>
  %i.er = icmp slt <32 x i8> %i.eq, splat (i8 -64)
  %i.es = bitcast <32 x i1> %i.er to i32
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw i64 %i.et, 32
  %i.ev = icmp slt <16 x i8> %i.bw, splat (i8 -64)
  %i.ew = bitcast <16 x i1> %i.ev to i16
  %i.ex = zext i16 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 16
  %i.ez = or disjoint i64 %i.ey, %i.eu
  %i.fa = or disjoint i64 %i.ez, %i.el
  %i.fb = xor i64 %i.fa, -1
  %i.fc = lshr i64 %i.fb, 1
  br label %.lr.ph383

.lr.ph383:                                        ; preds = %.lr.ph383.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit
  %.050.i381 = phi i64 [ %i.jz, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %i.fc, %.lr.ph383.preheader ] ; 4 uses
  %.155.i380 = phi i64 [ %i.jy, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.054.i389, %.lr.ph383.preheader ] ; 2 uses
  %.1379 = phi ptr [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.0387, %.lr.ph383.preheader ] ; 15 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %.155.i380
  %.val = load <2 x i64>, ptr %i.fd, align 1      ; 6 uses
  %i.fe = icmp eq i64 %.050.i381, 4095
  br i1 %i.fe, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph383
  %i.ff = bitcast <2 x i64> %.val to <16 x i8>    ; 2 uses
  %i.fg = shufflevector <16 x i8> %i.ff, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fh = zext <8 x i8> %i.fg to <8 x i16>
  %i.fi = shufflevector <16 x i8> %i.ff, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fj = zext <8 x i8> %i.fi to <8 x i16>
  store <8 x i16> %i.fh, ptr %.1379, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.1379, i64 16
  store <8 x i16> %i.fj, ptr %i.fk, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.1379, i64 24
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.f:                                             ; preds = %.lr.ph383
  %i.fm = and i64 %.050.i381, 65535
  %i.fn = icmp eq i64 %i.fm, 43690
  br i1 %i.fn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fo = bitcast <2 x i64> %.val to <16 x i8>
  %i.fp = shufflevector <16 x i8> %i.fo, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.fq = bitcast <16 x i8> %i.fp to <2 x i64>
  %i.fr = and <2 x i64> %i.fq, splat (i64 35747867511423103)
  %i.fs = bitcast <16 x i8> %i.fp to <8 x i16>
  %i.ft = lshr <8 x i16> %i.fs, splat (i16 2)
  %i.fu = bitcast <8 x i16> %i.ft to <2 x i64>
  %i.fv = and <2 x i64> %i.fu, splat (i64 558454875139082176)
  %i.fw = or <2 x i64> %i.fv, %i.fr
  store <2 x i64> %i.fw, ptr %.1379, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.1379, i64 16
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.fy = and i64 %.050.i381, 4095                ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 2340
  br i1 %i.fz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ga = bitcast <2 x i64> %.val to <16 x i8>
  %i.gb = shufflevector <16 x i8> %i.ga, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.gc = bitcast <16 x i8> %i.gb to <2 x i64>
  %i.gd = and <2 x i64> %i.gc, splat (i64 545460846719)
  %i.ge = bitcast <16 x i8> %i.gb to <4 x i32>    ; 2 uses
  %i.gf = lshr <4 x i32> %i.ge, splat (i32 2)
  %i.gg = bitcast <4 x i32> %i.gf to <2 x i64>
  %i.gh = and <2 x i64> %i.gg, splat (i64 17317308141504)
  %i.gi = lshr <4 x i32> %i.ge, splat (i32 4)
  %i.gj = bitcast <4 x i32> %i.gi to <2 x i64>
  %i.gk = and <2 x i64> %i.gj, splat (i64 263882790727680)
  %i.gl = or <2 x i64> %i.gh, %i.gd
  %i.gm = or disjoint <2 x i64> %i.gl, %i.gk
  %i.gn = bitcast <2 x i64> %i.gm to <4 x i32>    ; 2 uses
  %i.go = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gn, <4 x i32> %i.gn)
  store <8 x i16> %i.go, ptr %.1379, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.1379, i64 8
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.j:                                             ; preds = %bb.h
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.fy ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 2             ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = icmp ult i8 %i.gr, 64
  br i1 %i.gu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gv = zext nneg i8 %i.gr to i64
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.gv
  %i.gx = load <16 x i8>, ptr %i.gw, align 16
  %i.gy = bitcast <2 x i64> %.val to <16 x i8>
  %i.gz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.gy, <16 x i8> %i.gx) ; 2 uses
  %i.ha = bitcast <16 x i8> %i.gz to <2 x i64>
  %i.hb = and <2 x i64> %i.ha, splat (i64 35747867511423103)
  %i.hc = bitcast <16 x i8> %i.gz to <8 x i16>
  %i.hd = lshr <8 x i16> %i.hc, splat (i16 2)
  %i.he = bitcast <8 x i16> %i.hd to <2 x i64>
  %i.hf = and <2 x i64> %i.he, splat (i64 558454875139082176)
  %i.hg = or <2 x i64> %i.hf, %i.hb
  store <2 x i64> %i.hg, ptr %.1379, align 1
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.hh = icmp ult i8 %i.gr, -111
  br i1 %i.hh, label %bb.m, label %bb.n
end_hunk_11
begin_hunk_12_@_ZNK7simdutf8westmere14implementation23convert_utf8_to_utf16leEPKcmPDs:bb.a

bb.t:                                             ; preds = %bb.r
  %i.jn = bitcast <4 x i32> %.inner444 to <8 x i16> ; 2 uses
  %i.jo = extractelement <8 x i16> %i.jn, i64 2
  %i.jp = extractelement <8 x i16> %i.jn, i64 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  store i16 %i.jp, ptr %i.jq, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink398 = phi i16 [ %i.jo, %bb.t ], [ %i.jm, %bb.s ]
  %.sink8.i = phi i64 [ 4, %bb.t ], [ 2, %bb.s ]
  store i16 %.sink398, ptr %i.jk, align 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sink8.i ; 4 uses
  %.sroa.03.8.vec.extract.i = extractelement <4 x i32> %i.ja, i64 2 ; 2 uses
  %i.js = icmp samesign ugt i32 %.sroa.03.8.vec.extract.i, 62914560
  br i1 %i.js, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jt = trunc i32 %.sroa.03.8.vec.extract.i to i16
  store i16 %i.jt, ptr %i.jr, align 2
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.ju = bitcast <4 x i32> %.inner444 to <8 x i16>
  %i.jv = shufflevector <8 x i16> %i.ju, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.jv, ptr %i.jr, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %bb.m, %bb.k
  %.5 = phi ptr [ %.1379, %bb.k ], [ %.1379, %bb.m ], [ %i.jr, %bb.w ], [ %i.jr, %bb.v ]
  %.sink11.i = phi i64 [ 12, %bb.k ], [ 8, %bb.m ], [ 4, %bb.w ], [ 2, %bb.v ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink11.i
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.n
  %.4 = phi ptr [ %i.jw, %.sink.split.i ], [ %.1379, %bb.n ]
  %i.jx = zext i8 %i.gt to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.x
  %.6 = phi ptr [ %i.fl, %bb.e ], [ %i.fx, %bb.g ], [ %i.gp, %bb.i ], [ %.4, %bb.x ] ; 2 uses
  %.0104.i = phi i64 [ 12, %bb.e ], [ 16, %bb.g ], [ 12, %bb.i ], [ %i.jx, %bb.x ] ; 2 uses
  %i.jy = add i64 %.0104.i, %.155.i380            ; 3 uses
  %i.jz = lshr i64 %.050.i381, %.0104.i
  %i.ka = icmp ult i64 %i.jy, %i.en
  br i1 %i.ka, label %.lr.ph383, label %.loopexit, !llvm.loop !1571

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.be, %bb.b ], [ %.0387, %bb.d ], [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0388, %bb.b ], [ %i.ei, %bb.d ], [ %i.ei, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.458.i = phi i64 [ %i.n, %bb.b ], [ %.054.i389, %bb.d ], [ %i.jy, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 3 uses
  %i.kb = add i64 %.458.i, 64                     ; 2 uses
  %i.kc = add i64 %i.l, %i.kb
  %.not.i = icmp ugt i64 %i.kc, %2
  br i1 %.not.i, label %._crit_edge392, label %.lr.ph391, !llvm.loop !1572

._crit_edge392:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.054.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.458.i, %.loopexit ] ; 3 uses
  %i.kd = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.kd, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge392
  %i.ke = icmp ult i64 %.054.i.lcssa, %2
  br i1 %i.ke, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i.lcssa
  %i.kg = sub nuw i64 %2, %.054.i.lcssa
  %i.kh = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs(ptr noundef %i.kf, i64 noundef %i.kg, ptr noundef %.0.lcssa) ; 2 uses
  %.not63.i = icmp eq i64 %i.kh, 0
  br i1 %.not63.i, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %i.kh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.3 = phi ptr [ %i.ki, %bb.aa ], [ %.0.lcssa, %bb.y ]
  %i.kj = ptrtoint ptr %.3 to i64
  %i.kk = ptrtoint ptr %3 to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = ashr exact i64 %i.kl, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit: ; preds = %bb.c, %._crit_edge392, %bb.z, %bb.ab
  %.5.i = phi i64 [ 0, %._crit_edge392 ], [ 0, %bb.z ], [ %i.km, %bb.ab ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf8westmere14implementation23convert_utf8_to_utf16beEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 !guid !1577 {
bb.a:
  %.not395 = icmp eq i64 %2, 0
  br i1 %.not395, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059.i377 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.060.i376 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.060.i376
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.059.i377, %i.e         ; 2 uses
  %i.g = add i64 %.060.i376, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1574

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.060.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.060.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i385 = icmp ugt i64 %i.m, %2
  br i1 %.not.i385, label %._crit_edge391, label %.lr.ph390

.lr.ph390:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.lm, %.loopexit ], [ 64, %._crit_edge ]
  %.054.i388 = phi i64 [ %.458.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0387 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0386 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i388 ; 4 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 9 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph390
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  %i.ag = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  %i.ai = bitcast <8 x i16> %i.af to <16 x i8>
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.ak = bitcast <8 x i16> %i.ah to <16 x i8>
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.aj, ptr %.0386, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0386, i64 16
  store <16 x i8> %i.al, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0386, i64 32
  %i.ao = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = zext <8 x i8> %i.ap to <8 x i16>
  %i.ar = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.as = zext <8 x i8> %i.ar to <8 x i16>
  %i.at = bitcast <8 x i16> %i.aq to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.av = bitcast <8 x i16> %i.as to <16 x i8>
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.au, ptr %i.an, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0386, i64 48
  store <16 x i8> %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0386, i64 64
  %i.az = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bb = zext <8 x i8> %i.ba to <8 x i16>
  %i.bc = shufflevector <16 x i8> %i.az, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = zext <8 x i8> %i.bc to <8 x i16>
  %i.be = bitcast <8 x i16> %i.bb to <16 x i8>
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.bg = bitcast <8 x i16> %i.bd to <16 x i8>
  %i.bh = shufflevector <16 x i8> %i.bg, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.bf, ptr %i.ay, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.0386, i64 80
  store <16 x i8> %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0386, i64 96
  %i.bk = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = zext <8 x i8> %i.bl to <8 x i16>
  %i.bn = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = zext <8 x i8> %i.bn to <8 x i16>
  %i.bp = bitcast <8 x i16> %i.bm to <16 x i8>
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.br = bitcast <8 x i16> %i.bo to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.bq, ptr %i.bj, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0386, i64 112
  store <16 x i8> %i.bs, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0386, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph390
  %4 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bv = bitcast <16 x i8> %4 to <8 x i16>
  %i.bw = lshr <8 x i16> %i.bv, splat (i16 4)
  %i.bx = bitcast <8 x i16> %i.bw to <16 x i8>
  %i.by = and <16 x i8> %i.bx, splat (i8 15)
  %i.bz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.by)
  %i.ca = and <16 x i8> %4, splat (i8 15)
  %i.cb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ca)
  %i.cc = bitcast <2 x i64> %i.p to <8 x i16>
  %i.cd = lshr <8 x i16> %i.cc, splat (i16 4)
  %i.ce = bitcast <8 x i16> %i.cd to <16 x i8>
  %i.cf = and <16 x i8> %i.ce, splat (i8 15)
  %i.cg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cf)
  %i.ch = and <16 x i8> %i.cb, %i.bz
  %i.ci = and <16 x i8> %i.ch, %i.cg
  %5 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %6 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i32> <i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.cj = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %5, <16 x i8> splat (i8 96))
  %i.ck = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %6, <16 x i8> splat (i8 112))
  %i.cl = or <16 x i8> %i.cj, %i.ck
  %.inner408 = and <16 x i8> %i.cl, splat (i8 -128)
  %.inner409 = xor <16 x i8> %.inner408, %i.ci
  %i.cm = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.cn = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cm, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.co = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.cp = lshr <8 x i16> %i.co, splat (i16 4)
  %i.cq = bitcast <8 x i16> %i.cp to <16 x i8>
  %i.cr = and <16 x i8> %i.cq, splat (i8 15)
  %i.cs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cr)
  %i.ct = and <16 x i8> %i.cn, splat (i8 15)
  %i.cu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ct)
  %i.cv = bitcast <2 x i64> %i.r to <8 x i16>
  %i.cw = lshr <8 x i16> %i.cv, splat (i16 4)
  %i.cx = bitcast <8 x i16> %i.cw to <16 x i8>
  %i.cy = and <16 x i8> %i.cx, splat (i8 15)
  %i.cz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cy)
  %i.da = and <16 x i8> %i.cu, %i.cs
  %i.db = and <16 x i8> %i.da, %i.cz
  %i.dc = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cm, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dd = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cm, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.de = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dc, <16 x i8> splat (i8 96))
  %i.df = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dd, <16 x i8> splat (i8 112))
  %i.dg = or <16 x i8> %i.de, %i.df
  %.inner412 = and <16 x i8> %i.dg, splat (i8 -128)
  %.inner413 = xor <16 x i8> %.inner412, %i.db
  %i.dh = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.di = shufflevector <16 x i8> %i.cm, <16 x i8> %i.dh, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dj = bitcast <16 x i8> %i.di to <8 x i16>
  %i.dk = lshr <8 x i16> %i.dj, splat (i16 4)
  %i.dl = bitcast <8 x i16> %i.dk to <16 x i8>
  %i.dm = and <16 x i8> %i.dl, splat (i8 15)
  %i.dn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.dm)
  %i.do = and <16 x i8> %i.di, splat (i8 15)
  %i.dp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.do)
  %i.dq = bitcast <2 x i64> %i.t to <8 x i16>
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 4)
  %i.ds = bitcast <8 x i16> %i.dr to <16 x i8>
  %i.dt = and <16 x i8> %i.ds, splat (i8 15)
  %i.du = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dt)
  %i.dv = and <16 x i8> %i.dp, %i.dn
  %i.dw = and <16 x i8> %i.dv, %i.du
  %i.dx = shufflevector <16 x i8> %i.cm, <16 x i8> %i.dh, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dy = shufflevector <16 x i8> %i.cm, <16 x i8> %i.dh, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dz = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dx, <16 x i8> splat (i8 96))
  %i.ea = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dy, <16 x i8> splat (i8 112))
  %i.eb = or <16 x i8> %i.dz, %i.ea
  %.inner416 = and <16 x i8> %i.eb, splat (i8 -128)
  %.inner417 = xor <16 x i8> %.inner416, %i.dw
  %i.ec = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.ed = shufflevector <16 x i8> %i.dh, <16 x i8> %i.ec, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ee = bitcast <16 x i8> %i.ed to <8 x i16>
  %i.ef = lshr <8 x i16> %i.ee, splat (i16 4)
  %i.eg = bitcast <8 x i16> %i.ef to <16 x i8>
  %i.eh = and <16 x i8> %i.eg, splat (i8 15)
  %i.ei = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.eh)
  %i.ej = and <16 x i8> %i.ed, splat (i8 15)
  %i.ek = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ej)
  %i.el = bitcast <2 x i64> %i.v to <8 x i16>
  %i.em = lshr <8 x i16> %i.el, splat (i16 4)
  %i.en = bitcast <8 x i16> %i.em to <16 x i8>
  %i.eo = and <16 x i8> %i.en, splat (i8 15)
  %i.ep = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.eo)
  %i.eq = and <16 x i8> %i.ek, %i.ei
  %i.er = and <16 x i8> %i.eq, %i.ep
  %i.es = shufflevector <16 x i8> %i.dh, <16 x i8> %i.ec, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.et = shufflevector <16 x i8> %i.dh, <16 x i8> %i.ec, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.eu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.es, <16 x i8> splat (i8 96))
  %i.ev = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.et, <16 x i8> splat (i8 112))
  %i.ew = or <16 x i8> %i.eu, %i.ev
  %.inner420 = and <16 x i8> %i.ew, splat (i8 -128)
  %.inner421 = xor <16 x i8> %.inner420, %i.er
  %.inner422 = or <16 x i8> %.inner409, %.inner413
  %.inner423 = or <16 x i8> %.inner422, %.inner417
  %.inner424 = or <16 x i8> %.inner423, %.inner421
  %i.ex = bitcast <16 x i8> %.inner424 to <2 x i64>
  %i.ey = or <2 x i64> %.sroa.0.0387, %i.ex       ; 2 uses
  %i.ez = icmp slt <16 x i8> %i.ad, splat (i8 -64)
  %i.fa = bitcast <16 x i1> %i.ez to i16
  %i.fb = zext i16 %i.fa to i64                   ; 2 uses
  %i.fc = and i64 %i.fb, 1
  %.not64.i = icmp eq i64 %i.fc, 0
  br i1 %.not64.i, label %bb.d, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit

bb.d:                                             ; preds = %bb.c
  %i.fd = add i64 %.054.i388, 52
  %i.fe = icmp ult i64 %.054.i388, -52
  br i1 %i.fe, label %.lr.ph382.preheader, label %.loopexit

.lr.ph382.preheader:                              ; preds = %bb.d
  %i.ff = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fg = bitcast <4 x i64> %i.ff to <32 x i8>
  %i.fh = icmp slt <32 x i8> %i.fg, splat (i8 -64)
  %i.fi = bitcast <32 x i1> %i.fh to i32
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw i64 %i.fj, 32
  %i.fl = icmp slt <16 x i8> %i.cm, splat (i8 -64)
  %i.fm = bitcast <16 x i1> %i.fl to i16
  %i.fn = zext i16 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 16
  %i.fp = or disjoint i64 %i.fo, %i.fk
  %i.fq = or disjoint i64 %i.fp, %i.fb
  %i.fr = xor i64 %i.fq, -1
  %i.fs = lshr i64 %i.fr, 1
  br label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit
  %.050.i380 = phi i64 [ %i.lk, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %i.fs, %.lr.ph382.preheader ] ; 4 uses
  %.155.i379 = phi i64 [ %i.lj, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.054.i388, %.lr.ph382.preheader ] ; 2 uses
  %.1378 = phi ptr [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.0386, %.lr.ph382.preheader ] ; 15 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %.155.i379
  %.val = load <2 x i64>, ptr %i.ft, align 1      ; 6 uses
  %i.fu = icmp eq i64 %.050.i380, 4095
  br i1 %i.fu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph382
  %i.fv = bitcast <2 x i64> %.val to <16 x i8>    ; 2 uses
  %i.fw = shufflevector <16 x i8> %i.fv, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fx = zext <8 x i8> %i.fw to <8 x i16>
  %i.fy = shufflevector <16 x i8> %i.fv, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fz = zext <8 x i8> %i.fy to <8 x i16>
  %i.ga = bitcast <8 x i16> %i.fx to <16 x i8>
  %i.gb = shufflevector <16 x i8> %i.ga, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.gc = bitcast <8 x i16> %i.fz to <16 x i8>
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.gb, ptr %.1378, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.1378, i64 16
  store <16 x i8> %i.gd, ptr %i.ge, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.1378, i64 24
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.f:                                             ; preds = %.lr.ph382
  %i.gg = and i64 %.050.i380, 65535
  %i.gh = icmp eq i64 %i.gg, 43690
  br i1 %i.gh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gi = bitcast <2 x i64> %.val to <16 x i8>
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.gk = bitcast <16 x i8> %i.gj to <2 x i64>
  %i.gl = and <2 x i64> %i.gk, splat (i64 35747867511423103)
  %i.gm = bitcast <16 x i8> %i.gj to <8 x i16>
  %i.gn = lshr <8 x i16> %i.gm, splat (i16 2)
  %i.go = bitcast <8 x i16> %i.gn to <2 x i64>
  %i.gp = and <2 x i64> %i.go, splat (i64 558454875139082176)
  %i.gq = or <2 x i64> %i.gp, %i.gl
  %i.gr = bitcast <2 x i64> %i.gq to <16 x i8>
  %i.gs = shufflevector <16 x i8> %i.gr, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.gs, ptr %.1378, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.1378, i64 16
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.gu = and i64 %.050.i380, 4095                ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 2340
  br i1 %i.gv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gw = bitcast <2 x i64> %.val to <16 x i8>
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.gy = bitcast <16 x i8> %i.gx to <2 x i64>
  %i.gz = and <2 x i64> %i.gy, splat (i64 545460846719)
  %i.ha = bitcast <16 x i8> %i.gx to <4 x i32>    ; 2 uses
  %i.hb = lshr <4 x i32> %i.ha, splat (i32 2)
  %i.hc = bitcast <4 x i32> %i.hb to <2 x i64>
  %i.hd = and <2 x i64> %i.hc, splat (i64 17317308141504)
  %i.he = lshr <4 x i32> %i.ha, splat (i32 4)
  %i.hf = bitcast <4 x i32> %i.he to <2 x i64>
  %i.hg = and <2 x i64> %i.hf, splat (i64 263882790727680)
  %i.hh = or <2 x i64> %i.hd, %i.gz
  %i.hi = or disjoint <2 x i64> %i.hh, %i.hg
  %i.hj = bitcast <2 x i64> %i.hi to <4 x i32>    ; 2 uses
  %i.hk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hj, <4 x i32> %i.hj)
  %i.hl = bitcast <8 x i16> %i.hk to <16 x i8>
  %i.hm = shufflevector <16 x i8> %i.hl, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.hm, ptr %.1378, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.1378, i64 8
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.j:                                             ; preds = %bb.h
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.gu ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 2             ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = icmp ult i8 %i.hp, 64
  br i1 %i.hs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ht = zext nneg i8 %i.hp to i64
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ht
  %i.hv = load <16 x i8>, ptr %i.hu, align 16
  %i.hw = bitcast <2 x i64> %.val to <16 x i8>
  %i.hx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.hw, <16 x i8> %i.hv) ; 2 uses
  %i.hy = bitcast <16 x i8> %i.hx to <2 x i64>
  %i.hz = and <2 x i64> %i.hy, splat (i64 35747867511423103)
  %i.ia = bitcast <16 x i8> %i.hx to <8 x i16>
  %i.ib = lshr <8 x i16> %i.ia, splat (i16 2)
  %i.ic = bitcast <8 x i16> %i.ib to <2 x i64>
end_hunk_12
begin_hunk_13_@_ZNK7simdutf8westmere14implementation23convert_utf8_to_utf16beEPKcmPDs:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi i16 [ %i.ko, %bb.p ], [ %i.ks, %bb.q ]
  %.sink9.i = phi i64 [ 4, %bb.p ], [ 2, %bb.q ]
  store i16 %.sink, ptr %.1378, align 2
  %i.kt = getelementptr inbounds nuw i8, ptr %.1378, i64 %.sink9.i ; 3 uses
  %.sroa.05.4.vec.extract.i = extractelement <4 x i32> %i.kd, i64 1
  %i.ku = icmp samesign ugt i32 %.sroa.05.4.vec.extract.i, 62914560
  br i1 %i.ku, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kv = bitcast <16 x i8> %i.ki to <8 x i16>
  %i.kw = extractelement <8 x i16> %i.kv, i64 2
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.kx = bitcast <16 x i8> %i.kl to <8 x i16>    ; 2 uses
  %i.ky = extractelement <8 x i16> %i.kx, i64 2
  %i.kz = extractelement <8 x i16> %i.kx, i64 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  store i16 %i.kz, ptr %i.la, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink397 = phi i16 [ %i.ky, %bb.t ], [ %i.kw, %bb.s ]
  %.sink10.i = phi i64 [ 4, %bb.t ], [ 2, %bb.s ]
  store i16 %.sink397, ptr %i.kt, align 2
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.sink10.i ; 4 uses
  %.sroa.05.8.vec.extract.i = extractelement <4 x i32> %i.kd, i64 2
  %i.lc = icmp samesign ugt i32 %.sroa.05.8.vec.extract.i, 62914560
  br i1 %i.lc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ld = bitcast <16 x i8> %i.ki to <8 x i16>
  %i.le = extractelement <8 x i16> %i.ld, i64 4
  store i16 %i.le, ptr %i.lb, align 2
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.lf = bitcast <16 x i8> %i.kl to <8 x i16>
  %i.lg = shufflevector <8 x i16> %i.lf, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.lg, ptr %i.lb, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %bb.m, %bb.k
  %.5 = phi ptr [ %.1378, %bb.k ], [ %.1378, %bb.m ], [ %i.lb, %bb.w ], [ %i.lb, %bb.v ]
  %.sink13.i = phi i64 [ 12, %bb.k ], [ 8, %bb.m ], [ 4, %bb.w ], [ 2, %bb.v ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink13.i
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.n
  %.4 = phi ptr [ %i.lh, %.sink.split.i ], [ %.1378, %bb.n ]
  %i.li = zext i8 %i.hr to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.x
  %.6 = phi ptr [ %i.gf, %bb.e ], [ %i.gt, %bb.g ], [ %i.hn, %bb.i ], [ %.4, %bb.x ] ; 2 uses
  %.0112.i = phi i64 [ 12, %bb.e ], [ 16, %bb.g ], [ 12, %bb.i ], [ %i.li, %bb.x ] ; 2 uses
  %i.lj = add i64 %.0112.i, %.155.i379            ; 3 uses
  %i.lk = lshr i64 %.050.i380, %.0112.i
  %i.ll = icmp ult i64 %i.lj, %i.fd
  br i1 %i.ll, label %.lr.ph382, label %.loopexit, !llvm.loop !1575

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.bu, %bb.b ], [ %.0386, %bb.d ], [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0387, %bb.b ], [ %i.ey, %bb.d ], [ %i.ey, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.458.i = phi i64 [ %i.n, %bb.b ], [ %.054.i388, %bb.d ], [ %i.lj, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 3 uses
  %i.lm = add i64 %.458.i, 64                     ; 2 uses
  %i.ln = add i64 %i.l, %i.lm
  %.not.i = icmp ugt i64 %i.ln, %2
  br i1 %.not.i, label %._crit_edge391, label %.lr.ph390, !llvm.loop !1576

._crit_edge391:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.054.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.458.i, %.loopexit ] ; 3 uses
  %i.lo = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.lo, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge391
  %i.lp = icmp ult i64 %.054.i.lcssa, %2
  br i1 %i.lp, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i.lcssa
  %i.lr = sub nuw i64 %2, %.054.i.lcssa
  %i.ls = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf167convertILNS_10endiannessE1EEEmPKcmPDs(ptr noundef %i.lq, i64 noundef %i.lr, ptr noundef %.0.lcssa) ; 2 uses
  %.not63.i = icmp eq i64 %i.ls, 0
  br i1 %.not63.i, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %i.ls
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.3 = phi ptr [ %i.lt, %bb.aa ], [ %.0.lcssa, %bb.y ]
  %i.lu = ptrtoint ptr %.3 to i64
  %i.lv = ptrtoint ptr %3 to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = ashr exact i64 %i.lw, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE1EEEmPKcmPDs.exit: ; preds = %bb.c, %._crit_edge391, %bb.z, %bb.ab
  %.5.i = phi i64 [ 0, %._crit_edge391 ], [ 0, %bb.z ], [ %i.lx, %bb.ab ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 !guid !1581 {
bb.a:
  %.not456 = icmp eq i64 %2, 0
  br i1 %.not456, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.062.i432 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.063.i431 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.063.i431
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.062.i432, %i.e         ; 2 uses
  %i.g = add i64 %.063.i431, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1578

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.063.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.063.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i442 = icmp ugt i64 %i.m, %2
  br i1 %.not.i442, label %._crit_edge448, label %.lr.ph447

.lr.ph447:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.ku, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i445 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0444 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0443 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i445 ; 6 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 9 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph447
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  %i.ag = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  store <8 x i16> %i.af, ptr %.0443, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0443, i64 16
  store <8 x i16> %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0443, i64 32
  %i.ak = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = zext <8 x i8> %i.al to <8 x i16>
  %i.an = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = zext <8 x i8> %i.an to <8 x i16>
  store <8 x i16> %i.am, ptr %i.aj, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0443, i64 48
  store <8 x i16> %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0443, i64 64
  %i.ar = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = zext <8 x i8> %i.as to <8 x i16>
  %i.au = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = zext <8 x i8> %i.au to <8 x i16>
  store <8 x i16> %i.at, ptr %i.aq, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0443, i64 80
  store <8 x i16> %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0443, i64 96
  %i.ay = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = zext <8 x i8> %i.az to <8 x i16>
  %i.bb = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = zext <8 x i8> %i.bb to <8 x i16>
  store <8 x i16> %i.ba, ptr %i.ax, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0443, i64 112
  store <8 x i16> %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0443, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph447
  %4 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bf = bitcast <16 x i8> %4 to <8 x i16>
  %i.bg = lshr <8 x i16> %i.bf, splat (i16 4)
  %i.bh = bitcast <8 x i16> %i.bg to <16 x i8>
  %i.bi = and <16 x i8> %i.bh, splat (i8 15)
  %i.bj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.bi)
  %i.bk = and <16 x i8> %4, splat (i8 15)
  %i.bl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.bk)
  %i.bm = bitcast <2 x i64> %i.p to <8 x i16>
  %i.bn = lshr <8 x i16> %i.bm, splat (i16 4)
  %i.bo = bitcast <8 x i16> %i.bn to <16 x i8>
  %i.bp = and <16 x i8> %i.bo, splat (i8 15)
  %i.bq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bp)
  %i.br = and <16 x i8> %i.bl, %i.bj
  %i.bs = and <16 x i8> %i.br, %i.bq
  %5 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %6 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i32> <i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.bt = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %5, <16 x i8> splat (i8 96))
  %i.bu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %6, <16 x i8> splat (i8 112))
  %i.bv = or <16 x i8> %i.bt, %i.bu
  %.inner535 = and <16 x i8> %i.bv, splat (i8 -128)
  %.inner536 = xor <16 x i8> %.inner535, %i.bs
  %i.bw = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.bx = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.by = bitcast <16 x i8> %i.bx to <8 x i16>
  %i.bz = lshr <8 x i16> %i.by, splat (i16 4)
  %i.ca = bitcast <8 x i16> %i.bz to <16 x i8>
  %i.cb = and <16 x i8> %i.ca, splat (i8 15)
  %i.cc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cb)
  %i.cd = and <16 x i8> %i.bx, splat (i8 15)
  %i.ce = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cd)
  %i.cf = bitcast <2 x i64> %i.r to <8 x i16>
  %i.cg = lshr <8 x i16> %i.cf, splat (i16 4)
  %i.ch = bitcast <8 x i16> %i.cg to <16 x i8>
  %i.ci = and <16 x i8> %i.ch, splat (i8 15)
  %i.cj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ci)
  %i.ck = and <16 x i8> %i.ce, %i.cc
  %i.cl = and <16 x i8> %i.ck, %i.cj
  %i.cm = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.cn = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bw, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.co = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cm, <16 x i8> splat (i8 96))
  %i.cp = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cn, <16 x i8> splat (i8 112))
  %i.cq = or <16 x i8> %i.co, %i.cp
  %.inner539 = and <16 x i8> %i.cq, splat (i8 -128)
  %.inner540 = xor <16 x i8> %.inner539, %i.cl
  %i.cr = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.cs = shufflevector <16 x i8> %i.bw, <16 x i8> %i.cr, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ct = bitcast <16 x i8> %i.cs to <8 x i16>
  %i.cu = lshr <8 x i16> %i.ct, splat (i16 4)
  %i.cv = bitcast <8 x i16> %i.cu to <16 x i8>
  %i.cw = and <16 x i8> %i.cv, splat (i8 15)
  %i.cx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cw)
  %i.cy = and <16 x i8> %i.cs, splat (i8 15)
  %i.cz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cy)
  %i.da = bitcast <2 x i64> %i.t to <8 x i16>
  %i.db = lshr <8 x i16> %i.da, splat (i16 4)
  %i.dc = bitcast <8 x i16> %i.db to <16 x i8>
  %i.dd = and <16 x i8> %i.dc, splat (i8 15)
  %i.de = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dd)
  %i.df = and <16 x i8> %i.cz, %i.cx
  %i.dg = and <16 x i8> %i.df, %i.de
  %i.dh = shufflevector <16 x i8> %i.bw, <16 x i8> %i.cr, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.di = shufflevector <16 x i8> %i.bw, <16 x i8> %i.cr, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dj = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dh, <16 x i8> splat (i8 96))
  %i.dk = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.di, <16 x i8> splat (i8 112))
  %i.dl = or <16 x i8> %i.dj, %i.dk
  %.inner543 = and <16 x i8> %i.dl, splat (i8 -128)
  %.inner544 = xor <16 x i8> %.inner543, %i.dg
  %i.dm = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.dn = shufflevector <16 x i8> %i.cr, <16 x i8> %i.dm, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.do = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.dp = lshr <8 x i16> %i.do, splat (i16 4)
  %i.dq = bitcast <8 x i16> %i.dp to <16 x i8>
  %i.dr = and <16 x i8> %i.dq, splat (i8 15)
  %i.ds = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.dr)
  %i.dt = and <16 x i8> %i.dn, splat (i8 15)
  %i.du = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dt)
  %i.dv = bitcast <2 x i64> %i.v to <8 x i16>
  %i.dw = lshr <8 x i16> %i.dv, splat (i16 4)
  %i.dx = bitcast <8 x i16> %i.dw to <16 x i8>
  %i.dy = and <16 x i8> %i.dx, splat (i8 15)
  %i.dz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dy)
  %i.ea = and <16 x i8> %i.du, %i.ds
  %i.eb = and <16 x i8> %i.ea, %i.dz
  %i.ec = shufflevector <16 x i8> %i.cr, <16 x i8> %i.dm, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ed = shufflevector <16 x i8> %i.cr, <16 x i8> %i.dm, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.ee = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ec, <16 x i8> splat (i8 96))
  %i.ef = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ed, <16 x i8> splat (i8 112))
  %i.eg = or <16 x i8> %i.ee, %i.ef
  %.inner547 = and <16 x i8> %i.eg, splat (i8 -128)
  %.inner548 = xor <16 x i8> %.inner547, %i.eb
  %.inner549 = or <16 x i8> %.inner536, %.inner540
  %.inner550 = or <16 x i8> %.inner549, %.inner544
  %.inner551 = or <16 x i8> %.inner550, %.inner548
  %i.eh = bitcast <16 x i8> %.inner551 to <2 x i64>
  %i.ei = or <2 x i64> %.sroa.0.0444, %i.eh       ; 4 uses
  %i.ej = icmp slt <16 x i8> %i.ad, splat (i8 -64)
  %i.ek = bitcast <16 x i1> %i.ej to i16
  %i.el = zext i16 %i.ek to i64                   ; 2 uses
  %i.em = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.ei, <2 x i64> %i.ei)
  %i.en = icmp ne i32 %i.em, 0
  %i.eo = and i64 %i.el, 1
  %.not67.i = icmp eq i64 %i.eo, 0
  %or.cond.i = and i1 %.not67.i, %i.en
  br i1 %or.cond.i, label %bb.j, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.ep = sub i64 %2, %.0.i445
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.critedge.critedge.i
  %.02566.i = phi i64 [ 0, %.critedge.critedge.i ], [ %i.ew, %bb.f ] ; 6 uses
  %i.eq = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.o, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1             ; 2 uses
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.eu = icmp ne i64 %.02566.i, 0
  %i.ev = icmp sgt i8 %i.es, -1
  %or.cond.i12 = and i1 %i.eu, %i.ev
  br i1 %or.cond.i12, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ew = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i9 = icmp ugt i64 %i.ew, %.0.i445
  br i1 %.not.i9, label %bb.h, label %bb.d, !llvm.loop !24

bb.g:                                             ; preds = %bb.e
  %i.ex = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.ey = sub i64 0, %.0.i445
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit

bb.i:                                             ; preds = %bb.e
  %i.ez = getelementptr inbounds i8, ptr %i.o, i64 %i.eq
  %i.fa = add i64 %i.ep, %.02566.i
  %i.fb = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.ez, i64 noundef %i.fa, ptr noundef %.0443) ; 2 uses
  %i.fc = extractvalue { i32, i64 } %i.fb, 0      ; 2 uses
  %i.fd = extractvalue { i32, i64 } %i.fb, 1
  %.not33.i = icmp eq i32 %i.fc, 0
  %i.fe = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.fd, %i.fe
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.i ], [ %i.ey, %bb.h ], [ %i.ex, %bb.g ]
  %.sroa.0.3.i = phi i32 [ %i.fc, %bb.i ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.ff = add i64 %.sroa.4.3.i, %.0.i445
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.j:                                             ; preds = %bb.c
  %i.fg = add i64 %.0.i445, 52
  %i.fh = icmp ult i64 %.0.i445, -52
  br i1 %i.fh, label %.lr.ph437.preheader, label %.loopexit

.lr.ph437.preheader:                              ; preds = %bb.j
  %i.fi = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fj = bitcast <4 x i64> %i.fi to <32 x i8>
  %i.fk = icmp slt <32 x i8> %i.fj, splat (i8 -64)
  %i.fl = bitcast <32 x i1> %i.fk to i32
  %i.fm = zext i32 %i.fl to i64
  %i.fn = shl nuw i64 %i.fm, 32
  %i.fo = icmp slt <16 x i8> %i.bw, splat (i8 -64)
  %i.fp = bitcast <16 x i1> %i.fo to i16
  %i.fq = zext i16 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 16
  %i.fs = or disjoint i64 %i.fr, %i.fn
  %i.ft = or disjoint i64 %i.fs, %i.el
  %i.fu = xor i64 %i.ft, -1
  %i.fv = lshr i64 %i.fu, 1
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit
  %.1.i435 = phi i64 [ %i.kr, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.0.i445, %.lr.ph437.preheader ] ; 2 uses
  %.059.i434 = phi i64 [ %i.ks, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %i.fv, %.lr.ph437.preheader ] ; 4 uses
  %.1433 = phi ptr [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.0443, %.lr.ph437.preheader ] ; 15 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i435
  %.val = load <2 x i64>, ptr %i.fw, align 1      ; 6 uses
  %i.fx = icmp eq i64 %.059.i434, 4095
  br i1 %i.fx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph437
  %i.fy = bitcast <2 x i64> %.val to <16 x i8>    ; 2 uses
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ga = zext <8 x i8> %i.fz to <8 x i16>
  %i.gb = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = zext <8 x i8> %i.gb to <8 x i16>
  store <8 x i16> %i.ga, ptr %.1433, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.1433, i64 16
  store <8 x i16> %i.gc, ptr %i.gd, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.1433, i64 24
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.l:                                             ; preds = %.lr.ph437
  %i.gf = and i64 %.059.i434, 65535
  %i.gg = icmp eq i64 %i.gf, 43690
  br i1 %i.gg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gh = bitcast <2 x i64> %.val to <16 x i8>
  %i.gi = shufflevector <16 x i8> %i.gh, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.gj = bitcast <16 x i8> %i.gi to <2 x i64>
  %i.gk = and <2 x i64> %i.gj, splat (i64 35747867511423103)
  %i.gl = bitcast <16 x i8> %i.gi to <8 x i16>
  %i.gm = lshr <8 x i16> %i.gl, splat (i16 2)
  %i.gn = bitcast <8 x i16> %i.gm to <2 x i64>
  %i.go = and <2 x i64> %i.gn, splat (i64 558454875139082176)
  %i.gp = or <2 x i64> %i.go, %i.gk
  store <2 x i64> %i.gp, ptr %.1433, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.1433, i64 16
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.n:                                             ; preds = %bb.l
end_hunk_13
begin_hunk_14_@_ZNK7simdutf8westmere14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs:bb.a
  %.not.i14 = icmp ugt i64 %i.lg, %.0.i.lcssa441
  br i1 %.not.i14, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22, label %bb.af, !llvm.loop !24

bb.ai:                                            ; preds = %bb.ag
  %i.lh = sub i64 1, %.02566.i13
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22

bb.aj:                                            ; preds = %bb.ag
  %i.li = getelementptr inbounds i8, ptr %i.ky, i64 %i.la
  %i.lj = add i64 %i.kz, %.02566.i13
  %i.lk = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.li, i64 noundef %i.lj, ptr noundef %.0.lcssa) ; 2 uses
  %i.ll = extractvalue { i32, i64 } %i.lk, 0      ; 2 uses
  %i.lm = extractvalue { i32, i64 } %i.lk, 1
  %.not33.i20 = icmp eq i32 %i.ll, 0
  %i.ln = select i1 %.not33.i20, i64 0, i64 %.02566.i13
  %spec.select.i21 = sub i64 %i.lm, %i.ln
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.3.i15 = phi i64 [ %spec.select.i21, %bb.aj ], [ %i.lh, %bb.ai ], [ %i.kw, %bb.ah ]
  %.sroa.0.3.i16 = phi i32 [ %i.ll, %bb.aj ], [ 3, %bb.ai ], [ 3, %bb.ah ]
  %i.lo = add i64 %.sroa.4.3.i15, %.0.i.lcssa441
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.ak:                                            ; preds = %._crit_edge448
  %i.lp = icmp ult i64 %.0.i.lcssa441, %2
  br i1 %i.lp, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa441 ; 2 uses
  %i.lr = sub nuw i64 %2, %.0.i.lcssa441
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.02566.i23 = phi i64 [ 0, %bb.al ], [ %i.ly, %bb.ao ] ; 6 uses
  %i.ls = sub nsw i64 0, %.02566.i23              ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.lq, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1             ; 2 uses
  %i.lv = icmp sgt i8 %i.lu, -65
  br i1 %i.lv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lw = icmp ne i64 %.02566.i23, 0
  %i.lx = icmp sgt i8 %i.lu, -1
  %or.cond.i29 = and i1 %i.lw, %i.lx
  br i1 %or.cond.i29, label %bb.ap, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32

bb.ao:                                            ; preds = %bb.am
  %i.ly = add i64 %.02566.i23, 1                  ; 2 uses
  %.not.i24 = icmp ugt i64 %i.ly, %.0.i.lcssa441
  br i1 %.not.i24, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread, label %bb.am, !llvm.loop !24

bb.ap:                                            ; preds = %bb.an
  %i.lz = sub i64 1, %.02566.i23
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32: ; preds = %bb.an
  %i.ma = getelementptr inbounds i8, ptr %i.lq, i64 %i.ls
  %i.mb = add i64 %i.lr, %.02566.i23
  %i.mc = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.ma, i64 noundef %i.mb, ptr noundef %.0.lcssa) ; 2 uses
  %i.md = extractvalue { i32, i64 } %i.mc, 0      ; 2 uses
  %i.me = extractvalue { i32, i64 } %i.mc, 1
  %.not33.i30 = icmp eq i32 %i.md, 0              ; 2 uses
  %i.mf = select i1 %.not33.i30, i64 0, i64 %.02566.i23
  %spec.select.i31 = sub i64 %i.me, %i.mf         ; 2 uses
  br i1 %.not33.i30, label %bb.aq, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread: ; preds = %bb.ao, %bb.ap, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32
  %.sroa.0.3.i26410 = phi i32 [ %i.md, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32 ], [ 3, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.4.3.i25409 = phi i64 [ %spec.select.i31, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32 ], [ %i.lz, %bb.ap ], [ %i.kw, %bb.ao ]
  %i.mg = add i64 %.sroa.4.3.i25409, %.0.i.lcssa441
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.aq:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %spec.select.i31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.3 = phi ptr [ %i.mh, %bb.aq ], [ %.0.lcssa, %bb.ak ]
  %i.mi = ptrtoint ptr %.3 to i64
  %i.mj = ptrtoint ptr %3 to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = ashr exact i64 %i.mk, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread, %bb.ar
  %.sroa.785.0 = phi i64 [ %i.lo, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22 ], [ %i.ml, %bb.ar ], [ %i.mg, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread ], [ %i.ff, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.sroa.084.0 = phi i32 [ %.sroa.0.3.i16, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22 ], [ 0, %bb.ar ], [ %.sroa.0.3.i26410, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread ], [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.084.0, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.785.0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 !guid !1585 {
bb.a:
  %.not455 = icmp eq i64 %2, 0
  br i1 %.not455, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.062.i431 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.063.i430 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.063.i430
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.062.i431, %i.e         ; 2 uses
  %i.g = add i64 %.063.i430, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1582

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.063.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.063.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i441 = icmp ugt i64 %i.m, %2
  br i1 %.not.i441, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.mf, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i444 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0443 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0442 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i444 ; 6 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 9 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph446
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  %i.ag = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  %i.ai = bitcast <8 x i16> %i.af to <16 x i8>
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.ak = bitcast <8 x i16> %i.ah to <16 x i8>
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.aj, ptr %.0442, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0442, i64 16
  store <16 x i8> %i.al, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0442, i64 32
  %i.ao = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = zext <8 x i8> %i.ap to <8 x i16>
  %i.ar = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.as = zext <8 x i8> %i.ar to <8 x i16>
  %i.at = bitcast <8 x i16> %i.aq to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.av = bitcast <8 x i16> %i.as to <16 x i8>
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.au, ptr %i.an, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0442, i64 48
  store <16 x i8> %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0442, i64 64
  %i.az = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bb = zext <8 x i8> %i.ba to <8 x i16>
  %i.bc = shufflevector <16 x i8> %i.az, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = zext <8 x i8> %i.bc to <8 x i16>
  %i.be = bitcast <8 x i16> %i.bb to <16 x i8>
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.bg = bitcast <8 x i16> %i.bd to <16 x i8>
  %i.bh = shufflevector <16 x i8> %i.bg, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.bf, ptr %i.ay, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.0442, i64 80
  store <16 x i8> %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0442, i64 96
  %i.bk = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = zext <8 x i8> %i.bl to <8 x i16>
  %i.bn = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = zext <8 x i8> %i.bn to <8 x i16>
  %i.bp = bitcast <8 x i16> %i.bm to <16 x i8>
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.br = bitcast <8 x i16> %i.bo to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.bq, ptr %i.bj, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0442, i64 112
  store <16 x i8> %i.bs, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0442, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph446
  %4 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bv = bitcast <16 x i8> %4 to <8 x i16>
  %i.bw = lshr <8 x i16> %i.bv, splat (i16 4)
  %i.bx = bitcast <8 x i16> %i.bw to <16 x i8>
  %i.by = and <16 x i8> %i.bx, splat (i8 15)
  %i.bz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.by)
  %i.ca = and <16 x i8> %4, splat (i8 15)
  %i.cb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ca)
  %i.cc = bitcast <2 x i64> %i.p to <8 x i16>
  %i.cd = lshr <8 x i16> %i.cc, splat (i16 4)
  %i.ce = bitcast <8 x i16> %i.cd to <16 x i8>
  %i.cf = and <16 x i8> %i.ce, splat (i8 15)
  %i.cg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cf)
  %i.ch = and <16 x i8> %i.cb, %i.bz
  %i.ci = and <16 x i8> %i.ch, %i.cg
  %5 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %6 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i32> <i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.cj = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %5, <16 x i8> splat (i8 96))
  %i.ck = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %6, <16 x i8> splat (i8 112))
  %i.cl = or <16 x i8> %i.cj, %i.ck
  %.inner534 = and <16 x i8> %i.cl, splat (i8 -128)
  %.inner535 = xor <16 x i8> %.inner534, %i.ci
  %i.cm = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.cn = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cm, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.co = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.cp = lshr <8 x i16> %i.co, splat (i16 4)
  %i.cq = bitcast <8 x i16> %i.cp to <16 x i8>
  %i.cr = and <16 x i8> %i.cq, splat (i8 15)
  %i.cs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cr)
  %i.ct = and <16 x i8> %i.cn, splat (i8 15)
  %i.cu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ct)
  %i.cv = bitcast <2 x i64> %i.r to <8 x i16>
  %i.cw = lshr <8 x i16> %i.cv, splat (i16 4)
  %i.cx = bitcast <8 x i16> %i.cw to <16 x i8>
  %i.cy = and <16 x i8> %i.cx, splat (i8 15)
  %i.cz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cy)
  %i.da = and <16 x i8> %i.cu, %i.cs
  %i.db = and <16 x i8> %i.da, %i.cz
  %i.dc = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cm, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dd = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cm, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.de = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dc, <16 x i8> splat (i8 96))
  %i.df = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dd, <16 x i8> splat (i8 112))
  %i.dg = or <16 x i8> %i.de, %i.df
  %.inner538 = and <16 x i8> %i.dg, splat (i8 -128)
  %.inner539 = xor <16 x i8> %.inner538, %i.db
  %i.dh = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.di = shufflevector <16 x i8> %i.cm, <16 x i8> %i.dh, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dj = bitcast <16 x i8> %i.di to <8 x i16>
  %i.dk = lshr <8 x i16> %i.dj, splat (i16 4)
  %i.dl = bitcast <8 x i16> %i.dk to <16 x i8>
  %i.dm = and <16 x i8> %i.dl, splat (i8 15)
  %i.dn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.dm)
  %i.do = and <16 x i8> %i.di, splat (i8 15)
  %i.dp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.do)
  %i.dq = bitcast <2 x i64> %i.t to <8 x i16>
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 4)
  %i.ds = bitcast <8 x i16> %i.dr to <16 x i8>
  %i.dt = and <16 x i8> %i.ds, splat (i8 15)
  %i.du = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dt)
  %i.dv = and <16 x i8> %i.dp, %i.dn
  %i.dw = and <16 x i8> %i.dv, %i.du
  %i.dx = shufflevector <16 x i8> %i.cm, <16 x i8> %i.dh, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dy = shufflevector <16 x i8> %i.cm, <16 x i8> %i.dh, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dz = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dx, <16 x i8> splat (i8 96))
  %i.ea = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dy, <16 x i8> splat (i8 112))
  %i.eb = or <16 x i8> %i.dz, %i.ea
  %.inner542 = and <16 x i8> %i.eb, splat (i8 -128)
  %.inner543 = xor <16 x i8> %.inner542, %i.dw
  %i.ec = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.ed = shufflevector <16 x i8> %i.dh, <16 x i8> %i.ec, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ee = bitcast <16 x i8> %i.ed to <8 x i16>
  %i.ef = lshr <8 x i16> %i.ee, splat (i16 4)
  %i.eg = bitcast <8 x i16> %i.ef to <16 x i8>
  %i.eh = and <16 x i8> %i.eg, splat (i8 15)
  %i.ei = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.eh)
  %i.ej = and <16 x i8> %i.ed, splat (i8 15)
  %i.ek = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ej)
  %i.el = bitcast <2 x i64> %i.v to <8 x i16>
  %i.em = lshr <8 x i16> %i.el, splat (i16 4)
  %i.en = bitcast <8 x i16> %i.em to <16 x i8>
  %i.eo = and <16 x i8> %i.en, splat (i8 15)
  %i.ep = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.eo)
  %i.eq = and <16 x i8> %i.ek, %i.ei
  %i.er = and <16 x i8> %i.eq, %i.ep
  %i.es = shufflevector <16 x i8> %i.dh, <16 x i8> %i.ec, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.et = shufflevector <16 x i8> %i.dh, <16 x i8> %i.ec, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.eu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.es, <16 x i8> splat (i8 96))
  %i.ev = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.et, <16 x i8> splat (i8 112))
  %i.ew = or <16 x i8> %i.eu, %i.ev
  %.inner546 = and <16 x i8> %i.ew, splat (i8 -128)
  %.inner547 = xor <16 x i8> %.inner546, %i.er
  %.inner548 = or <16 x i8> %.inner535, %.inner539
  %.inner549 = or <16 x i8> %.inner548, %.inner543
  %.inner550 = or <16 x i8> %.inner549, %.inner547
  %i.ex = bitcast <16 x i8> %.inner550 to <2 x i64>
  %i.ey = or <2 x i64> %.sroa.0.0443, %i.ex       ; 4 uses
  %i.ez = icmp slt <16 x i8> %i.ad, splat (i8 -64)
  %i.fa = bitcast <16 x i1> %i.ez to i16
  %i.fb = zext i16 %i.fa to i64                   ; 2 uses
  %i.fc = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.ey, <2 x i64> %i.ey)
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = and i64 %i.fb, 1
  %.not67.i = icmp eq i64 %i.fe, 0
  %or.cond.i = and i1 %.not67.i, %i.fd
  br i1 %or.cond.i, label %bb.j, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.ff = sub i64 %2, %.0.i444
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.critedge.critedge.i
  %.02566.i = phi i64 [ 0, %.critedge.critedge.i ], [ %i.fm, %bb.f ] ; 6 uses
  %i.fg = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.o, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1             ; 2 uses
  %i.fj = icmp sgt i8 %i.fi, -65
  br i1 %i.fj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fk = icmp ne i64 %.02566.i, 0
  %i.fl = icmp sgt i8 %i.fi, -1
  %or.cond.i12 = and i1 %i.fk, %i.fl
  br i1 %or.cond.i12, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.fm = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i9 = icmp ugt i64 %i.fm, %.0.i444
  br i1 %.not.i9, label %bb.h, label %bb.d, !llvm.loop !25

bb.g:                                             ; preds = %bb.e
  %i.fn = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit

bb.h:                                             ; preds = %bb.f
  %i.fo = sub i64 0, %.0.i444
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit

bb.i:                                             ; preds = %bb.e
  %i.fp = getelementptr inbounds i8, ptr %i.o, i64 %i.fg
  %i.fq = add i64 %i.ff, %.02566.i
  %i.fr = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.fp, i64 noundef %i.fq, ptr noundef %.0442) ; 2 uses
  %i.fs = extractvalue { i32, i64 } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { i32, i64 } %i.fr, 1
  %.not33.i = icmp eq i32 %i.fs, 0
  %i.fu = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.ft, %i.fu
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.i ], [ %i.fo, %bb.h ], [ %i.fn, %bb.g ]
  %.sroa.0.3.i = phi i32 [ %i.fs, %bb.i ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.fv = add i64 %.sroa.4.3.i, %.0.i444
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.j:                                             ; preds = %bb.c
  %i.fw = add i64 %.0.i444, 52
  %i.fx = icmp ult i64 %.0.i444, -52
  br i1 %i.fx, label %.lr.ph436.preheader, label %.loopexit

.lr.ph436.preheader:                              ; preds = %bb.j
  %i.fy = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = bitcast <4 x i64> %i.fy to <32 x i8>
  %i.ga = icmp slt <32 x i8> %i.fz, splat (i8 -64)
  %i.gb = bitcast <32 x i1> %i.ga to i32
  %i.gc = zext i32 %i.gb to i64
  %i.gd = shl nuw i64 %i.gc, 32
  %i.ge = icmp slt <16 x i8> %i.cm, splat (i8 -64)
  %i.gf = bitcast <16 x i1> %i.ge to i16
  %i.gg = zext i16 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 16
  %i.gi = or disjoint i64 %i.gh, %i.gd
  %i.gj = or disjoint i64 %i.gi, %i.fb
  %i.gk = xor i64 %i.gj, -1
  %i.gl = lshr i64 %i.gk, 1
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit
  %.1.i434 = phi i64 [ %i.mc, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.0.i444, %.lr.ph436.preheader ] ; 2 uses
  %.059.i433 = phi i64 [ %i.md, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %i.gl, %.lr.ph436.preheader ] ; 4 uses
  %.1432 = phi ptr [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ], [ %.0442, %.lr.ph436.preheader ] ; 15 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i434
  %.val = load <2 x i64>, ptr %i.gm, align 1      ; 6 uses
  %i.gn = icmp eq i64 %.059.i433, 4095
  br i1 %i.gn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph436
  %i.go = bitcast <2 x i64> %.val to <16 x i8>    ; 2 uses
  %i.gp = shufflevector <16 x i8> %i.go, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gq = zext <8 x i8> %i.gp to <8 x i16>
  %i.gr = shufflevector <16 x i8> %i.go, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gs = zext <8 x i8> %i.gr to <8 x i16>
  %i.gt = bitcast <8 x i16> %i.gq to <16 x i8>
  %i.gu = shufflevector <16 x i8> %i.gt, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.gv = bitcast <8 x i16> %i.gs to <16 x i8>
  %i.gw = shufflevector <16 x i8> %i.gv, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.gu, ptr %.1432, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.1432, i64 16
  store <16 x i8> %i.gw, ptr %i.gx, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.1432, i64 24
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

bb.l:                                             ; preds = %.lr.ph436
  %i.gz = and i64 %.059.i433, 65535
  %i.ha = icmp eq i64 %i.gz, 43690
  br i1 %i.ha, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hb = bitcast <2 x i64> %.val to <16 x i8>
  %i.hc = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.hd = bitcast <16 x i8> %i.hc to <2 x i64>
  %i.he = and <2 x i64> %i.hd, splat (i64 35747867511423103)
  %i.hf = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hg = lshr <8 x i16> %i.hf, splat (i16 2)
  %i.hh = bitcast <8 x i16> %i.hg to <2 x i64>
  %i.hi = and <2 x i64> %i.hh, splat (i64 558454875139082176)
  %i.hj = or <2 x i64> %i.hi, %i.he
  %i.hk = bitcast <2 x i64> %i.hj to <16 x i8>
end_hunk_14
begin_hunk_15_@_ZNK7simdutf8westmere14implementation29convert_valid_utf8_to_utf16beEPKcmPDs:bb.a
  br i1 %i.he, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hf = bitcast <16 x i8> %i.gs to <8 x i16>
  %i.hg = extractelement <8 x i16> %i.hf, i64 2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.hh = bitcast <16 x i8> %i.gv to <8 x i16>    ; 2 uses
  %i.hi = extractelement <8 x i16> %i.hh, i64 2
  %i.hj = extractelement <8 x i16> %i.hh, i64 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  store i16 %i.hj, ptr %i.hk, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink89.i = phi i16 [ %i.hi, %bb.s ], [ %i.hg, %bb.r ]
  %.sink10.i.i = phi i64 [ 4, %bb.s ], [ 2, %bb.r ]
  store i16 %.sink89.i, ptr %i.hd, align 2
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sink10.i.i ; 4 uses
  %.sroa.05.8.vec.extract.i.i = extractelement <4 x i32> %i.gn, i64 2
  %i.hm = icmp samesign ugt i32 %.sroa.05.8.vec.extract.i.i, 62914560
  br i1 %i.hm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hn = bitcast <16 x i8> %i.gs to <8 x i16>
  %i.ho = extractelement <8 x i16> %i.hn, i64 4
  store i16 %i.ho, ptr %i.hl, align 2
  br label %.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.hp = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hq = shufflevector <8 x i16> %i.hp, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.hq, ptr %i.hl, align 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v, %bb.u, %bb.l, %bb.j
  %.4.i = phi ptr [ %.17779.i, %bb.j ], [ %.17779.i, %bb.l ], [ %i.hl, %bb.v ], [ %i.hl, %bb.u ]
  %.sink13.i.i = phi i64 [ 12, %bb.j ], [ 8, %bb.l ], [ 4, %bb.v ], [ 2, %bb.u ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.4.i, i64 %.sink13.i.i
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i, %bb.m
  %.3.i = phi ptr [ %i.hr, %.sink.split.i.i ], [ %.17779.i, %bb.m ]
  %i.hs = zext i8 %i.eb to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i

_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i: ; preds = %bb.w, %bb.h, %bb.f, %bb.d
  %.5.i = phi ptr [ %i.cp, %bb.d ], [ %i.dd, %bb.f ], [ %i.dx, %bb.h ], [ %.3.i, %bb.w ] ; 2 uses
  %.0112.i.i = phi i64 [ 12, %bb.d ], [ 16, %bb.f ], [ 12, %bb.h ], [ %i.hs, %bb.w ] ; 2 uses
  %i.ht = add i64 %.0112.i.i, %.181.i             ; 3 uses
  %i.hu = lshr i64 %.02180.i, %.0112.i.i
  %i.hv = icmp ult i64 %i.ht, %i.bi
  br i1 %i.hv, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1589

.loopexit.i:                                      ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i, %bb.c, %bb.b
  %.278.i = phi ptr [ %i.bh, %bb.b ], [ %.07684.i, %bb.c ], [ %.5.i, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i ] ; 2 uses
  %.2.i = phi i64 [ %i.a, %bb.b ], [ %.085.i, %bb.c ], [ %i.ht, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit.i ] ; 4 uses
  %i.hw = add i64 %.2.i, 64
  %i.hx = add i64 %.2.i, 80
  %.not.i = icmp ugt i64 %i.hx, %2
  br i1 %.not.i, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE1EEEmPKcmPDs.exit, label %.lr.ph86.i, !llvm.loop !1590

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE1EEEmPKcmPDs.exit: ; preds = %.loopexit.i, %bb.a
  %.076.lcssa.i = phi ptr [ %3, %bb.a ], [ %.278.i, %.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  %i.hz = sub i64 %2, %.0.lcssa.i
  %i.ia = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE1EEEmPKcmPDs(ptr noundef readonly %i.hy, i64 noundef %i.hz, ptr noundef %.076.lcssa.i)
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.076.lcssa.i, i64 %i.ia
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %3 to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = ashr exact i64 %i.ie, 1
  ret i64 %i.if
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -2305843009213693952, 2305843009213693952) i64 @_ZNK7simdutf8westmere14implementation21convert_utf8_to_utf32EPKcmPDi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 !guid !1595 {
bb.a:
  %.not402 = icmp eq i64 %2, 0
  br i1 %.not402, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059.i384 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.060.i383 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.060.i383
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.059.i384, %i.e         ; 2 uses
  %i.g = add i64 %.060.i383, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1592

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.060.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.060.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i392 = icmp ugt i64 %i.m, %2
  br i1 %.not.i392, label %._crit_edge398, label %.lr.ph397

.lr.ph397:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.kt, %.loopexit ], [ 64, %._crit_edge ]
  %.054.i395 = phi i64 [ %.458.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0394 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0393 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i395 ; 4 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 11 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph397
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = zext <4 x i8> %i.ae to <4 x i32>
  store <4 x i32> %i.af, ptr %.0393, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0393, i64 16
  %i.ah = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ai = zext <4 x i8> %i.ah to <4 x i32>
  store <4 x i32> %i.ai, ptr %i.ag, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0393, i64 32
  %i.ak = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.al = zext <4 x i8> %i.ak to <4 x i32>
  store <4 x i32> %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0393, i64 48
  %i.an = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.ao = zext <4 x i8> %i.an to <4 x i32>
  store <4 x i32> %i.ao, ptr %i.am, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0393, i64 64
  %i.aq = bitcast <2 x i64> %i.r to <16 x i8>     ; 4 uses
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = zext <4 x i8> %i.ar to <4 x i32>
  store <4 x i32> %i.as, ptr %i.ap, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0393, i64 80
  %i.au = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.av = zext <4 x i8> %i.au to <4 x i32>
  store <4 x i32> %i.av, ptr %i.at, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0393, i64 96
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ay = zext <4 x i8> %i.ax to <4 x i32>
  store <4 x i32> %i.ay, ptr %i.aw, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0393, i64 112
  %i.ba = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bb = zext <4 x i8> %i.ba to <4 x i32>
  store <4 x i32> %i.bb, ptr %i.az, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.0393, i64 128
  %i.bd = bitcast <2 x i64> %i.t to <16 x i8>     ; 4 uses
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = zext <4 x i8> %i.be to <4 x i32>
  store <4 x i32> %i.bf, ptr %i.bc, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.0393, i64 144
  %i.bh = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bi = zext <4 x i8> %i.bh to <4 x i32>
  store <4 x i32> %i.bi, ptr %i.bg, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0393, i64 160
  %i.bk = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bl = zext <4 x i8> %i.bk to <4 x i32>
  store <4 x i32> %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.0393, i64 176
  %i.bn = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bo = zext <4 x i8> %i.bn to <4 x i32>
  store <4 x i32> %i.bo, ptr %i.bm, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.0393, i64 192
  %i.bq = bitcast <2 x i64> %i.v to <16 x i8>     ; 4 uses
  %i.br = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = zext <4 x i8> %i.br to <4 x i32>
  store <4 x i32> %i.bs, ptr %i.bp, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0393, i64 208
  %i.bu = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bv = zext <4 x i8> %i.bu to <4 x i32>
  store <4 x i32> %i.bv, ptr %i.bt, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.0393, i64 224
  %i.bx = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.by = zext <4 x i8> %i.bx to <4 x i32>
  store <4 x i32> %i.by, ptr %i.bw, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.0393, i64 240
  %i.ca = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.cb = zext <4 x i8> %i.ca to <4 x i32>
  store <4 x i32> %i.cb, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.0393, i64 256
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph397
  %4 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.cd = bitcast <16 x i8> %4 to <8 x i16>
  %i.ce = lshr <8 x i16> %i.cd, splat (i16 4)
  %i.cf = bitcast <8 x i16> %i.ce to <16 x i8>
  %i.cg = and <16 x i8> %i.cf, splat (i8 15)
  %i.ch = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cg)
  %i.ci = and <16 x i8> %4, splat (i8 15)
  %i.cj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ci)
  %i.ck = bitcast <2 x i64> %i.p to <8 x i16>
  %i.cl = lshr <8 x i16> %i.ck, splat (i16 4)
  %i.cm = bitcast <8 x i16> %i.cl to <16 x i8>
  %i.cn = and <16 x i8> %i.cm, splat (i8 15)
  %i.co = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cn)
  %i.cp = and <16 x i8> %i.cj, %i.ch
  %i.cq = and <16 x i8> %i.cp, %i.co
  %5 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %6 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i32> <i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.cr = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %5, <16 x i8> splat (i8 96))
  %i.cs = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %6, <16 x i8> splat (i8 112))
  %i.ct = or <16 x i8> %i.cr, %i.cs
  %.inner414 = and <16 x i8> %i.ct, splat (i8 -128)
  %.inner415 = xor <16 x i8> %.inner414, %i.cq
  %i.cu = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.cv = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cu, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.cw = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.cx = lshr <8 x i16> %i.cw, splat (i16 4)
  %i.cy = bitcast <8 x i16> %i.cx to <16 x i8>
  %i.cz = and <16 x i8> %i.cy, splat (i8 15)
  %i.da = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cz)
  %i.db = and <16 x i8> %i.cv, splat (i8 15)
  %i.dc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.db)
  %i.dd = bitcast <2 x i64> %i.r to <8 x i16>
  %i.de = lshr <8 x i16> %i.dd, splat (i16 4)
  %i.df = bitcast <8 x i16> %i.de to <16 x i8>
  %i.dg = and <16 x i8> %i.df, splat (i8 15)
  %i.dh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dg)
  %i.di = and <16 x i8> %i.dc, %i.da
  %i.dj = and <16 x i8> %i.di, %i.dh
  %i.dk = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cu, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dl = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cu, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dk, <16 x i8> splat (i8 96))
  %i.dn = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dl, <16 x i8> splat (i8 112))
  %i.do = or <16 x i8> %i.dm, %i.dn
  %.inner418 = and <16 x i8> %i.do, splat (i8 -128)
  %.inner419 = xor <16 x i8> %.inner418, %i.dj
  %i.dp = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.dq = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dr = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.ds = lshr <8 x i16> %i.dr, splat (i16 4)
  %i.dt = bitcast <8 x i16> %i.ds to <16 x i8>
  %i.du = and <16 x i8> %i.dt, splat (i8 15)
  %i.dv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.du)
  %i.dw = and <16 x i8> %i.dq, splat (i8 15)
  %i.dx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dw)
  %i.dy = bitcast <2 x i64> %i.t to <8 x i16>
  %i.dz = lshr <8 x i16> %i.dy, splat (i16 4)
  %i.ea = bitcast <8 x i16> %i.dz to <16 x i8>
  %i.eb = and <16 x i8> %i.ea, splat (i8 15)
  %i.ec = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.eb)
  %i.ed = and <16 x i8> %i.dx, %i.dv
  %i.ee = and <16 x i8> %i.ed, %i.ec
  %i.ef = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.eg = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.eh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ef, <16 x i8> splat (i8 96))
  %i.ei = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.eg, <16 x i8> splat (i8 112))
  %i.ej = or <16 x i8> %i.eh, %i.ei
  %.inner422 = and <16 x i8> %i.ej, splat (i8 -128)
  %.inner423 = xor <16 x i8> %.inner422, %i.ee
  %i.ek = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.el = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ek, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.em = bitcast <16 x i8> %i.el to <8 x i16>
  %i.en = lshr <8 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <8 x i16> %i.en to <16 x i8>
  %i.ep = and <16 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ep)
  %i.er = and <16 x i8> %i.el, splat (i8 15)
  %i.es = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.er)
  %i.et = bitcast <2 x i64> %i.v to <8 x i16>
  %i.eu = lshr <8 x i16> %i.et, splat (i16 4)
  %i.ev = bitcast <8 x i16> %i.eu to <16 x i8>
  %i.ew = and <16 x i8> %i.ev, splat (i8 15)
  %i.ex = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ew)
  %i.ey = and <16 x i8> %i.es, %i.eq
  %i.ez = and <16 x i8> %i.ey, %i.ex
  %i.fa = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ek, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fb = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ek, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fc = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fa, <16 x i8> splat (i8 96))
  %i.fd = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 112))
  %i.fe = or <16 x i8> %i.fc, %i.fd
  %.inner426 = and <16 x i8> %i.fe, splat (i8 -128)
  %.inner427 = xor <16 x i8> %.inner426, %i.ez
  %.inner428 = or <16 x i8> %.inner415, %.inner419
  %.inner429 = or <16 x i8> %.inner428, %.inner423
  %.inner430 = or <16 x i8> %.inner429, %.inner427
  %i.ff = bitcast <16 x i8> %.inner430 to <2 x i64>
  %i.fg = or <2 x i64> %.sroa.0.0394, %i.ff       ; 2 uses
  %i.fh = icmp slt <16 x i8> %i.ad, splat (i8 -64)
  %i.fi = bitcast <16 x i1> %i.fh to i16
  %i.fj = zext i16 %i.fi to i64                   ; 2 uses
  %i.fk = and i64 %i.fj, 1
  %.not64.i = icmp eq i64 %i.fk, 0
  br i1 %.not64.i, label %bb.d, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit

bb.d:                                             ; preds = %bb.c
  %i.fl = add i64 %.054.i395, 52
  %i.fm = icmp ult i64 %.054.i395, -52
  br i1 %i.fm, label %.lr.ph389.preheader, label %.loopexit

.lr.ph389.preheader:                              ; preds = %bb.d
  %i.fn = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fo = bitcast <4 x i64> %i.fn to <32 x i8>
  %i.fp = icmp slt <32 x i8> %i.fo, splat (i8 -64)
  %i.fq = bitcast <32 x i1> %i.fp to i32
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw i64 %i.fr, 32
  %i.ft = icmp slt <16 x i8> %i.cu, splat (i8 -64)
  %i.fu = bitcast <16 x i1> %i.ft to i16
  %i.fv = zext i16 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 16
  %i.fx = or disjoint i64 %i.fw, %i.fs
  %i.fy = or disjoint i64 %i.fx, %i.fj
  %i.fz = xor i64 %i.fy, -1
  %i.ga = lshr i64 %i.fz, 1
  br label %.lr.ph389

.lr.ph389:                                        ; preds = %.lr.ph389.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit
  %.050.i387 = phi i64 [ %i.kr, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %i.ga, %.lr.ph389.preheader ] ; 4 uses
  %.155.i386 = phi i64 [ %i.kq, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.054.i395, %.lr.ph389.preheader ] ; 2 uses
  %.1385 = phi ptr [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.0393, %.lr.ph389.preheader ] ; 15 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %.155.i386
  %.val = load <2 x i64>, ptr %i.gb, align 1      ; 6 uses
  %i.gc = icmp eq i64 %.050.i387, 4095
  br i1 %i.gc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph389
  %i.gd = bitcast <2 x i64> %.val to <16 x i8>    ; 4 uses
  %i.ge = shufflevector <16 x i8> %i.gd, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = zext <4 x i8> %i.ge to <4 x i32>
  store <4 x i32> %i.gf, ptr %.1385, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.1385, i64 16
  %i.gh = shufflevector <16 x i8> %i.gd, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gi = zext <4 x i8> %i.gh to <4 x i32>
  store <4 x i32> %i.gi, ptr %i.gg, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.1385, i64 32
  %i.gk = shufflevector <16 x i8> %i.gd, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.gl = zext <4 x i8> %i.gk to <4 x i32>
  store <4 x i32> %i.gl, ptr %i.gj, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %.1385, i64 48 ; 2 uses
  %i.gn = shufflevector <16 x i8> %i.gd, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.go = zext <4 x i8> %i.gn to <4 x i32>
  store <4 x i32> %i.go, ptr %i.gm, align 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.f:                                             ; preds = %.lr.ph389
  %i.gp = and i64 %.050.i387, 65535
  %i.gq = icmp eq i64 %i.gp, 43690
  br i1 %i.gq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gr = bitcast <2 x i64> %.val to <16 x i8>
  %i.gs = shufflevector <16 x i8> %i.gr, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.gt = bitcast <16 x i8> %i.gs to <2 x i64>
  %i.gu = and <2 x i64> %i.gt, splat (i64 35747867511423103)
  %i.gv = bitcast <16 x i8> %i.gs to <8 x i16>
  %i.gw = lshr <8 x i16> %i.gv, splat (i16 2)
  %i.gx = bitcast <8 x i16> %i.gw to <2 x i64>
  %i.gy = and <2 x i64> %i.gx, splat (i64 558454875139082176)
  %i.gz = or <2 x i64> %i.gy, %i.gu               ; 2 uses
  %i.ha = bitcast <2 x i64> %i.gz to <8 x i16>
  %i.hb = shufflevector <8 x i16> %i.ha, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hc = zext nneg <4 x i16> %i.hb to <4 x i32>
  store <4 x i32> %i.hc, ptr %.1385, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.1385, i64 16
  %i.he = bitcast <2 x i64> %i.gz to <8 x i16>
  %i.hf = shufflevector <8 x i16> %i.he, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hg = zext nneg <4 x i16> %i.hf to <4 x i32>
  store <4 x i32> %i.hg, ptr %i.hd, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.1385, i64 32
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.h:                                             ; preds = %bb.f
  %i.hi = and i64 %.050.i387, 4095                ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 2340
  br i1 %i.hj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hk = bitcast <2 x i64> %.val to <16 x i8>
  %i.hl = shufflevector <16 x i8> %i.hk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.hm = bitcast <16 x i8> %i.hl to <2 x i64>
  %i.hn = and <2 x i64> %i.hm, splat (i64 545460846719)
  %i.ho = bitcast <16 x i8> %i.hl to <4 x i32>    ; 2 uses
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 2)
  %i.hq = bitcast <4 x i32> %i.hp to <2 x i64>
  %i.hr = and <2 x i64> %i.hq, splat (i64 17317308141504)
  %i.hs = lshr <4 x i32> %i.ho, splat (i32 4)
  %i.ht = bitcast <4 x i32> %i.hs to <2 x i64>
  %i.hu = and <2 x i64> %i.ht, splat (i64 263882790727680)
  %i.hv = or <2 x i64> %i.hr, %i.hn
  %i.hw = or disjoint <2 x i64> %i.hv, %i.hu
  store <2 x i64> %i.hw, ptr %.1385, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.1385, i64 16
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

bb.j:                                             ; preds = %bb.h
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.hi ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 2             ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = icmp ult i8 %i.hz, 64
  br i1 %i.ic, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.id = zext nneg i8 %i.hz to i64
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.id
  %i.if = load <16 x i8>, ptr %i.ie, align 16
  %i.ig = bitcast <2 x i64> %.val to <16 x i8>
  %i.ih = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ig, <16 x i8> %i.if) ; 2 uses
end_hunk_15
begin_hunk_16_@_ZNK7simdutf8westmere14implementation21convert_utf8_to_utf32EPKcmPDi:bb.a
  %i.kd = and <2 x i64> %i.kc, splat (i64 9007199256838144)
  %i.ke = xor <2 x i64> %i.kd, %i.ka
  %i.kf = bitcast <2 x i64> %i.ke to <4 x i32>
  %i.kg = lshr exact <4 x i32> %i.kf, splat (i32 4)
  %i.kh = bitcast <4 x i32> %i.kg to <2 x i64>
  %i.ki = lshr <4 x i32> %i.jv, splat (i32 6)
  %i.kj = bitcast <4 x i32> %i.ki to <2 x i64>
  %i.kk = and <2 x i64> %i.kj, splat (i64 7881299349733376)
  %i.kl = or <2 x i64> %i.jy, %i.ju
  %i.km = or disjoint <2 x i64> %i.kl, %i.kk
  %i.kn = or disjoint <2 x i64> %i.km, %i.kh
  store <2 x i64> %i.kn, ptr %.1385, align 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.m, %bb.k
  %.sink5.i = phi i64 [ 16, %bb.m ], [ 12, %bb.o ], [ 24, %bb.k ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.1385, i64 %.sink5.i
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %bb.n
  %.4 = phi ptr [ %i.ko, %.sink.split.i ], [ %.1385, %bb.n ]
  %i.kp = zext i8 %i.ib to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit

_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.p
  %.5 = phi ptr [ %i.gm, %bb.e ], [ %i.hh, %bb.g ], [ %i.hx, %bb.i ], [ %.4, %bb.p ] ; 2 uses
  %.0.i = phi i64 [ 12, %bb.e ], [ 16, %bb.g ], [ 12, %bb.i ], [ %i.kp, %bb.p ] ; 2 uses
  %i.kq = add i64 %.0.i, %.155.i386               ; 3 uses
  %i.kr = lshr i64 %.050.i387, %.0.i
  %i.ks = icmp ult i64 %i.kq, %i.fl
  br i1 %i.ks, label %.lr.ph389, label %.loopexit, !llvm.loop !1593

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.cc, %bb.b ], [ %.0393, %bb.d ], [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0394, %bb.b ], [ %i.fg, %bb.d ], [ %i.fg, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ] ; 2 uses
  %.458.i = phi i64 [ %i.n, %bb.b ], [ %.054.i395, %bb.d ], [ %i.kq, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ] ; 3 uses
  %i.kt = add i64 %.458.i, 64                     ; 2 uses
  %i.ku = add i64 %i.l, %i.kt
  %.not.i = icmp ugt i64 %i.ku, %2
  br i1 %.not.i, label %._crit_edge398, label %.lr.ph397, !llvm.loop !1594

._crit_edge398:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.054.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.458.i, %.loopexit ] ; 3 uses
  %i.kv = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.kv, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge398
  %i.kw = icmp ult i64 %.054.i.lcssa, %2
  br i1 %i.kw, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i.lcssa
  %i.ky = sub nuw i64 %2, %.054.i.lcssa
  %i.kz = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf327convertEPKcmPDi(ptr noundef %i.kx, i64 noundef %i.ky, ptr noundef %.0.lcssa) ; 2 uses
  %.not63.i = icmp eq i64 %i.kz, 0
  br i1 %.not63.i, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa, i64 %i.kz
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.3 = phi ptr [ %i.la, %bb.s ], [ %.0.lcssa, %bb.q ]
  %i.lb = ptrtoint ptr %.3 to i64
  %i.lc = ptrtoint ptr %3 to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = ashr exact i64 %i.ld, 2
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3221validating_transcoder7convertEPKcmPDi.exit: ; preds = %bb.c, %._crit_edge398, %bb.r, %bb.t
  %.5.i = phi i64 [ 0, %._crit_edge398 ], [ 0, %bb.r ], [ %i.le, %bb.t ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation33convert_utf8_to_utf32_with_errorsEPKcmPDi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 !guid !1599 {
bb.a:
  %.not464 = icmp eq i64 %2, 0
  br i1 %.not464, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.062.i439 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.063.i438 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.063.i438
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.062.i439, %i.e         ; 2 uses
  %i.g = add i64 %.063.i438, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1596

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.063.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.063.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i450 = icmp ugt i64 %i.m, %2
  br i1 %.not.i450, label %._crit_edge456, label %.lr.ph455

.lr.ph455:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.lr, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i453 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 11 uses
  %.sroa.0.0452 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0451 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 20 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i453 ; 9 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 11 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph455
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = zext <4 x i8> %i.ae to <4 x i32>
  store <4 x i32> %i.af, ptr %.0451, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0451, i64 16
  %i.ah = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ai = zext <4 x i8> %i.ah to <4 x i32>
  store <4 x i32> %i.ai, ptr %i.ag, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0451, i64 32
  %i.ak = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.al = zext <4 x i8> %i.ak to <4 x i32>
  store <4 x i32> %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0451, i64 48
  %i.an = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.ao = zext <4 x i8> %i.an to <4 x i32>
  store <4 x i32> %i.ao, ptr %i.am, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0451, i64 64
  %i.aq = bitcast <2 x i64> %i.r to <16 x i8>     ; 4 uses
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = zext <4 x i8> %i.ar to <4 x i32>
  store <4 x i32> %i.as, ptr %i.ap, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0451, i64 80
  %i.au = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.av = zext <4 x i8> %i.au to <4 x i32>
  store <4 x i32> %i.av, ptr %i.at, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0451, i64 96
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ay = zext <4 x i8> %i.ax to <4 x i32>
  store <4 x i32> %i.ay, ptr %i.aw, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0451, i64 112
  %i.ba = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bb = zext <4 x i8> %i.ba to <4 x i32>
  store <4 x i32> %i.bb, ptr %i.az, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.0451, i64 128
  %i.bd = bitcast <2 x i64> %i.t to <16 x i8>     ; 4 uses
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = zext <4 x i8> %i.be to <4 x i32>
  store <4 x i32> %i.bf, ptr %i.bc, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.0451, i64 144
  %i.bh = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bi = zext <4 x i8> %i.bh to <4 x i32>
  store <4 x i32> %i.bi, ptr %i.bg, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0451, i64 160
  %i.bk = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bl = zext <4 x i8> %i.bk to <4 x i32>
  store <4 x i32> %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.0451, i64 176
  %i.bn = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bo = zext <4 x i8> %i.bn to <4 x i32>
  store <4 x i32> %i.bo, ptr %i.bm, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.0451, i64 192
  %i.bq = bitcast <2 x i64> %i.v to <16 x i8>     ; 4 uses
  %i.br = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = zext <4 x i8> %i.br to <4 x i32>
  store <4 x i32> %i.bs, ptr %i.bp, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0451, i64 208
  %i.bu = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bv = zext <4 x i8> %i.bu to <4 x i32>
  store <4 x i32> %i.bv, ptr %i.bt, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.0451, i64 224
  %i.bx = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.by = zext <4 x i8> %i.bx to <4 x i32>
  store <4 x i32> %i.by, ptr %i.bw, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.0451, i64 240
  %i.ca = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.cb = zext <4 x i8> %i.ca to <4 x i32>
  store <4 x i32> %i.cb, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.0451, i64 256
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph455
  %4 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.cd = bitcast <16 x i8> %4 to <8 x i16>
  %i.ce = lshr <8 x i16> %i.cd, splat (i16 4)
  %i.cf = bitcast <8 x i16> %i.ce to <16 x i8>
  %i.cg = and <16 x i8> %i.cf, splat (i8 15)
  %i.ch = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cg)
  %i.ci = and <16 x i8> %4, splat (i8 15)
  %i.cj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ci)
  %i.ck = bitcast <2 x i64> %i.p to <8 x i16>
  %i.cl = lshr <8 x i16> %i.ck, splat (i16 4)
  %i.cm = bitcast <8 x i16> %i.cl to <16 x i8>
  %i.cn = and <16 x i8> %i.cm, splat (i8 15)
  %i.co = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cn)
  %i.cp = and <16 x i8> %i.cj, %i.ch
  %i.cq = and <16 x i8> %i.cp, %i.co
  %5 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %6 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i32> <i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.cr = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %5, <16 x i8> splat (i8 96))
  %i.cs = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %6, <16 x i8> splat (i8 112))
  %i.ct = or <16 x i8> %i.cr, %i.cs
  %.inner539 = and <16 x i8> %i.ct, splat (i8 -128)
  %.inner540 = xor <16 x i8> %.inner539, %i.cq
  %i.cu = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.cv = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cu, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.cw = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.cx = lshr <8 x i16> %i.cw, splat (i16 4)
  %i.cy = bitcast <8 x i16> %i.cx to <16 x i8>
  %i.cz = and <16 x i8> %i.cy, splat (i8 15)
  %i.da = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cz)
  %i.db = and <16 x i8> %i.cv, splat (i8 15)
  %i.dc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.db)
  %i.dd = bitcast <2 x i64> %i.r to <8 x i16>
  %i.de = lshr <8 x i16> %i.dd, splat (i16 4)
  %i.df = bitcast <8 x i16> %i.de to <16 x i8>
  %i.dg = and <16 x i8> %i.df, splat (i8 15)
  %i.dh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dg)
  %i.di = and <16 x i8> %i.dc, %i.da
  %i.dj = and <16 x i8> %i.di, %i.dh
  %i.dk = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cu, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dl = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cu, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dk, <16 x i8> splat (i8 96))
  %i.dn = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dl, <16 x i8> splat (i8 112))
  %i.do = or <16 x i8> %i.dm, %i.dn
  %.inner543 = and <16 x i8> %i.do, splat (i8 -128)
  %.inner544 = xor <16 x i8> %.inner543, %i.dj
  %i.dp = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.dq = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dr = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.ds = lshr <8 x i16> %i.dr, splat (i16 4)
  %i.dt = bitcast <8 x i16> %i.ds to <16 x i8>
  %i.du = and <16 x i8> %i.dt, splat (i8 15)
  %i.dv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.du)
  %i.dw = and <16 x i8> %i.dq, splat (i8 15)
  %i.dx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dw)
  %i.dy = bitcast <2 x i64> %i.t to <8 x i16>
  %i.dz = lshr <8 x i16> %i.dy, splat (i16 4)
  %i.ea = bitcast <8 x i16> %i.dz to <16 x i8>
  %i.eb = and <16 x i8> %i.ea, splat (i8 15)
  %i.ec = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.eb)
  %i.ed = and <16 x i8> %i.dx, %i.dv
  %i.ee = and <16 x i8> %i.ed, %i.ec
  %i.ef = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.eg = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.eh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ef, <16 x i8> splat (i8 96))
  %i.ei = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.eg, <16 x i8> splat (i8 112))
  %i.ej = or <16 x i8> %i.eh, %i.ei
  %.inner547 = and <16 x i8> %i.ej, splat (i8 -128)
  %.inner548 = xor <16 x i8> %.inner547, %i.ee
  %i.ek = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.el = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ek, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.em = bitcast <16 x i8> %i.el to <8 x i16>
  %i.en = lshr <8 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <8 x i16> %i.en to <16 x i8>
  %i.ep = and <16 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ep)
  %i.er = and <16 x i8> %i.el, splat (i8 15)
  %i.es = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.er)
  %i.et = bitcast <2 x i64> %i.v to <8 x i16>
  %i.eu = lshr <8 x i16> %i.et, splat (i16 4)
  %i.ev = bitcast <8 x i16> %i.eu to <16 x i8>
  %i.ew = and <16 x i8> %i.ev, splat (i8 15)
  %i.ex = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ew)
  %i.ey = and <16 x i8> %i.es, %i.eq
  %i.ez = and <16 x i8> %i.ey, %i.ex
  %i.fa = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ek, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fb = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ek, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fc = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fa, <16 x i8> splat (i8 96))
  %i.fd = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 112))
  %i.fe = or <16 x i8> %i.fc, %i.fd
  %.inner551 = and <16 x i8> %i.fe, splat (i8 -128)
  %.inner552 = xor <16 x i8> %.inner551, %i.ez
  %.inner553 = or <16 x i8> %.inner540, %.inner544
  %.inner554 = or <16 x i8> %.inner553, %.inner548
  %.inner555 = or <16 x i8> %.inner554, %.inner552
  %i.ff = bitcast <16 x i8> %.inner555 to <2 x i64>
  %i.fg = or <2 x i64> %.sroa.0.0452, %i.ff       ; 4 uses
  %i.fh = icmp slt <16 x i8> %i.ad, splat (i8 -64)
  %i.fi = bitcast <16 x i1> %i.fh to i16
  %i.fj = zext i16 %i.fi to i64                   ; 2 uses
  %i.fk = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.fg, <2 x i64> %i.fg)
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = and i64 %i.fj, 1
  %.not67.i = icmp eq i64 %i.fm, 0
  %or.cond.i = and i1 %.not67.i, %i.fl
  br i1 %or.cond.i, label %bb.n, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.fn = sub i64 %2, %.0.i453
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i453, i64 3)
  %i.fo = load i8, ptr %i.o, align 1              ; 2 uses
  %i.fp = icmp slt i8 %i.fo, -64                  ; 2 uses
  br i1 %i.fp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.f, %.critedge.critedge.i
  %.02771.i.lcssa = phi i64 [ 0, %.critedge.critedge.i ], [ 1, %bb.f ], [ 2, %bb.h ], [ 3, %bb.j ] ; 3 uses
  %.lcssa582 = phi i64 [ 0, %.critedge.critedge.i ], [ -1, %bb.f ], [ -2, %bb.h ], [ -3, %bb.j ]
  %.lcssa580 = phi i8 [ %i.fo, %.critedge.critedge.i ], [ %i.fs, %bb.f ], [ %i.fv, %bb.h ], [ %i.fy, %bb.j ]
  %i.fq = icmp sgt i8 %.lcssa580, -1
  %or.cond.i11 = and i1 %i.fp, %i.fq
  br i1 %or.cond.i11, label %bb.k, label %bb.m

bb.e:                                             ; preds = %.critedge.critedge.i
  %exitcond.not.i = icmp eq i64 %.0.i453, 0
  br i1 %exitcond.not.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fr = getelementptr inbounds i8, ptr %i.o, i64 -1
  %i.fs = load i8, ptr %i.fr, align 1             ; 2 uses
  %i.ft = icmp sgt i8 %i.fs, -65
  br i1 %i.ft, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond.not.i.1 = icmp eq i64 %.0.i453, 1
  br i1 %exitcond.not.i.1, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fu = getelementptr inbounds i8, ptr %i.o, i64 -2
  %i.fv = load i8, ptr %i.fu, align 1             ; 2 uses
  %i.fw = icmp sgt i8 %i.fv, -65
  br i1 %i.fw, label %bb.d, label %bb.i

bb.i:                                             ; preds = %bb.h
  %exitcond.not.i.2 = icmp eq i64 %.0.i453, 2
  br i1 %exitcond.not.i.2, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fx = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.fy = load i8, ptr %i.fx, align 1             ; 2 uses
  %i.fz = icmp sgt i8 %i.fy, -65
  br i1 %i.fz, label %bb.d, label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.ga = sub nsw i64 1, %.02771.i.lcssa
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.e
  %i.gb = sub nsw i64 0, %spec.select.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit

bb.m:                                             ; preds = %bb.d
  %i.gc = getelementptr inbounds i8, ptr %i.o, i64 %.lcssa582
  %i.gd = add i64 %i.fn, %.02771.i.lcssa
  %i.ge = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3219convert_with_errorsEPKcmPDi(ptr noundef nonnull readonly %i.gc, i64 noundef %i.gd, ptr noundef %.0451) ; 2 uses
  %i.gf = extractvalue { i32, i64 } %i.ge, 0      ; 2 uses
  %i.gg = extractvalue { i32, i64 } %i.ge, 1
  %.not37.i = icmp eq i32 %i.gf, 0
  %i.gh = select i1 %.not37.i, i64 0, i64 %.02771.i.lcssa
  %spec.select38.i = sub i64 %i.gg, %i.gh
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.4.3.i = phi i64 [ %spec.select38.i, %bb.m ], [ %i.gb, %bb.l ], [ %i.ga, %bb.k ]
  %.sroa.0.3.i = phi i32 [ %i.gf, %bb.m ], [ 3, %bb.l ], [ 3, %bb.k ]
  %i.gi = add i64 %.sroa.4.3.i, %.0.i453
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3221validating_transcoder19convert_with_errorsEPKcmPDi.exit

bb.n:                                             ; preds = %bb.c
  %i.gj = add i64 %.0.i453, 52
  %i.gk = icmp ult i64 %.0.i453, -52
  br i1 %i.gk, label %.lr.ph444.preheader, label %.loopexit

.lr.ph444.preheader:                              ; preds = %bb.n
  %i.gl = shufflevector <2 x i64> %i.t, <2 x i64> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gm = bitcast <4 x i64> %i.gl to <32 x i8>
  %i.gn = icmp slt <32 x i8> %i.gm, splat (i8 -64)
  %i.go = bitcast <32 x i1> %i.gn to i32
  %i.gp = zext i32 %i.go to i64
  %i.gq = shl nuw i64 %i.gp, 32
  %i.gr = icmp slt <16 x i8> %i.cu, splat (i8 -64)
  %i.gs = bitcast <16 x i1> %i.gr to i16
  %i.gt = zext i16 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 16
  %i.gv = or disjoint i64 %i.gu, %i.gq
  %i.gw = or disjoint i64 %i.gv, %i.fj
  %i.gx = xor i64 %i.gw, -1
  %i.gy = lshr i64 %i.gx, 1
  br label %.lr.ph444

.lr.ph444:                                        ; preds = %.lr.ph444.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit
  %.1.i442 = phi i64 [ %i.lo, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.0.i453, %.lr.ph444.preheader ] ; 2 uses
  %.059.i441 = phi i64 [ %i.lp, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %i.gy, %.lr.ph444.preheader ] ; 4 uses
  %.1440 = phi ptr [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit ], [ %.0451, %.lr.ph444.preheader ] ; 15 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i442
  %.val = load <2 x i64>, ptr %i.gz, align 1      ; 6 uses
  %i.ha = icmp eq i64 %.059.i441, 4095
  br i1 %i.ha, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph444
  %i.hb = bitcast <2 x i64> %.val to <16 x i8>    ; 4 uses
  %i.hc = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hd = zext <4 x i8> %i.hc to <4 x i32>
  store <4 x i32> %i.hd, ptr %.1440, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.1440, i64 16
  %i.hf = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hg = zext <4 x i8> %i.hf to <4 x i32>
  store <4 x i32> %i.hg, ptr %i.he, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.1440, i64 32
end_hunk_16
