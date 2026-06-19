inline.NumInlined: 2176
inline.NumDeleted: 448
begin_hunk_0_@_ZNK7simdutf7icelake14implementation22to_well_formed_utf16beEPKDsmPDs:bb.a
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i, %bb.g, %._crit_edge118.i, %_ZN7simdutf7icelake12_GLOBAL__N_113utf16fix_runtILNS_10endiannessE1EEEvPKDsmPDs.exit.i
  %i.ee = getelementptr [2 x i8], ptr %3, i64 %2
  %i.ef = getelementptr i8, ptr %i.ee, i64 -2     ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2            ; 2 uses
  %i.eh = and i16 %i.eg, 252
  %i.ei = icmp eq i16 %i.eh, 216
  %spec.select113.i = select i1 %i.ei, i16 -513, i16 %i.eg
  store i16 %spec.select113.i, ptr %i.ef, align 2
  br label %_ZN7simdutf7icelake12_GLOBAL__N_115utf16fix_avx512ILNS_10endiannessE1EEEvPKDsmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_115utf16fix_avx512ILNS_10endiannessE1EEEvPKDsmPDs.exit: ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf7icelake14implementation14validate_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf7icelake12_GLOBAL__N_114validate_utf32EPKDim.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.d = icmp ugt i64 %2, 16
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.02250.i = phi ptr [ %i.h, %.lr.ph.i ], [ %1, %bb.b ] ; 2 uses
  %i.e = phi <16 x i32> [ %i.k, %.lr.ph.i ], [ zeroinitializer, %bb.b ]
  %i.f = phi <16 x i32> [ %i.j, %.lr.ph.i ], [ zeroinitializer, %bb.b ]
  %i.g = load <16 x i32>, ptr %.02250.i, align 1  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02250.i, i64 64 ; 3 uses
  %i.i = add <16 x i32> %i.g, splat (i32 -57344)
  %i.j = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.i, <16 x i32> %i.f) ; 2 uses
  %i.k = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.g, <16 x i32> %i.e) ; 2 uses
  %i.l = icmp ult ptr %i.h, %i.c
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !243

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa49.i = phi <16 x i32> [ zeroinitializer, %bb.b ], [ %i.j, %.lr.ph.i ]
  %.lcssa.i = phi <16 x i32> [ zeroinitializer, %bb.b ], [ %i.k, %.lr.ph.i ]
  %.022.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = ptrtoint ptr %.022.lcssa.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  %notmask.i = shl nsw i32 -1, %i.q
  %i.r = trunc i32 %notmask.i to i16
  %i.s = xor i16 %i.r, -1
  %i.t = bitcast i16 %i.s to <16 x i1>
  %i.u = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.022.lcssa.i, <16 x i1> %i.t, <16 x i32> zeroinitializer) ; 2 uses
  %i.v = add <16 x i32> %i.u, splat (i32 -57344)
  %i.w = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.v, <16 x i32> %.lcssa49.i)
  %i.x = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.u, <16 x i32> %.lcssa.i)
  %i.y = icmp ugt <16 x i32> %i.x, splat (i32 1114111)
  %i.z = bitcast <16 x i1> %i.y to i16
  %.not.i = icmp eq i16 %i.z, 0
  %i.aa = icmp ugt <16 x i32> %i.w, splat (i32 -2049)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %.not26.i = icmp eq i16 %i.ab, 0
  %.1.i = select i1 %.not.i, i1 %.not26.i, i1 false
  br label %_ZN7simdutf7icelake12_GLOBAL__N_114validate_utf32EPKDim.exit

_ZN7simdutf7icelake12_GLOBAL__N_114validate_utf32EPKDim.exit: ; preds = %bb.a, %._crit_edge.i
  %.2.i = phi i1 [ %.1.i, %._crit_edge.i ], [ true, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation26validate_utf32_with_errorsEPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.thread70

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 2
  %i.b = getelementptr i8, ptr %1, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.076 = phi ptr [ %i.x, %bb.e ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.d = load <16 x i32>, ptr %.076, align 1      ; 2 uses
  %i.e = icmp ugt <16 x i32> %i.d, splat (i32 1114111)
  %i.f = bitcast <16 x i1> %i.e to i16
  %i.g = and <16 x i32> %i.d, splat (i32 -2048)
  %i.h = icmp eq <16 x i32> %i.g, splat (i32 55296)
  %i.i = bitcast <16 x i1> %i.h to i16
  %i.j = zext i16 %i.f to i32                     ; 2 uses
  %i.k = zext i16 %i.i to i32                     ; 2 uses
  %i.l = or i32 %i.k, %i.j
  %.not58 = icmp eq i32 %i.l, 0
  br i1 %.not58, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.j, i1 false) ; 2 uses
  %i.n = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.k, i1 false) ; 2 uses
  %i.o = icmp samesign ult i32 %i.m, %i.n
  %i.p = ptrtoint ptr %.076 to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i32 %i.m to i64
  %i.u = add nsw i64 %i.s, %i.t
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %i.n to i64
  %i.w = add nsw i64 %i.s, %i.v
  br label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.076, i64 64 ; 3 uses
  %.not = icmp ugt ptr %i.x, %i.c
  br i1 %.not, label %.thread70, label %.lr.ph, !llvm.loop !244

.thread70:                                        ; preds = %bb.e, %bb.a
  %.3 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ]    ; 2 uses
  %.not59 = icmp eq i64 %2, 0
  br i1 %.not59, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.thread70
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %notmask = shl nsw i32 -1, %i.ad
  %i.ae = trunc i32 %notmask to i16
  %i.af = xor i16 %i.ae, -1
  %i.ag = bitcast i16 %i.af to <16 x i1>
  %i.ah = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.3, <16 x i1> %i.ag, <16 x i32> zeroinitializer) ; 2 uses
  %i.ai = icmp ugt <16 x i32> %i.ah, splat (i32 1114111)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = and <16 x i32> %i.ah, splat (i32 -2048)
  %i.al = icmp eq <16 x i32> %i.ak, splat (i32 55296)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = zext i16 %i.aj to i32                   ; 2 uses
  %i.ao = zext i16 %i.am to i32                   ; 2 uses
  %i.ap = or i32 %i.ao, %i.an
  %.not60 = icmp eq i32 %i.ap, 0
  br i1 %.not60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.an, i1 false) ; 2 uses
  %i.ar = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ao, i1 false) ; 2 uses
  %i.as = icmp samesign ult i32 %i.aq, %i.ar
  %i.at = ptrtoint ptr %1 to i64
  %i.au = sub i64 %i.aa, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = add nsw i64 %i.av, %i.aw
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = add nsw i64 %i.av, %i.ay
  br label %.critedge

.critedge:                                        ; preds = %.thread70, %bb.f, %bb.i, %bb.h, %bb.d, %bb.c
  %.sroa.0.4 = phi i32 [ 6, %bb.i ], [ 5, %bb.c ], [ 6, %bb.d ], [ 5, %bb.h ], [ 0, %bb.f ], [ 0, %.thread70 ]
  %.sroa.6.4 = phi i64 [ %i.az, %bb.i ], [ %i.u, %bb.c ], [ %i.w, %bb.d ], [ %i.ax, %bb.h ], [ %2, %bb.f ], [ 0, %.thread70 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.4, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation22convert_latin1_to_utf8EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %.not40.i = icmp ult i64 %2, 128
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i
  %.042.i = phi ptr [ %i.aj, %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i ], [ %3, %bb.a ] ; 4 uses
  %.03041.i = phi i64 [ %i.ak, %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.03041.i
  %i.b = load <8 x i64>, ptr %i.a, align 1        ; 2 uses
  %i.c = bitcast <8 x i64> %i.b to <64 x i8>      ; 3 uses
  %i.d = icmp slt <64 x i8> %i.c, zeroinitializer
  %i.e = bitcast <64 x i1> %i.d to i64            ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.g = add nuw nsw i64 %i.f, 64
  %i.h = icmp ugt <64 x i8> %i.c, splat (i8 -65)
  %i.i = xor i64 %i.e, -1                         ; 2 uses
  %4 = tail call noundef i64 @llvm.pdep.i64(i64 %i.i, i64 6148914691236517205)
  %i.j = xor i64 %4, -1
  %i.k = lshr i64 %i.i, 32
  %5 = tail call noundef i64 @llvm.pdep.i64(i64 %i.k, i64 6148914691236517205)
  %i.l = xor i64 %5, -1
  %i.m = shufflevector <64 x i8> %i.c, <64 x i8> poison, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.n = bitcast <64 x i8> %i.m to <32 x i16>
  %i.o = tail call <32 x i16> @llvm.fshl.v32i16(<32 x i16> %i.n, <32 x i16> splat (i16 -15678), <32 x i16> splat (i16 8)) ; 2 uses
  %bc43.i.i.i = bitcast <64 x i1> %i.h to <2 x i32> ; 2 uses
  %i.p = extractelement <2 x i32> %bc43.i.i.i, i64 0
  %i.q = add <32 x i16> %i.o, splat (i16 -16383)
  %i.r = bitcast i32 %i.p to <32 x i1>
  %i.s = select <32 x i1> %i.r, <32 x i16> %i.q, <32 x i16> %i.o
  %i.t = extractelement <2 x i32> %bc43.i.i.i, i64 1
  %i.u = bitcast i32 %i.t to <32 x i1>
  %i.v = select <32 x i1> %i.u, <32 x i16> splat (i16 16579), <32 x i16> splat (i16 194)
  %i.w = bitcast <64 x i8> %i.m to <16 x i32>
  %i.x = bitcast <32 x i16> %i.v to <16 x i32>
  %i.y = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.w, <16 x i32> %i.x, <16 x i32> splat (i32 -16711936), i32 108)
  %i.z = bitcast <32 x i16> %i.s to <64 x i8>
  %i.aa = bitcast i64 %i.j to <64 x i1>
  %i.ab = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.z, <64 x i8> zeroinitializer, <64 x i1> %i.aa)
  %i.ac = bitcast <16 x i32> %i.y to <64 x i8>
  %i.ad = bitcast i64 %i.l to <64 x i1>
  %i.ae = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ac, <64 x i8> zeroinitializer, <64 x i1> %i.ad)
  %i.af = and i64 %i.e, 4294967295
  %i.ag = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.af)
  store <64 x i8> %i.ab, ptr %.042.i, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.042.i, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store <64 x i8> %i.ae, ptr %i.ai, align 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  store <8 x i64> %i.b, ptr %.042.i, align 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ 64, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.042.i, i64 %.0.i.i ; 2 uses
  %i.ak = add i64 %.03041.i, 64                   ; 2 uses
  %i.al = add i64 %.03041.i, 192
  %.not.i = icmp ugt i64 %i.al, %2
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !245

._crit_edge.i:                                    ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i, %bb.a
  %.030.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ak, %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.aj, %_ZN7simdutf7icelake12_GLOBAL__N_128latin1_to_utf8_avx512_branchEDv8_xPc.exit.i ] ; 4 uses
  %i.am = add i64 %.030.lcssa.i, 64               ; 2 uses
  %.not34.i = icmp ugt i64 %i.am, %2
  br i1 %.not34.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.030.lcssa.i
  %i.ao = load <64 x i8>, ptr %i.an, align 1      ; 3 uses
  %i.ap = icmp slt <64 x i8> %i.ao, zeroinitializer
  %i.aq = bitcast <64 x i1> %i.ap to i64          ; 3 uses
  %i.ar = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aq)
  %i.as = add nuw nsw i64 %i.ar, 64               ; 2 uses
  %i.at = icmp ugt <64 x i8> %i.ao, splat (i8 -65)
  %i.au = xor i64 %i.aq, -1                       ; 2 uses
  %6 = tail call noundef i64 @llvm.pdep.i64(i64 %i.au, i64 6148914691236517205)
  %i.av = xor i64 %6, -1
  %i.aw = lshr i64 %i.au, 32
  %7 = tail call noundef i64 @llvm.pdep.i64(i64 %i.aw, i64 6148914691236517205)
  %i.ax = xor i64 %7, -1
  %i.ay = shufflevector <64 x i8> %i.ao, <64 x i8> poison, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.az = bitcast <64 x i8> %i.ay to <32 x i16>
  %i.ba = tail call <32 x i16> @llvm.fshl.v32i16(<32 x i16> %i.az, <32 x i16> splat (i16 -15678), <32 x i16> splat (i16 8)) ; 2 uses
  %bc43.i.i = bitcast <64 x i1> %i.at to <2 x i32> ; 2 uses
  %i.bb = extractelement <2 x i32> %bc43.i.i, i64 0
  %i.bc = add <32 x i16> %i.ba, splat (i16 -16383)
  %i.bd = bitcast i32 %i.bb to <32 x i1>
  %i.be = select <32 x i1> %i.bd, <32 x i16> %i.bc, <32 x i16> %i.ba
  %i.bf = extractelement <2 x i32> %bc43.i.i, i64 1
  %i.bg = bitcast i32 %i.bf to <32 x i1>
  %i.bh = select <32 x i1> %i.bg, <32 x i16> splat (i16 16579), <32 x i16> splat (i16 194)
  %i.bi = bitcast <64 x i8> %i.ay to <16 x i32>
  %i.bj = bitcast <32 x i16> %i.bh to <16 x i32>
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bi, <16 x i32> %i.bj, <16 x i32> splat (i32 -16711936), i32 108)
  %i.bl = bitcast <32 x i16> %i.be to <64 x i8>
  %i.bm = bitcast i64 %i.av to <64 x i1>
  %i.bn = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bl, <64 x i8> zeroinitializer, <64 x i1> %i.bm)
  %i.bo = bitcast <16 x i32> %i.bk to <64 x i8>
  %i.bp = bitcast i64 %i.ax to <64 x i1>
  %i.bq = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bo, <64 x i8> zeroinitializer, <64 x i1> %i.bp)
  %i.br = and i64 %i.aq, 4294967295
  %i.bs = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.br)
  %i.bt = add nuw nsw i64 %i.bs, 32               ; 3 uses
  %i.bu = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.bt)
  %i.bv = bitcast i64 %i.bu to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bn, ptr align 1 %.0.lcssa.i, <64 x i1> %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.bt
  %i.bx = sub nuw nsw i64 %i.as, %i.bt
  %i.by = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.bx)
  %i.bz = bitcast i64 %i.by to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bq, ptr nonnull align 1 %i.bw, <64 x i1> %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.131.i = phi i64 [ %i.am, %bb.d ], [ %.030.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi ptr [ %i.ca, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.cb = icmp ult i64 %.131.i, %2
  br i1 %i.cb, label %bb.f, label %_ZN7simdutf7icelake12_GLOBAL__N_127latin1_to_utf8_avx512_startEPKcmPc.exit

bb.f:                                             ; preds = %bb.e
  %i.cc = sub nuw i64 %2, %.131.i                 ; 3 uses
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %.131.i
  %i.cg = bitcast i64 %i.ce to <64 x i1>
  %i.ch = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %i.cf, <64 x i1> %i.cg, <64 x i8> zeroinitializer) ; 3 uses
  %i.ci = icmp slt <64 x i8> %i.ch, zeroinitializer
  %i.cj = bitcast <64 x i1> %i.ci to i64          ; 3 uses
  %i.ck = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cj)
  %i.cl = add i64 %i.ck, %i.cc                    ; 3 uses
  %i.cm = icmp ugt <64 x i8> %i.ch, splat (i8 -65)
  %i.cn = xor i64 %i.cj, -1                       ; 2 uses
  %8 = tail call noundef i64 @llvm.pdep.i64(i64 %i.cn, i64 6148914691236517205)
  %i.co = xor i64 %8, -1
  %i.cp = shufflevector <64 x i8> %i.ch, <64 x i8> poison, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.cq = bitcast <64 x i8> %i.cp to <32 x i16>
  %i.cr = tail call <32 x i16> @llvm.fshl.v32i16(<32 x i16> %i.cq, <32 x i16> splat (i16 -15678), <32 x i16> splat (i16 8)) ; 2 uses
  %bc43.i37.i = bitcast <64 x i1> %i.cm to <2 x i32> ; 2 uses
  %i.cs = extractelement <2 x i32> %bc43.i37.i, i64 0
  %i.ct = add <32 x i16> %i.cr, splat (i16 -16383)
  %i.cu = bitcast i32 %i.cs to <32 x i1>
  %i.cv = select <32 x i1> %i.cu, <32 x i16> %i.ct, <32 x i16> %i.cr
  %i.cw = bitcast <32 x i16> %i.cv to <64 x i8>
  %i.cx = bitcast i64 %i.co to <64 x i1>
  %i.cy = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.cw, <64 x i8> zeroinitializer, <64 x i1> %i.cx) ; 2 uses
  %i.cz = icmp ugt i64 %i.cc, 32
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.da = and i64 %i.cj, 4294967295
  %i.db = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.da)
  %i.dc = add nuw nsw i64 %i.db, 32               ; 3 uses
  %i.dd = bitcast <64 x i8> %i.cp to <16 x i32>
  %i.de = extractelement <2 x i32> %bc43.i37.i, i64 1
  %i.df = bitcast i32 %i.de to <32 x i1>
  %i.dg = select <32 x i1> %i.df, <32 x i16> splat (i16 16579), <32 x i16> splat (i16 194)
  %i.dh = bitcast <32 x i16> %i.dg to <16 x i32>
  %i.di = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dd, <16 x i32> %i.dh, <16 x i32> splat (i32 -16711936), i32 108)
  %i.dj = bitcast <16 x i32> %i.di to <64 x i8>
  %i.dk = lshr i64 %i.cn, 32
  %9 = tail call noundef i64 @llvm.pdep.i64(i64 %i.dk, i64 6148914691236517205)
  %i.dl = xor i64 %9, -1
  %i.dm = bitcast i64 %i.dl to <64 x i1>
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.dj, <64 x i8> zeroinitializer, <64 x i1> %i.dm)
  %i.do = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.dc)
  %i.dp = bitcast i64 %i.do to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cy, ptr align 1 %.1.i, <64 x i1> %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.dc
  %i.dr = sub i64 %i.cl, %i.dc
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.ds)
  %i.du = bitcast i64 %i.dt to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.dn, ptr nonnull align 1 %i.dq, <64 x i1> %i.du)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_125latin1_to_utf8_avx512_vecEDv8_xmPci.exit.i

bb.h:                                             ; preds = %bb.f
  %i.dv = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 -1, i64 range(i64 0, 4294967296) %i.cl)
  %i.dw = bitcast i64 %i.dv to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cy, ptr align 1 %.1.i, <64 x i1> %i.dw)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_125latin1_to_utf8_avx512_vecEDv8_xmPci.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_125latin1_to_utf8_avx512_vecEDv8_xmPci.exit.i: ; preds = %bb.h, %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.cl
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127latin1_to_utf8_avx512_startEPKcmPc.exit

_ZN7simdutf7icelake12_GLOBAL__N_127latin1_to_utf8_avx512_startEPKcmPc.exit: ; preds = %bb.e, %_ZN7simdutf7icelake12_GLOBAL__N_125latin1_to_utf8_avx512_vecEDv8_xmPci.exit.i
  %.2.i = phi ptr [ %i.dx, %_ZN7simdutf7icelake12_GLOBAL__N_125latin1_to_utf8_avx512_vecEDv8_xmPci.exit.i ], [ %.1.i, %bb.e ]
  %i.dy = ptrtoint ptr %.2.i to i64
  %i.dz = ptrtoint ptr %3 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  ret i64 %i.ea
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation25convert_latin1_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 4 uses
  %.not31.i = icmp eq i64 %i.a, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = add i64 %2, -32                          ; 2 uses
  %i.c = lshr i64 %i.b, 5
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 96
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 1152921504606846972
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ad, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.030.i.epil = phi i64 [ %i.j, %.lr.ph.i.epil ], [ %.030.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.030.i.epil
  %i.g = load <32 x i8>, ptr %i.f, align 1
  %i.h = zext <32 x i8> %i.g to <32 x i16>
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.030.i.epil
  store <32 x i16> %i.h, ptr %i.i, align 1
  %i.j = add nuw i64 %.030.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !246

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.not.i = icmp eq i64 %i.a, %2
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_latin1_to_utf16ILNS_10endiannessE0EEEmPKcmPDs.exit, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.030.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.030.i
  %i.l = load <32 x i8>, ptr %i.k, align 1
  %i.m = zext <32 x i8> %i.l to <32 x i16>
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.030.i
  store <32 x i16> %i.m, ptr %i.n, align 1
  %i.o = or disjoint i64 %.030.i, 32              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load <32 x i8>, ptr %i.p, align 1
  %i.r = zext <32 x i8> %i.q to <32 x i16>
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.o
  store <32 x i16> %i.r, ptr %i.s, align 1
  %i.t = or disjoint i64 %.030.i, 64              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load <32 x i8>, ptr %i.u, align 1
  %i.w = zext <32 x i8> %i.v to <32 x i16>
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.t
  store <32 x i16> %i.w, ptr %i.x, align 1
  %i.y = or disjoint i64 %.030.i, 96              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load <32 x i8>, ptr %i.z, align 1
  %i.ab = zext <32 x i8> %i.aa to <32 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.y
  store <32 x i16> %i.ab, ptr %i.ac, align 1
  %i.ad = add nuw i64 %.030.i, 128                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !247

bb.b:                                             ; preds = %._crit_edge.i
  %i.ae = trunc i64 %2 to i32
  %i.af = and i32 %i.ae, 31
  %notmask.i = shl nsw i32 -1, %i.af
  %i.ag = xor i32 %notmask.i, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.ai = bitcast i32 %i.ag to <32 x i1>          ; 2 uses
  %i.aj = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr readonly align 1 %i.ah, <32 x i1> %i.ai, <32 x i8> zeroinitializer)
  %i.ak = zext <32 x i8> %i.aj to <32 x i16>
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.a
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ak, ptr align 1 %i.al, <32 x i1> %i.ai)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_latin1_to_utf16ILNS_10endiannessE0EEEmPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_latin1_to_utf16ILNS_10endiannessE0EEEmPKcmPDs.exit: ; preds = %._crit_edge.i, %bb.b
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation25convert_latin1_to_utf16beEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 4 uses
  %.not43.i = icmp eq i64 %i.a, 0
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = add i64 %2, -32                          ; 2 uses
  %i.c = lshr i64 %i.b, 5
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 96
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 1152921504606846972
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.042.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.042.i.epil = phi i64 [ %i.l, %.lr.ph.i.epil ], [ %.042.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.042.i.epil
  %i.g = load <32 x i8>, ptr %i.f, align 1
  %i.h = zext <32 x i8> %i.g to <32 x i16>
  %i.i = bitcast <32 x i16> %i.h to <64 x i8>
  %i.j = shufflevector <64 x i8> %i.i, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.042.i.epil
  store <64 x i8> %i.j, ptr %i.k, align 1
  %i.l = add nuw i64 %.042.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !248

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.not.i = icmp eq i64 %i.a, %2
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_latin1_to_utf16ILNS_10endiannessE1EEEmPKcmPDs.exit, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.042.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.an, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.042.i
  %i.n = load <32 x i8>, ptr %i.m, align 1
  %i.o = zext <32 x i8> %i.n to <32 x i16>
  %i.p = bitcast <32 x i16> %i.o to <64 x i8>
  %i.q = shufflevector <64 x i8> %i.p, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.042.i
  store <64 x i8> %i.q, ptr %i.r, align 1
  %i.s = or disjoint i64 %.042.i, 32              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load <32 x i8>, ptr %i.t, align 1
  %i.v = zext <32 x i8> %i.u to <32 x i16>
  %i.w = bitcast <32 x i16> %i.v to <64 x i8>
  %i.x = shufflevector <64 x i8> %i.w, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.s
  store <64 x i8> %i.x, ptr %i.y, align 1
  %i.z = or disjoint i64 %.042.i, 64              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load <32 x i8>, ptr %i.aa, align 1
  %i.ac = zext <32 x i8> %i.ab to <32 x i16>
  %i.ad = bitcast <32 x i16> %i.ac to <64 x i8>
  %i.ae = shufflevector <64 x i8> %i.ad, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.z
  store <64 x i8> %i.ae, ptr %i.af, align 1
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7icelake14implementation28convert_valid_utf8_to_latin1EPKcmPc:bb.a
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
  %4 = tail call noundef i64 @llvm.pext.i64(i64 %i.bx, i64 %i.av)
  %i.by = trunc i64 %4 to i32
  %i.bz = bitcast <16 x i32> %i.bw to <32 x i16>  ; 2 uses
  %i.ca = icmp ult <32 x i16> %i.bz, splat (i16 2048)
  %i.cb = bitcast i32 %i.by to <32 x i1>
  %i.cc = bitcast <16 x i32> %i.bw to <32 x i16>
  %i.cd = and <32 x i16> %i.cc, splat (i16 -2048)
  %i.ce = icmp eq <32 x i16> %i.cd, splat (i16 -10240)
  %i.cf = or <32 x i1> %i.ca, %i.ce
  %i.cg = and <32 x i1> %i.cf, %i.cb
  %i.ch = bitcast <32 x i1> %i.cg to i32
  %.not222.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not222.i.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %5 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.av) ; 2 uses
  %i.ci = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %5) ; 2 uses
  %i.cj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %5, i1 false)
  %i.ck = sub nuw nsw i64 64, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.ck
  %notmask223.i.i = shl nsw i64 -1, %i.ci
  %i.cm = trunc i64 %notmask223.i.i to i32
  %i.cn = xor i32 %i.cm, -1
  %i.co = bitcast i32 %i.cn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.bz, ptr align 1 %.0394411.i, <32 x i1> %i.co)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.ci
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cq = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.ai, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.cr = bitcast <64 x i1> %i.cq to i64          ; 3 uses
  %i.cs = or i64 %i.am, %i.ao
  %i.ct = or i64 %i.cs, %i.cr
  %i.cu = or i64 %i.i, %i.w                       ; 2 uses
  %i.cv = or i64 %i.cu, %i.cr
  %i.cw = bitcast i64 %i.cv to <64 x i1>
  %i.cx = shufflevector <64 x i1> %i.cw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.cy = or <64 x i1> %i.cq, %i.cx               ; 2 uses
  %i.cz = bitcast <64 x i1> %i.cy to i64          ; 3 uses
  %i.da = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.cy)
  %i.db = shufflevector <64 x i8> %i.da, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dc = zext <32 x i8> %i.db to <32 x i16>      ; 3 uses
  %.inner12 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dd = bitcast <32 x i16> %i.dc to <64 x i8>
  %i.de = bitcast <8 x i64> %i.f to <64 x i8>
  %i.df = and <64 x i8> %.inner12, %i.de          ; 3 uses
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.df, <64 x i8> %i.dd)
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.di = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dj = add nsw <32 x i16> %i.dc, splat (i16 -1)
  %i.dk = select <64 x i1> %i.di, <64 x i8> %i.df, <64 x i8> zeroinitializer
  %i.dl = bitcast <32 x i16> %i.dj to <64 x i8>
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dk, <64 x i8> %i.dl)
  %i.dn = shufflevector <64 x i8> %i.dm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.do = bitcast <64 x i8> %i.dn to <32 x i16>
  %i.dp = shl nuw nsw <32 x i16> %i.do, splat (i16 6)
  %i.dq = add nsw <32 x i16> %i.dc, splat (i16 -2)
  %i.dr = select <64 x i1> %i.x, <64 x i8> %i.df, <64 x i8> zeroinitializer
  %i.ds = bitcast <32 x i16> %i.dq to <64 x i8>
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dr, <64 x i8> %i.ds)
  %i.du = shufflevector <64 x i8> %i.dt, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dv = bitcast <64 x i8> %i.du to <32 x i16>
  %i.dw = shl <32 x i16> %i.dv, splat (i16 12)
  %i.dx = bitcast <64 x i8> %i.dh to <16 x i32>
  %i.dy = bitcast <32 x i16> %i.dp to <16 x i32>
  %i.dz = bitcast <32 x i16> %i.dw to <16 x i32>
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dx, <16 x i32> %i.dy, <16 x i32> %i.dz, i32 254)
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.cr, i64 %i.cz) ; 2 uses
  %i.eb = trunc i64 %6 to i32
  %i.ec = lshr i64 %6, 1                          ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = bitcast i32 %i.eb to <32 x i1>
  %i.ef = select <32 x i1> %i.ee, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.eg = bitcast <16 x i32> %i.ea to <32 x i16>  ; 2 uses
  %i.eh = lshr <32 x i16> %i.eg, splat (i16 4)
  %i.ei = or <32 x i16> %i.ef, %i.eg
  %i.ej = add nuw nsw <32 x i16> %i.eh, splat (i16 -10304)
  %i.ek = bitcast i32 %i.ed to <32 x i1>          ; 2 uses
  %i.el = select <32 x i1> %i.ek, <32 x i16> %i.ej, <32 x i16> %i.ei ; 3 uses
  %i.em = and i64 %i.ec, 2147483648
  %i.en = xor i64 %i.em, 4294967295
  %7 = tail call noundef i64 @llvm.pdep.i64(i64 %i.en, i64 %i.cz) ; 2 uses
  %i.eo = xor i64 %i.ct, %i.cu
  %.not407.i = icmp eq i64 %i.eo, -1
  br i1 %.not407.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.ep = xor i64 %i.aj, -1
  %i.eq = and i64 %i.y, %i.ep
  %i.er = shl i64 %i.eq, 2
  %8 = tail call noundef i64 @llvm.pext.i64(i64 %i.er, i64 %i.cz)
  %i.es = trunc i64 %8 to i32
  %i.et = icmp ult <32 x i16> %i.el, splat (i16 2048)
  %i.eu = bitcast i32 %i.es to <32 x i1>
  %i.ev = add <32 x i16> %i.el, splat (i16 10240) ; 2 uses
  %i.ew = icmp ult <32 x i16> %i.ev, splat (i16 2048)
  %i.ex = icmp ugt <32 x i16> %i.ev, splat (i16 1023)
  %i.ey = and <32 x i1> %i.ex, %i.ek
  %i.ez = or <32 x i1> %i.et, %i.ew
  %i.fa = and <32 x i1> %i.ez, %i.eu
  %i.fb = or <32 x i1> %i.ey, %i.fa
  %i.fc = bitcast <32 x i1> %i.fb to i32
  %.not408.i = icmp eq i32 %i.fc, 0
  br i1 %.not408.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %i.fe = sub nuw nsw i64 64, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.fe
  %i.fg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %7) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fg
  %i.fh = trunc i64 %notmask220.i.i to i32
  %i.fi = xor i32 %i.fh, -1
  %i.fj = bitcast i32 %i.fi to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.el, ptr align 1 %.0394411.i, <32 x i1> %i.fj)
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.fg
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fl = or i64 %i.i, %i.w                       ; 3 uses
  %i.fm = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.v, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.fn = bitcast <64 x i1> %i.fm to i64
  %i.fo = xor i64 %i.fl, %i.fn
  %i.fp = icmp eq i64 %i.fo, -1
  br i1 %i.fp, label %bb.n, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.n:                                             ; preds = %bb.m
  %i.fq = add <64 x i8> %i.g, splat (i8 62)
  %i.fr = select <64 x i1> %i.v, <64 x i8> %i.fq, <64 x i8> zeroinitializer
  %i.fs = xor <64 x i1> %i.v, splat (i1 true)
  %i.ft = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.ft, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %spec.select.v.i
  %i.fu = bitcast i64 %i.fl to <64 x i1>
  %i.fv = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.fr, <64 x i8> zeroinitializer, <64 x i1> %i.fu)
  %i.fw = shufflevector <64 x i8> %i.fv, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fx = zext <32 x i8> %i.fw to <32 x i16>
  %i.fy = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.fs)
  %i.fz = shufflevector <64 x i8> %i.fy, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ga = zext <32 x i8> %i.fz to <32 x i16>
  %i.gb = shl nuw nsw <32 x i16> %i.fx, splat (i16 6)
  %i.gc = add nuw nsw <32 x i16> %i.gb, %i.ga
  %i.gd = trunc i64 %i.fl to i32
  %i.ge = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gd)
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gf
  %i.gg = trunc i64 %notmask.i.i to i32
  %i.gh = xor i32 %i.gg, -1
  %i.gi = bitcast i32 %i.gh to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gc, ptr align 1 %.0394411.i, <32 x i1> %i.gi)
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.gf
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gk = icmp ult ptr %.0396410.i, %i.a
  br i1 %i.gk, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.gl = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.gm = bitcast i64 %i.gl to <64 x i1>          ; 3 uses
  %i.gn = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0396410.i, <64 x i1> %i.gm, <64 x i8> zeroinitializer) ; 11 uses
  %i.go = icmp sgt <64 x i8> %i.gn, splat (i8 -1)
  %i.gp = and <64 x i1> %i.go, %i.gm              ; 3 uses
  %i.gq = bitcast <64 x i1> %i.gp to i64          ; 3 uses
  %i.gr = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gp, <64 x i1> %i.gm)
  %i.gs = and i32 %i.gr, 255
  %.not.i9.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gt = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.d ; 2 uses
  %i.gu = icmp ult i64 %i.d, 33
  %i.gv = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gw = zext <32 x i8> %i.gv to <32 x i16>      ; 2 uses
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = trunc i64 %i.gl to i32
  %i.gy = bitcast i32 %i.gx to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gw, ptr align 1 %.0394411.i, <32 x i1> %i.gy)
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.gw, ptr %.0394411.i, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.0394411.i, i64 64
  %i.hb = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hc = zext <32 x i8> %i.hb to <32 x i16>
  %i.hd = trunc i64 %i.d to i32
  %i.he = add i32 %i.hd, -32
  %notmask247.i.i = shl nsw i32 -1, %i.he
  %i.hf = xor i32 %notmask247.i.i, -1
  %i.hg = bitcast i32 %i.hf to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hc, ptr nonnull align 1 %i.ha, <32 x i1> %i.hg)
  %i.hh = getelementptr [2 x i8], ptr %.0394411.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.hi = icmp ugt <64 x i8> %i.gn, splat (i8 -65) ; 5 uses
  %i.hj = bitcast <64 x i1> %i.hi to i64          ; 3 uses
  %i.hk = icmp ugt <64 x i8> %i.gn, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.hl = bitcast <64 x i1> %i.hk to i64          ; 2 uses
  %i.hm = and <64 x i8> %i.gn, splat (i8 -2)
  %i.hn = icmp eq <64 x i8> %i.hm, splat (i8 -64) ; 2 uses
  %i.ho = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hn, <64 x i1> %i.hn)
  %i.hp = and i32 %i.ho, 255
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hr = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hk, <64 x i1> %i.hk)
  %i.hs = and i32 %i.hr, 255
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.hu = icmp ugt <64 x i8> %i.gn, splat (i8 -17) ; 2 uses
  %i.hv = bitcast <64 x i1> %i.hu to i64          ; 2 uses
  %i.hw = xor <64 x i1> %i.gp, splat (i1 true)
  %i.hx = bitcast <64 x i1> %i.hw to i64
  %i.hy = and i64 %i.hx, %i.gl                    ; 2 uses
  %i.hz = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hi, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.ia = bitcast <64 x i1> %i.hz to i64          ; 2 uses
  %i.ib = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.hk, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ic = bitcast <64 x i1> %i.ib to i64          ; 2 uses
  %i.id = icmp eq i64 %i.hv, 0
  br i1 %i.id, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ie = or i64 %i.ia, %i.ic
  %i.if = or i64 %i.gq, %i.hj                     ; 2 uses
  %i.ig = xor i64 %i.if, %i.gl
  %.not244.i.i = icmp eq i64 %i.ie, %i.ig
  br i1 %.not244.i.i, label %bb.x, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.x:                                             ; preds = %bb.w
  %i.ih = bitcast i64 %i.if to <64 x i1>
  %i.ii = shufflevector <64 x i1> %i.ih, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ij = bitcast <64 x i1> %i.ii to i64
  %i.ik = add i64 %i.d, -1
  %i.il = shl nuw nsw i64 1, %i.ik
  %i.im = or i64 %i.il, %i.ij                     ; 3 uses
  %i.in = bitcast i64 %i.im to <64 x i1>
  %i.io = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.in)
  %i.ip = shufflevector <64 x i8> %i.io, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.iq = zext <32 x i8> %i.ip to <32 x i16>      ; 3 uses
  %i.ir = bitcast i64 %i.hy to <64 x i1>          ; 2 uses
  %.inner15 = select <64 x i1> %i.ir, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner16 = and <64 x i8> %.inner15, %i.gn      ; 3 uses
  %i.is = bitcast <32 x i16> %i.iq to <64 x i8>
  %i.it = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner16, <64 x i8> %i.is)
  %i.iu = shufflevector <64 x i8> %i.it, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.iv = shufflevector <64 x i1> %i.ir, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.iw = add nsw <32 x i16> %i.iq, splat (i16 -1)
  %i.ix = select <64 x i1> %i.iv, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.iy = bitcast <32 x i16> %i.iw to <64 x i8>
  %i.iz = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ix, <64 x i8> %i.iy)
  %i.ja = shufflevector <64 x i8> %i.iz, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jb = bitcast <64 x i8> %i.ja to <32 x i16>
  %i.jc = shl nuw nsw <32 x i16> %i.jb, splat (i16 6)
  %i.jd = add nsw <32 x i16> %i.iq, splat (i16 -2)
  %i.je = select <64 x i1> %i.hk, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jf = bitcast <32 x i16> %i.jd to <64 x i8>
  %i.jg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.je, <64 x i8> %i.jf)
  %i.jh = shufflevector <64 x i8> %i.jg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ji = bitcast <64 x i8> %i.jh to <32 x i16>
  %i.jj = shl <32 x i16> %i.ji, splat (i16 12)
  %i.jk = bitcast <64 x i8> %i.iu to <16 x i32>
  %i.jl = bitcast <32 x i16> %i.jc to <16 x i32>
  %i.jm = bitcast <32 x i16> %i.jj to <16 x i32>
  %i.jn = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jk, <16 x i32> %i.jl, <16 x i32> %i.jm, i32 254) ; 2 uses
  %i.jo = and i64 %i.hl, %i.gl
  %i.jp = shl i64 %i.jo, 2
  %9 = tail call noundef i64 @llvm.pext.i64(i64 %i.jp, i64 %i.im)
  %i.jq = trunc i64 %9 to i32
  %i.jr = bitcast <16 x i32> %i.jn to <32 x i16>  ; 2 uses
  %i.js = icmp ult <32 x i16> %i.jr, splat (i16 2048)
  %i.jt = bitcast i32 %i.jq to <32 x i1>
  %i.ju = bitcast <16 x i32> %i.jn to <32 x i16>
  %i.jv = and <32 x i16> %i.ju, splat (i16 -2048)
  %i.jw = icmp eq <32 x i16> %i.jv, splat (i16 -10240)
  %i.jx = or <32 x i1> %i.js, %i.jw
  %i.jy = and <32 x i1> %i.jx, %i.jt
  %i.jz = bitcast <32 x i1> %i.jy to i32
  %.not245.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not245.i.i, label %bb.y, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.y:                                             ; preds = %bb.x
  %i.ka = and i64 %i.im, %i.gl
  %10 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ka) ; 2 uses
  %i.kb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %10) ; 2 uses
  %i.kc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 false)
  %i.kd = sub nuw nsw i64 64, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.kd
  %notmask246.i.i = shl nsw i64 -1, %i.kb
  %i.kf = trunc i64 %notmask246.i.i to i32
  %i.kg = xor i32 %i.kf, -1
  %i.kh = bitcast i32 %i.kg to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.jr, ptr align 1 %.0394411.i, <32 x i1> %i.kh)
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.kb
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.kj = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.hu, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.kk = bitcast <64 x i1> %i.kj to i64          ; 3 uses
  %i.kl = or i64 %i.ia, %i.ic
  %i.km = or i64 %i.kl, %i.kk
  %i.kn = or i64 %i.gq, %i.hj                     ; 2 uses
  %i.ko = or i64 %i.kn, %i.kk
  %i.kp = bitcast i64 %i.ko to <64 x i1>
  %i.kq = shufflevector <64 x i1> %i.kp, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.kr = or <64 x i1> %i.kj, %i.kq
  %i.ks = bitcast <64 x i1> %i.kr to i64
  %i.kt = add i64 %i.d, -1
  %i.ku = shl nuw nsw i64 1, %i.kt
  %i.kv = or i64 %i.ku, %i.ks                     ; 4 uses
  %i.kw = bitcast i64 %i.kv to <64 x i1>
  %i.kx = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.kw)
  %i.ky = shufflevector <64 x i8> %i.kx, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kz = zext <32 x i8> %i.ky to <32 x i16>      ; 3 uses
  %i.la = bitcast i64 %i.hy to <64 x i1>          ; 2 uses
  %.inner18 = select <64 x i1> %i.la, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner19 = and <64 x i8> %.inner18, %i.gn      ; 3 uses
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
  %i.ln = select <64 x i1> %i.hk, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.lo = bitcast <32 x i16> %i.lm to <64 x i8>
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ln, <64 x i8> %i.lo)
  %i.lq = shufflevector <64 x i8> %i.lp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lr = bitcast <64 x i8> %i.lq to <32 x i16>
  %i.ls = shl <32 x i16> %i.lr, splat (i16 12)
  %i.lt = bitcast <64 x i8> %i.ld to <16 x i32>
  %i.lu = bitcast <32 x i16> %i.ll to <16 x i32>
  %i.lv = bitcast <32 x i16> %i.ls to <16 x i32>
  %i.lw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lt, <16 x i32> %i.lu, <16 x i32> %i.lv, i32 254)
  %11 = tail call noundef i64 @llvm.pext.i64(i64 %i.kk, i64 %i.kv) ; 2 uses
  %i.lx = trunc i64 %11 to i32
  %i.ly = lshr i64 %11, 1                         ; 2 uses
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = bitcast i32 %i.lx to <32 x i1>
  %i.mb = select <32 x i1> %i.ma, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.mc = bitcast <16 x i32> %i.lw to <32 x i16>  ; 2 uses
  %i.md = lshr <32 x i16> %i.mc, splat (i16 4)
  %i.me = or <32 x i16> %i.mb, %i.mc
  %i.mf = add nuw nsw <32 x i16> %i.md, splat (i16 -10304)
  %i.mg = bitcast i32 %i.lz to <32 x i1>          ; 2 uses
  %i.mh = select <32 x i1> %i.mg, <32 x i16> %i.mf, <32 x i16> %i.me ; 3 uses
  %i.mi = and i64 %i.ly, 2147483648
  %i.mj = xor i64 %i.mi, 4294967295
  %i.mk = and i64 %i.kv, %i.gl
  %12 = tail call noundef i64 @llvm.pdep.i64(i64 %i.mj, i64 %i.mk) ; 2 uses
  %i.ml = xor i64 %i.kn, %i.gl
  %.not241.i.i = icmp eq i64 %i.km, %i.ml
  br i1 %.not241.i.i, label %bb.aa, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.aa:                                            ; preds = %bb.z
  %i.mm = xor i64 %i.hv, %i.gl
  %i.mn = and i64 %i.mm, %i.hl
  %i.mo = shl i64 %i.mn, 2
  %13 = tail call noundef i64 @llvm.pext.i64(i64 %i.mo, i64 %i.kv)
  %i.mp = trunc i64 %13 to i32
  %i.mq = icmp ult <32 x i16> %i.mh, splat (i16 2048)
  %i.mr = bitcast i32 %i.mp to <32 x i1>
  %i.ms = add <32 x i16> %i.mh, splat (i16 10240) ; 2 uses
  %i.mt = icmp ult <32 x i16> %i.ms, splat (i16 2048)
  %i.mu = icmp ugt <32 x i16> %i.ms, splat (i16 1023)
  %i.mv = and <32 x i1> %i.mu, %i.mg
  %i.mw = or <32 x i1> %i.mq, %i.mt
  %i.mx = and <32 x i1> %i.mw, %i.mr
  %i.my = or <32 x i1> %i.mv, %i.mx
  %i.mz = bitcast <32 x i1> %i.my to i32
  %.not.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.na = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %12, i1 false)
  %i.nb = sub nuw nsw i64 64, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.nb
  %i.nd = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %12) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.nd
  %i.ne = trunc i64 %notmask243.i.i to i32
  %i.nf = xor i32 %i.ne, -1
  %i.ng = bitcast i32 %i.nf to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mh, ptr align 1 %.0394411.i, <32 x i1> %i.ng)
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.nd
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ni = or i64 %i.gq, %i.hj
  %i.nj = and i64 %i.ni, %i.gl                    ; 3 uses
  %i.nk = xor i64 %i.nj, %i.gl
  %i.nl = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hi, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.nm = bitcast <64 x i1> %i.nl to i64
  %.not239.i.i = icmp eq i64 %i.nk, %i.nm
  br i1 %.not239.i.i, label %bb.ad, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.nn = add <64 x i8> %i.gn, splat (i8 62)
  %i.no = select <64 x i1> %i.hi, <64 x i8> %i.nn, <64 x i8> zeroinitializer
  %i.np = xor <64 x i1> %i.hi, splat (i1 true)
  %i.nq = bitcast <64 x i1> %i.np to i64
  %i.nr = and i64 %i.nq, %i.gl                    ; 2 uses
  %14 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nr)
  %i.ns = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %14, i1 false)
  %i.nt = sub nuw nsw i64 64, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %.0396410.i, i64 %i.nt
  %i.nv = bitcast i64 %i.nj to <64 x i1>
  %i.nw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.no, <64 x i8> zeroinitializer, <64 x i1> %i.nv)
  %i.nx = shufflevector <64 x i8> %i.nw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ny = zext <32 x i8> %i.nx to <32 x i16>
  %i.nz = bitcast i64 %i.nr to <64 x i1>
  %i.oa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gn, <64 x i8> zeroinitializer, <64 x i1> %i.nz)
  %i.ob = shufflevector <64 x i8> %i.oa, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oc = zext <32 x i8> %i.ob to <32 x i16>
  %i.od = shl nuw nsw <32 x i16> %i.ny, splat (i16 6)
  %i.oe = add nuw nsw <32 x i16> %i.od, %i.oc
  %15 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nj)
  %i.of = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %15) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.of
  %i.og = trunc i64 %notmask240.i.i to i32
  %i.oh = xor i32 %i.og, -1
  %i.oi = bitcast i32 %i.oh to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oe, ptr align 1 %.0394411.i, <32 x i1> %i.oi)
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.0394411.i, i64 %i.of
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0394411.i.be = phi ptr [ %i.u, %bb.c ], [ %i.gz, %bb.r ], [ %i.nh, %bb.ab ], [ %i.cp, %bb.i ], [ %i.ki, %bb.y ], [ %i.hh, %bb.s ], [ %i.oj, %bb.ad ], [ %i.fk, %bb.l ], [ %i.gj, %bb.n ]
  %.0396410.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gt, %bb.r ], [ %i.nc, %bb.ab ], [ %i.cl, %bb.i ], [ %i.ke, %bb.y ], [ %i.gt, %bb.s ], [ %i.nu, %bb.ad ], [ %i.ff, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !255

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE0EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0394411.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
  %i.ok = icmp eq ptr %.2.i, null
  %i.ol = ptrtoint ptr %.2.i to i64
  %i.om = ptrtoint ptr %3 to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = ashr exact i64 %i.on, 1
  %.0 = select i1 %i.ok, i64 0, i64 %i.oo
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
  %4 = tail call noundef i64 @llvm.pext.i64(i64 %i.cb, i64 %i.az)
  %i.cc = trunc i64 %4 to i32
  %i.cd = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.ce = icmp ult <32 x i16> %i.cd, splat (i16 2048)
  %i.cf = bitcast i32 %i.cc to <32 x i1>
  %i.cg = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.ch = and <32 x i16> %i.cg, splat (i16 -2048)
  %i.ci = icmp eq <32 x i16> %i.ch, splat (i16 -10240)
  %i.cj = or <32 x i1> %i.ce, %i.ci
  %i.ck = and <32 x i1> %i.cj, %i.cf
  %i.cl = bitcast <32 x i1> %i.ck to i32
  %.not232.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not232.i.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %5 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.az) ; 2 uses
  %i.cm = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %5) ; 2 uses
  %i.cn = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %5, i1 false)
  %i.co = sub nuw nsw i64 64, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.co
  %i.cq = bitcast <16 x i32> %i.ca to <64 x i8>
  %i.cr = shufflevector <64 x i8> %i.cq, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.cm
  %i.cs = trunc i64 %notmask233.i.i to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = bitcast <64 x i8> %i.cr to <32 x i16>
  %i.cv = bitcast i32 %i.ct to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cu, ptr align 1 %.0438455.i, <32 x i1> %i.cv)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.cm
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cx = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.am, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.cy = bitcast <64 x i1> %i.cx to i64          ; 3 uses
  %i.cz = or i64 %i.aq, %i.as
  %i.da = or i64 %i.cz, %i.cy
  %i.db = or i64 %i.i, %i.aa                      ; 2 uses
  %i.dc = or i64 %i.db, %i.cy
  %i.dd = bitcast i64 %i.dc to <64 x i1>
  %i.de = shufflevector <64 x i1> %i.dd, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.df = or <64 x i1> %i.cx, %i.de               ; 2 uses
  %i.dg = bitcast <64 x i1> %i.df to i64          ; 3 uses
  %i.dh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.df)
  %i.di = shufflevector <64 x i8> %i.dh, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dj = zext <32 x i8> %i.di to <32 x i16>      ; 3 uses
  %.inner12 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dk = bitcast <32 x i16> %i.dj to <64 x i8>
  %i.dl = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dm = and <64 x i8> %.inner12, %i.dl          ; 3 uses
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dm, <64 x i8> %i.dk)
  %i.do = shufflevector <64 x i8> %i.dn, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dp = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dq = add nsw <32 x i16> %i.dj, splat (i16 -1)
  %i.dr = select <64 x i1> %i.dp, <64 x i8> %i.dm, <64 x i8> zeroinitializer
  %i.ds = bitcast <32 x i16> %i.dq to <64 x i8>
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dr, <64 x i8> %i.ds)
  %i.du = shufflevector <64 x i8> %i.dt, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dv = bitcast <64 x i8> %i.du to <32 x i16>
  %i.dw = shl nuw nsw <32 x i16> %i.dv, splat (i16 6)
  %i.dx = add nsw <32 x i16> %i.dj, splat (i16 -2)
  %i.dy = select <64 x i1> %i.ab, <64 x i8> %i.dm, <64 x i8> zeroinitializer
  %i.dz = bitcast <32 x i16> %i.dx to <64 x i8>
  %i.ea = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dy, <64 x i8> %i.dz)
  %i.eb = shufflevector <64 x i8> %i.ea, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ec = bitcast <64 x i8> %i.eb to <32 x i16>
  %i.ed = shl <32 x i16> %i.ec, splat (i16 12)
  %i.ee = bitcast <64 x i8> %i.do to <16 x i32>
  %i.ef = bitcast <32 x i16> %i.dw to <16 x i32>
  %i.eg = bitcast <32 x i16> %i.ed to <16 x i32>
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ee, <16 x i32> %i.ef, <16 x i32> %i.eg, i32 254)
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.cy, i64 %i.dg) ; 2 uses
  %i.ei = trunc i64 %6 to i32
  %i.ej = lshr i64 %6, 1                          ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = bitcast i32 %i.ei to <32 x i1>
  %i.em = select <32 x i1> %i.el, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.en = bitcast <16 x i32> %i.eh to <32 x i16>  ; 2 uses
  %i.eo = lshr <32 x i16> %i.en, splat (i16 4)
  %i.ep = or <32 x i16> %i.em, %i.en
  %i.eq = add nuw nsw <32 x i16> %i.eo, splat (i16 -10304)
  %i.er = bitcast i32 %i.ek to <32 x i1>          ; 2 uses
  %i.es = select <32 x i1> %i.er, <32 x i16> %i.eq, <32 x i16> %i.ep ; 3 uses
  %i.et = and i64 %i.ej, 2147483648
  %i.eu = xor i64 %i.et, 4294967295
  %7 = tail call noundef i64 @llvm.pdep.i64(i64 %i.eu, i64 %i.dg) ; 2 uses
  %i.ev = xor i64 %i.da, %i.db
  %.not451.i = icmp eq i64 %i.ev, -1
  br i1 %.not451.i, label %bb.k, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.ew = xor i64 %i.an, -1
  %i.ex = and i64 %i.ac, %i.ew
  %i.ey = shl i64 %i.ex, 2
  %8 = tail call noundef i64 @llvm.pext.i64(i64 %i.ey, i64 %i.dg)
  %i.ez = trunc i64 %8 to i32
  %i.fa = icmp ult <32 x i16> %i.es, splat (i16 2048)
  %i.fb = bitcast i32 %i.ez to <32 x i1>
  %i.fc = add <32 x i16> %i.es, splat (i16 10240) ; 2 uses
  %i.fd = icmp ult <32 x i16> %i.fc, splat (i16 2048)
  %i.fe = icmp ugt <32 x i16> %i.fc, splat (i16 1023)
  %i.ff = and <32 x i1> %i.fe, %i.er
  %i.fg = or <32 x i1> %i.fa, %i.fd
  %i.fh = and <32 x i1> %i.fg, %i.fb
  %i.fi = or <32 x i1> %i.ff, %i.fh
  %i.fj = bitcast <32 x i1> %i.fi to i32
  %.not452.i = icmp eq i32 %i.fj, 0
  br i1 %.not452.i, label %bb.l, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.l:                                             ; preds = %bb.k
  %i.fk = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %i.fl = sub nuw nsw i64 64, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.fl
  %i.fn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %7) ; 2 uses
  %i.fo = bitcast <32 x i16> %i.es to <64 x i8>
  %i.fp = shufflevector <64 x i8> %i.fo, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fn
  %i.fq = trunc i64 %notmask230.i.i to i32
  %i.fr = xor i32 %i.fq, -1
  %i.fs = bitcast <64 x i8> %i.fp to <32 x i16>
  %i.ft = bitcast i32 %i.fr to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fs, ptr align 1 %.0438455.i, <32 x i1> %i.ft)
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.fn
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fv = or i64 %i.i, %i.aa                      ; 3 uses
  %i.fw = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.z, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.fx = bitcast <64 x i1> %i.fw to i64
  %i.fy = xor i64 %i.fv, %i.fx
  %i.fz = icmp eq i64 %i.fy, -1
  br i1 %i.fz, label %bb.n, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.n:                                             ; preds = %bb.m
  %i.ga = add <64 x i8> %i.g, splat (i8 62)
  %i.gb = select <64 x i1> %i.z, <64 x i8> %i.ga, <64 x i8> zeroinitializer
  %i.gc = xor <64 x i1> %i.z, splat (i1 true)
  %i.gd = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.gd, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %spec.select.v.i
  %i.ge = bitcast i64 %i.fv to <64 x i1>
  %i.gf = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gb, <64 x i8> zeroinitializer, <64 x i1> %i.ge)
  %i.gg = shufflevector <64 x i8> %i.gf, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gh = zext <32 x i8> %i.gg to <32 x i16>
  %i.gi = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.gc)
  %i.gj = shufflevector <64 x i8> %i.gi, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gk = zext <32 x i8> %i.gj to <32 x i16>
  %i.gl = shl nuw nsw <32 x i16> %i.gh, splat (i16 6)
  %i.gm = add nuw nsw <32 x i16> %i.gl, %i.gk
  %i.gn = bitcast <32 x i16> %i.gm to <64 x i8>
  %i.go = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gp = trunc i64 %i.fv to i32
  %i.gq = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gp)
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gr
  %i.gs = trunc i64 %notmask.i.i to i32
  %i.gt = xor i32 %i.gs, -1
  %i.gu = bitcast <64 x i8> %i.go to <32 x i16>
  %i.gv = bitcast i32 %i.gt to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gu, ptr align 1 %.0438455.i, <32 x i1> %i.gv)
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.gr
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.gx = icmp ult ptr %.0440454.i, %i.a
  br i1 %i.gx, label %bb.p, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.p:                                             ; preds = %bb.o
  %notmask.i8.i = shl nsw i64 -1, %i.d
  %i.gy = xor i64 %notmask.i8.i, -1               ; 12 uses
  %i.gz = bitcast i64 %i.gy to <64 x i1>          ; 3 uses
  %i.ha = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0440454.i, <64 x i1> %i.gz, <64 x i8> zeroinitializer) ; 11 uses
  %i.hb = icmp sgt <64 x i8> %i.ha, splat (i8 -1)
  %i.hc = and <64 x i1> %i.hb, %i.gz              ; 3 uses
  %i.hd = bitcast <64 x i1> %i.hc to i64          ; 3 uses
  %i.he = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hc, <64 x i1> %i.gz)
  %i.hf = and i32 %i.he, 255
  %.not.i9.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i9.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hg = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.d ; 2 uses
  %i.hh = icmp ult i64 %i.d, 33
  %i.hi = shufflevector <64 x i8> %i.ha, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hj = zext <32 x i8> %i.hi to <32 x i16>
  %i.hk = bitcast <32 x i16> %i.hj to <64 x i8>
  %i.hl = shufflevector <64 x i8> %i.hk, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62> ; 2 uses
  br i1 %i.hh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hm = trunc i64 %i.gy to i32
  %i.hn = bitcast <64 x i8> %i.hl to <32 x i16>
  %i.ho = bitcast i32 %i.hm to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hn, ptr align 1 %.0438455.i, <32 x i1> %i.ho)
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hl, ptr %.0438455.i, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0438455.i, i64 64
  %i.hr = shufflevector <64 x i8> %i.ha, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hs = zext <32 x i8> %i.hr to <32 x i16>
  %i.ht = bitcast <32 x i16> %i.hs to <64 x i8>
  %i.hu = shufflevector <64 x i8> %i.ht, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.hv = trunc i64 %i.d to i32
  %i.hw = add i32 %i.hv, -32
  %notmask259.i.i = shl nsw i32 -1, %i.hw
  %i.hx = xor i32 %notmask259.i.i, -1
  %i.hy = bitcast <64 x i8> %i.hu to <32 x i16>
  %i.hz = bitcast i32 %i.hx to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hy, ptr nonnull align 1 %i.hq, <32 x i1> %i.hz)
  %i.ia = getelementptr [2 x i8], ptr %.0438455.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ib = icmp ugt <64 x i8> %i.ha, splat (i8 -65) ; 5 uses
  %i.ic = bitcast <64 x i1> %i.ib to i64          ; 3 uses
  %i.id = icmp ugt <64 x i8> %i.ha, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.ie = bitcast <64 x i1> %i.id to i64          ; 2 uses
  %i.if = and <64 x i8> %i.ha, splat (i8 -2)
  %i.ig = icmp eq <64 x i8> %i.if, splat (i8 -64) ; 2 uses
  %i.ih = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ig, <64 x i1> %i.ig)
  %i.ii = and i32 %i.ih, 255
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ik = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.id, <64 x i1> %i.id)
  %i.il = and i32 %i.ik, 255
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.in = icmp ugt <64 x i8> %i.ha, splat (i8 -17) ; 2 uses
  %i.io = bitcast <64 x i1> %i.in to i64          ; 2 uses
  %i.ip = xor <64 x i1> %i.hc, splat (i1 true)
  %i.iq = bitcast <64 x i1> %i.ip to i64
  %i.ir = and i64 %i.iq, %i.gy                    ; 2 uses
  %i.is = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ib, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.it = bitcast <64 x i1> %i.is to i64          ; 2 uses
  %i.iu = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.id, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.iv = bitcast <64 x i1> %i.iu to i64          ; 2 uses
  %i.iw = icmp eq i64 %i.io, 0
  br i1 %i.iw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ix = or i64 %i.it, %i.iv
  %i.iy = or i64 %i.hd, %i.ic                     ; 2 uses
  %i.iz = xor i64 %i.iy, %i.gy
  %.not256.i.i = icmp eq i64 %i.ix, %i.iz
  br i1 %.not256.i.i, label %bb.x, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.x:                                             ; preds = %bb.w
  %i.ja = bitcast i64 %i.iy to <64 x i1>
  %i.jb = shufflevector <64 x i1> %i.ja, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jc = bitcast <64 x i1> %i.jb to i64
  %i.jd = add i64 %i.d, -1
  %i.je = shl nuw nsw i64 1, %i.jd
  %i.jf = or i64 %i.je, %i.jc                     ; 3 uses
  %i.jg = bitcast i64 %i.jf to <64 x i1>
  %i.jh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.jg)
  %i.ji = shufflevector <64 x i8> %i.jh, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jj = zext <32 x i8> %i.ji to <32 x i16>      ; 3 uses
  %i.jk = bitcast i64 %i.ir to <64 x i1>          ; 2 uses
  %.inner15 = select <64 x i1> %i.jk, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner16 = and <64 x i8> %.inner15, %i.ha      ; 3 uses
  %i.jl = bitcast <32 x i16> %i.jj to <64 x i8>
  %i.jm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner16, <64 x i8> %i.jl)
  %i.jn = shufflevector <64 x i8> %i.jm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jo = shufflevector <64 x i1> %i.jk, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jp = add nsw <32 x i16> %i.jj, splat (i16 -1)
  %i.jq = select <64 x i1> %i.jo, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jr = bitcast <32 x i16> %i.jp to <64 x i8>
  %i.js = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jq, <64 x i8> %i.jr)
  %i.jt = shufflevector <64 x i8> %i.js, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ju = bitcast <64 x i8> %i.jt to <32 x i16>
  %i.jv = shl nuw nsw <32 x i16> %i.ju, splat (i16 6)
  %i.jw = add nsw <32 x i16> %i.jj, splat (i16 -2)
  %i.jx = select <64 x i1> %i.id, <64 x i8> %.inner16, <64 x i8> zeroinitializer
  %i.jy = bitcast <32 x i16> %i.jw to <64 x i8>
  %i.jz = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jx, <64 x i8> %i.jy)
  %i.ka = shufflevector <64 x i8> %i.jz, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.kb = bitcast <64 x i8> %i.ka to <32 x i16>
  %i.kc = shl <32 x i16> %i.kb, splat (i16 12)
  %i.kd = bitcast <64 x i8> %i.jn to <16 x i32>
  %i.ke = bitcast <32 x i16> %i.jv to <16 x i32>
  %i.kf = bitcast <32 x i16> %i.kc to <16 x i32>
  %i.kg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kd, <16 x i32> %i.ke, <16 x i32> %i.kf, i32 254) ; 3 uses
  %i.kh = and i64 %i.ie, %i.gy
  %i.ki = shl i64 %i.kh, 2
  %9 = tail call noundef i64 @llvm.pext.i64(i64 %i.ki, i64 %i.jf)
  %i.kj = trunc i64 %9 to i32
  %i.kk = bitcast <16 x i32> %i.kg to <32 x i16>
  %i.kl = icmp ult <32 x i16> %i.kk, splat (i16 2048)
  %i.km = bitcast i32 %i.kj to <32 x i1>
  %i.kn = bitcast <16 x i32> %i.kg to <32 x i16>
  %i.ko = and <32 x i16> %i.kn, splat (i16 -2048)
  %i.kp = icmp eq <32 x i16> %i.ko, splat (i16 -10240)
  %i.kq = or <32 x i1> %i.kl, %i.kp
  %i.kr = and <32 x i1> %i.kq, %i.km
  %i.ks = bitcast <32 x i1> %i.kr to i32
  %.not257.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not257.i.i, label %bb.y, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.y:                                             ; preds = %bb.x
  %i.kt = and i64 %i.jf, %i.gy
  %10 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kt) ; 2 uses
  %i.ku = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %10) ; 2 uses
  %i.kv = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 false)
  %i.kw = sub nuw nsw i64 64, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.kw
  %i.ky = bitcast <16 x i32> %i.kg to <64 x i8>
  %i.kz = shufflevector <64 x i8> %i.ky, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask258.i.i = shl nsw i64 -1, %i.ku
  %i.la = trunc i64 %notmask258.i.i to i32
  %i.lb = xor i32 %i.la, -1
  %i.lc = bitcast <64 x i8> %i.kz to <32 x i16>
  %i.ld = bitcast i32 %i.lb to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.lc, ptr align 1 %.0438455.i, <32 x i1> %i.ld)
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.ku
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.lf = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.in, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.lg = bitcast <64 x i1> %i.lf to i64          ; 3 uses
  %i.lh = or i64 %i.it, %i.iv
  %i.li = or i64 %i.lh, %i.lg
  %i.lj = or i64 %i.hd, %i.ic                     ; 2 uses
  %i.lk = or i64 %i.lj, %i.lg
  %i.ll = bitcast i64 %i.lk to <64 x i1>
  %i.lm = shufflevector <64 x i1> %i.ll, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ln = or <64 x i1> %i.lf, %i.lm
  %i.lo = bitcast <64 x i1> %i.ln to i64
  %i.lp = add i64 %i.d, -1
  %i.lq = shl nuw nsw i64 1, %i.lp
  %i.lr = or i64 %i.lq, %i.lo                     ; 4 uses
  %i.ls = bitcast i64 %i.lr to <64 x i1>
  %i.lt = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ls)
  %i.lu = shufflevector <64 x i8> %i.lt, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lv = zext <32 x i8> %i.lu to <32 x i16>      ; 3 uses
  %i.lw = bitcast i64 %i.ir to <64 x i1>          ; 2 uses
  %.inner18 = select <64 x i1> %i.lw, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner19 = and <64 x i8> %.inner18, %i.ha      ; 3 uses
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
  %i.mj = select <64 x i1> %i.id, <64 x i8> %.inner19, <64 x i8> zeroinitializer
  %i.mk = bitcast <32 x i16> %i.mi to <64 x i8>
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mj, <64 x i8> %i.mk)
  %i.mm = shufflevector <64 x i8> %i.ml, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mn = bitcast <64 x i8> %i.mm to <32 x i16>
  %i.mo = shl <32 x i16> %i.mn, splat (i16 12)
  %i.mp = bitcast <64 x i8> %i.lz to <16 x i32>
  %i.mq = bitcast <32 x i16> %i.mh to <16 x i32>
  %i.mr = bitcast <32 x i16> %i.mo to <16 x i32>
  %i.ms = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mp, <16 x i32> %i.mq, <16 x i32> %i.mr, i32 254)
  %11 = tail call noundef i64 @llvm.pext.i64(i64 %i.lg, i64 %i.lr) ; 2 uses
  %i.mt = trunc i64 %11 to i32
  %i.mu = lshr i64 %11, 1                         ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = bitcast i32 %i.mt to <32 x i1>
  %i.mx = select <32 x i1> %i.mw, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.my = bitcast <16 x i32> %i.ms to <32 x i16>  ; 2 uses
  %i.mz = lshr <32 x i16> %i.my, splat (i16 4)
  %i.na = or <32 x i16> %i.mx, %i.my
  %i.nb = add nuw nsw <32 x i16> %i.mz, splat (i16 -10304)
  %i.nc = bitcast i32 %i.mv to <32 x i1>          ; 2 uses
  %i.nd = select <32 x i1> %i.nc, <32 x i16> %i.nb, <32 x i16> %i.na ; 3 uses
  %i.ne = and i64 %i.mu, 2147483648
  %i.nf = xor i64 %i.ne, 4294967295
  %i.ng = and i64 %i.lr, %i.gy
  %12 = tail call noundef i64 @llvm.pdep.i64(i64 %i.nf, i64 %i.ng) ; 2 uses
  %i.nh = xor i64 %i.lj, %i.gy
  %.not253.i.i = icmp eq i64 %i.li, %i.nh
  br i1 %.not253.i.i, label %bb.aa, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ni = xor i64 %i.io, %i.gy
  %i.nj = and i64 %i.ni, %i.ie
  %i.nk = shl i64 %i.nj, 2
  %13 = tail call noundef i64 @llvm.pext.i64(i64 %i.nk, i64 %i.lr)
  %i.nl = trunc i64 %13 to i32
  %i.nm = icmp ult <32 x i16> %i.nd, splat (i16 2048)
  %i.nn = bitcast i32 %i.nl to <32 x i1>
  %i.no = add <32 x i16> %i.nd, splat (i16 10240) ; 2 uses
  %i.np = icmp ult <32 x i16> %i.no, splat (i16 2048)
  %i.nq = icmp ugt <32 x i16> %i.no, splat (i16 1023)
  %i.nr = and <32 x i1> %i.nq, %i.nc
  %i.ns = or <32 x i1> %i.nm, %i.np
  %i.nt = and <32 x i1> %i.ns, %i.nn
  %i.nu = or <32 x i1> %i.nr, %i.nt
  %i.nv = bitcast <32 x i1> %i.nu to i32
  %.not.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i, label %bb.ab, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.nw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %12, i1 false)
  %i.nx = sub nuw nsw i64 64, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.nx
  %i.nz = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %12) ; 2 uses
  %i.oa = bitcast <32 x i16> %i.nd to <64 x i8>
  %i.ob = shufflevector <64 x i8> %i.oa, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.nz
  %i.oc = trunc i64 %notmask255.i.i to i32
  %i.od = xor i32 %i.oc, -1
  %i.oe = bitcast <64 x i8> %i.ob to <32 x i16>
  %i.of = bitcast i32 %i.od to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oe, ptr align 1 %.0438455.i, <32 x i1> %i.of)
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.nz
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.oh = or i64 %i.hd, %i.ic
  %i.oi = and i64 %i.oh, %i.gy                    ; 3 uses
  %i.oj = xor i64 %i.oi, %i.gy
  %i.ok = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ib, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.ol = bitcast <64 x i1> %i.ok to i64
  %.not251.i.i = icmp eq i64 %i.oj, %i.ol
  br i1 %.not251.i.i, label %bb.ad, label %_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.om = add <64 x i8> %i.ha, splat (i8 62)
  %i.on = select <64 x i1> %i.ib, <64 x i8> %i.om, <64 x i8> zeroinitializer
  %i.oo = xor <64 x i1> %i.ib, splat (i1 true)
  %i.op = bitcast <64 x i1> %i.oo to i64
  %i.oq = and i64 %i.op, %i.gy                    ; 2 uses
  %14 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.oq)
  %i.or = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %14, i1 false)
  %i.os = sub nuw nsw i64 64, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %.0440454.i, i64 %i.os
  %i.ou = bitcast i64 %i.oi to <64 x i1>
  %i.ov = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.on, <64 x i8> zeroinitializer, <64 x i1> %i.ou)
  %i.ow = shufflevector <64 x i8> %i.ov, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ox = zext <32 x i8> %i.ow to <32 x i16>
  %i.oy = bitcast i64 %i.oq to <64 x i1>
  %i.oz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ha, <64 x i8> zeroinitializer, <64 x i1> %i.oy)
  %i.pa = shufflevector <64 x i8> %i.oz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pb = zext <32 x i8> %i.pa to <32 x i16>
  %i.pc = shl nuw nsw <32 x i16> %i.ox, splat (i16 6)
  %i.pd = add nuw nsw <32 x i16> %i.pc, %i.pb
  %i.pe = bitcast <32 x i16> %i.pd to <64 x i8>
  %i.pf = shufflevector <64 x i8> %i.pe, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %15 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.oi)
  %i.pg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %15) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.pg
  %i.ph = trunc i64 %notmask252.i.i to i32
  %i.pi = xor i32 %i.ph, -1
  %i.pj = bitcast <64 x i8> %i.pf to <32 x i16>
  %i.pk = bitcast i32 %i.pi to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pj, ptr align 1 %.0438455.i, <32 x i1> %i.pk)
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.0438455.i, i64 %i.pg
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0438455.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hp, %bb.r ], [ %i.og, %bb.ab ], [ %i.cw, %bb.i ], [ %i.le, %bb.y ], [ %i.ia, %bb.s ], [ %i.pl, %bb.ad ], [ %i.fu, %bb.l ], [ %i.gw, %bb.n ]
  %.0440454.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hg, %bb.r ], [ %i.ny, %bb.ab ], [ %i.cp, %bb.i ], [ %i.kx, %bb.y ], [ %i.hg, %bb.s ], [ %i.ot, %bb.ad ], [ %i.fm, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !256

_ZN7simdutf7icelake12_GLOBAL__N_133fast_avx512_convert_utf8_to_utf16ILNS_10endiannessE1EEESt4pairIPKcPDsES6_mS7_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac
  %.2.i = phi ptr [ %.0438455.i, %bb.o ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ac ] ; 2 uses
  %i.pm = icmp eq ptr %.2.i, null
  %i.pn = ptrtoint ptr %.2.i to i64
  %i.po = ptrtoint ptr %3 to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = ashr exact i64 %i.pp, 1
  %.0 = select i1 %i.pm, i64 0, i64 %i.pq
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
  %4 = tail call noundef i64 @llvm.pext.i64(i64 %i.bx, i64 %i.av)
  %i.by = trunc i64 %4 to i32
  %i.bz = bitcast <16 x i32> %i.bw to <32 x i16>  ; 2 uses
  %i.ca = icmp ult <32 x i16> %i.bz, splat (i16 2048)
  %i.cb = bitcast i32 %i.by to <32 x i1>
  %i.cc = bitcast <16 x i32> %i.bw to <32 x i16>
  %i.cd = and <32 x i16> %i.cc, splat (i16 -2048)
  %i.ce = icmp eq <32 x i16> %i.cd, splat (i16 -10240)
  %i.cf = or <32 x i1> %i.ca, %i.ce
  %i.cg = and <32 x i1> %i.cf, %i.cb
  %i.ch = bitcast <32 x i1> %i.cg to i32
  %.not222.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not222.i.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %5 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.av) ; 2 uses
  %i.ci = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %5) ; 2 uses
  %i.cj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %5, i1 false)
  %i.ck = sub nuw nsw i64 64, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.ck
  %notmask223.i.i = shl nsw i64 -1, %i.ci
  %i.cm = trunc i64 %notmask223.i.i to i32
  %i.cn = xor i32 %i.cm, -1
  %i.co = bitcast i32 %i.cn to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.bz, ptr align 1 %.0448.i, <32 x i1> %i.co)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.ci
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cq = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.ai, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.cr = bitcast <64 x i1> %i.cq to i64          ; 3 uses
  %i.cs = or i64 %i.am, %i.ao
  %i.ct = or i64 %i.cs, %i.cr
  %i.cu = or i64 %i.i, %i.w                       ; 2 uses
  %i.cv = or i64 %i.cu, %i.cr
  %i.cw = bitcast i64 %i.cv to <64 x i1>
  %i.cx = shufflevector <64 x i1> %i.cw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.cy = or <64 x i1> %i.cq, %i.cx               ; 2 uses
  %i.cz = bitcast <64 x i1> %i.cy to i64          ; 3 uses
  %i.da = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.cy)
  %i.db = shufflevector <64 x i8> %i.da, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dc = zext <32 x i8> %i.db to <32 x i16>      ; 3 uses
  %.inner28 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dd = bitcast <32 x i16> %i.dc to <64 x i8>
  %i.de = bitcast <8 x i64> %i.f to <64 x i8>
  %i.df = and <64 x i8> %.inner28, %i.de          ; 3 uses
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.df, <64 x i8> %i.dd)
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.di = shufflevector <64 x i1> %i.ak, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dj = add nsw <32 x i16> %i.dc, splat (i16 -1)
  %i.dk = select <64 x i1> %i.di, <64 x i8> %i.df, <64 x i8> zeroinitializer
  %i.dl = bitcast <32 x i16> %i.dj to <64 x i8>
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dk, <64 x i8> %i.dl)
  %i.dn = shufflevector <64 x i8> %i.dm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.do = bitcast <64 x i8> %i.dn to <32 x i16>
  %i.dp = shl nuw nsw <32 x i16> %i.do, splat (i16 6)
  %i.dq = add nsw <32 x i16> %i.dc, splat (i16 -2)
  %i.dr = select <64 x i1> %i.x, <64 x i8> %i.df, <64 x i8> zeroinitializer
  %i.ds = bitcast <32 x i16> %i.dq to <64 x i8>
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dr, <64 x i8> %i.ds)
  %i.du = shufflevector <64 x i8> %i.dt, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dv = bitcast <64 x i8> %i.du to <32 x i16>
  %i.dw = shl <32 x i16> %i.dv, splat (i16 12)
  %i.dx = bitcast <64 x i8> %i.dh to <16 x i32>
  %i.dy = bitcast <32 x i16> %i.dp to <16 x i32>
  %i.dz = bitcast <32 x i16> %i.dw to <16 x i32>
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dx, <16 x i32> %i.dy, <16 x i32> %i.dz, i32 254)
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.cr, i64 %i.cz) ; 2 uses
  %i.eb = trunc i64 %6 to i32
  %i.ec = lshr i64 %6, 1                          ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = bitcast i32 %i.eb to <32 x i1>
  %i.ef = select <32 x i1> %i.ee, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.eg = bitcast <16 x i32> %i.ea to <32 x i16>  ; 2 uses
  %i.eh = lshr <32 x i16> %i.eg, splat (i16 4)
  %i.ei = or <32 x i16> %i.ef, %i.eg
  %i.ej = add nuw nsw <32 x i16> %i.eh, splat (i16 -10304)
  %i.ek = bitcast i32 %i.ed to <32 x i1>          ; 2 uses
  %i.el = select <32 x i1> %i.ek, <32 x i16> %i.ej, <32 x i16> %i.ei ; 3 uses
  %i.em = and i64 %i.ec, 2147483648
  %i.en = xor i64 %i.em, 4294967295
  %7 = tail call noundef i64 @llvm.pdep.i64(i64 %i.en, i64 %i.cz) ; 2 uses
  %i.eo = xor i64 %i.ct, %i.cu
  %.not442.i = icmp eq i64 %i.eo, -1
  br i1 %.not442.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ep = xor i64 %i.aj, -1
  %i.eq = and i64 %i.y, %i.ep
  %i.er = shl i64 %i.eq, 2
  %8 = tail call noundef i64 @llvm.pext.i64(i64 %i.er, i64 %i.cz)
  %i.es = trunc i64 %8 to i32
  %i.et = icmp ult <32 x i16> %i.el, splat (i16 2048)
  %i.eu = bitcast i32 %i.es to <32 x i1>
  %i.ev = add <32 x i16> %i.el, splat (i16 10240) ; 2 uses
  %i.ew = icmp ult <32 x i16> %i.ev, splat (i16 2048)
  %i.ex = icmp ugt <32 x i16> %i.ev, splat (i16 1023)
  %i.ey = and <32 x i1> %i.ex, %i.ek
  %i.ez = or <32 x i1> %i.et, %i.ew
  %i.fa = and <32 x i1> %i.ez, %i.eu
  %i.fb = or <32 x i1> %i.ey, %i.fa
  %i.fc = bitcast <32 x i1> %i.fb to i32
  %.not443.i = icmp eq i32 %i.fc, 0
  br i1 %.not443.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %i.fe = sub nuw nsw i64 64, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.fe
  %i.fg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %7) ; 2 uses
  %notmask220.i.i = shl nsw i64 -1, %i.fg
  %i.fh = trunc i64 %notmask220.i.i to i32
  %i.fi = xor i32 %i.fh, -1
  %i.fj = bitcast i32 %i.fi to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.el, ptr align 1 %.0448.i, <32 x i1> %i.fj)
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.fg
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fl = or i64 %i.i, %i.w                       ; 3 uses
  %i.fm = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.v, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.fn = bitcast <64 x i1> %i.fm to i64
  %i.fo = xor i64 %i.fl, %i.fn
  %i.fp = icmp eq i64 %i.fo, -1
  br i1 %i.fp, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.fq = add <64 x i8> %i.g, splat (i8 62)
  %i.fr = select <64 x i1> %i.v, <64 x i8> %i.fq, <64 x i8> zeroinitializer
  %i.fs = xor <64 x i1> %i.v, splat (i1 true)
  %i.ft = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.ft, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %spec.select.v.i
  %i.fu = bitcast i64 %i.fl to <64 x i1>
  %i.fv = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.fr, <64 x i8> zeroinitializer, <64 x i1> %i.fu)
  %i.fw = shufflevector <64 x i8> %i.fv, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fx = zext <32 x i8> %i.fw to <32 x i16>
  %i.fy = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.fs)
  %i.fz = shufflevector <64 x i8> %i.fy, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ga = zext <32 x i8> %i.fz to <32 x i16>
  %i.gb = shl nuw nsw <32 x i16> %i.fx, splat (i16 6)
  %i.gc = add nuw nsw <32 x i16> %i.gb, %i.ga
  %i.gd = trunc i64 %i.fl to i32
  %i.ge = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gd)
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gf
  %i.gg = trunc i64 %notmask.i.i to i32
  %i.gh = xor i32 %i.gg, -1
  %i.gi = bitcast i32 %i.gh to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gc, ptr align 1 %.0448.i, <32 x i1> %i.gi)
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.gf
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i
  %i.gk = icmp ult ptr %.0432447.i, %i.a
  br i1 %i.gk, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.gl = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.gm = bitcast i64 %i.gl to <64 x i1>          ; 3 uses
  %i.gn = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0432447.i, <64 x i1> %i.gm, <64 x i8> zeroinitializer) ; 11 uses
  %i.go = icmp sgt <64 x i8> %i.gn, splat (i8 -1)
  %i.gp = and <64 x i1> %i.go, %i.gm              ; 3 uses
  %i.gq = bitcast <64 x i1> %i.gp to i64          ; 3 uses
  %i.gr = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.gp, <64 x i1> %i.gm)
  %i.gs = and i32 %i.gr, 255
  %.not.i42.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gt = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.d ; 2 uses
  %i.gu = icmp ult i64 %i.d, 33
  %i.gv = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gw = zext <32 x i8> %i.gv to <32 x i16>      ; 2 uses
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = trunc i64 %i.gl to i32
  %i.gy = bitcast i32 %i.gx to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gw, ptr align 1 %.0448.i, <32 x i1> %i.gy)
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <32 x i16> %i.gw, ptr %.0448.i, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.0448.i, i64 64
  %i.hb = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hc = zext <32 x i8> %i.hb to <32 x i16>
  %i.hd = trunc i64 %i.d to i32
  %i.he = add i32 %i.hd, -32
  %notmask247.i.i = shl nsw i32 -1, %i.he
  %i.hf = xor i32 %notmask247.i.i, -1
  %i.hg = bitcast i32 %i.hf to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hc, ptr nonnull align 1 %i.ha, <32 x i1> %i.hg)
  %i.hh = getelementptr [2 x i8], ptr %.0448.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.hi = icmp ugt <64 x i8> %i.gn, splat (i8 -65) ; 5 uses
  %i.hj = bitcast <64 x i1> %i.hi to i64          ; 3 uses
  %i.hk = icmp ugt <64 x i8> %i.gn, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.hl = bitcast <64 x i1> %i.hk to i64          ; 2 uses
  %i.hm = and <64 x i8> %i.gn, splat (i8 -2)
  %i.hn = icmp eq <64 x i8> %i.hm, splat (i8 -64) ; 2 uses
  %i.ho = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hn, <64 x i1> %i.hn)
  %i.hp = and i32 %i.ho, 255
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hr = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.hk, <64 x i1> %i.hk)
  %i.hs = and i32 %i.hr, 255
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.hu = icmp ugt <64 x i8> %i.gn, splat (i8 -17) ; 2 uses
  %i.hv = bitcast <64 x i1> %i.hu to i64          ; 2 uses
  %i.hw = xor <64 x i1> %i.gp, splat (i1 true)
  %i.hx = bitcast <64 x i1> %i.hw to i64
  %i.hy = and i64 %i.hx, %i.gl                    ; 2 uses
  %i.hz = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hi, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.ia = bitcast <64 x i1> %i.hz to i64          ; 2 uses
  %i.ib = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.hk, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ic = bitcast <64 x i1> %i.ib to i64          ; 2 uses
  %i.id = icmp eq i64 %i.hv, 0
  br i1 %i.id, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ie = or i64 %i.ia, %i.ic
  %i.if = or i64 %i.gq, %i.hj                     ; 2 uses
  %i.ig = xor i64 %i.if, %i.gl
  %.not244.i.i = icmp eq i64 %i.ie, %i.ig
  br i1 %.not244.i.i, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.ih = bitcast i64 %i.if to <64 x i1>
  %i.ii = shufflevector <64 x i1> %i.ih, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ij = bitcast <64 x i1> %i.ii to i64
  %i.ik = add i64 %i.d, -1
  %i.il = shl nuw nsw i64 1, %i.ik
  %i.im = or i64 %i.il, %i.ij                     ; 3 uses
  %i.in = bitcast i64 %i.im to <64 x i1>
  %i.io = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.in)
  %i.ip = shufflevector <64 x i8> %i.io, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.iq = zext <32 x i8> %i.ip to <32 x i16>      ; 3 uses
  %i.ir = bitcast i64 %i.hy to <64 x i1>          ; 2 uses
  %.inner31 = select <64 x i1> %i.ir, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner32 = and <64 x i8> %.inner31, %i.gn      ; 3 uses
  %i.is = bitcast <32 x i16> %i.iq to <64 x i8>
  %i.it = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner32, <64 x i8> %i.is)
  %i.iu = shufflevector <64 x i8> %i.it, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.iv = shufflevector <64 x i1> %i.ir, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.iw = add nsw <32 x i16> %i.iq, splat (i16 -1)
  %i.ix = select <64 x i1> %i.iv, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.iy = bitcast <32 x i16> %i.iw to <64 x i8>
  %i.iz = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ix, <64 x i8> %i.iy)
  %i.ja = shufflevector <64 x i8> %i.iz, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jb = bitcast <64 x i8> %i.ja to <32 x i16>
  %i.jc = shl nuw nsw <32 x i16> %i.jb, splat (i16 6)
  %i.jd = add nsw <32 x i16> %i.iq, splat (i16 -2)
  %i.je = select <64 x i1> %i.hk, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.jf = bitcast <32 x i16> %i.jd to <64 x i8>
  %i.jg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.je, <64 x i8> %i.jf)
  %i.jh = shufflevector <64 x i8> %i.jg, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ji = bitcast <64 x i8> %i.jh to <32 x i16>
  %i.jj = shl <32 x i16> %i.ji, splat (i16 12)
  %i.jk = bitcast <64 x i8> %i.iu to <16 x i32>
  %i.jl = bitcast <32 x i16> %i.jc to <16 x i32>
  %i.jm = bitcast <32 x i16> %i.jj to <16 x i32>
  %i.jn = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jk, <16 x i32> %i.jl, <16 x i32> %i.jm, i32 254) ; 2 uses
  %i.jo = and i64 %i.hl, %i.gl
  %i.jp = shl i64 %i.jo, 2
  %9 = tail call noundef i64 @llvm.pext.i64(i64 %i.jp, i64 %i.im)
  %i.jq = trunc i64 %9 to i32
  %i.jr = bitcast <16 x i32> %i.jn to <32 x i16>  ; 2 uses
  %i.js = icmp ult <32 x i16> %i.jr, splat (i16 2048)
  %i.jt = bitcast i32 %i.jq to <32 x i1>
  %i.ju = bitcast <16 x i32> %i.jn to <32 x i16>
  %i.jv = and <32 x i16> %i.ju, splat (i16 -2048)
  %i.jw = icmp eq <32 x i16> %i.jv, splat (i16 -10240)
  %i.jx = or <32 x i1> %i.js, %i.jw
  %i.jy = and <32 x i1> %i.jx, %i.jt
  %i.jz = bitcast <32 x i1> %i.jy to i32
  %.not245.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not245.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.ka = and i64 %i.im, %i.gl
  %10 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.ka) ; 2 uses
  %i.kb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %10) ; 2 uses
  %i.kc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 false)
  %i.kd = sub nuw nsw i64 64, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.kd
  %notmask246.i.i = shl nsw i64 -1, %i.kb
  %i.kf = trunc i64 %notmask246.i.i to i32
  %i.kg = xor i32 %i.kf, -1
  %i.kh = bitcast i32 %i.kg to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.jr, ptr align 1 %.0448.i, <32 x i1> %i.kh)
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.kb
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.kj = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.hu, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.kk = bitcast <64 x i1> %i.kj to i64          ; 3 uses
  %i.kl = or i64 %i.ia, %i.ic
  %i.km = or i64 %i.kl, %i.kk
  %i.kn = or i64 %i.gq, %i.hj                     ; 2 uses
  %i.ko = or i64 %i.kn, %i.kk
  %i.kp = bitcast i64 %i.ko to <64 x i1>
  %i.kq = shufflevector <64 x i1> %i.kp, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.kr = or <64 x i1> %i.kj, %i.kq
  %i.ks = bitcast <64 x i1> %i.kr to i64
  %i.kt = add i64 %i.d, -1
  %i.ku = shl nuw nsw i64 1, %i.kt
  %i.kv = or i64 %i.ku, %i.ks                     ; 4 uses
  %i.kw = bitcast i64 %i.kv to <64 x i1>
  %i.kx = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.kw)
  %i.ky = shufflevector <64 x i8> %i.kx, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kz = zext <32 x i8> %i.ky to <32 x i16>      ; 3 uses
  %i.la = bitcast i64 %i.hy to <64 x i1>          ; 2 uses
  %.inner34 = select <64 x i1> %i.la, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner35 = and <64 x i8> %.inner34, %i.gn      ; 3 uses
  %i.lb = bitcast <32 x i16> %i.kz to <64 x i8>
  %i.lc = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner35, <64 x i8> %i.lb)
  %i.ld = shufflevector <64 x i8> %i.lc, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.le = shufflevector <64 x i1> %i.la, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.lf = add nsw <32 x i16> %i.kz, splat (i16 -1)
  %i.lg = select <64 x i1> %i.le, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.lh = bitcast <32 x i16> %i.lf to <64 x i8>
  %i.li = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.lg, <64 x i8> %i.lh)
  %i.lj = shufflevector <64 x i8> %i.li, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lk = bitcast <64 x i8> %i.lj to <32 x i16>
  %i.ll = shl nuw nsw <32 x i16> %i.lk, splat (i16 6)
  %i.lm = add nsw <32 x i16> %i.kz, splat (i16 -2)
  %i.ln = select <64 x i1> %i.hk, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.lo = bitcast <32 x i16> %i.lm to <64 x i8>
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ln, <64 x i8> %i.lo)
  %i.lq = shufflevector <64 x i8> %i.lp, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.lr = bitcast <64 x i8> %i.lq to <32 x i16>
  %i.ls = shl <32 x i16> %i.lr, splat (i16 12)
  %i.lt = bitcast <64 x i8> %i.ld to <16 x i32>
  %i.lu = bitcast <32 x i16> %i.ll to <16 x i32>
  %i.lv = bitcast <32 x i16> %i.ls to <16 x i32>
  %i.lw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lt, <16 x i32> %i.lu, <16 x i32> %i.lv, i32 254)
  %11 = tail call noundef i64 @llvm.pext.i64(i64 %i.kk, i64 %i.kv) ; 2 uses
  %i.lx = trunc i64 %11 to i32
  %i.ly = lshr i64 %11, 1                         ; 2 uses
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = bitcast i32 %i.lx to <32 x i1>
  %i.mb = select <32 x i1> %i.ma, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.mc = bitcast <16 x i32> %i.lw to <32 x i16>  ; 2 uses
  %i.md = lshr <32 x i16> %i.mc, splat (i16 4)
  %i.me = or <32 x i16> %i.mb, %i.mc
  %i.mf = add nuw nsw <32 x i16> %i.md, splat (i16 -10304)
  %i.mg = bitcast i32 %i.lz to <32 x i1>          ; 2 uses
  %i.mh = select <32 x i1> %i.mg, <32 x i16> %i.mf, <32 x i16> %i.me ; 3 uses
  %i.mi = and i64 %i.ly, 2147483648
  %i.mj = xor i64 %i.mi, 4294967295
  %i.mk = and i64 %i.kv, %i.gl
  %12 = tail call noundef i64 @llvm.pdep.i64(i64 %i.mj, i64 %i.mk) ; 2 uses
  %i.ml = xor i64 %i.kn, %i.gl
  %.not241.i.i = icmp eq i64 %i.km, %i.ml
  br i1 %.not241.i.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.mm = xor i64 %i.hv, %i.gl
  %i.mn = and i64 %i.mm, %i.hl
  %i.mo = shl i64 %i.mn, 2
  %13 = tail call noundef i64 @llvm.pext.i64(i64 %i.mo, i64 %i.kv)
  %i.mp = trunc i64 %13 to i32
  %i.mq = icmp ult <32 x i16> %i.mh, splat (i16 2048)
  %i.mr = bitcast i32 %i.mp to <32 x i1>
  %i.ms = add <32 x i16> %i.mh, splat (i16 10240) ; 2 uses
  %i.mt = icmp ult <32 x i16> %i.ms, splat (i16 2048)
  %i.mu = icmp ugt <32 x i16> %i.ms, splat (i16 1023)
  %i.mv = and <32 x i1> %i.mu, %i.mg
  %i.mw = or <32 x i1> %i.mq, %i.mt
  %i.mx = and <32 x i1> %i.mw, %i.mr
  %i.my = or <32 x i1> %i.mv, %i.mx
  %i.mz = bitcast <32 x i1> %i.my to i32
  %.not.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.na = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %12, i1 false)
  %i.nb = sub nuw nsw i64 64, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.nb
  %i.nd = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %12) ; 2 uses
  %notmask243.i.i = shl nsw i64 -1, %i.nd
  %i.ne = trunc i64 %notmask243.i.i to i32
  %i.nf = xor i32 %i.ne, -1
  %i.ng = bitcast i32 %i.nf to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.mh, ptr align 1 %.0448.i, <32 x i1> %i.ng)
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.nd
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ni = or i64 %i.gq, %i.hj
  %i.nj = and i64 %i.ni, %i.gl                    ; 3 uses
  %i.nk = xor i64 %i.nj, %i.gl
  %i.nl = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.hi, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.nm = bitcast <64 x i1> %i.nl to i64
  %.not239.i.i = icmp eq i64 %i.nk, %i.nm
  br i1 %.not239.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.nn = add <64 x i8> %i.gn, splat (i8 62)
  %i.no = select <64 x i1> %i.hi, <64 x i8> %i.nn, <64 x i8> zeroinitializer
  %i.np = xor <64 x i1> %i.hi, splat (i1 true)
  %i.nq = bitcast <64 x i1> %i.np to i64
  %i.nr = and i64 %i.nq, %i.gl                    ; 2 uses
  %14 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nr)
  %i.ns = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %14, i1 false)
  %i.nt = sub nuw nsw i64 64, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %.0432447.i, i64 %i.nt
  %i.nv = bitcast i64 %i.nj to <64 x i1>
  %i.nw = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.no, <64 x i8> zeroinitializer, <64 x i1> %i.nv)
  %i.nx = shufflevector <64 x i8> %i.nw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ny = zext <32 x i8> %i.nx to <32 x i16>
  %i.nz = bitcast i64 %i.nr to <64 x i1>
  %i.oa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gn, <64 x i8> zeroinitializer, <64 x i1> %i.nz)
  %i.ob = shufflevector <64 x i8> %i.oa, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oc = zext <32 x i8> %i.ob to <32 x i16>
  %i.od = shl nuw nsw <32 x i16> %i.ny, splat (i16 6)
  %i.oe = add nuw nsw <32 x i16> %i.od, %i.oc
  %15 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.nj)
  %i.of = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %15) ; 2 uses
  %notmask240.i.i = shl nsw i64 -1, %i.of
  %i.og = trunc i64 %notmask240.i.i to i32
  %i.oh = xor i32 %i.og, -1
  %i.oi = bitcast i32 %i.oh to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oe, ptr align 1 %.0448.i, <32 x i1> %i.oi)
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.0448.i, i64 %i.of
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0448.i.be = phi ptr [ %i.u, %bb.c ], [ %i.gz, %bb.r ], [ %i.nh, %bb.ab ], [ %i.cp, %bb.i ], [ %i.ki, %bb.y ], [ %i.hh, %bb.s ], [ %i.oj, %bb.ad ], [ %i.fk, %bb.l ], [ %i.gj, %bb.n ]
  %.0432447.i.be = phi ptr [ %i.m, %bb.c ], [ %i.gt, %bb.r ], [ %i.nc, %bb.ab ], [ %i.cl, %bb.i ], [ %i.ke, %bb.y ], [ %i.gt, %bb.s ], [ %i.nu, %bb.ad ], [ %i.ff, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE0EEEbRPKcRPDsm.exit.i, !llvm.loop !257

.critedge.i:                                      ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.ok = ptrtoint ptr %1 to i64
  %i.ol = sub i64 %i.c, %i.ok                     ; 6 uses
  %i.om = icmp ult i64 %i.ol, %2
  br i1 %i.om, label %bb.ae, label %.critedge40.i

bb.ae:                                            ; preds = %.critedge.i
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 %i.ol ; 4 uses
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = icmp slt i8 %i.oo, -64
  %i.oq = icmp ugt i64 %i.ol, 63
  %or.cond.i = and i1 %i.oq, %i.op
  br i1 %or.cond.i, label %bb.af, label %.critedge40.i

bb.af:                                            ; preds = %bb.ae
  %i.or = getelementptr i8, ptr %i.on, i64 -1
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = icmp sgt i8 %i.os, -65
  %i.ou = getelementptr i8, ptr %i.on, i64 -2
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = icmp sgt i8 %i.ov, -65
  %i.ox = getelementptr i8, ptr %i.on, i64 -3
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = icmp sgt i8 %i.oy, -65
  %or.cond3.not38.i = select i1 %i.ot, i1 true, i1 %i.ow
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.oz
  br i1 %or.cond5.not.i, label %.critedge40.i, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

.critedge40.i:                                    ; preds = %bb.af, %bb.ae, %.critedge.i
  %i.pa = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs(i64 noundef %i.ol, ptr noundef %.0432447.i, i64 noundef %i.d, ptr noundef %.0448.i) ; 2 uses
  %i.pb = extractvalue { i32, i64 } %i.pa, 0
  %i.pc = extractvalue { i32, i64 } %i.pa, 1
  %i.pd = add i64 %i.pc, %i.ol
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.ag:                                            ; preds = %bb.o
  %i.pe = ptrtoint ptr %.0448.i to i64
  %i.pf = ptrtoint ptr %3 to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = ashr exact i64 %i.pg, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %.critedge40.i, %bb.ag
  %.sroa.4.0.i = phi i64 [ %i.ph, %bb.ag ], [ %i.pd, %.critedge40.i ], [ %i.ol, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.ag ], [ %i.pb, %.critedge40.i ], [ 3, %bb.af ]
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
  %4 = tail call noundef i64 @llvm.pext.i64(i64 %i.cb, i64 %i.az)
  %i.cc = trunc i64 %4 to i32
  %i.cd = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.ce = icmp ult <32 x i16> %i.cd, splat (i16 2048)
  %i.cf = bitcast i32 %i.cc to <32 x i1>
  %i.cg = bitcast <16 x i32> %i.ca to <32 x i16>
  %i.ch = and <32 x i16> %i.cg, splat (i16 -2048)
  %i.ci = icmp eq <32 x i16> %i.ch, splat (i16 -10240)
  %i.cj = or <32 x i1> %i.ce, %i.ci
  %i.ck = and <32 x i1> %i.cj, %i.cf
  %i.cl = bitcast <32 x i1> %i.ck to i32
  %.not232.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not232.i.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %5 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.az) ; 2 uses
  %i.cm = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %5) ; 2 uses
  %i.cn = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %5, i1 false)
  %i.co = sub nuw nsw i64 64, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.co
  %i.cq = bitcast <16 x i32> %i.ca to <64 x i8>
  %i.cr = shufflevector <64 x i8> %i.cq, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask233.i.i = shl nsw i64 -1, %i.cm
  %i.cs = trunc i64 %notmask233.i.i to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = bitcast <64 x i8> %i.cr to <32 x i16>
  %i.cv = bitcast i32 %i.ct to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cu, ptr align 1 %.0492.i, <32 x i1> %i.cv)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.cm
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.j:                                             ; preds = %bb.f
  %i.cx = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.am, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.cy = bitcast <64 x i1> %i.cx to i64          ; 3 uses
  %i.cz = or i64 %i.aq, %i.as
  %i.da = or i64 %i.cz, %i.cy
  %i.db = or i64 %i.i, %i.aa                      ; 2 uses
  %i.dc = or i64 %i.db, %i.cy
  %i.dd = bitcast i64 %i.dc to <64 x i1>
  %i.de = shufflevector <64 x i1> %i.dd, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.df = or <64 x i1> %i.cx, %i.de               ; 2 uses
  %i.dg = bitcast <64 x i1> %i.df to i64          ; 3 uses
  %i.dh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.df)
  %i.di = shufflevector <64 x i8> %i.dh, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dj = zext <32 x i8> %i.di to <32 x i16>      ; 3 uses
  %.inner28 = select <64 x i1> %i.h, <64 x i8> splat (i8 -1), <64 x i8> splat (i8 63)
  %i.dk = bitcast <32 x i16> %i.dj to <64 x i8>
  %i.dl = bitcast <8 x i64> %i.f to <64 x i8>
  %i.dm = and <64 x i8> %.inner28, %i.dl          ; 3 uses
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dm, <64 x i8> %i.dk)
  %i.do = shufflevector <64 x i8> %i.dn, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dp = shufflevector <64 x i1> %i.ao, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.dq = add nsw <32 x i16> %i.dj, splat (i16 -1)
  %i.dr = select <64 x i1> %i.dp, <64 x i8> %i.dm, <64 x i8> zeroinitializer
  %i.ds = bitcast <32 x i16> %i.dq to <64 x i8>
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dr, <64 x i8> %i.ds)
  %i.du = shufflevector <64 x i8> %i.dt, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.dv = bitcast <64 x i8> %i.du to <32 x i16>
  %i.dw = shl nuw nsw <32 x i16> %i.dv, splat (i16 6)
  %i.dx = add nsw <32 x i16> %i.dj, splat (i16 -2)
  %i.dy = select <64 x i1> %i.ab, <64 x i8> %i.dm, <64 x i8> zeroinitializer
  %i.dz = bitcast <32 x i16> %i.dx to <64 x i8>
  %i.ea = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.dy, <64 x i8> %i.dz)
  %i.eb = shufflevector <64 x i8> %i.ea, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ec = bitcast <64 x i8> %i.eb to <32 x i16>
  %i.ed = shl <32 x i16> %i.ec, splat (i16 12)
  %i.ee = bitcast <64 x i8> %i.do to <16 x i32>
  %i.ef = bitcast <32 x i16> %i.dw to <16 x i32>
  %i.eg = bitcast <32 x i16> %i.ed to <16 x i32>
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ee, <16 x i32> %i.ef, <16 x i32> %i.eg, i32 254)
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.cy, i64 %i.dg) ; 2 uses
  %i.ei = trunc i64 %6 to i32
  %i.ej = lshr i64 %6, 1                          ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = bitcast i32 %i.ei to <32 x i1>
  %i.em = select <32 x i1> %i.el, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.en = bitcast <16 x i32> %i.eh to <32 x i16>  ; 2 uses
  %i.eo = lshr <32 x i16> %i.en, splat (i16 4)
  %i.ep = or <32 x i16> %i.em, %i.en
  %i.eq = add nuw nsw <32 x i16> %i.eo, splat (i16 -10304)
  %i.er = bitcast i32 %i.ek to <32 x i1>          ; 2 uses
  %i.es = select <32 x i1> %i.er, <32 x i16> %i.eq, <32 x i16> %i.ep ; 3 uses
  %i.et = and i64 %i.ej, 2147483648
  %i.eu = xor i64 %i.et, 4294967295
  %7 = tail call noundef i64 @llvm.pdep.i64(i64 %i.eu, i64 %i.dg) ; 2 uses
  %i.ev = xor i64 %i.da, %i.db
  %.not486.i = icmp eq i64 %i.ev, -1
  br i1 %.not486.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ew = xor i64 %i.an, -1
  %i.ex = and i64 %i.ac, %i.ew
  %i.ey = shl i64 %i.ex, 2
  %8 = tail call noundef i64 @llvm.pext.i64(i64 %i.ey, i64 %i.dg)
  %i.ez = trunc i64 %8 to i32
  %i.fa = icmp ult <32 x i16> %i.es, splat (i16 2048)
  %i.fb = bitcast i32 %i.ez to <32 x i1>
  %i.fc = add <32 x i16> %i.es, splat (i16 10240) ; 2 uses
  %i.fd = icmp ult <32 x i16> %i.fc, splat (i16 2048)
  %i.fe = icmp ugt <32 x i16> %i.fc, splat (i16 1023)
  %i.ff = and <32 x i1> %i.fe, %i.er
  %i.fg = or <32 x i1> %i.fa, %i.fd
  %i.fh = and <32 x i1> %i.fg, %i.fb
  %i.fi = or <32 x i1> %i.ff, %i.fh
  %i.fj = bitcast <32 x i1> %i.fi to i32
  %.not487.i = icmp eq i32 %i.fj, 0
  br i1 %.not487.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.fk = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %i.fl = sub nuw nsw i64 64, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.fl
  %i.fn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %7) ; 2 uses
  %i.fo = bitcast <32 x i16> %i.es to <64 x i8>
  %i.fp = shufflevector <64 x i8> %i.fo, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask230.i.i = shl nsw i64 -1, %i.fn
  %i.fq = trunc i64 %notmask230.i.i to i32
  %i.fr = xor i32 %i.fq, -1
  %i.fs = bitcast <64 x i8> %i.fp to <32 x i16>
  %i.ft = bitcast i32 %i.fr to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.fs, ptr align 1 %.0492.i, <32 x i1> %i.ft)
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.fn
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.m:                                             ; preds = %bb.e
  %i.fv = or i64 %i.i, %i.aa                      ; 3 uses
  %i.fw = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.z, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.fx = bitcast <64 x i1> %i.fw to i64
  %i.fy = xor i64 %i.fv, %i.fx
  %i.fz = icmp eq i64 %i.fy, -1
  br i1 %i.fz, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.ga = add <64 x i8> %i.g, splat (i8 62)
  %i.gb = select <64 x i1> %i.z, <64 x i8> %i.ga, <64 x i8> zeroinitializer
  %i.gc = xor <64 x i1> %i.z, splat (i1 true)
  %i.gd = icmp slt i8 %i.l, -63
  %spec.select.v.i = select i1 %i.gd, i64 33, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %spec.select.v.i
  %i.ge = bitcast i64 %i.fv to <64 x i1>
  %i.gf = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.gb, <64 x i8> zeroinitializer, <64 x i1> %i.ge)
  %i.gg = shufflevector <64 x i8> %i.gf, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gh = zext <32 x i8> %i.gg to <32 x i16>
  %i.gi = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.g, <64 x i8> zeroinitializer, <64 x i1> %i.gc)
  %i.gj = shufflevector <64 x i8> %i.gi, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gk = zext <32 x i8> %i.gj to <32 x i16>
  %i.gl = shl nuw nsw <32 x i16> %i.gh, splat (i16 6)
  %i.gm = add nuw nsw <32 x i16> %i.gl, %i.gk
  %i.gn = bitcast <32 x i16> %i.gm to <64 x i8>
  %i.go = shufflevector <64 x i8> %i.gn, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gp = trunc i64 %i.fv to i32
  %i.gq = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gp)
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.gr
  %i.gs = trunc i64 %notmask.i.i to i32
  %i.gt = xor i32 %i.gs, -1
  %i.gu = bitcast <64 x i8> %i.go to <32 x i16>
  %i.gv = bitcast i32 %i.gt to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.gu, ptr align 1 %.0492.i, <32 x i1> %i.gv)
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.gr
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.o:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i
  %i.gx = icmp ult ptr %.0476491.i, %i.a
  br i1 %i.gx, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %notmask.i41.i = shl nsw i64 -1, %i.d
  %i.gy = xor i64 %notmask.i41.i, -1              ; 12 uses
  %i.gz = bitcast i64 %i.gy to <64 x i1>          ; 3 uses
  %i.ha = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0476491.i, <64 x i1> %i.gz, <64 x i8> zeroinitializer) ; 11 uses
  %i.hb = icmp sgt <64 x i8> %i.ha, splat (i8 -1)
  %i.hc = and <64 x i1> %i.hb, %i.gz              ; 3 uses
  %i.hd = bitcast <64 x i1> %i.hc to i64          ; 3 uses
  %i.he = tail call i32 @llvm.x86.avx512.ktestc.q(<64 x i1> %i.hc, <64 x i1> %i.gz)
  %i.hf = and i32 %i.he, 255
  %.not.i42.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hg = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.d ; 2 uses
  %i.hh = icmp ult i64 %i.d, 33
  %i.hi = shufflevector <64 x i8> %i.ha, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hj = zext <32 x i8> %i.hi to <32 x i16>
  %i.hk = bitcast <32 x i16> %i.hj to <64 x i8>
  %i.hl = shufflevector <64 x i8> %i.hk, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62> ; 2 uses
  br i1 %i.hh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hm = trunc i64 %i.gy to i32
  %i.hn = bitcast <64 x i8> %i.hl to <32 x i16>
  %i.ho = bitcast i32 %i.hm to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hn, ptr align 1 %.0492.i, <32 x i1> %i.ho)
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.s:                                             ; preds = %bb.q
  store <64 x i8> %i.hl, ptr %.0492.i, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0492.i, i64 64
  %i.hr = shufflevector <64 x i8> %i.ha, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hs = zext <32 x i8> %i.hr to <32 x i16>
  %i.ht = bitcast <32 x i16> %i.hs to <64 x i8>
  %i.hu = shufflevector <64 x i8> %i.ht, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.hv = trunc i64 %i.d to i32
  %i.hw = add i32 %i.hv, -32
  %notmask259.i.i = shl nsw i32 -1, %i.hw
  %i.hx = xor i32 %notmask259.i.i, -1
  %i.hy = bitcast <64 x i8> %i.hu to <32 x i16>
  %i.hz = bitcast i32 %i.hx to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.hy, ptr nonnull align 1 %i.hq, <32 x i1> %i.hz)
  %i.ia = getelementptr [2 x i8], ptr %.0492.i, i64 %i.d
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.t:                                             ; preds = %bb.p
  %i.ib = icmp ugt <64 x i8> %i.ha, splat (i8 -65) ; 5 uses
  %i.ic = bitcast <64 x i1> %i.ib to i64          ; 3 uses
  %i.id = icmp ugt <64 x i8> %i.ha, <i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -33, i8 -1, i8 -1> ; 6 uses
  %i.ie = bitcast <64 x i1> %i.id to i64          ; 2 uses
  %i.if = and <64 x i8> %i.ha, splat (i8 -2)
  %i.ig = icmp eq <64 x i8> %i.if, splat (i8 -64) ; 2 uses
  %i.ih = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.ig, <64 x i1> %i.ig)
  %i.ii = and i32 %i.ih, 255
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ik = tail call i32 @llvm.x86.avx512.ktestz.q(<64 x i1> %i.id, <64 x i1> %i.id)
  %i.il = and i32 %i.ik, 255
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.in = icmp ugt <64 x i8> %i.ha, splat (i8 -17) ; 2 uses
  %i.io = bitcast <64 x i1> %i.in to i64          ; 2 uses
  %i.ip = xor <64 x i1> %i.hc, splat (i1 true)
  %i.iq = bitcast <64 x i1> %i.ip to i64
  %i.ir = and i64 %i.iq, %i.gy                    ; 2 uses
  %i.is = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ib, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.it = bitcast <64 x i1> %i.is to i64          ; 2 uses
  %i.iu = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false>, <64 x i1> %i.id, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.iv = bitcast <64 x i1> %i.iu to i64          ; 2 uses
  %i.iw = icmp eq i64 %i.io, 0
  br i1 %i.iw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ix = or i64 %i.it, %i.iv
  %i.iy = or i64 %i.hd, %i.ic                     ; 2 uses
  %i.iz = xor i64 %i.iy, %i.gy
  %.not256.i.i = icmp eq i64 %i.ix, %i.iz
  br i1 %.not256.i.i, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.ja = bitcast i64 %i.iy to <64 x i1>
  %i.jb = shufflevector <64 x i1> %i.ja, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jc = bitcast <64 x i1> %i.jb to i64
  %i.jd = add i64 %i.d, -1
  %i.je = shl nuw nsw i64 1, %i.jd
  %i.jf = or i64 %i.je, %i.jc                     ; 3 uses
  %i.jg = bitcast i64 %i.jf to <64 x i1>
  %i.jh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.jg)
  %i.ji = shufflevector <64 x i8> %i.jh, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jj = zext <32 x i8> %i.ji to <32 x i16>      ; 3 uses
  %i.jk = bitcast i64 %i.ir to <64 x i1>          ; 2 uses
  %.inner31 = select <64 x i1> %i.jk, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner32 = and <64 x i8> %.inner31, %i.ha      ; 3 uses
  %i.jl = bitcast <32 x i16> %i.jj to <64 x i8>
  %i.jm = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner32, <64 x i8> %i.jl)
  %i.jn = shufflevector <64 x i8> %i.jm, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.jo = shufflevector <64 x i1> %i.jk, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.jp = add nsw <32 x i16> %i.jj, splat (i16 -1)
  %i.jq = select <64 x i1> %i.jo, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.jr = bitcast <32 x i16> %i.jp to <64 x i8>
  %i.js = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jq, <64 x i8> %i.jr)
  %i.jt = shufflevector <64 x i8> %i.js, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ju = bitcast <64 x i8> %i.jt to <32 x i16>
  %i.jv = shl nuw nsw <32 x i16> %i.ju, splat (i16 6)
  %i.jw = add nsw <32 x i16> %i.jj, splat (i16 -2)
  %i.jx = select <64 x i1> %i.id, <64 x i8> %.inner32, <64 x i8> zeroinitializer
  %i.jy = bitcast <32 x i16> %i.jw to <64 x i8>
  %i.jz = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.jx, <64 x i8> %i.jy)
  %i.ka = shufflevector <64 x i8> %i.jz, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.kb = bitcast <64 x i8> %i.ka to <32 x i16>
  %i.kc = shl <32 x i16> %i.kb, splat (i16 12)
  %i.kd = bitcast <64 x i8> %i.jn to <16 x i32>
  %i.ke = bitcast <32 x i16> %i.jv to <16 x i32>
  %i.kf = bitcast <32 x i16> %i.kc to <16 x i32>
  %i.kg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kd, <16 x i32> %i.ke, <16 x i32> %i.kf, i32 254) ; 3 uses
  %i.kh = and i64 %i.ie, %i.gy
  %i.ki = shl i64 %i.kh, 2
  %9 = tail call noundef i64 @llvm.pext.i64(i64 %i.ki, i64 %i.jf)
  %i.kj = trunc i64 %9 to i32
  %i.kk = bitcast <16 x i32> %i.kg to <32 x i16>
  %i.kl = icmp ult <32 x i16> %i.kk, splat (i16 2048)
  %i.km = bitcast i32 %i.kj to <32 x i1>
  %i.kn = bitcast <16 x i32> %i.kg to <32 x i16>
  %i.ko = and <32 x i16> %i.kn, splat (i16 -2048)
  %i.kp = icmp eq <32 x i16> %i.ko, splat (i16 -10240)
  %i.kq = or <32 x i1> %i.kl, %i.kp
  %i.kr = and <32 x i1> %i.kq, %i.km
  %i.ks = bitcast <32 x i1> %i.kr to i32
  %.not257.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not257.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.kt = and i64 %i.jf, %i.gy
  %10 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.kt) ; 2 uses
  %i.ku = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %10) ; 2 uses
  %i.kv = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 false)
  %i.kw = sub nuw nsw i64 64, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.kw
  %i.ky = bitcast <16 x i32> %i.kg to <64 x i8>
  %i.kz = shufflevector <64 x i8> %i.ky, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask258.i.i = shl nsw i64 -1, %i.ku
  %i.la = trunc i64 %notmask258.i.i to i32
  %i.lb = xor i32 %i.la, -1
  %i.lc = bitcast <64 x i8> %i.kz to <32 x i16>
  %i.ld = bitcast i32 %i.lb to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.lc, ptr align 1 %.0492.i, <32 x i1> %i.ld)
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.ku
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.z:                                             ; preds = %bb.v
  %i.lf = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 false>, <64 x i1> %i.in, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124> ; 2 uses
  %i.lg = bitcast <64 x i1> %i.lf to i64          ; 3 uses
  %i.lh = or i64 %i.it, %i.iv
  %i.li = or i64 %i.lh, %i.lg
  %i.lj = or i64 %i.hd, %i.ic                     ; 2 uses
  %i.lk = or i64 %i.lj, %i.lg
  %i.ll = bitcast i64 %i.lk to <64 x i1>
  %i.lm = shufflevector <64 x i1> %i.ll, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.ln = or <64 x i1> %i.lf, %i.lm
  %i.lo = bitcast <64 x i1> %i.ln to i64
  %i.lp = add i64 %i.d, -1
  %i.lq = shl nuw nsw i64 1, %i.lp
  %i.lr = or i64 %i.lq, %i.lo                     ; 4 uses
  %i.ls = bitcast i64 %i.lr to <64 x i1>
  %i.lt = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ls)
  %i.lu = shufflevector <64 x i8> %i.lt, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lv = zext <32 x i8> %i.lu to <32 x i16>      ; 3 uses
  %i.lw = bitcast i64 %i.ir to <64 x i1>          ; 2 uses
  %.inner34 = select <64 x i1> %i.lw, <64 x i8> splat (i8 63), <64 x i8> splat (i8 -1)
  %.inner35 = and <64 x i8> %.inner34, %i.ha      ; 3 uses
  %i.lx = bitcast <32 x i16> %i.lv to <64 x i8>
  %i.ly = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %.inner35, <64 x i8> %i.lx)
  %i.lz = shufflevector <64 x i8> %i.ly, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.ma = shufflevector <64 x i1> %i.lw, <64 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64>
  %i.mb = add nsw <32 x i16> %i.lv, splat (i16 -1)
  %i.mc = select <64 x i1> %i.ma, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.md = bitcast <32 x i16> %i.mb to <64 x i8>
  %i.me = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mc, <64 x i8> %i.md)
  %i.mf = shufflevector <64 x i8> %i.me, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mg = bitcast <64 x i8> %i.mf to <32 x i16>
  %i.mh = shl nuw nsw <32 x i16> %i.mg, splat (i16 6)
  %i.mi = add nsw <32 x i16> %i.lv, splat (i16 -2)
  %i.mj = select <64 x i1> %i.id, <64 x i8> %.inner35, <64 x i8> zeroinitializer
  %i.mk = bitcast <32 x i16> %i.mi to <64 x i8>
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.mj, <64 x i8> %i.mk)
  %i.mm = shufflevector <64 x i8> %i.ml, <64 x i8> <i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0>, <64 x i32> <i32 0, i32 65, i32 2, i32 67, i32 4, i32 69, i32 6, i32 71, i32 8, i32 73, i32 10, i32 75, i32 12, i32 77, i32 14, i32 79, i32 16, i32 81, i32 18, i32 83, i32 20, i32 85, i32 22, i32 87, i32 24, i32 89, i32 26, i32 91, i32 28, i32 93, i32 30, i32 95, i32 32, i32 97, i32 34, i32 99, i32 36, i32 101, i32 38, i32 103, i32 40, i32 105, i32 42, i32 107, i32 44, i32 109, i32 46, i32 111, i32 48, i32 113, i32 50, i32 115, i32 52, i32 117, i32 54, i32 119, i32 56, i32 121, i32 58, i32 123, i32 60, i32 125, i32 62, i32 127>
  %i.mn = bitcast <64 x i8> %i.mm to <32 x i16>
  %i.mo = shl <32 x i16> %i.mn, splat (i16 12)
  %i.mp = bitcast <64 x i8> %i.lz to <16 x i32>
  %i.mq = bitcast <32 x i16> %i.mh to <16 x i32>
  %i.mr = bitcast <32 x i16> %i.mo to <16 x i32>
  %i.ms = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mp, <16 x i32> %i.mq, <16 x i32> %i.mr, i32 254)
  %11 = tail call noundef i64 @llvm.pext.i64(i64 %i.lg, i64 %i.lr) ; 2 uses
  %i.mt = trunc i64 %11 to i32
  %i.mu = lshr i64 %11, 1                         ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = bitcast i32 %i.mt to <32 x i1>
  %i.mx = select <32 x i1> %i.mw, <32 x i16> splat (i16 -9216), <32 x i16> zeroinitializer
  %i.my = bitcast <16 x i32> %i.ms to <32 x i16>  ; 2 uses
  %i.mz = lshr <32 x i16> %i.my, splat (i16 4)
  %i.na = or <32 x i16> %i.mx, %i.my
  %i.nb = add nuw nsw <32 x i16> %i.mz, splat (i16 -10304)
  %i.nc = bitcast i32 %i.mv to <32 x i1>          ; 2 uses
  %i.nd = select <32 x i1> %i.nc, <32 x i16> %i.nb, <32 x i16> %i.na ; 3 uses
  %i.ne = and i64 %i.mu, 2147483648
  %i.nf = xor i64 %i.ne, 4294967295
  %i.ng = and i64 %i.lr, %i.gy
  %12 = tail call noundef i64 @llvm.pdep.i64(i64 %i.nf, i64 %i.ng) ; 2 uses
  %i.nh = xor i64 %i.lj, %i.gy
  %.not253.i.i = icmp eq i64 %i.li, %i.nh
  br i1 %.not253.i.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.ni = xor i64 %i.io, %i.gy
  %i.nj = and i64 %i.ni, %i.ie
  %i.nk = shl i64 %i.nj, 2
  %13 = tail call noundef i64 @llvm.pext.i64(i64 %i.nk, i64 %i.lr)
  %i.nl = trunc i64 %13 to i32
  %i.nm = icmp ult <32 x i16> %i.nd, splat (i16 2048)
  %i.nn = bitcast i32 %i.nl to <32 x i1>
  %i.no = add <32 x i16> %i.nd, splat (i16 10240) ; 2 uses
  %i.np = icmp ult <32 x i16> %i.no, splat (i16 2048)
  %i.nq = icmp ugt <32 x i16> %i.no, splat (i16 1023)
  %i.nr = and <32 x i1> %i.nq, %i.nc
  %i.ns = or <32 x i1> %i.nm, %i.np
  %i.nt = and <32 x i1> %i.ns, %i.nn
  %i.nu = or <32 x i1> %i.nr, %i.nt
  %i.nv = bitcast <32 x i1> %i.nu to i32
  %.not.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.nw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %12, i1 false)
  %i.nx = sub nuw nsw i64 64, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.nx
  %i.nz = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %12) ; 2 uses
  %i.oa = bitcast <32 x i16> %i.nd to <64 x i8>
  %i.ob = shufflevector <64 x i8> %i.oa, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %notmask255.i.i = shl nsw i64 -1, %i.nz
  %i.oc = trunc i64 %notmask255.i.i to i32
  %i.od = xor i32 %i.oc, -1
  %i.oe = bitcast <64 x i8> %i.ob to <32 x i16>
  %i.of = bitcast i32 %i.od to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.oe, ptr align 1 %.0492.i, <32 x i1> %i.of)
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.nz
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.oh = or i64 %i.hd, %i.ic
  %i.oi = and i64 %i.oh, %i.gy                    ; 3 uses
  %i.oj = xor i64 %i.oi, %i.gy
  %i.ok = shufflevector <64 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 false>, <64 x i1> %i.ib, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126>
  %i.ol = bitcast <64 x i1> %i.ok to i64
  %.not251.i.i = icmp eq i64 %i.oj, %i.ol
  br i1 %.not251.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.om = add <64 x i8> %i.ha, splat (i8 62)
  %i.on = select <64 x i1> %i.ib, <64 x i8> %i.om, <64 x i8> zeroinitializer
  %i.oo = xor <64 x i1> %i.ib, splat (i1 true)
  %i.op = bitcast <64 x i1> %i.oo to i64
  %i.oq = and i64 %i.op, %i.gy                    ; 2 uses
  %14 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.oq)
  %i.or = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %14, i1 false)
  %i.os = sub nuw nsw i64 64, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %.0476491.i, i64 %i.os
  %i.ou = bitcast i64 %i.oi to <64 x i1>
  %i.ov = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.on, <64 x i8> zeroinitializer, <64 x i1> %i.ou)
  %i.ow = shufflevector <64 x i8> %i.ov, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ox = zext <32 x i8> %i.ow to <32 x i16>
  %i.oy = bitcast i64 %i.oq to <64 x i1>
  %i.oz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ha, <64 x i8> zeroinitializer, <64 x i1> %i.oy)
  %i.pa = shufflevector <64 x i8> %i.oz, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pb = zext <32 x i8> %i.pa to <32 x i16>
  %i.pc = shl nuw nsw <32 x i16> %i.ox, splat (i16 6)
  %i.pd = add nuw nsw <32 x i16> %i.pc, %i.pb
  %i.pe = bitcast <32 x i16> %i.pd to <64 x i8>
  %i.pf = shufflevector <64 x i8> %i.pe, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %15 = tail call noundef i64 @llvm.pdep.i64(i64 4294967295, i64 %i.oi)
  %i.pg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %15) ; 2 uses
  %notmask252.i.i = shl nsw i64 -1, %i.pg
  %i.ph = trunc i64 %notmask252.i.i to i32
  %i.pi = xor i32 %i.ph, -1
  %i.pj = bitcast <64 x i8> %i.pf to <32 x i16>
  %i.pk = bitcast i32 %i.pi to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.pj, ptr align 1 %.0492.i, <32 x i1> %i.pk)
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.0492.i, i64 %i.pg
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge

_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i.backedge: ; preds = %bb.ad, %bb.ab, %bb.y, %bb.s, %bb.r, %bb.n, %bb.l, %bb.i, %bb.c
  %.0492.i.be = phi ptr [ %i.y, %bb.c ], [ %i.hp, %bb.r ], [ %i.og, %bb.ab ], [ %i.cw, %bb.i ], [ %i.le, %bb.y ], [ %i.ia, %bb.s ], [ %i.pl, %bb.ad ], [ %i.fu, %bb.l ], [ %i.gw, %bb.n ]
  %.0476491.i.be = phi ptr [ %i.m, %bb.c ], [ %i.hg, %bb.r ], [ %i.ny, %bb.ab ], [ %i.cp, %bb.i ], [ %i.kx, %bb.y ], [ %i.hg, %bb.s ], [ %i.ot, %bb.ad ], [ %i.fm, %bb.l ], [ %spec.select.i, %bb.n ]
  br label %_ZN7simdutf7icelake12_GLOBAL__N_127process_block_utf8_to_utf16ILNS1_21block_processing_modeE0ELNS_10endiannessE1EEEbRPKcRPDsm.exit.i, !llvm.loop !258

.critedge.i:                                      ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.pm = ptrtoint ptr %1 to i64
  %i.pn = sub i64 %i.c, %i.pm                     ; 6 uses
  %i.po = icmp ult i64 %i.pn, %2
  br i1 %i.po, label %bb.ae, label %.critedge40.i

bb.ae:                                            ; preds = %.critedge.i
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 %i.pn ; 4 uses
  %i.pq = load i8, ptr %i.pp, align 1
  %i.pr = icmp slt i8 %i.pq, -64
  %i.ps = icmp ugt i64 %i.pn, 63
  %or.cond.i = and i1 %i.ps, %i.pr
  br i1 %or.cond.i, label %bb.af, label %.critedge40.i

bb.af:                                            ; preds = %bb.ae
  %i.pt = getelementptr i8, ptr %i.pp, i64 -1
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = icmp sgt i8 %i.pu, -65
  %i.pw = getelementptr i8, ptr %i.pp, i64 -2
  %i.px = load i8, ptr %i.pw, align 1
  %i.py = icmp sgt i8 %i.px, -65
  %i.pz = getelementptr i8, ptr %i.pp, i64 -3
  %i.qa = load i8, ptr %i.pz, align 1
  %i.qb = icmp sgt i8 %i.qa, -65
  %or.cond3.not38.i = select i1 %i.pv, i1 true, i1 %i.py
  %or.cond5.not.i = select i1 %or.cond3.not38.i, i1 true, i1 %i.qb
  br i1 %or.cond5.not.i, label %.critedge40.i, label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

.critedge40.i:                                    ; preds = %bb.af, %bb.ae, %.critedge.i
  %i.qc = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs(i64 noundef %i.pn, ptr noundef %.0476491.i, i64 noundef %i.d, ptr noundef %.0492.i) ; 2 uses
  %i.qd = extractvalue { i32, i64 } %i.qc, 0
  %i.qe = extractvalue { i32, i64 } %i.qc, 1
  %i.qf = add i64 %i.qe, %i.pn
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.ag:                                            ; preds = %bb.o
  %i.qg = ptrtoint ptr %.0492.i to i64
  %i.qh = ptrtoint ptr %3 to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = ashr exact i64 %i.qi, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_145fast_avx512_convert_utf8_to_utf16_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit: ; preds = %bb.af, %.critedge40.i, %bb.ag
  %.sroa.4.0.i = phi i64 [ %i.qj, %bb.ag ], [ %i.qf, %.critedge40.i ], [ %i.pn, %bb.af ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.ag ], [ %i.qd, %.critedge40.i ], [ 3, %bb.af ]
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
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7icelake14implementation31convert_valid_utf16be_to_latin1EPKDsmPc:bb.a
  %i.ab = shufflevector <64 x i8> %i.w, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> %i.ab, ptr align 1 %.036.lcssa.i.i, <32 x i1> %i.u)
  br label %_ZNK7simdutf7icelake14implementation25convert_utf16be_to_latin1EPKDsmPc.exit

_ZNK7simdutf7icelake14implementation25convert_utf16be_to_latin1EPKDsmPc.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.c, %bb.d
  %.3.i.i = phi i64 [ 0, %bb.c ], [ %2, %._crit_edge.i.i ], [ %2, %bb.d ], [ 0, %.lr.ph.i.i ]
  ret i64 %.3.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation31convert_valid_utf16le_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp sgt i64 %2, 31
  br i1 %i.c, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.02856.i.i = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.03255.i.i = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <8 x i64>, ptr %.02856.i.i, align 1 ; 2 uses
  %i.e = bitcast <8 x i64> %i.d to <32 x i16>
  %i.f = icmp ugt <32 x i16> %i.e, splat (i16 255)
  %i.g = bitcast <32 x i1> %i.f to i32
  %.not35.i.i = icmp eq i32 %i.g, 0
  br i1 %.not35.i.i, label %bb.b, label %_ZNK7simdutf7icelake14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = bitcast <8 x i64> %i.d to <64 x i8>
  %i.i = shufflevector <64 x i8> %i.h, <64 x i8> poison, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <64 x i8> %i.i to <8 x i64>
  %i.k = shufflevector <8 x i64> %i.j, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.k, ptr %.03255.i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.03255.i.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02856.i.i, i64 64 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = ashr exact i64 %i.o, 1                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 31
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !272

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %.032.lcssa.i.i = phi ptr [ %3, %bb.a ], [ %i.l, %bb.b ]
  %.028.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.lcssa.i.i = phi i64 [ %2, %bb.a ], [ %i.p, %bb.b ]
  %i.r = icmp ult ptr %.028.lcssa.i.i, %i.a
  br i1 %i.r, label %bb.c, label %_ZNK7simdutf7icelake14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = trunc i64 %.lcssa.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i.i, -1
  %i.u = bitcast i32 %i.t to <32 x i1>            ; 2 uses
  %i.v = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr align 1 %.028.lcssa.i.i, <32 x i1> %i.u, <32 x i16> zeroinitializer) ; 2 uses
  %i.w = icmp ugt <32 x i16> %i.v, splat (i16 255)
  %i.x = bitcast <32 x i1> %i.w to i32
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK7simdutf7icelake14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

bb.d:                                             ; preds = %bb.c
  %i.y = trunc <32 x i16> %i.v to <32 x i8>
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> %i.y, ptr align 1 %.032.lcssa.i.i, <32 x i1> %i.u)
  br label %_ZNK7simdutf7icelake14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

_ZNK7simdutf7icelake14implementation25convert_utf16le_to_latin1EPKDsmPc.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.c, %bb.d
  %.3.i.i = phi i64 [ 0, %bb.c ], [ %2, %._crit_edge.i.i ], [ %2, %bb.d ], [ 0, %.lr.ph.i.i ]
  ret i64 %.3.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation23convert_utf16le_to_utf8EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.a
  %.0191.i = phi i32 [ 0, %bb.a ], [ %.0191.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0182.i = phi i32 [ 0, %bb.a ], [ %.0182.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0174.i = phi i32 [ 2147483647, %bb.a ], [ %.0174.i.be, %.loopexit.i.backedge ]
  %.0160.i = phi ptr [ %3, %bb.a ], [ %.0160.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0157.i = phi i64 [ %2, %bb.a ], [ %.0157.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0156.i = phi ptr [ %1, %bb.a ], [ %i.d, %.loopexit.i.backedge ] ; 3 uses
  %i.a = icmp ugt i64 %.0157.i, 31
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.loopexit.i
  %i.b = load <8 x i64>, ptr %.0156.i, align 1
  %i.c = add i64 %.0157.i, -31
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.1192.i = phi i32 [ %.0191.i, %bb.b ], [ %.6197.i, %bb.k ] ; 2 uses
  %.1183.i = phi i32 [ %.0182.i, %bb.b ], [ %i.ge, %bb.k ] ; 5 uses
  %.1175.i = phi i32 [ %.0174.i, %bb.b ], [ %i.ga, %bb.k ] ; 6 uses
  %.0167.i = phi <8 x i64> [ %i.b, %bb.b ], [ %i.gd, %bb.k ] ; 4 uses
  %.1161.i = phi ptr [ %.0160.i, %bb.b ], [ %.6166.i, %bb.k ] ; 8 uses
  %.1158.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.k ] ; 6 uses
  %.1.i = phi ptr [ %.0156.i, %bb.b ], [ %.2.i, %bb.k ]
  %i.d = getelementptr inbounds nuw i8, ptr %.1.i, i64 62 ; 4 uses
  %i.e = bitcast <8 x i64> %.0167.i to <32 x i16> ; 5 uses
  %i.f = icmp ugt <32 x i16> %i.e, splat (i16 127)
  %i.g = bitcast i32 %.1175.i to <32 x i1>        ; 5 uses
  %i.h = and <32 x i1> %i.f, %i.g                 ; 4 uses
  %i.i = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.g, <32 x i1> %i.h)
  %i.j = and i32 %i.i, 255
  %.not.i41 = icmp eq i32 %i.j, 0
  br i1 %.not.i41, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = icmp ult <32 x i16> %i.e, splat (i16 2048) ; 3 uses
  %i.l = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.k, <32 x i1> %i.g)
  %i.m = and i32 %i.l, 255
  %.not208.i.peel = icmp eq i32 %i.m, 0
  br i1 %.not208.i.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.n = bitcast <8 x i64> %.0167.i to <32 x i16>
  %i.o = and <32 x i16> %i.n, splat (i16 -1024)   ; 2 uses
  %i.p = icmp eq <32 x i16> %i.o, splat (i16 -10240)
  %i.q = and <32 x i1> %i.p, %i.g                 ; 2 uses
  %i.r = bitcast <32 x i1> %i.q to i32            ; 3 uses
  %i.s = icmp eq <32 x i16> %i.o, splat (i16 -9216) ; 3 uses
  %i.t = bitcast <32 x i1> %i.s to i32            ; 4 uses
  %i.u = or i32 %i.r, %i.t
  %.not373.i.peel = icmp eq i32 %i.u, 0
  br i1 %.not373.i.peel, label %.thread.split.loop.exit416.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = shl i32 %i.r, 1
  %i.w = add i32 %i.v, %.1192.i                   ; 2 uses
  %.not210.i.peel = icmp eq i32 %i.w, %i.t
  br i1 %.not210.i.peel, label %.thread.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %i.x, %i.t
  %i.z = lshr i32 %i.t, 1
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %i.r, %i.aa
  %i.ac = or i32 %i.y, %i.ab
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ac, i1 false) ; 2 uses
  %notmask.i.peel = shl nsw i32 -1, %i.ad
  %i.ae = xor i32 %notmask.i.peel, -1             ; 3 uses
  %i.af = bitcast i32 %i.ae to <32 x i1>          ; 4 uses
  %i.ag = select <32 x i1> %i.af, <32 x i16> %i.e, <32 x i16> zeroinitializer ; 3 uses
  %i.ah = add nsw i32 %i.ad, -31                  ; 2 uses
  %i.ai = icmp ugt <32 x i16> %i.ag, splat (i16 127)
  %i.aj = and <32 x i1> %i.ai, %i.af              ; 2 uses
  %i.ak = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.af, <32 x i1> %i.aj)
  %i.al = and i32 %i.ak, 255
  %.not.i.peel = icmp eq i32 %i.al, 0
  br i1 %.not.i.peel, label %.lr.ph, label %.thread363.i.thread

.thread363.i.thread:                              ; preds = %bb.f, %bb.i
  %.2184.i.lcssa.ph = phi i32 [ %i.fr, %bb.i ], [ %i.ah, %bb.f ]
  %.2176.i.lcssa.ph = phi i32 [ %i.fo, %bb.i ], [ %i.ae, %bb.f ]
  %.lcssa12.ph = phi <32 x i16> [ %i.fq, %bb.i ], [ %i.ag, %bb.f ]
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1161.i, <32 x i16> %.lcssa12.ph, i32 %.2176.i.lcssa.ph)
  %i.am = getelementptr inbounds nuw i8, ptr %.1161.i, i64 31
  br label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit

._crit_edge:                                      ; preds = %bb.c
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1161.i, <32 x i16> %i.e, i32 %.1175.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.1161.i, i64 31 ; 2 uses
  %i.ao = icmp ult i64 %.1158.i, 32
  br i1 %i.ao, label %.thread363.i, label %.loopexit.i.backedge

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.ap = phi <32 x i1> [ %i.ft, %bb.i ], [ %i.aj, %bb.f ] ; 3 uses
  %i.aq = phi <32 x i1> [ %i.fp, %bb.i ], [ %i.af, %bb.f ] ; 3 uses
  %i.ar = phi <32 x i16> [ %i.fq, %bb.i ], [ %i.ag, %bb.f ] ; 6 uses
  %.2176.i43 = phi i32 [ %i.fo, %bb.i ], [ %i.ae, %bb.f ] ; 3 uses
  %.2184.i42 = phi i32 [ %i.fr, %bb.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.as = icmp ult <32 x i16> %i.ar, splat (i16 2048) ; 3 uses
  %i.at = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.as, <32 x i1> %i.aq)
  %i.au = and i32 %i.at, 255
  %.not208.i = icmp eq i32 %i.au, 0
  br i1 %.not208.i, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa75 = phi <32 x i1> [ %i.h, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.lcssa71 = phi <32 x i1> [ %i.g, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %.lcssa67 = phi <32 x i16> [ %i.e, %.lr.ph.preheader ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.2159.i45.lcssa = phi i64 [ %.1158.i, %.lr.ph.preheader ], [ 0, %.lr.ph ] ; 3 uses
  %.2176.i43.lcssa = phi i32 [ %.1175.i, %.lr.ph.preheader ], [ %.2176.i43, %.lr.ph ]
  %.2184.i42.lcssa = phi i32 [ %.1183.i, %.lr.ph.preheader ], [ %.2184.i42, %.lr.ph ] ; 2 uses
  %i.av = bitcast <32 x i1> %.lcssa75 to i32
  %i.aw = shl <32 x i16> %.lcssa67, splat (i16 8)
  %i.ax = bitcast <32 x i16> %i.aw to <16 x i32>
  %i.ay = lshr <32 x i16> %.lcssa67, splat (i16 6)
  %i.az = bitcast <32 x i16> %i.ay to <16 x i32>
  %i.ba = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ax, <16 x i32> %i.az, <16 x i32> splat (i32 1061109567), i32 168)
  %i.bb = bitcast <16 x i32> %i.ba to <32 x i16>
  %i.bc = add <32 x i16> %i.bb, splat (i16 -32576)
  %i.bd = select <32 x i1> %.lcssa75, <32 x i16> %i.bc, <32 x i16> %.lcssa67
  %i.be = select <32 x i1> %.lcssa71, <32 x i16> splat (i16 2048), <32 x i16> splat (i16 -1)
  %i.bf = bitcast <32 x i16> %i.bd to <64 x i8>   ; 2 uses
  %i.bg = bitcast <32 x i16> %i.be to <64 x i8>
  %i.bh = icmp uge <64 x i8> %i.bf, %i.bg         ; 2 uses
  %i.bi = bitcast <64 x i1> %i.bh to i64          ; 2 uses
  %i.bj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bf, <64 x i8> zeroinitializer, <64 x i1> %i.bh)
  %4 = tail call noundef i64 @llvm.pext.i64(i64 %i.bi, i64 %i.bi)
  %i.bk = bitcast i64 %4 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bj, ptr align 1 %.1161.i, <64 x i1> %i.bk)
  %i.bl = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.1161.i, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 31 ; 2 uses
  %i.bp = icmp ult i64 %.2159.i45.lcssa, 32
  br i1 %i.bp, label %.thread363.i, label %.loopexit.i.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.bq = and <32 x i16> %i.ar, splat (i16 -1024) ; 2 uses
  %i.br = icmp eq <32 x i16> %i.bq, splat (i16 -10240)
  %i.bs = and <32 x i1> %i.aq, %i.br              ; 2 uses
  %i.bt = bitcast <32 x i1> %i.bs to i32          ; 3 uses
  %i.bu = icmp eq <32 x i16> %i.bq, splat (i16 -9216) ; 3 uses
  %i.bv = bitcast <32 x i1> %i.bu to i32          ; 4 uses
  %i.bw = or i32 %i.bt, %i.bv
  %.not373.i = icmp eq i32 %i.bw, 0
  br i1 %.not373.i, label %.thread.split.loop.exit416.i.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = shl i32 %i.bt, 1
  %i.by = add i32 %i.bx, %.1192.i                 ; 2 uses
  %.not210.i = icmp eq i32 %i.by, %i.bv
  br i1 %.not210.i, label %.thread.split.loop.exit.i.loopexit, label %bb.i

.thread.split.loop.exit.i.loopexit:               ; preds = %bb.h
  %.1168.i44.le = bitcast <32 x i16> %i.ar to <8 x i64>
  br label %.thread.split.loop.exit.i

.thread.split.loop.exit.i:                        ; preds = %.thread.split.loop.exit.i.loopexit, %bb.e
  %.lcssa83 = phi <32 x i1> [ %i.q, %bb.e ], [ %i.bs, %.thread.split.loop.exit.i.loopexit ] ; 3 uses
  %.lcssa80 = phi <32 x i1> [ %i.s, %bb.e ], [ %i.bu, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa77 = phi <32 x i1> [ %i.h, %bb.e ], [ %i.ap, %.thread.split.loop.exit.i.loopexit ]
  %.2159.i45.lcssa64 = phi i64 [ %.1158.i, %bb.e ], [ 0, %.thread.split.loop.exit.i.loopexit ]
  %.1168.i44.lcssa61 = phi <8 x i64> [ %.0167.i, %bb.e ], [ %.1168.i44.le, %.thread.split.loop.exit.i.loopexit ] ; 2 uses
  %.2176.i43.lcssa57 = phi i32 [ %.1175.i, %bb.e ], [ %.2176.i43, %.thread.split.loop.exit.i.loopexit ]
  %.2184.i42.lcssa53 = phi i32 [ %.1183.i, %bb.e ], [ %.2184.i42, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa50 = phi <32 x i1> [ %i.k, %bb.e ], [ %i.as, %.thread.split.loop.exit.i.loopexit ]
  %i.bz = bitcast <8 x i64> %.1168.i44.lcssa61 to <32 x i16>
  %i.ca = shufflevector <32 x i16> %i.bz, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cb = zext <16 x i16> %i.ca to <16 x i32>     ; 4 uses
  %i.cc = bitcast <8 x i64> %.1168.i44.lcssa61 to <32 x i16>
  %i.cd = shufflevector <32 x i16> %i.cc, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ce = zext <16 x i16> %i.cd to <16 x i32>     ; 4 uses
  %i.cf = shufflevector <16 x i32> %i.cb, <16 x i32> %i.ce, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.cg = shufflevector <16 x i32> %i.ce, <16 x i32> %i.cb, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ch = shufflevector <32 x i1> %.lcssa83, <32 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ci = select <16 x i1> %i.ch, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.cj = bitcast <32 x i1> %.lcssa83 to <2 x i16>
  %i.ck = extractelement <2 x i16> %i.cj, i64 1
  %i.cl = bitcast i16 %i.ck to <16 x i1>          ; 2 uses
  %i.cm = select <16 x i1> %i.cl, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.cn = shl nuw nsw <16 x i32> %i.cb, splat (i32 10)
  %i.co = shl nuw nsw <16 x i32> %i.ce, splat (i32 10)
  %i.cp = add nuw nsw <16 x i32> %i.cg, splat (i32 -56613888)
  %i.cq = add nsw <16 x i32> %i.cn, splat (i32 -56613888)
  %i.cr = add nsw <16 x i32> %i.cq, %i.cf
  %i.cs = select <16 x i1> %i.ch, <16 x i32> %i.cr, <16 x i32> %i.cb
  %i.ct = add nsw <16 x i32> %i.cp, %i.co
  %i.cu = select <16 x i1> %i.cl, <16 x i32> %i.ct, <16 x i32> %i.ce
  %i.cv = shufflevector <32 x i1> %.lcssa83, <32 x i1> <i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 poison, i1 poison>, <32 x i32> <i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cw = bitcast <32 x i1> %i.cv to i32
  br label %.thread.i

.thread.split.loop.exit416.i.loopexit:            ; preds = %bb.g
  %.1168.i44.le152 = bitcast <32 x i16> %i.ar to <8 x i64>
  br label %.thread.split.loop.exit416.i

.thread.split.loop.exit416.i:                     ; preds = %.thread.split.loop.exit416.i.loopexit, %bb.d
  %.lcssa79 = phi <32 x i1> [ %i.s, %bb.d ], [ %i.bu, %.thread.split.loop.exit416.i.loopexit ]
  %.lcssa76 = phi <32 x i1> [ %i.h, %bb.d ], [ %i.ap, %.thread.split.loop.exit416.i.loopexit ]
  %.2159.i45.lcssa63 = phi i64 [ %.1158.i, %bb.d ], [ 0, %.thread.split.loop.exit416.i.loopexit ]
  %.1168.i44.lcssa60 = phi <8 x i64> [ %.0167.i, %bb.d ], [ %.1168.i44.le152, %.thread.split.loop.exit416.i.loopexit ] ; 2 uses
  %.2176.i43.lcssa56 = phi i32 [ %.1175.i, %bb.d ], [ %.2176.i43, %.thread.split.loop.exit416.i.loopexit ]
  %.2184.i42.lcssa52 = phi i32 [ %.1183.i, %bb.d ], [ %.2184.i42, %.thread.split.loop.exit416.i.loopexit ]
  %.lcssa49 = phi <32 x i1> [ %i.k, %bb.d ], [ %i.as, %.thread.split.loop.exit416.i.loopexit ]
  %i.cx = bitcast <8 x i64> %.1168.i44.lcssa60 to <32 x i16>
  %i.cy = shufflevector <32 x i16> %i.cx, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cz = zext <16 x i16> %i.cy to <16 x i32>
  %i.da = bitcast <8 x i64> %.1168.i44.lcssa60 to <32 x i16>
  %i.db = shufflevector <32 x i16> %i.da, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dc = zext <16 x i16> %i.db to <16 x i32>
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.split.loop.exit416.i, %.thread.split.loop.exit.i
  %i.dd = phi <32 x i1> [ %.lcssa80, %.thread.split.loop.exit.i ], [ %.lcssa79, %.thread.split.loop.exit416.i ]
  %i.de = phi <32 x i1> [ %.lcssa77, %.thread.split.loop.exit.i ], [ %.lcssa76, %.thread.split.loop.exit416.i ]
  %.2159.i4566 = phi i64 [ %.2159.i45.lcssa64, %.thread.split.loop.exit.i ], [ %.2159.i45.lcssa63, %.thread.split.loop.exit416.i ]
  %.2176.i4359 = phi i32 [ %.2176.i43.lcssa57, %.thread.split.loop.exit.i ], [ %.2176.i43.lcssa56, %.thread.split.loop.exit416.i ] ; 2 uses
  %.2184.i4255 = phi i32 [ %.2184.i42.lcssa53, %.thread.split.loop.exit.i ], [ %.2184.i42.lcssa52, %.thread.split.loop.exit416.i ]
  %i.df = phi <32 x i1> [ %.lcssa50, %.thread.split.loop.exit.i ], [ %.lcssa49, %.thread.split.loop.exit416.i ] ; 2 uses
  %.0207.i = phi i32 [ %i.cw, %.thread.split.loop.exit.i ], [ 0, %.thread.split.loop.exit416.i ]
  %i.dg = phi <16 x i32> [ %i.cm, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit416.i ]
  %i.dh = phi <16 x i32> [ %i.ci, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit416.i ]
  %.0204.in.i = phi <16 x i32> [ %i.cu, %.thread.split.loop.exit.i ], [ %i.dc, %.thread.split.loop.exit416.i ]
  %.0203.in.i = phi <16 x i32> [ %i.cs, %.thread.split.loop.exit.i ], [ %i.cz, %.thread.split.loop.exit416.i ] ; 2 uses
  %i.di = insertelement <16 x i32> %.0204.in.i, i32 0, i64 15 ; 2 uses
  %i.dj = bitcast <16 x i32> %.0203.in.i to <64 x i8>
  %i.dk = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dj)
  %i.dl = bitcast <16 x i32> %i.di to <64 x i8>
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dl)
  %i.dn = zext nneg i32 %.2176.i4359 to i64
  %i.do = shufflevector <32 x i1> %i.dd, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.dp = bitcast i64 %i.dn to <64 x i1>
  %i.dq = xor <64 x i1> %i.do, splat (i1 true)
  %i.dr = and <64 x i1> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <32 x i1> %i.de, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.dt = xor <64 x i1> %i.ds, splat (i1 true)    ; 2 uses
  %bc374.i = bitcast <32 x i1> %i.df to <2 x i16>
  %i.du = extractelement <2 x i16> %bc374.i, i64 0
  %i.dv = bitcast i16 %i.du to <16 x i1>
  %i.dw = select <16 x i1> %i.dv, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.dh
  %i.dx = bitcast <32 x i1> %i.df to <2 x i16>
  %i.dy = extractelement <2 x i16> %i.dx, i64 1
  %i.dz = bitcast i16 %i.dy to <16 x i1>
  %i.ea = select <16 x i1> %i.dz, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.dg
  %i.eb = shufflevector <64 x i1> %i.dr, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = select <16 x i1> %i.eb, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %bc = bitcast <64 x i1> %i.dr to <4 x i16>
  %i.ed = extractelement <4 x i16> %bc, i64 1
  %i.ee = bitcast i16 %i.ed to <16 x i1>
  %i.ef = select <16 x i1> %i.ee, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %i.eg = bitcast <64 x i8> %i.dk to <16 x i32>
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eg, <16 x i32> splat (i32 1061109567), <16 x i32> %i.dw, i32 234)
  %i.ei = bitcast <64 x i8> %i.dm to <16 x i32>
  %i.ej = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ei, <16 x i32> splat (i32 1061109567), <16 x i32> %i.ea, i32 234)
  %i.ek = shl <16 x i32> %.0203.in.i, splat (i32 24)
  %i.el = shufflevector <64 x i1> %i.dt, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = select <16 x i1> %i.el, <16 x i32> %i.ek, <16 x i32> %i.eh
  %bc197 = bitcast <64 x i1> %i.dt to <4 x i16>
  %i.en = extractelement <4 x i16> %bc197, i64 1
  %i.eo = shl <16 x i32> %i.di, splat (i32 24)
  %i.ep = bitcast i16 %i.en to <16 x i1>
  %i.eq = select <16 x i1> %i.ep, <16 x i32> %i.eo, <16 x i32> %i.ej
  %i.er = bitcast <16 x i32> %i.em to <64 x i8>   ; 2 uses
  %i.es = bitcast <16 x i32> %i.ec to <64 x i8>
  %i.et = icmp uge <64 x i8> %i.er, %i.es         ; 2 uses
  %i.eu = bitcast <64 x i1> %i.et to i64          ; 3 uses
  %i.ev = bitcast <16 x i32> %i.eq to <64 x i8>   ; 2 uses
  %i.ew = bitcast <16 x i32> %i.ef to <64 x i8>
  %i.ex = icmp uge <64 x i8> %i.ev, %i.ew         ; 2 uses
  %i.ey = bitcast <64 x i1> %i.ex to i64          ; 3 uses
  %i.ez = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.er, <64 x i8> zeroinitializer, <64 x i1> %i.et)
  %i.fa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ev, <64 x i8> zeroinitializer, <64 x i1> %i.ex)
  %i.fb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eu)
  %i.fc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ey)
  %5 = tail call noundef i64 @llvm.pext.i64(i64 %i.eu, i64 %i.eu)
  %i.fd = bitcast i64 %5 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ez, ptr align 1 %.1161.i, <64 x i1> %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.1161.i, i64 %i.fb ; 2 uses
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.ey, i64 %i.ey)
  %i.ff = bitcast i64 %6 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.fa, ptr align 1 %i.fe, <64 x i1> %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.thread.i, %.loopexit, %._crit_edge
  %.0191.i.be = phi i32 [ %.0207.i, %.thread.i ], [ 0, %.loopexit ], [ 0, %._crit_edge ]
  %.0182.i.be = phi i32 [ %.2184.i4255, %.thread.i ], [ %.2184.i42.lcssa, %.loopexit ], [ %.1183.i, %._crit_edge ]
  %.0174.i.be = phi i32 [ %.2176.i4359, %.thread.i ], [ %.2176.i43.lcssa, %.loopexit ], [ %.1175.i, %._crit_edge ]
  %.0160.i.be = phi ptr [ %i.fg, %.thread.i ], [ %i.bo, %.loopexit ], [ %i.an, %._crit_edge ]
  %.0157.i.be = phi i64 [ %.2159.i4566, %.thread.i ], [ %.2159.i45.lcssa, %.loopexit ], [ %.1158.i, %._crit_edge ]
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.fh = xor i32 %i.by, -1
  %i.fi = and i32 %i.fh, %i.bv
  %i.fj = lshr i32 %i.bv, 1
  %i.fk = xor i32 %i.fj, -1
  %i.fl = and i32 %i.bt, %i.fk
  %i.fm = or i32 %i.fi, %i.fl
  %i.fn = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fm, i1 false) ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.fn
  %i.fo = xor i32 %notmask.i, -1                  ; 3 uses
  %i.fp = bitcast i32 %i.fo to <32 x i1>          ; 4 uses
  %i.fq = select <32 x i1> %i.fp, <32 x i16> %i.ar, <32 x i16> zeroinitializer ; 3 uses
  %i.fr = add nsw i32 %i.fn, -31                  ; 2 uses
  %i.fs = icmp ugt <32 x i16> %i.fq, splat (i16 127)
  %i.ft = and <32 x i1> %i.fs, %i.fp              ; 2 uses
  %i.fu = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.fp, <32 x i1> %i.ft)
  %i.fv = and i32 %i.fu, 255
  %.not.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i, label %.lr.ph, label %.thread363.i.thread, !llvm.loop !286

bb.j:                                             ; preds = %.loopexit.i
  %i.fw = sub nsw i32 0, %.0182.i
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.0160.i, i64 %i.fx
  br label %.thread363.i

.thread363.i:                                     ; preds = %bb.j, %.loopexit, %._crit_edge
  %.6197.i = phi i32 [ %.0191.i, %bb.j ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  %.8190.i = phi i32 [ %.0182.i, %bb.j ], [ %.1183.i, %._crit_edge ], [ %.2184.i42.lcssa, %.loopexit ]
  %.6166.i = phi ptr [ %i.fy, %bb.j ], [ %i.an, %._crit_edge ], [ %i.bo, %.loopexit ] ; 2 uses
  %.8.i = phi i64 [ %.0157.i, %bb.j ], [ %.1158.i, %._crit_edge ], [ %.2159.i45.lcssa, %.loopexit ] ; 2 uses
  %.2.i = phi ptr [ %.0156.i, %bb.j ], [ %i.d, %._crit_edge ], [ %i.d, %.loopexit ] ; 3 uses
  %.not214.i = icmp eq i64 %.8.i, 0
  br i1 %.not214.i, label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit, label %bb.k

bb.k:                                             ; preds = %.thread363.i
  %i.fz = trunc nuw nsw i64 %.8.i to i32          ; 2 uses
  %notmask215.i = shl nsw i32 -1, %i.fz
  %i.ga = xor i32 %notmask215.i, -1               ; 2 uses
  %i.gb = bitcast i32 %i.ga to <32 x i1>
  %i.gc = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr align 1 %.2.i, <32 x i1> %i.gb, <32 x i16> zeroinitializer)
  %i.gd = bitcast <32 x i16> %i.gc to <8 x i64>
  %i.ge = add nsw i32 %i.fz, -31
  br label %bb.c

_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit: ; preds = %.thread363.i, %.thread363.i.thread
  %.2.i105 = phi ptr [ %i.d, %.thread363.i.thread ], [ %.2.i, %.thread363.i ]
  %.6166.i104 = phi ptr [ %i.am, %.thread363.i.thread ], [ %.6166.i, %.thread363.i ]
  %.8190.i103 = phi i32 [ %.2184.i.lcssa.ph, %.thread363.i.thread ], [ %.8190.i, %.thread363.i ]
  %i.gf = ptrtoint ptr %.6166.i104 to i64
  %i.gg = ptrtoint ptr %3 to i64
  %i.gh = sext i32 %.8190.i103 to i64             ; 2 uses
  %i.gi = sub i64 %i.gh, %i.gg
  %i.gj = add i64 %i.gi, %i.gf
  %i.gk = ptrtoint ptr %.2.i105 to i64
  %i.gl = ptrtoint ptr %1 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 1
  %i.go = add nsw i64 %i.gn, %i.gh
  %.not = icmp eq i64 %i.go, %2
  %.0 = select i1 %.not, i64 %i.gj, i64 0
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation23convert_utf16be_to_utf8EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.a
  %.0195.i = phi i32 [ 0, %bb.a ], [ %.0195.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0186.i = phi i32 [ 0, %bb.a ], [ %.0186.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0178.i = phi i32 [ 2147483647, %bb.a ], [ %.0178.i.be, %.loopexit.i.backedge ]
  %.0164.i = phi ptr [ %3, %bb.a ], [ %.0164.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0161.i = phi i64 [ %2, %bb.a ], [ %.0161.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0160.i = phi ptr [ %1, %bb.a ], [ %i.e, %.loopexit.i.backedge ] ; 3 uses
  %i.a = icmp ugt i64 %.0161.i, 31
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.loopexit.i
  %i.b = load <64 x i8>, ptr %.0160.i, align 1
  %i.c = shufflevector <64 x i8> %i.b, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.d = add i64 %.0161.i, -31
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.1196.i = phi i32 [ %.0195.i, %bb.b ], [ %.6201.i, %bb.k ] ; 2 uses
  %.1187.i = phi i32 [ %.0186.i, %bb.b ], [ %i.gg, %bb.k ] ; 5 uses
  %.1179.i = phi i32 [ %.0178.i, %bb.b ], [ %i.gb, %bb.k ] ; 6 uses
  %.0171.in.i = phi <64 x i8> [ %i.c, %bb.b ], [ %i.gf, %bb.k ] ; 3 uses
  %.1165.i = phi ptr [ %.0164.i, %bb.b ], [ %.6170.i, %bb.k ] ; 8 uses
  %.1162.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.k ] ; 6 uses
  %.1.i = phi ptr [ %.0160.i, %bb.b ], [ %.2.i, %bb.k ]
  %.0171.i = bitcast <64 x i8> %.0171.in.i to <8 x i64> ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.1.i, i64 62 ; 4 uses
  %i.f = bitcast <64 x i8> %.0171.in.i to <32 x i16> ; 5 uses
  %i.g = icmp ugt <32 x i16> %i.f, splat (i16 127)
  %i.h = bitcast i32 %.1179.i to <32 x i1>        ; 5 uses
  %i.i = and <32 x i1> %i.g, %i.h                 ; 4 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.h, <32 x i1> %i.i)
  %i.k = and i32 %i.j, 255
  %.not.i41 = icmp eq i32 %i.k, 0
  br i1 %.not.i41, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = icmp ult <32 x i16> %i.f, splat (i16 2048) ; 3 uses
  %i.m = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.l, <32 x i1> %i.h)
  %i.n = and i32 %i.m, 255
  %.not212.i.peel = icmp eq i32 %i.n, 0
  br i1 %.not212.i.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.o = bitcast <64 x i8> %.0171.in.i to <32 x i16>
  %i.p = and <32 x i16> %i.o, splat (i16 -1024)   ; 2 uses
  %i.q = icmp eq <32 x i16> %i.p, splat (i16 -10240)
  %i.r = and <32 x i1> %i.q, %i.h                 ; 2 uses
  %i.s = bitcast <32 x i1> %i.r to i32            ; 3 uses
  %i.t = icmp eq <32 x i16> %i.p, splat (i16 -9216) ; 3 uses
  %i.u = bitcast <32 x i1> %i.t to i32            ; 4 uses
  %i.v = or i32 %i.s, %i.u
  %.not385.i.peel = icmp eq i32 %i.v, 0
  br i1 %.not385.i.peel, label %.thread.split.loop.exit428.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = shl i32 %i.s, 1
  %i.x = add i32 %i.w, %.1196.i                   ; 2 uses
  %.not214.i.peel = icmp eq i32 %i.x, %i.u
  br i1 %.not214.i.peel, label %.thread.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = xor i32 %i.x, -1
  %i.z = and i32 %i.y, %i.u
  %i.aa = lshr i32 %i.u, 1
  %i.ab = xor i32 %i.aa, -1
  %i.ac = and i32 %i.s, %i.ab
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 false) ; 2 uses
  %notmask.i.peel = shl nsw i32 -1, %i.ae
  %i.af = xor i32 %notmask.i.peel, -1             ; 3 uses
  %i.ag = bitcast i32 %i.af to <32 x i1>          ; 4 uses
  %i.ah = select <32 x i1> %i.ag, <32 x i16> %i.f, <32 x i16> zeroinitializer ; 3 uses
  %i.ai = add nsw i32 %i.ae, -31                  ; 2 uses
  %i.aj = icmp ugt <32 x i16> %i.ah, splat (i16 127)
  %i.ak = and <32 x i1> %i.aj, %i.ag              ; 2 uses
  %i.al = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.ag, <32 x i1> %i.ak)
  %i.am = and i32 %i.al, 255
  %.not.i.peel = icmp eq i32 %i.am, 0
  br i1 %.not.i.peel, label %.lr.ph, label %.thread375.i.thread

.thread375.i.thread:                              ; preds = %bb.f, %bb.i
  %.2188.i.lcssa.ph = phi i32 [ %i.fs, %bb.i ], [ %i.ai, %bb.f ]
  %.2180.i.lcssa.ph = phi i32 [ %i.fp, %bb.i ], [ %i.af, %bb.f ]
  %.lcssa12.ph = phi <32 x i16> [ %i.fr, %bb.i ], [ %i.ah, %bb.f ]
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1165.i, <32 x i16> %.lcssa12.ph, i32 %.2180.i.lcssa.ph)
  %i.an = getelementptr inbounds nuw i8, ptr %.1165.i, i64 31
  br label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit

._crit_edge:                                      ; preds = %bb.c
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1165.i, <32 x i16> %i.f, i32 %.1179.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %.1165.i, i64 31 ; 2 uses
  %i.ap = icmp ult i64 %.1162.i, 32
  br i1 %i.ap, label %.thread375.i, label %.loopexit.i.backedge

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.aq = phi <32 x i1> [ %i.fu, %bb.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ar = phi <32 x i1> [ %i.fq, %bb.i ], [ %i.ag, %bb.f ] ; 3 uses
  %i.as = phi <32 x i16> [ %i.fr, %bb.i ], [ %i.ah, %bb.f ] ; 6 uses
  %.2180.i43 = phi i32 [ %i.fp, %bb.i ], [ %i.af, %bb.f ] ; 3 uses
  %.2188.i42 = phi i32 [ %i.fs, %bb.i ], [ %i.ai, %bb.f ] ; 3 uses
  %i.at = icmp ult <32 x i16> %i.as, splat (i16 2048) ; 3 uses
  %i.au = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.at, <32 x i1> %i.ar)
  %i.av = and i32 %i.au, 255
  %.not212.i = icmp eq i32 %i.av, 0
  br i1 %.not212.i, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa75 = phi <32 x i1> [ %i.i, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 2 uses
  %.lcssa71 = phi <32 x i1> [ %i.h, %.lr.ph.preheader ], [ %i.ar, %.lr.ph ]
  %.lcssa67 = phi <32 x i16> [ %i.f, %.lr.ph.preheader ], [ %i.as, %.lr.ph ] ; 3 uses
  %.2163.i45.lcssa = phi i64 [ %.1162.i, %.lr.ph.preheader ], [ 0, %.lr.ph ] ; 3 uses
  %.2180.i43.lcssa = phi i32 [ %.1179.i, %.lr.ph.preheader ], [ %.2180.i43, %.lr.ph ]
  %.2188.i42.lcssa = phi i32 [ %.1187.i, %.lr.ph.preheader ], [ %.2188.i42, %.lr.ph ] ; 2 uses
  %i.aw = bitcast <32 x i1> %.lcssa75 to i32
  %i.ax = shl <32 x i16> %.lcssa67, splat (i16 8)
  %i.ay = bitcast <32 x i16> %i.ax to <16 x i32>
  %i.az = lshr <32 x i16> %.lcssa67, splat (i16 6)
  %i.ba = bitcast <32 x i16> %i.az to <16 x i32>
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ay, <16 x i32> %i.ba, <16 x i32> splat (i32 1061109567), i32 168)
  %i.bc = bitcast <16 x i32> %i.bb to <32 x i16>
  %i.bd = add <32 x i16> %i.bc, splat (i16 -32576)
  %i.be = select <32 x i1> %.lcssa75, <32 x i16> %i.bd, <32 x i16> %.lcssa67
  %i.bf = select <32 x i1> %.lcssa71, <32 x i16> splat (i16 2048), <32 x i16> splat (i16 -1)
  %i.bg = bitcast <32 x i16> %i.be to <64 x i8>   ; 2 uses
  %i.bh = bitcast <32 x i16> %i.bf to <64 x i8>
  %i.bi = icmp uge <64 x i8> %i.bg, %i.bh         ; 2 uses
  %i.bj = bitcast <64 x i1> %i.bi to i64          ; 2 uses
  %i.bk = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bg, <64 x i8> zeroinitializer, <64 x i1> %i.bi)
  %4 = tail call noundef i64 @llvm.pext.i64(i64 %i.bj, i64 %i.bj)
  %i.bl = bitcast i64 %4 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bk, ptr align 1 %.1165.i, <64 x i1> %i.bl)
  %i.bm = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.1165.i, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 31 ; 2 uses
  %i.bq = icmp ult i64 %.2163.i45.lcssa, 32
  br i1 %i.bq, label %.thread375.i, label %.loopexit.i.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.br = and <32 x i16> %i.as, splat (i16 -1024) ; 2 uses
  %i.bs = icmp eq <32 x i16> %i.br, splat (i16 -10240)
  %i.bt = and <32 x i1> %i.ar, %i.bs              ; 2 uses
  %i.bu = bitcast <32 x i1> %i.bt to i32          ; 3 uses
  %i.bv = icmp eq <32 x i16> %i.br, splat (i16 -9216) ; 3 uses
  %i.bw = bitcast <32 x i1> %i.bv to i32          ; 4 uses
  %i.bx = or i32 %i.bu, %i.bw
  %.not385.i = icmp eq i32 %i.bx, 0
  br i1 %.not385.i, label %.thread.split.loop.exit428.i.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = shl i32 %i.bu, 1
  %i.bz = add i32 %i.by, %.1196.i                 ; 2 uses
  %.not214.i = icmp eq i32 %i.bz, %i.bw
  br i1 %.not214.i, label %.thread.split.loop.exit.i.loopexit, label %bb.i

.thread.split.loop.exit.i.loopexit:               ; preds = %bb.h
  %.1172.i44.le = bitcast <32 x i16> %i.as to <8 x i64>
  br label %.thread.split.loop.exit.i

.thread.split.loop.exit.i:                        ; preds = %.thread.split.loop.exit.i.loopexit, %bb.e
  %.lcssa83 = phi <32 x i1> [ %i.r, %bb.e ], [ %i.bt, %.thread.split.loop.exit.i.loopexit ] ; 3 uses
  %.lcssa80 = phi <32 x i1> [ %i.t, %bb.e ], [ %i.bv, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa77 = phi <32 x i1> [ %i.i, %bb.e ], [ %i.aq, %.thread.split.loop.exit.i.loopexit ]
  %.2163.i45.lcssa64 = phi i64 [ %.1162.i, %bb.e ], [ 0, %.thread.split.loop.exit.i.loopexit ]
  %.1172.i44.lcssa61 = phi <8 x i64> [ %.0171.i, %bb.e ], [ %.1172.i44.le, %.thread.split.loop.exit.i.loopexit ] ; 2 uses
  %.2180.i43.lcssa57 = phi i32 [ %.1179.i, %bb.e ], [ %.2180.i43, %.thread.split.loop.exit.i.loopexit ]
  %.2188.i42.lcssa53 = phi i32 [ %.1187.i, %bb.e ], [ %.2188.i42, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa50 = phi <32 x i1> [ %i.l, %bb.e ], [ %i.at, %.thread.split.loop.exit.i.loopexit ]
  %i.ca = bitcast <8 x i64> %.1172.i44.lcssa61 to <32 x i16>
  %i.cb = shufflevector <32 x i16> %i.ca, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = zext <16 x i16> %i.cb to <16 x i32>     ; 4 uses
  %i.cd = bitcast <8 x i64> %.1172.i44.lcssa61 to <32 x i16>
  %i.ce = shufflevector <32 x i16> %i.cd, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cf = zext <16 x i16> %i.ce to <16 x i32>     ; 4 uses
  %i.cg = shufflevector <16 x i32> %i.cc, <16 x i32> %i.cf, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ch = shufflevector <16 x i32> %i.cf, <16 x i32> %i.cc, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ci = shufflevector <32 x i1> %.lcssa83, <32 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cj = select <16 x i1> %i.ci, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.ck = bitcast <32 x i1> %.lcssa83 to <2 x i16>
  %i.cl = extractelement <2 x i16> %i.ck, i64 1
  %i.cm = bitcast i16 %i.cl to <16 x i1>          ; 2 uses
  %i.cn = select <16 x i1> %i.cm, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.co = shl nuw nsw <16 x i32> %i.cc, splat (i32 10)
  %i.cp = shl nuw nsw <16 x i32> %i.cf, splat (i32 10)
  %i.cq = add nuw nsw <16 x i32> %i.ch, splat (i32 -56613888)
  %i.cr = add nsw <16 x i32> %i.co, splat (i32 -56613888)
  %i.cs = add nsw <16 x i32> %i.cr, %i.cg
  %i.ct = select <16 x i1> %i.ci, <16 x i32> %i.cs, <16 x i32> %i.cc
  %i.cu = add nsw <16 x i32> %i.cq, %i.cp
  %i.cv = select <16 x i1> %i.cm, <16 x i32> %i.cu, <16 x i32> %i.cf
  %i.cw = shufflevector <32 x i1> %.lcssa83, <32 x i1> <i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 poison, i1 poison>, <32 x i32> <i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cx = bitcast <32 x i1> %i.cw to i32
  br label %.thread.i

.thread.split.loop.exit428.i.loopexit:            ; preds = %bb.g
  %.1172.i44.le152 = bitcast <32 x i16> %i.as to <8 x i64>
  br label %.thread.split.loop.exit428.i

.thread.split.loop.exit428.i:                     ; preds = %.thread.split.loop.exit428.i.loopexit, %bb.d
  %.lcssa79 = phi <32 x i1> [ %i.t, %bb.d ], [ %i.bv, %.thread.split.loop.exit428.i.loopexit ]
  %.lcssa76 = phi <32 x i1> [ %i.i, %bb.d ], [ %i.aq, %.thread.split.loop.exit428.i.loopexit ]
  %.2163.i45.lcssa63 = phi i64 [ %.1162.i, %bb.d ], [ 0, %.thread.split.loop.exit428.i.loopexit ]
  %.1172.i44.lcssa60 = phi <8 x i64> [ %.0171.i, %bb.d ], [ %.1172.i44.le152, %.thread.split.loop.exit428.i.loopexit ] ; 2 uses
  %.2180.i43.lcssa56 = phi i32 [ %.1179.i, %bb.d ], [ %.2180.i43, %.thread.split.loop.exit428.i.loopexit ]
  %.2188.i42.lcssa52 = phi i32 [ %.1187.i, %bb.d ], [ %.2188.i42, %.thread.split.loop.exit428.i.loopexit ]
  %.lcssa49 = phi <32 x i1> [ %i.l, %bb.d ], [ %i.at, %.thread.split.loop.exit428.i.loopexit ]
  %i.cy = bitcast <8 x i64> %.1172.i44.lcssa60 to <32 x i16>
  %i.cz = shufflevector <32 x i16> %i.cy, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.da = zext <16 x i16> %i.cz to <16 x i32>
  %i.db = bitcast <8 x i64> %.1172.i44.lcssa60 to <32 x i16>
  %i.dc = shufflevector <32 x i16> %i.db, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dd = zext <16 x i16> %i.dc to <16 x i32>
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.split.loop.exit428.i, %.thread.split.loop.exit.i
  %i.de = phi <32 x i1> [ %.lcssa80, %.thread.split.loop.exit.i ], [ %.lcssa79, %.thread.split.loop.exit428.i ]
  %i.df = phi <32 x i1> [ %.lcssa77, %.thread.split.loop.exit.i ], [ %.lcssa76, %.thread.split.loop.exit428.i ]
  %.2163.i4566 = phi i64 [ %.2163.i45.lcssa64, %.thread.split.loop.exit.i ], [ %.2163.i45.lcssa63, %.thread.split.loop.exit428.i ]
  %.2180.i4359 = phi i32 [ %.2180.i43.lcssa57, %.thread.split.loop.exit.i ], [ %.2180.i43.lcssa56, %.thread.split.loop.exit428.i ] ; 2 uses
  %.2188.i4255 = phi i32 [ %.2188.i42.lcssa53, %.thread.split.loop.exit.i ], [ %.2188.i42.lcssa52, %.thread.split.loop.exit428.i ]
  %i.dg = phi <32 x i1> [ %.lcssa50, %.thread.split.loop.exit.i ], [ %.lcssa49, %.thread.split.loop.exit428.i ] ; 2 uses
  %.0211.i = phi i32 [ %i.cx, %.thread.split.loop.exit.i ], [ 0, %.thread.split.loop.exit428.i ]
  %i.dh = phi <16 x i32> [ %i.cn, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit428.i ]
  %i.di = phi <16 x i32> [ %i.cj, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit428.i ]
  %.0208.in.i = phi <16 x i32> [ %i.cv, %.thread.split.loop.exit.i ], [ %i.dd, %.thread.split.loop.exit428.i ]
  %.0207.in.i = phi <16 x i32> [ %i.ct, %.thread.split.loop.exit.i ], [ %i.da, %.thread.split.loop.exit428.i ] ; 2 uses
  %i.dj = insertelement <16 x i32> %.0208.in.i, i32 0, i64 15 ; 2 uses
  %i.dk = bitcast <16 x i32> %.0207.in.i to <64 x i8>
  %i.dl = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dk)
  %i.dm = bitcast <16 x i32> %i.dj to <64 x i8>
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dm)
  %i.do = zext nneg i32 %.2180.i4359 to i64
  %i.dp = shufflevector <32 x i1> %i.de, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.dq = bitcast i64 %i.do to <64 x i1>
  %i.dr = xor <64 x i1> %i.dp, splat (i1 true)
  %i.ds = and <64 x i1> %i.dq, %i.dr              ; 2 uses
  %i.dt = shufflevector <32 x i1> %i.df, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.du = xor <64 x i1> %i.dt, splat (i1 true)    ; 2 uses
  %bc386.i = bitcast <32 x i1> %i.dg to <2 x i16>
  %i.dv = extractelement <2 x i16> %bc386.i, i64 0
  %i.dw = bitcast i16 %i.dv to <16 x i1>
  %i.dx = select <16 x i1> %i.dw, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.di
  %i.dy = bitcast <32 x i1> %i.dg to <2 x i16>
  %i.dz = extractelement <2 x i16> %i.dy, i64 1
  %i.ea = bitcast i16 %i.dz to <16 x i1>
  %i.eb = select <16 x i1> %i.ea, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.dh
  %i.ec = shufflevector <64 x i1> %i.ds, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = select <16 x i1> %i.ec, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %bc = bitcast <64 x i1> %i.ds to <4 x i16>
  %i.ee = extractelement <4 x i16> %bc, i64 1
  %i.ef = bitcast i16 %i.ee to <16 x i1>
  %i.eg = select <16 x i1> %i.ef, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %i.eh = bitcast <64 x i8> %i.dl to <16 x i32>
  %i.ei = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eh, <16 x i32> splat (i32 1061109567), <16 x i32> %i.dx, i32 234)
  %i.ej = bitcast <64 x i8> %i.dn to <16 x i32>
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ej, <16 x i32> splat (i32 1061109567), <16 x i32> %i.eb, i32 234)
  %i.el = shl <16 x i32> %.0207.in.i, splat (i32 24)
  %i.em = shufflevector <64 x i1> %i.du, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = select <16 x i1> %i.em, <16 x i32> %i.el, <16 x i32> %i.ei
  %bc197 = bitcast <64 x i1> %i.du to <4 x i16>
  %i.eo = extractelement <4 x i16> %bc197, i64 1
  %i.ep = shl <16 x i32> %i.dj, splat (i32 24)
  %i.eq = bitcast i16 %i.eo to <16 x i1>
  %i.er = select <16 x i1> %i.eq, <16 x i32> %i.ep, <16 x i32> %i.ek
  %i.es = bitcast <16 x i32> %i.en to <64 x i8>   ; 2 uses
  %i.et = bitcast <16 x i32> %i.ed to <64 x i8>
  %i.eu = icmp uge <64 x i8> %i.es, %i.et         ; 2 uses
  %i.ev = bitcast <64 x i1> %i.eu to i64          ; 3 uses
  %i.ew = bitcast <16 x i32> %i.er to <64 x i8>   ; 2 uses
  %i.ex = bitcast <16 x i32> %i.eg to <64 x i8>
  %i.ey = icmp uge <64 x i8> %i.ew, %i.ex         ; 2 uses
  %i.ez = bitcast <64 x i1> %i.ey to i64          ; 3 uses
  %i.fa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.es, <64 x i8> zeroinitializer, <64 x i1> %i.eu)
  %i.fb = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ew, <64 x i8> zeroinitializer, <64 x i1> %i.ey)
  %i.fc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ev)
  %i.fd = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ez)
  %5 = tail call noundef i64 @llvm.pext.i64(i64 %i.ev, i64 %i.ev)
  %i.fe = bitcast i64 %5 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.fa, ptr align 1 %.1165.i, <64 x i1> %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %.1165.i, i64 %i.fc ; 2 uses
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.ez, i64 %i.ez)
  %i.fg = bitcast i64 %6 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.fb, ptr align 1 %i.ff, <64 x i1> %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.thread.i, %.loopexit, %._crit_edge
  %.0195.i.be = phi i32 [ %.0211.i, %.thread.i ], [ 0, %.loopexit ], [ 0, %._crit_edge ]
  %.0186.i.be = phi i32 [ %.2188.i4255, %.thread.i ], [ %.2188.i42.lcssa, %.loopexit ], [ %.1187.i, %._crit_edge ]
  %.0178.i.be = phi i32 [ %.2180.i4359, %.thread.i ], [ %.2180.i43.lcssa, %.loopexit ], [ %.1179.i, %._crit_edge ]
  %.0164.i.be = phi ptr [ %i.fh, %.thread.i ], [ %i.bp, %.loopexit ], [ %i.ao, %._crit_edge ]
  %.0161.i.be = phi i64 [ %.2163.i4566, %.thread.i ], [ %.2163.i45.lcssa, %.loopexit ], [ %.1162.i, %._crit_edge ]
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.fi = xor i32 %i.bz, -1
  %i.fj = and i32 %i.fi, %i.bw
  %i.fk = lshr i32 %i.bw, 1
  %i.fl = xor i32 %i.fk, -1
  %i.fm = and i32 %i.bu, %i.fl
  %i.fn = or i32 %i.fj, %i.fm
  %i.fo = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fn, i1 false) ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.fo
  %i.fp = xor i32 %notmask.i, -1                  ; 3 uses
  %i.fq = bitcast i32 %i.fp to <32 x i1>          ; 4 uses
  %i.fr = select <32 x i1> %i.fq, <32 x i16> %i.as, <32 x i16> zeroinitializer ; 3 uses
  %i.fs = add nsw i32 %i.fo, -31                  ; 2 uses
  %i.ft = icmp ugt <32 x i16> %i.fr, splat (i16 127)
  %i.fu = and <32 x i1> %i.ft, %i.fq              ; 2 uses
  %i.fv = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.fq, <32 x i1> %i.fu)
  %i.fw = and i32 %i.fv, 255
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %.lr.ph, label %.thread375.i.thread, !llvm.loop !288

bb.j:                                             ; preds = %.loopexit.i
  %i.fx = sub nsw i32 0, %.0186.i
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.0164.i, i64 %i.fy
  br label %.thread375.i

.thread375.i:                                     ; preds = %bb.j, %.loopexit, %._crit_edge
  %.6201.i = phi i32 [ %.0195.i, %bb.j ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  %.8194.i = phi i32 [ %.0186.i, %bb.j ], [ %.1187.i, %._crit_edge ], [ %.2188.i42.lcssa, %.loopexit ]
  %.6170.i = phi ptr [ %i.fz, %bb.j ], [ %i.ao, %._crit_edge ], [ %i.bp, %.loopexit ] ; 2 uses
  %.8.i = phi i64 [ %.0161.i, %bb.j ], [ %.1162.i, %._crit_edge ], [ %.2163.i45.lcssa, %.loopexit ] ; 2 uses
  %.2.i = phi ptr [ %.0160.i, %bb.j ], [ %i.e, %._crit_edge ], [ %i.e, %.loopexit ] ; 3 uses
  %.not218.i = icmp eq i64 %.8.i, 0
  br i1 %.not218.i, label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit, label %bb.k

bb.k:                                             ; preds = %.thread375.i
  %i.ga = trunc nuw nsw i64 %.8.i to i32          ; 2 uses
  %notmask219.i = shl nsw i32 -1, %i.ga
  %i.gb = xor i32 %notmask219.i, -1               ; 2 uses
  %i.gc = bitcast i32 %i.gb to <32 x i1>
  %i.gd = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr align 1 %.2.i, <32 x i1> %i.gc, <32 x i16> zeroinitializer)
  %i.ge = bitcast <32 x i16> %i.gd to <64 x i8>
  %i.gf = shufflevector <64 x i8> %i.ge, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gg = add nsw i32 %i.ga, -31
  br label %bb.c

_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit: ; preds = %.thread375.i, %.thread375.i.thread
  %.2.i105 = phi ptr [ %i.e, %.thread375.i.thread ], [ %.2.i, %.thread375.i ]
  %.6170.i104 = phi ptr [ %i.an, %.thread375.i.thread ], [ %.6170.i, %.thread375.i ]
  %.8194.i103 = phi i32 [ %.2188.i.lcssa.ph, %.thread375.i.thread ], [ %.8194.i, %.thread375.i ]
  %i.gh = ptrtoint ptr %.6170.i104 to i64
  %i.gi = ptrtoint ptr %3 to i64
  %i.gj = sext i32 %.8194.i103 to i64             ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gi
  %i.gl = add i64 %i.gk, %i.gh
  %i.gm = ptrtoint ptr %.2.i105 to i64
  %i.gn = ptrtoint ptr %1 to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 1
  %i.gq = add nsw i64 %i.gp, %i.gj
  %.not = icmp eq i64 %i.gq, %2
  %.0 = select i1 %.not, i64 %i.gl, i64 0
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf16le_to_utf8_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %"struct.simdutf::full_result", align 8 ; 6 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.a
  %.0191.i = phi i32 [ 0, %bb.a ], [ %.0191.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0182.i = phi i32 [ 0, %bb.a ], [ %.0182.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0174.i = phi i32 [ 2147483647, %bb.a ], [ %.0174.i.be, %.loopexit.i.backedge ]
  %.0160.i = phi ptr [ %3, %bb.a ], [ %.0160.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0157.i = phi i64 [ %2, %bb.a ], [ %.0157.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0156.i = phi ptr [ %1, %bb.a ], [ %i.d, %.loopexit.i.backedge ] ; 3 uses
  %i.a = icmp ugt i64 %.0157.i, 31
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.loopexit.i
  %i.b = load <8 x i64>, ptr %.0156.i, align 1
  %i.c = add i64 %.0157.i, -31
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.1192.i = phi i32 [ %.0191.i, %bb.b ], [ %.6197.i, %bb.k ] ; 2 uses
  %.1183.i = phi i32 [ %.0182.i, %bb.b ], [ %i.ge, %bb.k ] ; 5 uses
  %.1175.i = phi i32 [ %.0174.i, %bb.b ], [ %i.ga, %bb.k ] ; 6 uses
  %.0167.i = phi <8 x i64> [ %i.b, %bb.b ], [ %i.gd, %bb.k ] ; 4 uses
  %.1161.i = phi ptr [ %.0160.i, %bb.b ], [ %.6166.i, %bb.k ] ; 8 uses
  %.1158.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.k ] ; 6 uses
  %.1.i = phi ptr [ %.0156.i, %bb.b ], [ %.2.i, %bb.k ]
  %i.d = getelementptr inbounds nuw i8, ptr %.1.i, i64 62 ; 4 uses
  %i.e = bitcast <8 x i64> %.0167.i to <32 x i16> ; 5 uses
  %i.f = icmp ugt <32 x i16> %i.e, splat (i16 127)
  %i.g = bitcast i32 %.1175.i to <32 x i1>        ; 5 uses
  %i.h = and <32 x i1> %i.f, %i.g                 ; 4 uses
  %i.i = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.g, <32 x i1> %i.h)
  %i.j = and i32 %i.i, 255
  %.not.i50 = icmp eq i32 %i.j, 0
  br i1 %.not.i50, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = icmp ult <32 x i16> %i.e, splat (i16 2048) ; 3 uses
  %i.l = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.k, <32 x i1> %i.g)
  %i.m = and i32 %i.l, 255
  %.not208.i.peel = icmp eq i32 %i.m, 0
  br i1 %.not208.i.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.n = bitcast <8 x i64> %.0167.i to <32 x i16>
  %i.o = and <32 x i16> %i.n, splat (i16 -1024)   ; 2 uses
  %i.p = icmp eq <32 x i16> %i.o, splat (i16 -10240)
  %i.q = and <32 x i1> %i.p, %i.g                 ; 2 uses
  %i.r = bitcast <32 x i1> %i.q to i32            ; 3 uses
  %i.s = icmp eq <32 x i16> %i.o, splat (i16 -9216) ; 3 uses
  %i.t = bitcast <32 x i1> %i.s to i32            ; 4 uses
  %i.u = or i32 %i.r, %i.t
  %.not373.i.peel = icmp eq i32 %i.u, 0
  br i1 %.not373.i.peel, label %.thread.split.loop.exit416.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = shl i32 %i.r, 1
  %i.w = add i32 %i.v, %.1192.i                   ; 2 uses
  %.not210.i.peel = icmp eq i32 %i.w, %i.t
  br i1 %.not210.i.peel, label %.thread.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %i.x, %i.t
  %i.z = lshr i32 %i.t, 1
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %i.r, %i.aa
  %i.ac = or i32 %i.y, %i.ab
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ac, i1 false) ; 2 uses
  %notmask.i.peel = shl nsw i32 -1, %i.ad
  %i.ae = xor i32 %notmask.i.peel, -1             ; 3 uses
  %i.af = bitcast i32 %i.ae to <32 x i1>          ; 4 uses
  %i.ag = select <32 x i1> %i.af, <32 x i16> %i.e, <32 x i16> zeroinitializer ; 3 uses
  %i.ah = add nsw i32 %i.ad, -31                  ; 2 uses
  %i.ai = icmp ugt <32 x i16> %i.ag, splat (i16 127)
  %i.aj = and <32 x i1> %i.ai, %i.af              ; 2 uses
  %i.ak = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.af, <32 x i1> %i.aj)
  %i.al = and i32 %i.ak, 255
  %.not.i.peel = icmp eq i32 %i.al, 0
  br i1 %.not.i.peel, label %.lr.ph, label %.thread363.i.thread

.thread363.i.thread:                              ; preds = %bb.f, %bb.i
  %.2184.i.lcssa.ph = phi i32 [ %i.fr, %bb.i ], [ %i.ah, %bb.f ]
  %.2176.i.lcssa.ph = phi i32 [ %i.fo, %bb.i ], [ %i.ae, %bb.f ]
  %.lcssa21.ph = phi <32 x i16> [ %i.fq, %bb.i ], [ %i.ag, %bb.f ]
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1161.i, <32 x i16> %.lcssa21.ph, i32 %.2176.i.lcssa.ph)
  %i.am = getelementptr inbounds nuw i8, ptr %.1161.i, i64 31
  br label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit

._crit_edge:                                      ; preds = %bb.c
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1161.i, <32 x i16> %i.e, i32 %.1175.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.1161.i, i64 31 ; 2 uses
  %i.ao = icmp ult i64 %.1158.i, 32
  br i1 %i.ao, label %.thread363.i, label %.loopexit.i.backedge

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.ap = phi <32 x i1> [ %i.ft, %bb.i ], [ %i.aj, %bb.f ] ; 3 uses
  %i.aq = phi <32 x i1> [ %i.fp, %bb.i ], [ %i.af, %bb.f ] ; 3 uses
  %i.ar = phi <32 x i16> [ %i.fq, %bb.i ], [ %i.ag, %bb.f ] ; 6 uses
  %.2176.i52 = phi i32 [ %i.fo, %bb.i ], [ %i.ae, %bb.f ] ; 3 uses
  %.2184.i51 = phi i32 [ %i.fr, %bb.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.as = icmp ult <32 x i16> %i.ar, splat (i16 2048) ; 3 uses
  %i.at = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.as, <32 x i1> %i.aq)
  %i.au = and i32 %i.at, 255
  %.not208.i = icmp eq i32 %i.au, 0
  br i1 %.not208.i, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa84 = phi <32 x i1> [ %i.h, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.lcssa80 = phi <32 x i1> [ %i.g, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %.lcssa76 = phi <32 x i16> [ %i.e, %.lr.ph.preheader ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.2159.i54.lcssa = phi i64 [ %.1158.i, %.lr.ph.preheader ], [ 0, %.lr.ph ] ; 3 uses
  %.2176.i52.lcssa = phi i32 [ %.1175.i, %.lr.ph.preheader ], [ %.2176.i52, %.lr.ph ]
  %.2184.i51.lcssa = phi i32 [ %.1183.i, %.lr.ph.preheader ], [ %.2184.i51, %.lr.ph ] ; 2 uses
  %i.av = bitcast <32 x i1> %.lcssa84 to i32
  %i.aw = shl <32 x i16> %.lcssa76, splat (i16 8)
  %i.ax = bitcast <32 x i16> %i.aw to <16 x i32>
  %i.ay = lshr <32 x i16> %.lcssa76, splat (i16 6)
  %i.az = bitcast <32 x i16> %i.ay to <16 x i32>
  %i.ba = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ax, <16 x i32> %i.az, <16 x i32> splat (i32 1061109567), i32 168)
  %i.bb = bitcast <16 x i32> %i.ba to <32 x i16>
  %i.bc = add <32 x i16> %i.bb, splat (i16 -32576)
  %i.bd = select <32 x i1> %.lcssa84, <32 x i16> %i.bc, <32 x i16> %.lcssa76
  %i.be = select <32 x i1> %.lcssa80, <32 x i16> splat (i16 2048), <32 x i16> splat (i16 -1)
  %i.bf = bitcast <32 x i16> %i.bd to <64 x i8>   ; 2 uses
  %i.bg = bitcast <32 x i16> %i.be to <64 x i8>
  %i.bh = icmp uge <64 x i8> %i.bf, %i.bg         ; 2 uses
  %i.bi = bitcast <64 x i1> %i.bh to i64          ; 2 uses
  %i.bj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bf, <64 x i8> zeroinitializer, <64 x i1> %i.bh)
  %5 = tail call noundef i64 @llvm.pext.i64(i64 %i.bi, i64 %i.bi)
  %i.bk = bitcast i64 %5 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bj, ptr align 1 %.1161.i, <64 x i1> %i.bk)
  %i.bl = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.1161.i, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 31 ; 2 uses
  %i.bp = icmp ult i64 %.2159.i54.lcssa, 32
  br i1 %i.bp, label %.thread363.i, label %.loopexit.i.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.bq = and <32 x i16> %i.ar, splat (i16 -1024) ; 2 uses
  %i.br = icmp eq <32 x i16> %i.bq, splat (i16 -10240)
  %i.bs = and <32 x i1> %i.aq, %i.br              ; 2 uses
  %i.bt = bitcast <32 x i1> %i.bs to i32          ; 3 uses
  %i.bu = icmp eq <32 x i16> %i.bq, splat (i16 -9216) ; 3 uses
  %i.bv = bitcast <32 x i1> %i.bu to i32          ; 4 uses
  %i.bw = or i32 %i.bt, %i.bv
  %.not373.i = icmp eq i32 %i.bw, 0
  br i1 %.not373.i, label %.thread.split.loop.exit416.i.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = shl i32 %i.bt, 1
  %i.by = add i32 %i.bx, %.1192.i                 ; 2 uses
  %.not210.i = icmp eq i32 %i.by, %i.bv
  br i1 %.not210.i, label %.thread.split.loop.exit.i.loopexit, label %bb.i

.thread.split.loop.exit.i.loopexit:               ; preds = %bb.h
  %.1168.i53.le = bitcast <32 x i16> %i.ar to <8 x i64>
  br label %.thread.split.loop.exit.i

.thread.split.loop.exit.i:                        ; preds = %.thread.split.loop.exit.i.loopexit, %bb.e
  %.lcssa92 = phi <32 x i1> [ %i.q, %bb.e ], [ %i.bs, %.thread.split.loop.exit.i.loopexit ] ; 3 uses
  %.lcssa89 = phi <32 x i1> [ %i.s, %bb.e ], [ %i.bu, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa86 = phi <32 x i1> [ %i.h, %bb.e ], [ %i.ap, %.thread.split.loop.exit.i.loopexit ]
  %.2159.i54.lcssa73 = phi i64 [ %.1158.i, %bb.e ], [ 0, %.thread.split.loop.exit.i.loopexit ]
  %.1168.i53.lcssa70 = phi <8 x i64> [ %.0167.i, %bb.e ], [ %.1168.i53.le, %.thread.split.loop.exit.i.loopexit ] ; 2 uses
  %.2176.i52.lcssa66 = phi i32 [ %.1175.i, %bb.e ], [ %.2176.i52, %.thread.split.loop.exit.i.loopexit ]
  %.2184.i51.lcssa62 = phi i32 [ %.1183.i, %bb.e ], [ %.2184.i51, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa59 = phi <32 x i1> [ %i.k, %bb.e ], [ %i.as, %.thread.split.loop.exit.i.loopexit ]
  %i.bz = bitcast <8 x i64> %.1168.i53.lcssa70 to <32 x i16>
  %i.ca = shufflevector <32 x i16> %i.bz, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cb = zext <16 x i16> %i.ca to <16 x i32>     ; 4 uses
  %i.cc = bitcast <8 x i64> %.1168.i53.lcssa70 to <32 x i16>
  %i.cd = shufflevector <32 x i16> %i.cc, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ce = zext <16 x i16> %i.cd to <16 x i32>     ; 4 uses
  %i.cf = shufflevector <16 x i32> %i.cb, <16 x i32> %i.ce, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.cg = shufflevector <16 x i32> %i.ce, <16 x i32> %i.cb, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ch = shufflevector <32 x i1> %.lcssa92, <32 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ci = select <16 x i1> %i.ch, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.cj = bitcast <32 x i1> %.lcssa92 to <2 x i16>
  %i.ck = extractelement <2 x i16> %i.cj, i64 1
  %i.cl = bitcast i16 %i.ck to <16 x i1>          ; 2 uses
  %i.cm = select <16 x i1> %i.cl, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.cn = shl nuw nsw <16 x i32> %i.cb, splat (i32 10)
  %i.co = shl nuw nsw <16 x i32> %i.ce, splat (i32 10)
  %i.cp = add nuw nsw <16 x i32> %i.cg, splat (i32 -56613888)
  %i.cq = add nsw <16 x i32> %i.cn, splat (i32 -56613888)
  %i.cr = add nsw <16 x i32> %i.cq, %i.cf
  %i.cs = select <16 x i1> %i.ch, <16 x i32> %i.cr, <16 x i32> %i.cb
  %i.ct = add nsw <16 x i32> %i.cp, %i.co
  %i.cu = select <16 x i1> %i.cl, <16 x i32> %i.ct, <16 x i32> %i.ce
  %i.cv = shufflevector <32 x i1> %.lcssa92, <32 x i1> <i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 poison, i1 poison>, <32 x i32> <i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cw = bitcast <32 x i1> %i.cv to i32
  br label %.thread.i

.thread.split.loop.exit416.i.loopexit:            ; preds = %bb.g
  %.1168.i53.le162 = bitcast <32 x i16> %i.ar to <8 x i64>
  br label %.thread.split.loop.exit416.i

.thread.split.loop.exit416.i:                     ; preds = %.thread.split.loop.exit416.i.loopexit, %bb.d
  %.lcssa88 = phi <32 x i1> [ %i.s, %bb.d ], [ %i.bu, %.thread.split.loop.exit416.i.loopexit ]
  %.lcssa85 = phi <32 x i1> [ %i.h, %bb.d ], [ %i.ap, %.thread.split.loop.exit416.i.loopexit ]
  %.2159.i54.lcssa72 = phi i64 [ %.1158.i, %bb.d ], [ 0, %.thread.split.loop.exit416.i.loopexit ]
  %.1168.i53.lcssa69 = phi <8 x i64> [ %.0167.i, %bb.d ], [ %.1168.i53.le162, %.thread.split.loop.exit416.i.loopexit ] ; 2 uses
  %.2176.i52.lcssa65 = phi i32 [ %.1175.i, %bb.d ], [ %.2176.i52, %.thread.split.loop.exit416.i.loopexit ]
  %.2184.i51.lcssa61 = phi i32 [ %.1183.i, %bb.d ], [ %.2184.i51, %.thread.split.loop.exit416.i.loopexit ]
  %.lcssa58 = phi <32 x i1> [ %i.k, %bb.d ], [ %i.as, %.thread.split.loop.exit416.i.loopexit ]
  %i.cx = bitcast <8 x i64> %.1168.i53.lcssa69 to <32 x i16>
  %i.cy = shufflevector <32 x i16> %i.cx, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cz = zext <16 x i16> %i.cy to <16 x i32>
  %i.da = bitcast <8 x i64> %.1168.i53.lcssa69 to <32 x i16>
  %i.db = shufflevector <32 x i16> %i.da, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dc = zext <16 x i16> %i.db to <16 x i32>
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.split.loop.exit416.i, %.thread.split.loop.exit.i
  %i.dd = phi <32 x i1> [ %.lcssa89, %.thread.split.loop.exit.i ], [ %.lcssa88, %.thread.split.loop.exit416.i ]
  %i.de = phi <32 x i1> [ %.lcssa86, %.thread.split.loop.exit.i ], [ %.lcssa85, %.thread.split.loop.exit416.i ]
  %.2159.i5475 = phi i64 [ %.2159.i54.lcssa73, %.thread.split.loop.exit.i ], [ %.2159.i54.lcssa72, %.thread.split.loop.exit416.i ]
  %.2176.i5268 = phi i32 [ %.2176.i52.lcssa66, %.thread.split.loop.exit.i ], [ %.2176.i52.lcssa65, %.thread.split.loop.exit416.i ] ; 2 uses
  %.2184.i5164 = phi i32 [ %.2184.i51.lcssa62, %.thread.split.loop.exit.i ], [ %.2184.i51.lcssa61, %.thread.split.loop.exit416.i ]
  %i.df = phi <32 x i1> [ %.lcssa59, %.thread.split.loop.exit.i ], [ %.lcssa58, %.thread.split.loop.exit416.i ] ; 2 uses
  %.0207.i = phi i32 [ %i.cw, %.thread.split.loop.exit.i ], [ 0, %.thread.split.loop.exit416.i ]
  %i.dg = phi <16 x i32> [ %i.cm, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit416.i ]
  %i.dh = phi <16 x i32> [ %i.ci, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit416.i ]
  %.0204.in.i = phi <16 x i32> [ %i.cu, %.thread.split.loop.exit.i ], [ %i.dc, %.thread.split.loop.exit416.i ]
  %.0203.in.i = phi <16 x i32> [ %i.cs, %.thread.split.loop.exit.i ], [ %i.cz, %.thread.split.loop.exit416.i ] ; 2 uses
  %i.di = insertelement <16 x i32> %.0204.in.i, i32 0, i64 15 ; 2 uses
  %i.dj = bitcast <16 x i32> %.0203.in.i to <64 x i8>
  %i.dk = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dj)
  %i.dl = bitcast <16 x i32> %i.di to <64 x i8>
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dl)
  %i.dn = zext nneg i32 %.2176.i5268 to i64
  %i.do = shufflevector <32 x i1> %i.dd, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.dp = bitcast i64 %i.dn to <64 x i1>
  %i.dq = xor <64 x i1> %i.do, splat (i1 true)
  %i.dr = and <64 x i1> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <32 x i1> %i.de, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.dt = xor <64 x i1> %i.ds, splat (i1 true)    ; 2 uses
  %bc374.i = bitcast <32 x i1> %i.df to <2 x i16>
  %i.du = extractelement <2 x i16> %bc374.i, i64 0
  %i.dv = bitcast i16 %i.du to <16 x i1>
  %i.dw = select <16 x i1> %i.dv, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.dh
  %i.dx = bitcast <32 x i1> %i.df to <2 x i16>
  %i.dy = extractelement <2 x i16> %i.dx, i64 1
  %i.dz = bitcast i16 %i.dy to <16 x i1>
  %i.ea = select <16 x i1> %i.dz, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.dg
  %i.eb = shufflevector <64 x i1> %i.dr, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = select <16 x i1> %i.eb, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %bc = bitcast <64 x i1> %i.dr to <4 x i16>
  %i.ed = extractelement <4 x i16> %bc, i64 1
  %i.ee = bitcast i16 %i.ed to <16 x i1>
  %i.ef = select <16 x i1> %i.ee, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %i.eg = bitcast <64 x i8> %i.dk to <16 x i32>
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eg, <16 x i32> splat (i32 1061109567), <16 x i32> %i.dw, i32 234)
  %i.ei = bitcast <64 x i8> %i.dm to <16 x i32>
  %i.ej = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ei, <16 x i32> splat (i32 1061109567), <16 x i32> %i.ea, i32 234)
  %i.ek = shl <16 x i32> %.0203.in.i, splat (i32 24)
  %i.el = shufflevector <64 x i1> %i.dt, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = select <16 x i1> %i.el, <16 x i32> %i.ek, <16 x i32> %i.eh
  %bc207 = bitcast <64 x i1> %i.dt to <4 x i16>
  %i.en = extractelement <4 x i16> %bc207, i64 1
  %i.eo = shl <16 x i32> %i.di, splat (i32 24)
  %i.ep = bitcast i16 %i.en to <16 x i1>
  %i.eq = select <16 x i1> %i.ep, <16 x i32> %i.eo, <16 x i32> %i.ej
  %i.er = bitcast <16 x i32> %i.em to <64 x i8>   ; 2 uses
  %i.es = bitcast <16 x i32> %i.ec to <64 x i8>
  %i.et = icmp uge <64 x i8> %i.er, %i.es         ; 2 uses
  %i.eu = bitcast <64 x i1> %i.et to i64          ; 3 uses
  %i.ev = bitcast <16 x i32> %i.eq to <64 x i8>   ; 2 uses
  %i.ew = bitcast <16 x i32> %i.ef to <64 x i8>
  %i.ex = icmp uge <64 x i8> %i.ev, %i.ew         ; 2 uses
  %i.ey = bitcast <64 x i1> %i.ex to i64          ; 3 uses
  %i.ez = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.er, <64 x i8> zeroinitializer, <64 x i1> %i.et)
  %i.fa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ev, <64 x i8> zeroinitializer, <64 x i1> %i.ex)
  %i.fb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eu)
  %i.fc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ey)
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.eu, i64 %i.eu)
  %i.fd = bitcast i64 %6 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.ez, ptr align 1 %.1161.i, <64 x i1> %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.1161.i, i64 %i.fb ; 2 uses
  %7 = tail call noundef i64 @llvm.pext.i64(i64 %i.ey, i64 %i.ey)
  %i.ff = bitcast i64 %7 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.fa, ptr align 1 %i.fe, <64 x i1> %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.thread.i, %.loopexit, %._crit_edge
  %.0191.i.be = phi i32 [ %.0207.i, %.thread.i ], [ 0, %.loopexit ], [ 0, %._crit_edge ]
  %.0182.i.be = phi i32 [ %.2184.i5164, %.thread.i ], [ %.2184.i51.lcssa, %.loopexit ], [ %.1183.i, %._crit_edge ]
  %.0174.i.be = phi i32 [ %.2176.i5268, %.thread.i ], [ %.2176.i52.lcssa, %.loopexit ], [ %.1175.i, %._crit_edge ]
  %.0160.i.be = phi ptr [ %i.fg, %.thread.i ], [ %i.bo, %.loopexit ], [ %i.an, %._crit_edge ]
  %.0157.i.be = phi i64 [ %.2159.i5475, %.thread.i ], [ %.2159.i54.lcssa, %.loopexit ], [ %.1158.i, %._crit_edge ]
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.fh = xor i32 %i.by, -1
  %i.fi = and i32 %i.fh, %i.bv
  %i.fj = lshr i32 %i.bv, 1
  %i.fk = xor i32 %i.fj, -1
  %i.fl = and i32 %i.bt, %i.fk
  %i.fm = or i32 %i.fi, %i.fl
  %i.fn = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fm, i1 false) ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.fn
  %i.fo = xor i32 %notmask.i, -1                  ; 3 uses
  %i.fp = bitcast i32 %i.fo to <32 x i1>          ; 4 uses
  %i.fq = select <32 x i1> %i.fp, <32 x i16> %i.ar, <32 x i16> zeroinitializer ; 3 uses
  %i.fr = add nsw i32 %i.fn, -31                  ; 2 uses
  %i.fs = icmp ugt <32 x i16> %i.fq, splat (i16 127)
  %i.ft = and <32 x i1> %i.fs, %i.fp              ; 2 uses
  %i.fu = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.fp, <32 x i1> %i.ft)
  %i.fv = and i32 %i.fu, 255
  %.not.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i, label %.lr.ph, label %.thread363.i.thread, !llvm.loop !289

bb.j:                                             ; preds = %.loopexit.i
  %i.fw = sub nsw i32 0, %.0182.i
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.0160.i, i64 %i.fx
  br label %.thread363.i

.thread363.i:                                     ; preds = %bb.j, %.loopexit, %._crit_edge
  %.6197.i = phi i32 [ %.0191.i, %bb.j ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  %.8190.i = phi i32 [ %.0182.i, %bb.j ], [ %.1183.i, %._crit_edge ], [ %.2184.i51.lcssa, %.loopexit ]
  %.6166.i = phi ptr [ %i.fy, %bb.j ], [ %i.an, %._crit_edge ], [ %i.bo, %.loopexit ] ; 2 uses
  %.8.i = phi i64 [ %.0157.i, %bb.j ], [ %.1158.i, %._crit_edge ], [ %.2159.i54.lcssa, %.loopexit ] ; 2 uses
  %.2.i = phi ptr [ %.0156.i, %bb.j ], [ %i.d, %._crit_edge ], [ %i.d, %.loopexit ] ; 3 uses
  %.not214.i = icmp eq i64 %.8.i, 0
  br i1 %.not214.i, label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit, label %bb.k

bb.k:                                             ; preds = %.thread363.i
  %i.fz = trunc nuw nsw i64 %.8.i to i32          ; 2 uses
  %notmask215.i = shl nsw i32 -1, %i.fz
  %i.ga = xor i32 %notmask215.i, -1               ; 2 uses
  %i.gb = bitcast i32 %i.ga to <32 x i1>
  %i.gc = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr align 1 %.2.i, <32 x i1> %i.gb, <32 x i16> zeroinitializer)
  %i.gd = bitcast <32 x i16> %i.gc to <8 x i64>
  %i.ge = add nsw i32 %i.fz, -31
  br label %bb.c

_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit: ; preds = %.thread363.i, %.thread363.i.thread
  %.2.i115 = phi ptr [ %i.d, %.thread363.i.thread ], [ %.2.i, %.thread363.i ]
  %.6166.i114 = phi ptr [ %i.am, %.thread363.i.thread ], [ %.6166.i, %.thread363.i ]
  %.8190.i113 = phi i32 [ %.2184.i.lcssa.ph, %.thread363.i.thread ], [ %.8190.i, %.thread363.i ]
  %i.gf = ptrtoint ptr %.6166.i114 to i64
  %i.gg = ptrtoint ptr %3 to i64
  %i.gh = sext i32 %.8190.i113 to i64             ; 2 uses
  %i.gi = sub i64 %i.gh, %i.gg
  %i.gj = add i64 %i.gi, %i.gf                    ; 2 uses
  %i.gk = ptrtoint ptr %.2.i115 to i64
  %i.gl = ptrtoint ptr %1 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 1
  %i.go = add nsw i64 %i.gn, %i.gh                ; 4 uses
  %.not = icmp eq i64 %i.go, %2
  br i1 %.not, label %bb.l, label %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit

_ZNK7simdutf11full_resultcvNS_6resultEEv.exit:    ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.go
  %i.gq = sub i64 %2, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 %i.gj
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_113utf16_to_utf819convert_with_errorsILNS_10endiannessE0ELb0EEENS_11full_resultEPKDsmPcm(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %i.gp, i64 noundef %i.gq, ptr noundef %i.gr)
  %i.gs = load i32, ptr %4, align 8               ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gx = load i64, ptr %i.gw, align 8
  %.sroa.513.0 = select i1 %i.gt, i64 %i.gv, i64 %i.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.gy = add i64 %.sroa.513.0, %i.go
  br label %bb.l

bb.l:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit, %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit
  %.sroa.3.0 = phi i64 [ %i.gy, %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit ], [ %i.gj, %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit ]
  %.sroa.0.0 = phi i32 [ %i.gs, %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit ], [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE0EEEmPKDsmPhPm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf16be_to_utf8_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %"struct.simdutf::full_result", align 8 ; 6 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.a
  %.0195.i = phi i32 [ 0, %bb.a ], [ %.0195.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0186.i = phi i32 [ 0, %bb.a ], [ %.0186.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0178.i = phi i32 [ 2147483647, %bb.a ], [ %.0178.i.be, %.loopexit.i.backedge ]
  %.0164.i = phi ptr [ %3, %bb.a ], [ %.0164.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.0161.i = phi i64 [ %2, %bb.a ], [ %.0161.i.be, %.loopexit.i.backedge ] ; 3 uses
  %.0160.i = phi ptr [ %1, %bb.a ], [ %i.e, %.loopexit.i.backedge ] ; 3 uses
  %i.a = icmp ugt i64 %.0161.i, 31
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.loopexit.i
  %i.b = load <64 x i8>, ptr %.0160.i, align 1
  %i.c = shufflevector <64 x i8> %i.b, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.d = add i64 %.0161.i, -31
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.1196.i = phi i32 [ %.0195.i, %bb.b ], [ %.6201.i, %bb.k ] ; 2 uses
  %.1187.i = phi i32 [ %.0186.i, %bb.b ], [ %i.gg, %bb.k ] ; 5 uses
  %.1179.i = phi i32 [ %.0178.i, %bb.b ], [ %i.gb, %bb.k ] ; 6 uses
  %.0171.in.i = phi <64 x i8> [ %i.c, %bb.b ], [ %i.gf, %bb.k ] ; 3 uses
  %.1165.i = phi ptr [ %.0164.i, %bb.b ], [ %.6170.i, %bb.k ] ; 8 uses
  %.1162.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.k ] ; 6 uses
  %.1.i = phi ptr [ %.0160.i, %bb.b ], [ %.2.i, %bb.k ]
  %.0171.i = bitcast <64 x i8> %.0171.in.i to <8 x i64> ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.1.i, i64 62 ; 4 uses
  %i.f = bitcast <64 x i8> %.0171.in.i to <32 x i16> ; 5 uses
  %i.g = icmp ugt <32 x i16> %i.f, splat (i16 127)
  %i.h = bitcast i32 %.1179.i to <32 x i1>        ; 5 uses
  %i.i = and <32 x i1> %i.g, %i.h                 ; 4 uses
  %i.j = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.h, <32 x i1> %i.i)
  %i.k = and i32 %i.j, 255
  %.not.i50 = icmp eq i32 %i.k, 0
  br i1 %.not.i50, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = icmp ult <32 x i16> %i.f, splat (i16 2048) ; 3 uses
  %i.m = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.l, <32 x i1> %i.h)
  %i.n = and i32 %i.m, 255
  %.not212.i.peel = icmp eq i32 %i.n, 0
  br i1 %.not212.i.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.o = bitcast <64 x i8> %.0171.in.i to <32 x i16>
  %i.p = and <32 x i16> %i.o, splat (i16 -1024)   ; 2 uses
  %i.q = icmp eq <32 x i16> %i.p, splat (i16 -10240)
  %i.r = and <32 x i1> %i.q, %i.h                 ; 2 uses
  %i.s = bitcast <32 x i1> %i.r to i32            ; 3 uses
  %i.t = icmp eq <32 x i16> %i.p, splat (i16 -9216) ; 3 uses
  %i.u = bitcast <32 x i1> %i.t to i32            ; 4 uses
  %i.v = or i32 %i.s, %i.u
  %.not385.i.peel = icmp eq i32 %i.v, 0
  br i1 %.not385.i.peel, label %.thread.split.loop.exit428.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = shl i32 %i.s, 1
  %i.x = add i32 %i.w, %.1196.i                   ; 2 uses
  %.not214.i.peel = icmp eq i32 %i.x, %i.u
  br i1 %.not214.i.peel, label %.thread.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = xor i32 %i.x, -1
  %i.z = and i32 %i.y, %i.u
  %i.aa = lshr i32 %i.u, 1
  %i.ab = xor i32 %i.aa, -1
  %i.ac = and i32 %i.s, %i.ab
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 false) ; 2 uses
  %notmask.i.peel = shl nsw i32 -1, %i.ae
  %i.af = xor i32 %notmask.i.peel, -1             ; 3 uses
  %i.ag = bitcast i32 %i.af to <32 x i1>          ; 4 uses
  %i.ah = select <32 x i1> %i.ag, <32 x i16> %i.f, <32 x i16> zeroinitializer ; 3 uses
  %i.ai = add nsw i32 %i.ae, -31                  ; 2 uses
  %i.aj = icmp ugt <32 x i16> %i.ah, splat (i16 127)
  %i.ak = and <32 x i1> %i.aj, %i.ag              ; 2 uses
  %i.al = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.ag, <32 x i1> %i.ak)
  %i.am = and i32 %i.al, 255
  %.not.i.peel = icmp eq i32 %i.am, 0
  br i1 %.not.i.peel, label %.lr.ph, label %.thread375.i.thread

.thread375.i.thread:                              ; preds = %bb.f, %bb.i
  %.2188.i.lcssa.ph = phi i32 [ %i.fs, %bb.i ], [ %i.ai, %bb.f ]
  %.2180.i.lcssa.ph = phi i32 [ %i.fp, %bb.i ], [ %i.af, %bb.f ]
  %.lcssa21.ph = phi <32 x i16> [ %i.fr, %bb.i ], [ %i.ah, %bb.f ]
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1165.i, <32 x i16> %.lcssa21.ph, i32 %.2180.i.lcssa.ph)
  %i.an = getelementptr inbounds nuw i8, ptr %.1165.i, i64 31
  br label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit

._crit_edge:                                      ; preds = %bb.c
  tail call void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr %.1165.i, <32 x i16> %i.f, i32 %.1179.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %.1165.i, i64 31 ; 2 uses
  %i.ap = icmp ult i64 %.1162.i, 32
  br i1 %i.ap, label %.thread375.i, label %.loopexit.i.backedge

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.aq = phi <32 x i1> [ %i.fu, %bb.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ar = phi <32 x i1> [ %i.fq, %bb.i ], [ %i.ag, %bb.f ] ; 3 uses
  %i.as = phi <32 x i16> [ %i.fr, %bb.i ], [ %i.ah, %bb.f ] ; 6 uses
  %.2180.i52 = phi i32 [ %i.fp, %bb.i ], [ %i.af, %bb.f ] ; 3 uses
  %.2188.i51 = phi i32 [ %i.fs, %bb.i ], [ %i.ai, %bb.f ] ; 3 uses
  %i.at = icmp ult <32 x i16> %i.as, splat (i16 2048) ; 3 uses
  %i.au = tail call i32 @llvm.x86.avx512.ktestc.d(<32 x i1> %i.at, <32 x i1> %i.ar)
  %i.av = and i32 %i.au, 255
  %.not212.i = icmp eq i32 %i.av, 0
  br i1 %.not212.i, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa84 = phi <32 x i1> [ %i.i, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 2 uses
  %.lcssa80 = phi <32 x i1> [ %i.h, %.lr.ph.preheader ], [ %i.ar, %.lr.ph ]
  %.lcssa76 = phi <32 x i16> [ %i.f, %.lr.ph.preheader ], [ %i.as, %.lr.ph ] ; 3 uses
  %.2163.i54.lcssa = phi i64 [ %.1162.i, %.lr.ph.preheader ], [ 0, %.lr.ph ] ; 3 uses
  %.2180.i52.lcssa = phi i32 [ %.1179.i, %.lr.ph.preheader ], [ %.2180.i52, %.lr.ph ]
  %.2188.i51.lcssa = phi i32 [ %.1187.i, %.lr.ph.preheader ], [ %.2188.i51, %.lr.ph ] ; 2 uses
  %i.aw = bitcast <32 x i1> %.lcssa84 to i32
  %i.ax = shl <32 x i16> %.lcssa76, splat (i16 8)
  %i.ay = bitcast <32 x i16> %i.ax to <16 x i32>
  %i.az = lshr <32 x i16> %.lcssa76, splat (i16 6)
  %i.ba = bitcast <32 x i16> %i.az to <16 x i32>
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ay, <16 x i32> %i.ba, <16 x i32> splat (i32 1061109567), i32 168)
  %i.bc = bitcast <16 x i32> %i.bb to <32 x i16>
  %i.bd = add <32 x i16> %i.bc, splat (i16 -32576)
  %i.be = select <32 x i1> %.lcssa84, <32 x i16> %i.bd, <32 x i16> %.lcssa76
  %i.bf = select <32 x i1> %.lcssa80, <32 x i16> splat (i16 2048), <32 x i16> splat (i16 -1)
  %i.bg = bitcast <32 x i16> %i.be to <64 x i8>   ; 2 uses
  %i.bh = bitcast <32 x i16> %i.bf to <64 x i8>
  %i.bi = icmp uge <64 x i8> %i.bg, %i.bh         ; 2 uses
  %i.bj = bitcast <64 x i1> %i.bi to i64          ; 2 uses
  %i.bk = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.bg, <64 x i8> zeroinitializer, <64 x i1> %i.bi)
  %5 = tail call noundef i64 @llvm.pext.i64(i64 %i.bj, i64 %i.bj)
  %i.bl = bitcast i64 %5 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bk, ptr align 1 %.1165.i, <64 x i1> %i.bl)
  %i.bm = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.1165.i, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 31 ; 2 uses
  %i.bq = icmp ult i64 %.2163.i54.lcssa, 32
  br i1 %i.bq, label %.thread375.i, label %.loopexit.i.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.br = and <32 x i16> %i.as, splat (i16 -1024) ; 2 uses
  %i.bs = icmp eq <32 x i16> %i.br, splat (i16 -10240)
  %i.bt = and <32 x i1> %i.ar, %i.bs              ; 2 uses
  %i.bu = bitcast <32 x i1> %i.bt to i32          ; 3 uses
  %i.bv = icmp eq <32 x i16> %i.br, splat (i16 -9216) ; 3 uses
  %i.bw = bitcast <32 x i1> %i.bv to i32          ; 4 uses
  %i.bx = or i32 %i.bu, %i.bw
  %.not385.i = icmp eq i32 %i.bx, 0
  br i1 %.not385.i, label %.thread.split.loop.exit428.i.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = shl i32 %i.bu, 1
  %i.bz = add i32 %i.by, %.1196.i                 ; 2 uses
  %.not214.i = icmp eq i32 %i.bz, %i.bw
  br i1 %.not214.i, label %.thread.split.loop.exit.i.loopexit, label %bb.i

.thread.split.loop.exit.i.loopexit:               ; preds = %bb.h
  %.1172.i53.le = bitcast <32 x i16> %i.as to <8 x i64>
  br label %.thread.split.loop.exit.i

.thread.split.loop.exit.i:                        ; preds = %.thread.split.loop.exit.i.loopexit, %bb.e
  %.lcssa92 = phi <32 x i1> [ %i.r, %bb.e ], [ %i.bt, %.thread.split.loop.exit.i.loopexit ] ; 3 uses
  %.lcssa89 = phi <32 x i1> [ %i.t, %bb.e ], [ %i.bv, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa86 = phi <32 x i1> [ %i.i, %bb.e ], [ %i.aq, %.thread.split.loop.exit.i.loopexit ]
  %.2163.i54.lcssa73 = phi i64 [ %.1162.i, %bb.e ], [ 0, %.thread.split.loop.exit.i.loopexit ]
  %.1172.i53.lcssa70 = phi <8 x i64> [ %.0171.i, %bb.e ], [ %.1172.i53.le, %.thread.split.loop.exit.i.loopexit ] ; 2 uses
  %.2180.i52.lcssa66 = phi i32 [ %.1179.i, %bb.e ], [ %.2180.i52, %.thread.split.loop.exit.i.loopexit ]
  %.2188.i51.lcssa62 = phi i32 [ %.1187.i, %bb.e ], [ %.2188.i51, %.thread.split.loop.exit.i.loopexit ]
  %.lcssa59 = phi <32 x i1> [ %i.l, %bb.e ], [ %i.at, %.thread.split.loop.exit.i.loopexit ]
  %i.ca = bitcast <8 x i64> %.1172.i53.lcssa70 to <32 x i16>
  %i.cb = shufflevector <32 x i16> %i.ca, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = zext <16 x i16> %i.cb to <16 x i32>     ; 4 uses
  %i.cd = bitcast <8 x i64> %.1172.i53.lcssa70 to <32 x i16>
  %i.ce = shufflevector <32 x i16> %i.cd, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cf = zext <16 x i16> %i.ce to <16 x i32>     ; 4 uses
  %i.cg = shufflevector <16 x i32> %i.cc, <16 x i32> %i.cf, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ch = shufflevector <16 x i32> %i.cf, <16 x i32> %i.cc, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ci = shufflevector <32 x i1> %.lcssa92, <32 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cj = select <16 x i1> %i.ci, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.ck = bitcast <32 x i1> %.lcssa92 to <2 x i16>
  %i.cl = extractelement <2 x i16> %i.ck, i64 1
  %i.cm = bitcast i16 %i.cl to <16 x i1>          ; 2 uses
  %i.cn = select <16 x i1> %i.cm, <16 x i32> splat (i32 -2139062032), <16 x i32> splat (i32 -2139037696)
  %i.co = shl nuw nsw <16 x i32> %i.cc, splat (i32 10)
  %i.cp = shl nuw nsw <16 x i32> %i.cf, splat (i32 10)
  %i.cq = add nuw nsw <16 x i32> %i.ch, splat (i32 -56613888)
  %i.cr = add nsw <16 x i32> %i.co, splat (i32 -56613888)
  %i.cs = add nsw <16 x i32> %i.cr, %i.cg
  %i.ct = select <16 x i1> %i.ci, <16 x i32> %i.cs, <16 x i32> %i.cc
  %i.cu = add nsw <16 x i32> %i.cq, %i.cp
  %i.cv = select <16 x i1> %i.cm, <16 x i32> %i.cu, <16 x i32> %i.cf
  %i.cw = shufflevector <32 x i1> %.lcssa92, <32 x i1> <i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 poison, i1 poison>, <32 x i32> <i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cx = bitcast <32 x i1> %i.cw to i32
  br label %.thread.i

.thread.split.loop.exit428.i.loopexit:            ; preds = %bb.g
  %.1172.i53.le162 = bitcast <32 x i16> %i.as to <8 x i64>
  br label %.thread.split.loop.exit428.i

.thread.split.loop.exit428.i:                     ; preds = %.thread.split.loop.exit428.i.loopexit, %bb.d
  %.lcssa88 = phi <32 x i1> [ %i.t, %bb.d ], [ %i.bv, %.thread.split.loop.exit428.i.loopexit ]
  %.lcssa85 = phi <32 x i1> [ %i.i, %bb.d ], [ %i.aq, %.thread.split.loop.exit428.i.loopexit ]
  %.2163.i54.lcssa72 = phi i64 [ %.1162.i, %bb.d ], [ 0, %.thread.split.loop.exit428.i.loopexit ]
  %.1172.i53.lcssa69 = phi <8 x i64> [ %.0171.i, %bb.d ], [ %.1172.i53.le162, %.thread.split.loop.exit428.i.loopexit ] ; 2 uses
  %.2180.i52.lcssa65 = phi i32 [ %.1179.i, %bb.d ], [ %.2180.i52, %.thread.split.loop.exit428.i.loopexit ]
  %.2188.i51.lcssa61 = phi i32 [ %.1187.i, %bb.d ], [ %.2188.i51, %.thread.split.loop.exit428.i.loopexit ]
  %.lcssa58 = phi <32 x i1> [ %i.l, %bb.d ], [ %i.at, %.thread.split.loop.exit428.i.loopexit ]
  %i.cy = bitcast <8 x i64> %.1172.i53.lcssa69 to <32 x i16>
  %i.cz = shufflevector <32 x i16> %i.cy, <32 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.da = zext <16 x i16> %i.cz to <16 x i32>
  %i.db = bitcast <8 x i64> %.1172.i53.lcssa69 to <32 x i16>
  %i.dc = shufflevector <32 x i16> %i.db, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dd = zext <16 x i16> %i.dc to <16 x i32>
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.split.loop.exit428.i, %.thread.split.loop.exit.i
  %i.de = phi <32 x i1> [ %.lcssa89, %.thread.split.loop.exit.i ], [ %.lcssa88, %.thread.split.loop.exit428.i ]
  %i.df = phi <32 x i1> [ %.lcssa86, %.thread.split.loop.exit.i ], [ %.lcssa85, %.thread.split.loop.exit428.i ]
  %.2163.i5475 = phi i64 [ %.2163.i54.lcssa73, %.thread.split.loop.exit.i ], [ %.2163.i54.lcssa72, %.thread.split.loop.exit428.i ]
  %.2180.i5268 = phi i32 [ %.2180.i52.lcssa66, %.thread.split.loop.exit.i ], [ %.2180.i52.lcssa65, %.thread.split.loop.exit428.i ] ; 2 uses
  %.2188.i5164 = phi i32 [ %.2188.i51.lcssa62, %.thread.split.loop.exit.i ], [ %.2188.i51.lcssa61, %.thread.split.loop.exit428.i ]
  %i.dg = phi <32 x i1> [ %.lcssa59, %.thread.split.loop.exit.i ], [ %.lcssa58, %.thread.split.loop.exit428.i ] ; 2 uses
  %.0211.i = phi i32 [ %i.cx, %.thread.split.loop.exit.i ], [ 0, %.thread.split.loop.exit428.i ]
  %i.dh = phi <16 x i32> [ %i.cn, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit428.i ]
  %i.di = phi <16 x i32> [ %i.cj, %.thread.split.loop.exit.i ], [ splat (i32 -2139037696), %.thread.split.loop.exit428.i ]
  %.0208.in.i = phi <16 x i32> [ %i.cv, %.thread.split.loop.exit.i ], [ %i.dd, %.thread.split.loop.exit428.i ]
  %.0207.in.i = phi <16 x i32> [ %i.ct, %.thread.split.loop.exit.i ], [ %i.da, %.thread.split.loop.exit428.i ] ; 2 uses
  %i.dj = insertelement <16 x i32> %.0208.in.i, i32 0, i64 15 ; 2 uses
  %i.dk = bitcast <16 x i32> %.0207.in.i to <64 x i8>
  %i.dl = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dk)
  %i.dm = bitcast <16 x i32> %i.dj to <64 x i8>
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32, i8 18, i8 12, i8 6, i8 0, i8 50, i8 44, i8 38, i8 32>, <64 x i8> %i.dm)
  %i.do = zext nneg i32 %.2180.i5268 to i64
  %i.dp = shufflevector <32 x i1> %i.de, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.dq = bitcast i64 %i.do to <64 x i1>
  %i.dr = xor <64 x i1> %i.dp, splat (i1 true)
  %i.ds = and <64 x i1> %i.dq, %i.dr              ; 2 uses
  %i.dt = shufflevector <32 x i1> %i.df, <32 x i1> <i1 false, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %i.du = xor <64 x i1> %i.dt, splat (i1 true)    ; 2 uses
  %bc386.i = bitcast <32 x i1> %i.dg to <2 x i16>
  %i.dv = extractelement <2 x i16> %bc386.i, i64 0
  %i.dw = bitcast i16 %i.dv to <16 x i1>
  %i.dx = select <16 x i1> %i.dw, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.di
  %i.dy = bitcast <32 x i1> %i.dg to <2 x i16>
  %i.dz = extractelement <2 x i16> %i.dy, i64 1
  %i.ea = bitcast i16 %i.dz to <16 x i1>
  %i.eb = select <16 x i1> %i.ea, <16 x i32> splat (i32 -2134900736), <16 x i32> %i.dh
  %i.ec = shufflevector <64 x i1> %i.ds, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = select <16 x i1> %i.ec, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %bc = bitcast <64 x i1> %i.ds to <4 x i16>
  %i.ee = extractelement <4 x i16> %bc, i64 1
  %i.ef = bitcast i16 %i.ee to <16 x i1>
  %i.eg = select <16 x i1> %i.ef, <16 x i32> splat (i32 65793), <16 x i32> splat (i32 -1)
  %i.eh = bitcast <64 x i8> %i.dl to <16 x i32>
  %i.ei = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eh, <16 x i32> splat (i32 1061109567), <16 x i32> %i.dx, i32 234)
  %i.ej = bitcast <64 x i8> %i.dn to <16 x i32>
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ej, <16 x i32> splat (i32 1061109567), <16 x i32> %i.eb, i32 234)
  %i.el = shl <16 x i32> %.0207.in.i, splat (i32 24)
  %i.em = shufflevector <64 x i1> %i.du, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = select <16 x i1> %i.em, <16 x i32> %i.el, <16 x i32> %i.ei
  %bc207 = bitcast <64 x i1> %i.du to <4 x i16>
  %i.eo = extractelement <4 x i16> %bc207, i64 1
  %i.ep = shl <16 x i32> %i.dj, splat (i32 24)
  %i.eq = bitcast i16 %i.eo to <16 x i1>
  %i.er = select <16 x i1> %i.eq, <16 x i32> %i.ep, <16 x i32> %i.ek
  %i.es = bitcast <16 x i32> %i.en to <64 x i8>   ; 2 uses
  %i.et = bitcast <16 x i32> %i.ed to <64 x i8>
  %i.eu = icmp uge <64 x i8> %i.es, %i.et         ; 2 uses
  %i.ev = bitcast <64 x i1> %i.eu to i64          ; 3 uses
  %i.ew = bitcast <16 x i32> %i.er to <64 x i8>   ; 2 uses
  %i.ex = bitcast <16 x i32> %i.eg to <64 x i8>
  %i.ey = icmp uge <64 x i8> %i.ew, %i.ex         ; 2 uses
  %i.ez = bitcast <64 x i1> %i.ey to i64          ; 3 uses
  %i.fa = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.es, <64 x i8> zeroinitializer, <64 x i1> %i.eu)
  %i.fb = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.ew, <64 x i8> zeroinitializer, <64 x i1> %i.ey)
  %i.fc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ev)
  %i.fd = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ez)
  %6 = tail call noundef i64 @llvm.pext.i64(i64 %i.ev, i64 %i.ev)
  %i.fe = bitcast i64 %6 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.fa, ptr align 1 %.1165.i, <64 x i1> %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %.1165.i, i64 %i.fc ; 2 uses
  %7 = tail call noundef i64 @llvm.pext.i64(i64 %i.ez, i64 %i.ez)
  %i.fg = bitcast i64 %7 to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.fb, ptr align 1 %i.ff, <64 x i1> %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.thread.i, %.loopexit, %._crit_edge
  %.0195.i.be = phi i32 [ %.0211.i, %.thread.i ], [ 0, %.loopexit ], [ 0, %._crit_edge ]
  %.0186.i.be = phi i32 [ %.2188.i5164, %.thread.i ], [ %.2188.i51.lcssa, %.loopexit ], [ %.1187.i, %._crit_edge ]
  %.0178.i.be = phi i32 [ %.2180.i5268, %.thread.i ], [ %.2180.i52.lcssa, %.loopexit ], [ %.1179.i, %._crit_edge ]
  %.0164.i.be = phi ptr [ %i.fh, %.thread.i ], [ %i.bp, %.loopexit ], [ %i.ao, %._crit_edge ]
  %.0161.i.be = phi i64 [ %.2163.i5475, %.thread.i ], [ %.2163.i54.lcssa, %.loopexit ], [ %.1162.i, %._crit_edge ]
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.fi = xor i32 %i.bz, -1
  %i.fj = and i32 %i.fi, %i.bw
  %i.fk = lshr i32 %i.bw, 1
  %i.fl = xor i32 %i.fk, -1
  %i.fm = and i32 %i.bu, %i.fl
  %i.fn = or i32 %i.fj, %i.fm
  %i.fo = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fn, i1 false) ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.fo
  %i.fp = xor i32 %notmask.i, -1                  ; 3 uses
  %i.fq = bitcast i32 %i.fp to <32 x i1>          ; 4 uses
  %i.fr = select <32 x i1> %i.fq, <32 x i16> %i.as, <32 x i16> zeroinitializer ; 3 uses
  %i.fs = add nsw i32 %i.fo, -31                  ; 2 uses
  %i.ft = icmp ugt <32 x i16> %i.fr, splat (i16 127)
  %i.fu = and <32 x i1> %i.ft, %i.fq              ; 2 uses
  %i.fv = tail call i32 @llvm.x86.avx512.ktestz.d(<32 x i1> %i.fq, <32 x i1> %i.fu)
  %i.fw = and i32 %i.fv, 255
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %.lr.ph, label %.thread375.i.thread, !llvm.loop !290

bb.j:                                             ; preds = %.loopexit.i
  %i.fx = sub nsw i32 0, %.0186.i
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.0164.i, i64 %i.fy
  br label %.thread375.i

.thread375.i:                                     ; preds = %bb.j, %.loopexit, %._crit_edge
  %.6201.i = phi i32 [ %.0195.i, %bb.j ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  %.8194.i = phi i32 [ %.0186.i, %bb.j ], [ %.1187.i, %._crit_edge ], [ %.2188.i51.lcssa, %.loopexit ]
  %.6170.i = phi ptr [ %i.fz, %bb.j ], [ %i.ao, %._crit_edge ], [ %i.bp, %.loopexit ] ; 2 uses
  %.8.i = phi i64 [ %.0161.i, %bb.j ], [ %.1162.i, %._crit_edge ], [ %.2163.i54.lcssa, %.loopexit ] ; 2 uses
  %.2.i = phi ptr [ %.0160.i, %bb.j ], [ %i.e, %._crit_edge ], [ %i.e, %.loopexit ] ; 3 uses
  %.not218.i = icmp eq i64 %.8.i, 0
  br i1 %.not218.i, label %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit, label %bb.k

bb.k:                                             ; preds = %.thread375.i
  %i.ga = trunc nuw nsw i64 %.8.i to i32          ; 2 uses
  %notmask219.i = shl nsw i32 -1, %i.ga
  %i.gb = xor i32 %notmask219.i, -1               ; 2 uses
  %i.gc = bitcast i32 %i.gb to <32 x i1>
  %i.gd = tail call <32 x i16> @llvm.masked.load.v32i16.p0(ptr align 1 %.2.i, <32 x i1> %i.gc, <32 x i16> zeroinitializer)
  %i.ge = bitcast <32 x i16> %i.gd to <64 x i8>
  %i.gf = shufflevector <64 x i8> %i.ge, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.gg = add nsw i32 %i.ga, -31
  br label %bb.c

_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit: ; preds = %.thread375.i, %.thread375.i.thread
  %.2.i115 = phi ptr [ %i.e, %.thread375.i.thread ], [ %.2.i, %.thread375.i ]
  %.6170.i114 = phi ptr [ %i.an, %.thread375.i.thread ], [ %.6170.i, %.thread375.i ]
  %.8194.i113 = phi i32 [ %.2188.i.lcssa.ph, %.thread375.i.thread ], [ %.8194.i, %.thread375.i ]
  %i.gh = ptrtoint ptr %.6170.i114 to i64
  %i.gi = ptrtoint ptr %3 to i64
  %i.gj = sext i32 %.8194.i113 to i64             ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gi
  %i.gl = add i64 %i.gk, %i.gh                    ; 2 uses
  %i.gm = ptrtoint ptr %.2.i115 to i64
  %i.gn = ptrtoint ptr %1 to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 1
  %i.gq = add nsw i64 %i.gp, %i.gj                ; 4 uses
  %.not = icmp eq i64 %i.gq, %2
  br i1 %.not, label %bb.l, label %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit

_ZNK7simdutf11full_resultcvNS_6resultEEv.exit:    ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gq
  %i.gs = sub i64 %2, %i.gq
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 %i.gl
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_113utf16_to_utf819convert_with_errorsILNS_10endiannessE1ELb0EEENS_11full_resultEPKDsmPcm(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %i.gr, i64 noundef %i.gs, ptr noundef %i.gt)
  %i.gu = load i32, ptr %4, align 8               ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gz = load i64, ptr %i.gy, align 8
  %.sroa.513.0 = select i1 %i.gv, i64 %i.gx, i64 %i.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.ha = add i64 %.sroa.513.0, %i.gq
  br label %bb.l

bb.l:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit, %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit
  %.sroa.3.0 = phi i64 [ %i.ha, %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit ], [ %i.gl, %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit ]
  %.sroa.0.0 = phi i32 [ %i.gu, %_ZNK7simdutf11full_resultcvNS_6resultEEv.exit ], [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_121utf16_to_utf8_avx512iILNS_10endiannessE1EEEmPKDsmPhPm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation29convert_valid_utf16le_to_utf8EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7simdutf7icelake14implementation23convert_utf16le_to_utf8EPKDsmPc(ptr nonnull align 8 poison, ptr noundef %1, i64 noundef %2, ptr noundef %3) #47
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation29convert_valid_utf16be_to_utf8EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7simdutf7icelake14implementation23convert_utf16be_to_utf8EPKDsmPc(ptr nonnull align 8 poison, ptr noundef %1, i64 noundef %2, ptr noundef %3) #47
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation23convert_utf32_to_latin1EPKDimPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp sgt i64 %2, 15
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02852.i = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.03251.i = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <8 x i64>, ptr %.02852.i, align 1   ; 2 uses
  %i.e = bitcast <8 x i64> %i.d to <16 x i32>
  %i.f = icmp ugt <16 x i32> %i.e, splat (i32 255)
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not35.i = icmp eq i16 %i.g, 0
  br i1 %.not35.i, label %bb.b, label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_utf32_to_latin1EPKDimPc.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = bitcast <8 x i64> %i.d to <64 x i8>
  %i.i = shufflevector <64 x i8> %i.h, <64 x i8> poison, <64 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <64 x i8> %i.i to <8 x i64>
  %i.k = shufflevector <8 x i64> %i.j, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.k, ptr %.03251.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.03251.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02852.i, i64 64 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 15
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !291

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.032.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.l, %bb.b ]
  %.028.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.p, %bb.b ]
  %i.r = icmp ult ptr %.028.lcssa.i, %i.a
  br i1 %i.r, label %bb.c, label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_utf32_to_latin1EPKDimPc.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.s = trunc i64 %.lcssa.i to i32
  %notmask.i = shl nsw i32 -1, %i.s
  %i.t = trunc i32 %notmask.i to i16
  %i.u = xor i16 %i.t, -1
  %i.v = bitcast i16 %i.u to <16 x i1>            ; 2 uses
  %i.w = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.028.lcssa.i, <16 x i1> %i.v, <16 x i32> zeroinitializer) ; 2 uses
  %i.x = icmp ugt <16 x i32> %i.w, splat (i32 255)
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i, label %bb.d, label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_utf32_to_latin1EPKDimPc.exit

bb.d:                                             ; preds = %bb.c
  %i.z = trunc <16 x i32> %i.w to <16 x i8>
  tail call void @llvm.masked.store.v16i8.p0(<16 x i8> %i.z, ptr align 1 %.032.lcssa.i, <16 x i1> %i.v)
  br label %_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_utf32_to_latin1EPKDimPc.exit

_ZN7simdutf7icelake12_GLOBAL__N_131icelake_convert_utf32_to_latin1EPKDimPc.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %bb.c, %bb.d
  %.3.i = phi i64 [ 0, %bb.c ], [ %2, %._crit_edge.i ], [ %2, %bb.d ], [ 0, %.lr.ph.i ]
  ret i64 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation35convert_utf32_to_latin1_with_errorsEPKDimPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = icmp sgt i64 %2, 15
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = load <8 x i64>, ptr %1, align 1, !noalias !292 ; 2 uses
  %i.f = bitcast <8 x i64> %i.e to <16 x i32>     ; 2 uses
  %i.g = icmp ugt <16 x i32> %i.f, splat (i32 255)
  %i.h = bitcast <16 x i1> %i.g to i16
  %.not38.i53 = icmp eq i16 %i.h, 0
  br i1 %.not38.i53, label %.lr.ph56, label %.preheader68.i

.lr.ph:                                           ; preds = %.lr.ph56
  %i.i = load <8 x i64>, ptr %i.aa, align 1, !noalias !292 ; 2 uses
  %i.j = bitcast <8 x i64> %i.i to <16 x i32>     ; 2 uses
  %i.k = icmp ugt <16 x i32> %i.j, splat (i32 255)
  %i.l = bitcast <16 x i1> %i.k to i16
  %.not38.i = icmp eq i16 %i.l, 0
  br i1 %.not38.i, label %.lr.ph56, label %.preheader68.i, !llvm.loop !295
end_hunk_2
begin_hunk_3_@_ZNK7simdutf7icelake14implementation33convert_utf32_to_utf8_with_errorsEPKDimPc:bb.a
  %.sink.i = phi i64 [ %i.fx, %bb.o ], [ %i.go, %bb.r ], [ %i.fe, %bb.i ], [ %i.r, %bb.b ], [ %i.hc, %._crit_edge.i ] ; 4 uses
  %.2348369.lcssa391.sink.i = phi ptr [ %.2348369.i, %bb.o ], [ %.2348369.i, %bb.r ], [ %.0346371.i, %bb.i ], [ %.0346371.i, %bb.b ], [ %.0346.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.not = icmp eq i64 %.sink.i, %2
  br i1 %.not, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_140avx512_convert_utf32_to_utf8_with_errorsEPKDimPc.exit
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sink.i
  %i.he = sub i64 %2, %.sink.i                    ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.v, %.backedge.i
  %.070.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %.2348369.lcssa391.sink.i, %bb.v ] ; 14 uses
  %.05669.i = phi i64 [ %.056.be.i, %.backedge.i ], [ 0, %bb.v ] ; 4 uses
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
  %4 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.w, i32 -1431655766)
  %i.x = xor i32 %4, -1                           ; 2 uses
  %i.y = add <16 x i32> %i.d, splat (i32 983040)
  %i.z = shl <16 x i32> %i.d, splat (i32 16)
  %i.aa = and <16 x i32> %i.z, splat (i32 67043328)
  %i.ab = lshr <16 x i32> %i.y, splat (i32 10)
  %i.ac = and <16 x i32> %i.ab, splat (i32 1023)
  %i.ad = or disjoint <16 x i32> %i.aa, splat (i32 -603924480)
  %i.ae = or disjoint <16 x i32> %i.ad, %i.ac
  %i.af = select <16 x i1> %i.s, <16 x i32> %i.ae, <16 x i32> %i.d
  %i.ag = bitcast <16 x i32> %i.af to <32 x i16>
  %i.ah = bitcast i32 %i.x to <32 x i1>
  %i.ai = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ag, <32 x i16> zeroinitializer, <32 x i1> %i.ah)
  %i.aj = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x) ; 2 uses
  %i.ak = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.aj)
  %i.al = bitcast i32 %i.ak to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ai, ptr align 1 %.0290310.i, <32 x i1> %i.al)
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0290310.i, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.b
  %.2292.i = phi ptr [ %i.n, %bb.b ], [ %i.an, %.thread.i ] ; 2 uses
  %.2.i = phi i32 [ %i.l, %bb.b ], [ %.0312.i, %.thread.i ] ; 2 uses
  %.2289.i = getelementptr inbounds nuw i8, ptr %.0288311.i, i64 64 ; 3 uses
  %i.ao = ptrtoint ptr %.2289.i to i64
  %i.ap = sub i64 %i.b, %i.ao                     ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 2                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 15
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !304

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.0290.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2292.i, %bb.d ] ; 5 uses
  %.0288.lcssa.i = phi ptr [ %1, %bb.a ], [ %.2289.i, %bb.d ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.d ] ; 3 uses
  %.lcssa305.i = phi i64 [ %.idx.i, %bb.a ], [ %i.ap, %bb.d ] ; 3 uses
  %.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0288.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.as = trunc i64 %.lcssa.i to i32
  %notmask.i = shl nsw i32 -1, %i.as
  %i.at = trunc i32 %notmask.i to i16
  %i.au = xor i16 %i.at, -1                       ; 4 uses
  %i.av = bitcast i16 %i.au to <16 x i1>          ; 2 uses
  %i.aw = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0288.lcssa.i, <16 x i1> %i.av, <16 x i32> zeroinitializer) ; 8 uses
  %i.ax = icmp ult <16 x i32> %i.aw, splat (i32 65536)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = and i16 %i.ay, %i.au                    ; 4 uses
  %i.ba = icmp eq i16 %i.az, %i.au
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = and <16 x i32> %i.aw, splat (i32 63488)
  %i.bc = icmp eq <16 x i32> %i.bb, splat (i32 55296)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = zext i16 %i.bd to i32
  %i.bf = or i32 %.0.lcssa.i, %i.be
  %i.bg = trunc <16 x i32> %i.aw to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bg, ptr align 1 %.0290.lcssa.i, <16 x i1> %i.av)
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i, i64 %.lcssa.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i, i64 %.lcssa305.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = xor i16 %i.az, %i.au
  %i.bk = and <16 x i32> %i.aw, splat (i32 63488)
  %i.bl = icmp eq <16 x i32> %i.bk, splat (i32 55296)
  %i.bm = bitcast i16 %i.az to <16 x i1>
  %i.bn = and <16 x i1> %i.bl, %i.bm
  %i.bo = icmp ugt <16 x i32> %i.aw, splat (i32 1114111)
  %i.bp = bitcast i16 %i.bj to <16 x i1>          ; 2 uses
  %i.bq = and <16 x i1> %i.bo, %i.bp
  %i.br = or <16 x i1> %i.bn, %i.bq
  %i.bs = bitcast <16 x i1> %i.br to i16
  %.not111.i = icmp eq i16 %i.bs, 0
  br i1 %.not111.i, label %.thread299.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread, !prof !303

.thread299.i:                                     ; preds = %bb.g
  %i.bt = zext i16 %i.az to i32
  %5 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.bt, i32 -1431655766)
  %i.bu = lshr exact i64 %.lcssa305.i, 1
  %i.bv = trunc i64 %i.bu to i32
  %notmask110.i = shl nsw i32 -1, %i.bv
  %.demorgan.i = or i32 %5, %notmask110.i
  %i.bw = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.bx = add <16 x i32> %i.aw, splat (i32 983040)
  %i.by = shl <16 x i32> %i.aw, splat (i32 16)
  %i.bz = and <16 x i32> %i.by, splat (i32 67043328)
  %i.ca = lshr <16 x i32> %i.bx, splat (i32 10)
  %i.cb = and <16 x i32> %i.ca, splat (i32 1023)
  %i.cc = or disjoint <16 x i32> %i.bz, splat (i32 -603924480)
  %i.cd = or disjoint <16 x i32> %i.cc, %i.cb
  %i.ce = select <16 x i1> %i.bp, <16 x i32> %i.cd, <16 x i32> %i.aw
  %i.cf = bitcast <16 x i32> %i.ce to <32 x i16>
  %i.cg = bitcast i32 %i.bw to <32 x i1>
  %i.ch = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.cf, <32 x i16> zeroinitializer, <32 x i1> %i.cg)
  %i.ci = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.bw) ; 2 uses
  %i.cj = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ci)
  %i.ck = bitcast i32 %i.cj to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ch, ptr align 1 %.0290.lcssa.i, <32 x i1> %i.ck)
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i, i64 %.lcssa305.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit: ; preds = %._crit_edge.i, %bb.f, %.thread299.i
  %.4294.i = phi ptr [ %.0290.lcssa.i, %._crit_edge.i ], [ %i.bh, %bb.f ], [ %i.cm, %.thread299.i ]
  %.4.i = phi ptr [ %i.a, %._crit_edge.i ], [ %i.bi, %bb.f ], [ %i.cn, %.thread299.i ]
  %.5.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bf, %bb.f ], [ %.0.lcssa.i, %.thread299.i ]
  %.not112.i = icmp ne i32 %.5.i, 0
  %i.co = icmp eq ptr %.4.i, null
  %i.cp = select i1 %.not112.i, i1 true, i1 %i.co
  %i.cq = ptrtoint ptr %.4294.i to i64
  %i.cr = ptrtoint ptr %3 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 1
  %cond.fr = freeze i1 %i.cp
  br i1 %cond.fr, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread, label %bb.h

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread
  %i.cu = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread ], [ %i.ct, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit ]
  ret i64 %i.cu
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
  %4 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.y, i32 -1431655766)
  %i.z = xor i32 %4, -1                           ; 2 uses
  %i.aa = add <16 x i32> %i.d, splat (i32 983040)
  %i.ab = shl <16 x i32> %i.d, splat (i32 16)
  %i.ac = and <16 x i32> %i.ab, splat (i32 67043328)
  %i.ad = lshr <16 x i32> %i.aa, splat (i32 10)
  %i.ae = and <16 x i32> %i.ad, splat (i32 1023)
  %i.af = or disjoint <16 x i32> %i.ac, splat (i32 -603924480)
  %i.ag = or disjoint <16 x i32> %i.af, %i.ae
  %i.ah = select <16 x i1> %i.u, <16 x i32> %i.ag, <16 x i32> %i.d
  %i.ai = bitcast <16 x i32> %i.ah to <64 x i8>
  %i.aj = shufflevector <64 x i8> %i.ai, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.ak = bitcast <64 x i8> %i.aj to <32 x i16>
  %i.al = bitcast i32 %i.z to <32 x i1>
  %i.am = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ak, <32 x i16> zeroinitializer, <32 x i1> %i.al)
  %i.an = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 2 uses
  %i.ao = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.an)
  %i.ap = bitcast i32 %i.ao to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.am, ptr align 1 %.0310330.i, <32 x i1> %i.ap)
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.0310330.i, i64 %i.aq
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.b
  %.2312.i = phi ptr [ %i.p, %bb.b ], [ %i.ar, %.thread.i ] ; 2 uses
  %.2.i = phi i32 [ %i.l, %bb.b ], [ %.0332.i, %.thread.i ] ; 2 uses
  %.2309.i = getelementptr inbounds nuw i8, ptr %.0308331.i, i64 64 ; 3 uses
  %i.as = ptrtoint ptr %.2309.i to i64
  %i.at = sub i64 %i.b, %i.as                     ; 2 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 15
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !305

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.0310.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2312.i, %bb.d ] ; 5 uses
  %.0308.lcssa.i = phi ptr [ %1, %bb.a ], [ %.2309.i, %bb.d ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.d ] ; 3 uses
  %.lcssa325.i = phi i64 [ %.idx.i, %bb.a ], [ %i.at, %bb.d ] ; 3 uses
  %.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.au, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0308.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.aw = trunc i64 %.lcssa.i to i32
  %notmask.i = shl nsw i32 -1, %i.aw
  %i.ax = trunc i32 %notmask.i to i16
  %i.ay = xor i16 %i.ax, -1                       ; 4 uses
  %i.az = bitcast i16 %i.ay to <16 x i1>          ; 2 uses
  %i.ba = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0308.lcssa.i, <16 x i1> %i.az, <16 x i32> zeroinitializer) ; 8 uses
  %i.bb = icmp ult <16 x i32> %i.ba, splat (i32 65536)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = and i16 %i.bc, %i.ay                    ; 4 uses
  %i.be = icmp eq i16 %i.bd, %i.ay
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = and <16 x i32> %i.ba, splat (i32 63488)
  %i.bg = icmp eq <16 x i32> %i.bf, splat (i32 55296)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = zext i16 %i.bh to i32
  %i.bj = or i32 %.0.lcssa.i, %i.bi
  %i.bk = trunc <16 x i32> %i.ba to <16 x i16>
  %i.bl = bitcast <16 x i16> %i.bk to <32 x i8>
  %i.bm = shufflevector <32 x i8> %i.bl, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.bn = bitcast <32 x i8> %i.bm to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bn, ptr align 1 %.0310.lcssa.i, <16 x i1> %i.az)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i, i64 %.lcssa.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i, i64 %.lcssa325.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = xor i16 %i.bd, %i.ay
  %i.br = and <16 x i32> %i.ba, splat (i32 63488)
  %i.bs = icmp eq <16 x i32> %i.br, splat (i32 55296)
  %i.bt = bitcast i16 %i.bd to <16 x i1>
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = icmp ugt <16 x i32> %i.ba, splat (i32 1114111)
  %i.bw = bitcast i16 %i.bq to <16 x i1>          ; 2 uses
  %i.bx = and <16 x i1> %i.bv, %i.bw
  %i.by = or <16 x i1> %i.bu, %i.bx
  %i.bz = bitcast <16 x i1> %i.by to i16
  %.not115.i = icmp eq i16 %i.bz, 0
  br i1 %.not115.i, label %.thread319.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread, !prof !303

.thread319.i:                                     ; preds = %bb.g
  %i.ca = zext i16 %i.bd to i32
  %5 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.ca, i32 -1431655766)
  %i.cb = lshr exact i64 %.lcssa325.i, 1
  %i.cc = trunc i64 %i.cb to i32
  %notmask114.i = shl nsw i32 -1, %i.cc
  %.demorgan.i = or i32 %5, %notmask114.i
  %i.cd = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.ce = add <16 x i32> %i.ba, splat (i32 983040)
  %i.cf = shl <16 x i32> %i.ba, splat (i32 16)
  %i.cg = and <16 x i32> %i.cf, splat (i32 67043328)
  %i.ch = lshr <16 x i32> %i.ce, splat (i32 10)
  %i.ci = and <16 x i32> %i.ch, splat (i32 1023)
  %i.cj = or disjoint <16 x i32> %i.cg, splat (i32 -603924480)
  %i.ck = or disjoint <16 x i32> %i.cj, %i.ci
  %i.cl = select <16 x i1> %i.bw, <16 x i32> %i.ck, <16 x i32> %i.ba
  %i.cm = bitcast <16 x i32> %i.cl to <64 x i8>
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.co = bitcast <64 x i8> %i.cn to <32 x i16>
  %i.cp = bitcast i32 %i.cd to <32 x i1>
  %i.cq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.co, <32 x i16> zeroinitializer, <32 x i1> %i.cp)
  %i.cr = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.cd) ; 2 uses
  %i.cs = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.cr)
  %i.ct = bitcast i32 %i.cs to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cq, ptr align 1 %.0310.lcssa.i, <32 x i1> %i.ct)
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i, i64 %.lcssa325.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit: ; preds = %._crit_edge.i, %bb.f, %.thread319.i
  %.4314.i = phi ptr [ %.0310.lcssa.i, %._crit_edge.i ], [ %i.bo, %bb.f ], [ %i.cv, %.thread319.i ]
  %.4.i = phi ptr [ %i.a, %._crit_edge.i ], [ %i.bp, %bb.f ], [ %i.cw, %.thread319.i ]
  %.5.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.f ], [ %.0.lcssa.i, %.thread319.i ]
  %.not116.i = icmp ne i32 %.5.i, 0
  %i.cx = icmp eq ptr %.4.i, null
  %i.cy = select i1 %.not116.i, i1 true, i1 %i.cx
  %i.cz = ptrtoint ptr %.4314.i to i64
  %i.da = ptrtoint ptr %3 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 1
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread, label %bb.h

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread
  %i.dd = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread ], [ %i.dc, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit ]
  ret i64 %i.dd
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
  %i.e = phi i64 [ %i.bj, %.critedge.i ], [ %i.c, %bb.a ] ; 2 uses
  %.0414.i = phi ptr [ %i.bi, %.critedge.i ], [ %1, %bb.a ] ; 2 uses
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
  %4 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.z, i32 -1431655766)
  %i.aa = xor i32 %4, -1                          ; 2 uses
  %i.ab = xor i16 %i.h, -1
  %i.ac = and <16 x i32> %i.f, splat (i32 -2048)
  %i.ad = icmp eq <16 x i32> %i.ac, splat (i32 55296)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = icmp ugt <16 x i32> %i.f, splat (i32 1114111)
  %i.ag = bitcast i16 %i.ab to <16 x i1>          ; 2 uses
  %i.ah = and <16 x i1> %i.af, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = or i16 %i.ai, %i.ae
  %.not192.not.i = icmp eq i16 %i.aj, 0           ; 2 uses
  br i1 %.not192.not.i, label %bb.f, label %bb.e, !prof !303

bb.e:                                             ; preds = %bb.d
  %i.ak = zext i16 %i.ai to i32
  %i.al = zext i16 %i.ae to i32
  %i.am = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ak, i1 false) ; 2 uses
  %i.an = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 false) ; 2 uses
  %i.ao = icmp samesign ult i32 %i.am, %i.an
  %..i = select i1 %i.ao, i32 5, i32 6
  %.195.i = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.an) ; 2 uses
  %i.ap = shl nuw nsw i32 %.195.i, 1
  %notmask193.i = shl nsw i32 -1, %i.ap
  %i.aq = xor i32 %notmask193.i, -1
  %i.ar = and i32 %i.aq, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0176.i = phi i32 [ %i.ar, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %.2160.i = phi i32 [ %..i, %bb.e ], [ %.0158412.i, %bb.d ] ; 2 uses
  %.2156.i = phi i32 [ %.195.i, %bb.e ], [ %.0154413.i, %bb.d ] ; 2 uses
  %i.as = add <16 x i32> %i.f, splat (i32 983040)
  %i.at = shl <16 x i32> %i.f, splat (i32 16)
  %i.au = and <16 x i32> %i.at, splat (i32 67043328)
  %i.av = lshr <16 x i32> %i.as, splat (i32 10)
  %i.aw = and <16 x i32> %i.av, splat (i32 1023)
  %i.ax = or disjoint <16 x i32> %i.au, splat (i32 -603924480)
  %i.ay = or disjoint <16 x i32> %i.ax, %i.aw
  %i.az = select <16 x i1> %i.ag, <16 x i32> %i.ay, <16 x i32> %i.f
  %i.ba = bitcast <16 x i32> %i.az to <32 x i16>
  %i.bb = bitcast i32 %.0176.i to <32 x i1>
  %i.bc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ba, <32 x i16> zeroinitializer, <32 x i1> %i.bb)
  %i.bd = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0176.i) ; 2 uses
  %i.be = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.bd)
  %i.bf = bitcast i32 %i.be to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.bc, ptr align 1 %.0387411.i, <32 x i1> %i.bf), !noalias !306
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.0387411.i, i64 %i.bg ; 2 uses
  br i1 %.not192.not.i, label %.critedge.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit, !prof !303

.critedge.i:                                      ; preds = %bb.f, %.thread.i
  %.2.i = phi ptr [ %i.n, %.thread.i ], [ %i.bh, %bb.f ] ; 2 uses
  %.3161.i = phi i32 [ %.0158412.i, %.thread.i ], [ %.2160.i, %bb.f ] ; 2 uses
  %.3157.i = phi i32 [ %.0154413.i, %.thread.i ], [ %.2156.i, %bb.f ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0414.i, i64 64 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = sub i64 %i.b, %i.bj                     ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 15
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !309

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.a
  %.0387.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2.i, %.critedge.i ] ; 6 uses
  %.0158.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3161.i, %.critedge.i ]
  %.0154.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3157.i, %.critedge.i ]
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.bi, %.critedge.i ] ; 2 uses
  %.lcssa398.i = phi i64 [ %i.c, %bb.a ], [ %i.bj, %.critedge.i ] ; 2 uses
  %.lcssa395.i = phi i64 [ %.idx.i, %bb.a ], [ %i.bk, %.critedge.i ]
  %.lcssa392.i = phi i64 [ %2, %bb.a ], [ %i.bl, %.critedge.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = trunc i64 %.lcssa392.i to i32
  %notmask.i = shl nsw i32 -1, %i.bn
  %i.bo = trunc i32 %notmask.i to i16
  %i.bp = xor i16 %i.bo, -1                       ; 4 uses
  %i.bq = bitcast i16 %i.bp to <16 x i1>          ; 2 uses
  %i.br = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0.lcssa.i, <16 x i1> %i.bq, <16 x i32> zeroinitializer), !noalias !306 ; 8 uses
  %i.bs = icmp ult <16 x i32> %i.br, splat (i32 65536)
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %i.bu = and i16 %i.bt, %i.bp                    ; 4 uses
  %i.bv = icmp eq i16 %i.bu, %i.bp
  br i1 %i.bv, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bw = and <16 x i32> %i.br, splat (i32 63488)
  %i.bx = icmp eq <16 x i32> %i.bw, splat (i32 55296)
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = trunc <16 x i32> %i.br to <16 x i16>    ; 2 uses
  %.not191.i = icmp eq i16 %i.by, 0
  br i1 %.not191.i, label %.thread390.i, label %bb.i, !prof !303

.thread390.i:                                     ; preds = %bb.h
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bz, ptr align 1 %.0387.lcssa.i, <16 x i1> %i.bq), !noalias !306
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.0387.lcssa.i, i64 %.lcssa392.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18

bb.i:                                             ; preds = %bb.h
  %i.cb = zext i16 %i.by to i32                   ; 3 uses
  %i.cc = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cb, i1 true)
  %i.cd = add nuw nsw i32 %i.cb, 131071
  %i.ce = xor i32 %i.cd, %i.cb
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = bitcast i16 %i.cg to <16 x i1>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bz, ptr align 1 %.0387.lcssa.i, <16 x i1> %i.ch), !noalias !306
  %i.ci = sub i64 %.lcssa398.i, %i.c
  %i.cj = ashr exact i64 %i.ci, 2
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = add nsw i64 %i.cj, %i.ck
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.cm = zext i16 %i.bu to i32
  %i.cn = lshr exact i64 %.lcssa395.i, 1
  %i.co = trunc i64 %i.cn to i32
  %notmask188.i = shl nsw i32 -1, %i.co
  %5 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.cm, i32 -1431655766)
  %.demorgan.i = or i32 %5, %notmask188.i
  %i.cp = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.cq = xor i16 %i.bu, %i.bp
  %i.cr = and <16 x i32> %i.br, splat (i32 63488)
  %i.cs = icmp eq <16 x i32> %i.cr, splat (i32 55296)
  %i.ct = bitcast i16 %i.bu to <16 x i1>
  %i.cu = and <16 x i1> %i.cs, %i.ct
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %i.cw = icmp ugt <16 x i32> %i.br, splat (i32 1114111)
  %i.cx = bitcast i16 %i.cq to <16 x i1>          ; 2 uses
  %i.cy = and <16 x i1> %i.cw, %i.cx
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %i.da = or i16 %i.cz, %i.cv
  %.not189.not.i = icmp eq i16 %i.da, 0           ; 2 uses
  br i1 %.not189.not.i, label %bb.l, label %bb.k, !prof !303

bb.k:                                             ; preds = %bb.j
  %i.db = zext i16 %i.cz to i32
  %i.dc = zext i16 %i.cv to i32
  %i.dd = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.db, i1 false) ; 2 uses
  %i.de = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dc, i1 false) ; 2 uses
  %i.df = icmp samesign ult i32 %i.dd, %i.de
  %.198.i = select i1 %i.df, i32 5, i32 6
  %.199.i = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 %i.de) ; 2 uses
  %i.dg = shl nuw nsw i32 %.199.i, 1
  %notmask190.i = shl nsw i32 -1, %i.dg
  %i.dh = xor i32 %notmask190.i, -1
  %i.di = and i32 %i.dh, %i.cp
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0177.i = phi i32 [ %i.di, %bb.k ], [ %i.cp, %bb.j ] ; 2 uses
  %.6164.i = phi i32 [ %.198.i, %bb.k ], [ %.0158.lcssa.i, %bb.j ]
  %.6.i = phi i32 [ %.199.i, %bb.k ], [ %.0154.lcssa.i, %bb.j ]
  %i.dj = add <16 x i32> %i.br, splat (i32 983040)
  %i.dk = shl <16 x i32> %i.br, splat (i32 16)
  %i.dl = and <16 x i32> %i.dk, splat (i32 67043328)
  %i.dm = lshr <16 x i32> %i.dj, splat (i32 10)
  %i.dn = and <16 x i32> %i.dm, splat (i32 1023)
  %i.do = or disjoint <16 x i32> %i.dl, splat (i32 -603924480)
  %i.dp = or disjoint <16 x i32> %i.do, %i.dn
  %i.dq = select <16 x i1> %i.cx, <16 x i32> %i.dp, <16 x i32> %i.br
  %i.dr = bitcast <16 x i32> %i.dq to <32 x i16>
  %i.ds = bitcast i32 %.0177.i to <32 x i1>
  %i.dt = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.dr, <32 x i16> zeroinitializer, <32 x i1> %i.ds)
  %i.du = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0177.i) ; 2 uses
  %i.dv = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.du)
  %i.dw = bitcast i32 %i.dv to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.dt, ptr align 1 %.0387.lcssa.i, <32 x i1> %i.dw), !noalias !306
  %i.dx = zext nneg i32 %i.du to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.0387.lcssa.i, i64 %i.dx ; 2 uses
  br i1 %.not189.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit, !prof !303

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit: ; preds = %bb.f, %bb.l
  %.lcssa57.sink = phi i64 [ %.lcssa398.i, %bb.l ], [ %i.e, %bb.f ]
  %.2156.i.lcssa.sink = phi i32 [ %.6.i, %bb.l ], [ %.2156.i, %bb.f ]
  %.sink452.i = phi i32 [ %.6164.i, %bb.l ], [ %.2160.i, %bb.f ] ; 2 uses
  %.sink.i = phi ptr [ %i.dy, %bb.l ], [ %i.bh, %bb.f ]
  %i.dz = sub i64 %.lcssa57.sink, %i.c
  %i.ea = ashr exact i64 %i.dz, 2
  %i.eb = zext nneg i32 %.2156.i.lcssa.sink to i64
  %i.ec = add nsw i64 %i.ea, %i.eb
  %.not = icmp eq i32 %.sink452.i, 0
  br i1 %.not, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18: ; preds = %.thread390.i, %bb.l, %._crit_edge.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit
  %.sink.i24 = phi ptr [ %.sink.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ %.0387.lcssa.i, %._crit_edge.i ], [ %i.ca, %.thread390.i ], [ %i.dy, %bb.l ]
  %i.ed = ptrtoint ptr %.sink.i24 to i64
  %i.ee = ptrtoint ptr %3 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread: ; preds = %bb.c, %bb.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18
  %.sink452.i15 = phi i32 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18 ], [ %.sink452.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ 6, %bb.i ], [ 6, %bb.c ]
  %.sroa.36.0 = phi i64 [ %i.eg, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18 ], [ %i.ec, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE0EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ %i.cl, %bb.i ], [ %i.y, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sink452.i15, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.36.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation36convert_utf32_to_utf16be_with_errorsEPKDimPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 5 uses
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.d = icmp sgt i64 %2, 15
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %i.e = phi i64 [ %i.bo, %.critedge.i ], [ %i.c, %bb.a ] ; 2 uses
  %.0434.i = phi ptr [ %i.bn, %.critedge.i ], [ %1, %bb.a ] ; 2 uses
  %.0158433.i = phi i32 [ %.3161.i, %.critedge.i ], [ 0, %bb.a ] ; 2 uses
  %.0162432.i = phi i32 [ %.3165.i, %.critedge.i ], [ 0, %bb.a ] ; 2 uses
  %.0407431.i = phi ptr [ %.2.i, %.critedge.i ], [ %3, %bb.a ] ; 5 uses
  %i.f = load <16 x i32>, ptr %.0434.i, align 1, !noalias !310 ; 8 uses
  %i.g = icmp ult <16 x i32> %i.f, splat (i32 65536)
  %i.h = bitcast <16 x i1> %i.g to i16            ; 3 uses
  %i.i = icmp eq i16 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = and <16 x i32> %i.f, splat (i32 63488)
  %i.k = icmp eq <16 x i32> %i.j, splat (i32 55296)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = trunc <16 x i32> %i.f to <16 x i16>
  %i.n = bitcast <16 x i16> %i.m to <32 x i8>
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30> ; 2 uses
  %.not198.i = icmp eq i16 %i.l, 0
  br i1 %.not198.i, label %.thread.i, label %bb.c, !prof !303

.thread.i:                                        ; preds = %bb.b
  store <32 x i8> %i.o, ptr %.0407431.i, align 1, !noalias !310
  %i.p = getelementptr inbounds nuw i8, ptr %.0407431.i, i64 32
  br label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.q = zext i16 %i.l to i32                     ; 3 uses
  %i.r = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.q, i1 true)
  %i.s = add nuw nsw i32 %i.q, 131071
  %i.t = xor i32 %i.s, %i.q
  %i.u = lshr i32 %i.t, 1
  %i.v = trunc i32 %i.u to i16
  %i.w = bitcast <32 x i8> %i.o to <16 x i16>
  %i.x = bitcast i16 %i.v to <16 x i1>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.w, ptr align 1 %.0407431.i, <16 x i1> %i.x), !noalias !310
  %i.y = sub i64 %i.e, %i.c
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = zext nneg i32 %i.r to i64
  %i.ab = add nsw i64 %i.z, %i.aa
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = zext i16 %i.h to i32
  %4 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.ac, i32 -1431655766)
  %i.ad = xor i32 %4, -1                          ; 2 uses
  %i.ae = xor i16 %i.h, -1
  %i.af = and <16 x i32> %i.f, splat (i32 -2048)
  %i.ag = icmp eq <16 x i32> %i.af, splat (i32 55296)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %i.ai = icmp ugt <16 x i32> %i.f, splat (i32 1114111)
  %i.aj = bitcast i16 %i.ae to <16 x i1>          ; 2 uses
  %i.ak = and <16 x i1> %i.ai, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %i.am = or i16 %i.al, %i.ah
  %.not196.not.i = icmp eq i16 %i.am, 0           ; 2 uses
  br i1 %.not196.not.i, label %bb.f, label %bb.e, !prof !303

bb.e:                                             ; preds = %bb.d
  %i.an = zext i16 %i.al to i32
  %i.ao = zext i16 %i.ah to i32
  %i.ap = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.an, i1 false) ; 2 uses
  %i.aq = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ao, i1 false) ; 2 uses
  %i.ar = icmp samesign ult i32 %i.ap, %i.aq
  %..i = select i1 %i.ar, i32 5, i32 6
  %.199.i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aq) ; 2 uses
  %i.as = shl nuw nsw i32 %.199.i, 1
  %notmask197.i = shl nsw i32 -1, %i.as
  %i.at = xor i32 %notmask197.i, -1
  %i.au = and i32 %i.at, %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0180.i = phi i32 [ %i.au, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %.2164.i = phi i32 [ %..i, %bb.e ], [ %.0162432.i, %bb.d ] ; 2 uses
  %.2160.i = phi i32 [ %.199.i, %bb.e ], [ %.0158433.i, %bb.d ] ; 2 uses
  %i.av = add <16 x i32> %i.f, splat (i32 983040)
  %i.aw = shl <16 x i32> %i.f, splat (i32 16)
  %i.ax = and <16 x i32> %i.aw, splat (i32 67043328)
  %i.ay = lshr <16 x i32> %i.av, splat (i32 10)
  %i.az = and <16 x i32> %i.ay, splat (i32 1023)
  %i.ba = or disjoint <16 x i32> %i.ax, splat (i32 -603924480)
  %i.bb = or disjoint <16 x i32> %i.ba, %i.az
  %i.bc = select <16 x i1> %i.aj, <16 x i32> %i.bb, <16 x i32> %i.f
  %i.bd = bitcast <16 x i32> %i.bc to <64 x i8>
  %i.be = shufflevector <64 x i8> %i.bd, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.bf = bitcast <64 x i8> %i.be to <32 x i16>
  %i.bg = bitcast i32 %.0180.i to <32 x i1>
  %i.bh = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.bf, <32 x i16> zeroinitializer, <32 x i1> %i.bg)
  %i.bi = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0180.i) ; 2 uses
  %i.bj = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.bi)
  %i.bk = bitcast i32 %i.bj to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.bh, ptr align 1 %.0407431.i, <32 x i1> %i.bk), !noalias !310
  %i.bl = zext nneg i32 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.0407431.i, i64 %i.bl ; 2 uses
  br i1 %.not196.not.i, label %.critedge.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit, !prof !303

.critedge.i:                                      ; preds = %bb.f, %.thread.i
  %.2.i = phi ptr [ %i.p, %.thread.i ], [ %i.bm, %bb.f ] ; 2 uses
  %.3165.i = phi i32 [ %.0162432.i, %.thread.i ], [ %.2164.i, %bb.f ] ; 2 uses
  %.3161.i = phi i32 [ %.0158433.i, %.thread.i ], [ %.2160.i, %bb.f ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0434.i, i64 64 ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bp = sub i64 %i.b, %i.bo                     ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 15
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !313

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.a
  %.0407.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2.i, %.critedge.i ] ; 6 uses
  %.0162.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3165.i, %.critedge.i ]
  %.0158.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3161.i, %.critedge.i ]
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.bn, %.critedge.i ] ; 2 uses
  %.lcssa418.i = phi i64 [ %i.c, %bb.a ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.lcssa415.i = phi i64 [ %.idx.i, %bb.a ], [ %i.bp, %.critedge.i ]
  %.lcssa412.i = phi i64 [ %2, %bb.a ], [ %i.bq, %.critedge.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.a, %.0.lcssa.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bs = trunc i64 %.lcssa412.i to i32
  %notmask.i = shl nsw i32 -1, %i.bs
  %i.bt = trunc i32 %notmask.i to i16
  %i.bu = xor i16 %i.bt, -1                       ; 4 uses
  %i.bv = bitcast i16 %i.bu to <16 x i1>          ; 2 uses
  %i.bw = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0.lcssa.i, <16 x i1> %i.bv, <16 x i32> zeroinitializer), !noalias !310 ; 8 uses
  %i.bx = icmp ult <16 x i32> %i.bw, splat (i32 65536)
  %i.by = bitcast <16 x i1> %i.bx to i16
  %i.bz = and i16 %i.by, %i.bu                    ; 4 uses
  %i.ca = icmp eq i16 %i.bz, %i.bu
  br i1 %i.ca, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cb = and <16 x i32> %i.bw, splat (i32 63488)
  %i.cc = icmp eq <16 x i32> %i.cb, splat (i32 55296)
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %i.ce = trunc <16 x i32> %i.bw to <16 x i16>
  %i.cf = bitcast <16 x i16> %i.ce to <32 x i8>
  %i.cg = shufflevector <32 x i8> %i.cf, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30> ; 2 uses
  %.not195.i = icmp eq i16 %i.cd, 0
  br i1 %.not195.i, label %.thread410.i, label %bb.i, !prof !303

.thread410.i:                                     ; preds = %bb.h
  %i.ch = bitcast <32 x i8> %i.cg to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ch, ptr align 1 %.0407.lcssa.i, <16 x i1> %i.bv), !noalias !310
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.0407.lcssa.i, i64 %.lcssa412.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18

bb.i:                                             ; preds = %bb.h
  %i.cj = zext i16 %i.cd to i32                   ; 3 uses
  %i.ck = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cj, i1 true)
  %i.cl = add nuw nsw i32 %i.cj, 131071
  %i.cm = xor i32 %i.cl, %i.cj
  %i.cn = lshr i32 %i.cm, 1
  %i.co = trunc i32 %i.cn to i16
  %i.cp = bitcast <32 x i8> %i.cg to <16 x i16>
  %i.cq = bitcast i16 %i.co to <16 x i1>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.cp, ptr align 1 %.0407.lcssa.i, <16 x i1> %i.cq), !noalias !310
  %i.cr = sub i64 %.lcssa418.i, %i.c
  %i.cs = ashr exact i64 %i.cr, 2
  %i.ct = zext nneg i32 %i.ck to i64
  %i.cu = add nsw i64 %i.cs, %i.ct
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.cv = zext i16 %i.bz to i32
  %i.cw = lshr exact i64 %.lcssa415.i, 1
  %i.cx = trunc i64 %i.cw to i32
  %notmask192.i = shl nsw i32 -1, %i.cx
  %5 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.cv, i32 -1431655766)
  %.demorgan.i = or i32 %5, %notmask192.i
  %i.cy = xor i32 %.demorgan.i, -1                ; 2 uses
  %i.cz = xor i16 %i.bz, %i.bu
  %i.da = and <16 x i32> %i.bw, splat (i32 63488)
  %i.db = icmp eq <16 x i32> %i.da, splat (i32 55296)
  %i.dc = bitcast i16 %i.bz to <16 x i1>
  %i.dd = and <16 x i1> %i.db, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %i.df = icmp ugt <16 x i32> %i.bw, splat (i32 1114111)
  %i.dg = bitcast i16 %i.cz to <16 x i1>          ; 2 uses
  %i.dh = and <16 x i1> %i.df, %i.dg
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %i.dj = or i16 %i.di, %i.de
  %.not193.not.i = icmp eq i16 %i.dj, 0           ; 2 uses
  br i1 %.not193.not.i, label %bb.l, label %bb.k, !prof !303

bb.k:                                             ; preds = %bb.j
  %i.dk = zext i16 %i.di to i32
  %i.dl = zext i16 %i.de to i32
  %i.dm = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dk, i1 false) ; 2 uses
  %i.dn = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dl, i1 false) ; 2 uses
  %i.do = icmp samesign ult i32 %i.dm, %i.dn
  %.202.i = select i1 %i.do, i32 5, i32 6
  %.203.i = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dn) ; 2 uses
  %i.dp = shl nuw nsw i32 %.203.i, 1
  %notmask194.i = shl nsw i32 -1, %i.dp
  %i.dq = xor i32 %notmask194.i, -1
  %i.dr = and i32 %i.dq, %i.cy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0181.i = phi i32 [ %i.dr, %bb.k ], [ %i.cy, %bb.j ] ; 2 uses
  %.6168.i = phi i32 [ %.202.i, %bb.k ], [ %.0162.lcssa.i, %bb.j ]
  %.6.i = phi i32 [ %.203.i, %bb.k ], [ %.0158.lcssa.i, %bb.j ]
  %i.ds = add <16 x i32> %i.bw, splat (i32 983040)
  %i.dt = shl <16 x i32> %i.bw, splat (i32 16)
  %i.du = and <16 x i32> %i.dt, splat (i32 67043328)
  %i.dv = lshr <16 x i32> %i.ds, splat (i32 10)
  %i.dw = and <16 x i32> %i.dv, splat (i32 1023)
  %i.dx = or disjoint <16 x i32> %i.du, splat (i32 -603924480)
  %i.dy = or disjoint <16 x i32> %i.dx, %i.dw
  %i.dz = select <16 x i1> %i.dg, <16 x i32> %i.dy, <16 x i32> %i.bw
  %i.ea = bitcast <16 x i32> %i.dz to <64 x i8>
  %i.eb = shufflevector <64 x i8> %i.ea, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.ec = bitcast <64 x i8> %i.eb to <32 x i16>
  %i.ed = bitcast i32 %.0181.i to <32 x i1>
  %i.ee = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ec, <32 x i16> zeroinitializer, <32 x i1> %i.ed)
  %i.ef = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0181.i) ; 2 uses
  %i.eg = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ef)
  %i.eh = bitcast i32 %i.eg to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ee, ptr align 1 %.0407.lcssa.i, <32 x i1> %i.eh), !noalias !310
  %i.ei = zext nneg i32 %i.ef to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.0407.lcssa.i, i64 %i.ei ; 2 uses
  br i1 %.not193.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit, !prof !303

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit: ; preds = %bb.f, %bb.l
  %.lcssa57.sink = phi i64 [ %.lcssa418.i, %bb.l ], [ %i.e, %bb.f ]
  %.2160.i.lcssa.sink = phi i32 [ %.6.i, %bb.l ], [ %.2160.i, %bb.f ]
  %.sink472.i = phi i32 [ %.6168.i, %bb.l ], [ %.2164.i, %bb.f ] ; 2 uses
  %.sink.i = phi ptr [ %i.ej, %bb.l ], [ %i.bm, %bb.f ]
  %i.ek = sub i64 %.lcssa57.sink, %i.c
  %i.el = ashr exact i64 %i.ek, 2
  %i.em = zext nneg i32 %.2160.i.lcssa.sink to i64
  %i.en = add nsw i64 %i.el, %i.em
  %.not = icmp eq i32 %.sink472.i, 0
  br i1 %.not, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18, label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18: ; preds = %.thread410.i, %bb.l, %._crit_edge.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit
  %.sink.i24 = phi ptr [ %.sink.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ %.0407.lcssa.i, %._crit_edge.i ], [ %i.ci, %.thread410.i ], [ %i.ej, %bb.l ]
  %i.eo = ptrtoint ptr %.sink.i24 to i64
  %i.ep = ptrtoint ptr %3 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 1
  br label %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread

_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread: ; preds = %bb.c, %bb.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18
  %.sink472.i15 = phi i32 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18 ], [ %.sink472.i, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ 6, %bb.i ], [ 6, %bb.c ]
  %.sroa.36.0 = phi i64 [ %i.er, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit.thread18 ], [ %i.en, %_ZN7simdutf7icelake12_GLOBAL__N_141avx512_convert_utf32_to_utf16_with_errorsILNS_10endiannessE1EEESt4pairINS_6resultEPDsEPKDimS6_.exit ], [ %i.cu, %bb.i ], [ %i.ab, %bb.c ]
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
  %4 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.w, i32 -1431655766)
  %i.x = xor i32 %4, -1                           ; 2 uses
  %i.y = add <16 x i32> %i.d, splat (i32 983040)
  %i.z = shl <16 x i32> %i.d, splat (i32 16)
  %i.aa = and <16 x i32> %i.z, splat (i32 67043328)
  %i.ab = lshr <16 x i32> %i.y, splat (i32 10)
  %i.ac = and <16 x i32> %i.ab, splat (i32 1023)
  %i.ad = or disjoint <16 x i32> %i.aa, splat (i32 -603924480)
  %i.ae = or disjoint <16 x i32> %i.ad, %i.ac
  %i.af = select <16 x i1> %i.s, <16 x i32> %i.ae, <16 x i32> %i.d
  %i.ag = bitcast <16 x i32> %i.af to <32 x i16>
  %i.ah = bitcast i32 %i.x to <32 x i1>
  %i.ai = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ag, <32 x i16> zeroinitializer, <32 x i1> %i.ah)
  %i.aj = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x) ; 2 uses
  %i.ak = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.aj)
  %i.al = bitcast i32 %i.ak to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ai, ptr align 1 %.0290310.i.i, <32 x i1> %i.al)
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0290310.i.i, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.b
  %.2292.i.i = phi ptr [ %i.n, %bb.b ], [ %i.an, %.thread.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.l, %bb.b ], [ %.0312.i.i, %.thread.i.i ] ; 2 uses
  %.2289.i.i = getelementptr inbounds nuw i8, ptr %.0288311.i.i, i64 64 ; 3 uses
  %i.ao = ptrtoint ptr %.2289.i.i to i64
  %i.ap = sub i64 %i.b, %i.ao                     ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 2                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 15
  br i1 %i.ar, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !304

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %.0290.lcssa.i.i = phi ptr [ %3, %bb.a ], [ %.2292.i.i, %bb.d ] ; 5 uses
  %.0288.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %.2289.i.i, %bb.d ] ; 4 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %.2.i.i, %bb.d ] ; 3 uses
  %.lcssa305.i.i = phi i64 [ %.idx.i.i, %bb.a ], [ %i.ap, %bb.d ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %2, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %.0288.lcssa.i.i
  br i1 %.not.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.as = trunc i64 %.lcssa.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.as
  %i.at = trunc i32 %notmask.i.i to i16
  %i.au = xor i16 %i.at, -1                       ; 4 uses
  %i.av = bitcast i16 %i.au to <16 x i1>          ; 2 uses
  %i.aw = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0288.lcssa.i.i, <16 x i1> %i.av, <16 x i32> zeroinitializer) ; 8 uses
  %i.ax = icmp ult <16 x i32> %i.aw, splat (i32 65536)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = and i16 %i.ay, %i.au                    ; 4 uses
  %i.ba = icmp eq i16 %i.az, %i.au
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = and <16 x i32> %i.aw, splat (i32 63488)
  %i.bc = icmp eq <16 x i32> %i.bb, splat (i32 55296)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = zext i16 %i.bd to i32
  %i.bf = or i32 %.0.lcssa.i.i, %i.be
  %i.bg = trunc <16 x i32> %i.aw to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bg, ptr align 1 %.0290.lcssa.i.i, <16 x i1> %i.av)
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i.i, i64 %.lcssa.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i.i, i64 %.lcssa305.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bj = xor i16 %i.az, %i.au
  %i.bk = and <16 x i32> %i.aw, splat (i32 63488)
  %i.bl = icmp eq <16 x i32> %i.bk, splat (i32 55296)
  %i.bm = bitcast i16 %i.az to <16 x i1>
  %i.bn = and <16 x i1> %i.bl, %i.bm
  %i.bo = icmp ugt <16 x i32> %i.aw, splat (i32 1114111)
  %i.bp = bitcast i16 %i.bj to <16 x i1>          ; 2 uses
  %i.bq = and <16 x i1> %i.bo, %i.bp
  %i.br = or <16 x i1> %i.bn, %i.bq
  %i.bs = bitcast <16 x i1> %i.br to i16
  %.not111.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not111.i.i, label %.thread299.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, !prof !303

.thread299.i.i:                                   ; preds = %bb.g
  %i.bt = zext i16 %i.az to i32
  %5 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.bt, i32 -1431655766)
  %i.bu = lshr exact i64 %.lcssa305.i.i, 1
  %i.bv = trunc i64 %i.bu to i32
  %notmask110.i.i = shl nsw i32 -1, %i.bv
  %.demorgan.i.i = or i32 %5, %notmask110.i.i
  %i.bw = xor i32 %.demorgan.i.i, -1              ; 2 uses
  %i.bx = add <16 x i32> %i.aw, splat (i32 983040)
  %i.by = shl <16 x i32> %i.aw, splat (i32 16)
  %i.bz = and <16 x i32> %i.by, splat (i32 67043328)
  %i.ca = lshr <16 x i32> %i.bx, splat (i32 10)
  %i.cb = and <16 x i32> %i.ca, splat (i32 1023)
  %i.cc = or disjoint <16 x i32> %i.bz, splat (i32 -603924480)
  %i.cd = or disjoint <16 x i32> %i.cc, %i.cb
  %i.ce = select <16 x i1> %i.bp, <16 x i32> %i.cd, <16 x i32> %i.aw
  %i.cf = bitcast <16 x i32> %i.ce to <32 x i16>
  %i.cg = bitcast i32 %i.bw to <32 x i1>
  %i.ch = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.cf, <32 x i16> zeroinitializer, <32 x i1> %i.cg)
  %i.ci = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.bw) ; 2 uses
  %i.cj = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.ci)
  %i.ck = bitcast i32 %i.cj to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.ch, ptr align 1 %.0290.lcssa.i.i, <32 x i1> %i.ck)
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0290.lcssa.i.i, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0288.lcssa.i.i, i64 %.lcssa305.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i: ; preds = %.thread299.i.i, %bb.f, %._crit_edge.i.i
  %.4294.i.i = phi ptr [ %.0290.lcssa.i.i, %._crit_edge.i.i ], [ %i.bh, %bb.f ], [ %i.cm, %.thread299.i.i ]
  %.4.i.i = phi ptr [ %i.a, %._crit_edge.i.i ], [ %i.bi, %bb.f ], [ %i.cn, %.thread299.i.i ]
  %.5.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.bf, %bb.f ], [ %.0.lcssa.i.i, %.thread299.i.i ]
  %.not112.i.i = icmp ne i32 %.5.i.i, 0
  %i.co = icmp eq ptr %.4.i.i, null
  %i.cp = select i1 %.not112.i.i, i1 true, i1 %i.co
  %i.cq = ptrtoint ptr %.4294.i.i to i64
  %i.cr = ptrtoint ptr %3 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 1
  %cond.fr.i = freeze i1 %i.cp
  br i1 %cond.fr.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i: ; preds = %bb.c, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i, %bb.g
  br label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs.exit

_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16leEPKDimPDs.exit: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i
  %i.cu = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i ], [ %i.ct, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE0EEESt4pairIPKDiPDsES6_mS7_.exit.i ]
  ret i64 %i.cu
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
  %4 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.y, i32 -1431655766)
  %i.z = xor i32 %4, -1                           ; 2 uses
  %i.aa = add <16 x i32> %i.d, splat (i32 983040)
  %i.ab = shl <16 x i32> %i.d, splat (i32 16)
  %i.ac = and <16 x i32> %i.ab, splat (i32 67043328)
  %i.ad = lshr <16 x i32> %i.aa, splat (i32 10)
  %i.ae = and <16 x i32> %i.ad, splat (i32 1023)
  %i.af = or disjoint <16 x i32> %i.ac, splat (i32 -603924480)
  %i.ag = or disjoint <16 x i32> %i.af, %i.ae
  %i.ah = select <16 x i1> %i.u, <16 x i32> %i.ag, <16 x i32> %i.d
  %i.ai = bitcast <16 x i32> %i.ah to <64 x i8>
  %i.aj = shufflevector <64 x i8> %i.ai, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.ak = bitcast <64 x i8> %i.aj to <32 x i16>
  %i.al = bitcast i32 %i.z to <32 x i1>
  %i.am = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ak, <32 x i16> zeroinitializer, <32 x i1> %i.al)
  %i.an = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 2 uses
  %i.ao = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.an)
  %i.ap = bitcast i32 %i.ao to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.am, ptr align 1 %.0310330.i.i, <32 x i1> %i.ap)
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.0310330.i.i, i64 %i.aq
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.b
  %.2312.i.i = phi ptr [ %i.p, %bb.b ], [ %i.ar, %.thread.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.l, %bb.b ], [ %.0332.i.i, %.thread.i.i ] ; 2 uses
  %.2309.i.i = getelementptr inbounds nuw i8, ptr %.0308331.i.i, i64 64 ; 3 uses
  %i.as = ptrtoint ptr %.2309.i.i to i64
  %i.at = sub i64 %i.b, %i.as                     ; 2 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 15
  br i1 %i.av, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !305

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %.0310.lcssa.i.i = phi ptr [ %3, %bb.a ], [ %.2312.i.i, %bb.d ] ; 5 uses
  %.0308.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %.2309.i.i, %bb.d ] ; 4 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %.2.i.i, %bb.d ] ; 3 uses
  %.lcssa325.i.i = phi i64 [ %.idx.i.i, %bb.a ], [ %i.at, %bb.d ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %2, %bb.a ], [ %i.au, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %.0308.lcssa.i.i
  br i1 %.not.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aw = trunc i64 %.lcssa.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.aw
  %i.ax = trunc i32 %notmask.i.i to i16
  %i.ay = xor i16 %i.ax, -1                       ; 4 uses
  %i.az = bitcast i16 %i.ay to <16 x i1>          ; 2 uses
  %i.ba = tail call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.0308.lcssa.i.i, <16 x i1> %i.az, <16 x i32> zeroinitializer) ; 8 uses
  %i.bb = icmp ult <16 x i32> %i.ba, splat (i32 65536)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = and i16 %i.bc, %i.ay                    ; 4 uses
  %i.be = icmp eq i16 %i.bd, %i.ay
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = and <16 x i32> %i.ba, splat (i32 63488)
  %i.bg = icmp eq <16 x i32> %i.bf, splat (i32 55296)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = zext i16 %i.bh to i32
  %i.bj = or i32 %.0.lcssa.i.i, %i.bi
  %i.bk = trunc <16 x i32> %i.ba to <16 x i16>
  %i.bl = bitcast <16 x i16> %i.bk to <32 x i8>
  %i.bm = shufflevector <32 x i8> %i.bl, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.bn = bitcast <32 x i8> %i.bm to <16 x i16>
  tail call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bn, ptr align 1 %.0310.lcssa.i.i, <16 x i1> %i.az)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i.i, i64 %.lcssa.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i.i, i64 %.lcssa325.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bq = xor i16 %i.bd, %i.ay
  %i.br = and <16 x i32> %i.ba, splat (i32 63488)
  %i.bs = icmp eq <16 x i32> %i.br, splat (i32 55296)
  %i.bt = bitcast i16 %i.bd to <16 x i1>
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = icmp ugt <16 x i32> %i.ba, splat (i32 1114111)
  %i.bw = bitcast i16 %i.bq to <16 x i1>          ; 2 uses
  %i.bx = and <16 x i1> %i.bv, %i.bw
  %i.by = or <16 x i1> %i.bu, %i.bx
  %i.bz = bitcast <16 x i1> %i.by to i16
  %.not115.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not115.i.i, label %.thread319.i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, !prof !303

.thread319.i.i:                                   ; preds = %bb.g
  %i.ca = zext i16 %i.bd to i32
  %5 = tail call noundef i32 @llvm.pdep.i32(i32 range(i32 0, 65536) %i.ca, i32 -1431655766)
  %i.cb = lshr exact i64 %.lcssa325.i.i, 1
  %i.cc = trunc i64 %i.cb to i32
  %notmask114.i.i = shl nsw i32 -1, %i.cc
  %.demorgan.i.i = or i32 %5, %notmask114.i.i
  %i.cd = xor i32 %.demorgan.i.i, -1              ; 2 uses
  %i.ce = add <16 x i32> %i.ba, splat (i32 983040)
  %i.cf = shl <16 x i32> %i.ba, splat (i32 16)
  %i.cg = and <16 x i32> %i.cf, splat (i32 67043328)
  %i.ch = lshr <16 x i32> %i.ce, splat (i32 10)
  %i.ci = and <16 x i32> %i.ch, splat (i32 1023)
  %i.cj = or disjoint <16 x i32> %i.cg, splat (i32 -603924480)
  %i.ck = or disjoint <16 x i32> %i.cj, %i.ci
  %i.cl = select <16 x i1> %i.bw, <16 x i32> %i.ck, <16 x i32> %i.ba
  %i.cm = bitcast <16 x i32> %i.cl to <64 x i8>
  %i.cn = shufflevector <64 x i8> %i.cm, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  %i.co = bitcast <64 x i8> %i.cn to <32 x i16>
  %i.cp = bitcast i32 %i.cd to <32 x i1>
  %i.cq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.co, <32 x i16> zeroinitializer, <32 x i1> %i.cp)
  %i.cr = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.cd) ; 2 uses
  %i.cs = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 %i.cr)
  %i.ct = bitcast i32 %i.cs to <32 x i1>
  tail call void @llvm.masked.store.v32i16.p0(<32 x i16> %i.cq, ptr align 1 %.0310.lcssa.i.i, <32 x i1> %i.ct)
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.0310.lcssa.i.i, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0308.lcssa.i.i, i64 %.lcssa325.i.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i: ; preds = %.thread319.i.i, %bb.f, %._crit_edge.i.i
  %.4314.i.i = phi ptr [ %.0310.lcssa.i.i, %._crit_edge.i.i ], [ %i.bo, %bb.f ], [ %i.cv, %.thread319.i.i ]
  %.4.i.i = phi ptr [ %i.a, %._crit_edge.i.i ], [ %i.bp, %bb.f ], [ %i.cw, %.thread319.i.i ]
  %.5.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.bj, %bb.f ], [ %.0.lcssa.i.i, %.thread319.i.i ]
  %.not116.i.i = icmp ne i32 %.5.i.i, 0
  %i.cx = icmp eq ptr %.4.i.i, null
  %i.cy = select i1 %.not116.i.i, i1 true, i1 %i.cx
  %i.cz = ptrtoint ptr %.4314.i.i to i64
  %i.da = ptrtoint ptr %3 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 1
  %cond.fr.i = freeze i1 %i.cy
  br i1 %cond.fr.i, label %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i, label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs.exit

_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i: ; preds = %bb.c, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i, %bb.g
  br label %_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs.exit

_ZNK7simdutf7icelake14implementation24convert_utf32_to_utf16beEPKDimPDs.exit: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i
  %i.dd = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.thread.i ], [ %i.dc, %_ZN7simdutf7icelake12_GLOBAL__N_129avx512_convert_utf32_to_utf16ILNS_10endiannessE1EEESt4pairIPKDiPDsES6_mS7_.exit.i ]
  ret i64 %i.dd
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
  %i.be = zext <16 x i16> %i.bd to <16 x i32>
  store <16 x i32> %i.be, ptr %.0166177.i, align 1, !noalias !314
  %i.bf = getelementptr inbounds nuw i8, ptr %.0166177.i, i64 64
  %i.bg = bitcast <8 x i64> %i.d to <32 x i16>
  %i.bh = shufflevector <32 x i16> %i.bg, <32 x i16> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bi = zext <16 x i16> %i.bh to <16 x i32>
  store <16 x i32> %i.bi, ptr %i.bf, align 1, !noalias !314
  %i.bj = getelementptr inbounds nuw i8, ptr %.0166177.i, i64 128
  %i.bk = getelementptr inbounds nuw i8, ptr %.061179.i, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i
  %.2168.i = phi ptr [ %i.bj, %bb.c ], [ %i.ay, %.thread.i ] ; 2 uses
  %.366.i = phi i32 [ 0, %bb.c ], [ %i.bb, %.thread.i ] ; 2 uses
  %.3.i = phi ptr [ %i.bk, %bb.c ], [ %i.az, %.thread.i ] ; 3 uses
  %i.bl = ptrtoint ptr %.3.i to i64
  %i.bm = sub i64 %i.b, %i.bl
  %i.bn = icmp sgt i64 %i.bm, 62
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !317

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.bo = zext nneg i32 %.366.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0166.lcssa.i = phi ptr [ %3, %bb.a ], [ %.2168.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.063.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.bo, %._crit_edge.loopexit.i ]
  %.061.lcssa.i = phi ptr [ %1, %bb.a ], [ %.3.i, %._crit_edge.loopexit.i ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.061.lcssa.i, i64 %.063.lcssa.i ; 4 uses
  %i.bq = ptrtoint ptr %.0166.lcssa.i to i64      ; 2 uses
  %i.br = ptrtoint ptr %3 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.a
  br i1 %.not, label %_ZN7simdutf7icelake12_GLOBAL__N_122convert_utf16_to_utf32ILNS_10endiannessE0EEESt5tupleIJPKDsPDibEES6_mS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 1                 ; 2 uses
  %i.by = sub i64 %2, %i.bx                       ; 2 uses
  %.not56.i = icmp eq i64 %2, %i.bx
  br i1 %.not56.i, label %_ZN7simdutf7icelake12_GLOBAL__N_122convert_utf16_to_utf32ILNS_10endiannessE0EEESt5tupleIJPKDsPDibEES6_mS7_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.f, %bb.k
  %.03255.i = phi ptr [ %.436.i, %bb.k ], [ %.0166.lcssa.i, %bb.f ] ; 2 uses
  %.03754.i = phi i64 [ %i.cp, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %.03754.i
  %i.ca = load i16, ptr %i.bz, align 2            ; 2 uses
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 63488
  %.not.i18 = icmp eq i32 %i.cc, 55296
  br i1 %.not.i18, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i17
  %i.cd = add i16 %i.ca, 10240                    ; 2 uses
  %i.ce = zext i16 %i.cd to i32
  %i.cf = icmp ugt i16 %i.cd, 1023
  br i1 %i.cf, label %_ZN7simdutf7icelake12_GLOBAL__N_122convert_utf16_to_utf32ILNS_10endiannessE0EEESt5tupleIJPKDsPDibEES6_mS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = add nuw i64 %.03754.i, 1                ; 2 uses
  %.not49.i = icmp ult i64 %i.cg, %i.by
  br i1 %.not49.i, label %bb.i, label %_ZN7simdutf7icelake12_GLOBAL__N_122convert_utf16_to_utf32ILNS_10endiannessE0EEESt5tupleIJPKDsPDibEES6_mS7_.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = add i16 %i.ci, 9216                     ; 2 uses
  %i.ck = icmp ult i16 %i.cj, 1024
end_hunk_3
begin_hunk_4_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIDsEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gl, ptr %i.gn, align 8, !alias.scope !1405
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink.i, ptr %i.go, align 8, !alias.scope !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !1405
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestz.d(<32 x i1>, <32 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.masked.load.v32i8.p0(ptr captures(none), <32 x i1>, <32 x i8>) #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestc.q(<64 x i1>, <64 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestz.q(<64 x i1>, <64 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #39

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.02766 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.d ] ; 6 uses
  %i.a = sub nsw i64 0, %.02766                   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = icmp sgt i8 %i.c, -65
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i64 %.02766, 0
  %i.f = icmp sgt i8 %i.c, -1
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = add i64 %.02766, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.g, %0
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !1412

bb.e:                                             ; preds = %bb.c
  %i.h = sub i64 1, %.02766
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = sub i64 0, %0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.k = add i64 %.02766, %2
  %i.l = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef %3) ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.l, 1
  %.not33 = icmp eq i32 %i.m, 0
  %i.o = select i1 %.not33, i64 0, i64 %.02766
  %spec.select = sub i64 %i.n, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.4.3 = phi i64 [ %spec.select, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.sroa.0.3 = phi i32 [ %i.m, %bb.g ], [ 3, %bb.f ], [ 3, %bb.e ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.02766 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.d ] ; 6 uses
  %i.a = sub nsw i64 0, %.02766                   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = icmp sgt i8 %i.c, -65
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i64 %.02766, 0
  %i.f = icmp sgt i8 %i.c, -1
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = add i64 %.02766, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.g, %0
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !1413

bb.e:                                             ; preds = %bb.c
  %i.h = sub i64 1, %.02766
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = sub i64 0, %0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.k = add i64 %.02766, %2
  %i.l = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef %3) ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.l, 1
  %.not33 = icmp eq i32 %i.m, 0
  %i.o = select i1 %.not33, i64 0, i64 %.02766
  %spec.select = sub i64 %i.n, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.4.3 = phi i64 [ %spec.select, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.sroa.0.3 = phi i32 [ %i.m, %bb.g ], [ 3, %bb.f ], [ 3, %bb.e ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.expand.v16i32(<16 x i32>, <16 x i32>, <16 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i16.p0(<16 x i16>, ptr captures(none), <16 x i1>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16>, <32 x i16>, <32 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32>, <16 x i32>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32>, <16 x i32>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32>, <16 x i32>, <16 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v32i8.p0(<32 x i8>, ptr captures(none), <32 x i1>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr, <32 x i16>, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestc.d(<32 x i1>, <32 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8>, <64 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8>, <64 x i8>, <64 x i8>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16>, <32 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8>, <32 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.sadd.sat.v32i8(<32 x i8>, <32 x i8>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16>, <16 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pdep.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pext.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.pdep.i32(i32, i32) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.fshl.v16i32(<16 x i32>, <16 x i32>, <16 x i32>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v16i16(<16 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #39

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #34 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #39 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #41 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { builtin nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind }
attributes #48 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i64 2869435, i64 2869443}
!7 = !{i64 2869677, i64 2869686}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = distinct !{null}
!10 = !{ptr @_ZN7simdutf25get_active_implementationEv}
!11 = distinct !{ptr @_ZNK7simdutf8internal29available_implementation_list5beginEv, null}
!12 = distinct !{ptr @_ZNK7simdutf8internal29available_implementation_list3endEv, null}
!13 = !{ptr @_ZN7simdutf26get_default_implementationEv, ptr @_ZN7simdutf25get_active_implementationEv}
!14 = !{ptr @_ZN7simdutf23convert_utf8_to_utf16leEPKcmPDs}
!15 = !{ptr @_ZN7simdutf35convert_utf8_to_utf16le_with_errorsEPKcmPDs}
!16 = !{ptr @_ZN7simdutf16validate_utf16leEPKDsm}
!17 = !{ptr @_ZN7simdutf22to_well_formed_utf16leEPKDsmPDs}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = !{ptr @_ZN7simdutf28validate_utf16le_with_errorsEPKDsm}
!27 = !{ptr @_ZN7simdutf29convert_valid_utf8_to_utf16leEPKcmPDs}
!28 = !{ptr @_ZN7simdutf23convert_utf16le_to_utf8EPKDsmPc}
!29 = !{ptr @_ZN7simdutf21convert_utf16_to_utf8EPKDsmPc, ptr @_ZN7simdutf23convert_utf16le_to_utf8EPKDsmPc}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN7simdutf6scalar12_GLOBAL__N_113utf16_to_utf819convert_with_errorsILNS_10endiannessE0ELb1EEENS_11full_resultEPKDsmPcm: argument 0"}
!32 = distinct !{!32, !"_ZN7simdutf6scalar12_GLOBAL__N_113utf16_to_utf819convert_with_errorsILNS_10endiannessE0ELb1EEENS_11full_resultEPKDsmPcm"}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = !{!31, !34}
!39 = distinct !{!39, !21, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21, !40}
!44 = !{ptr @_ZN7simdutf25convert_utf16le_to_latin1EPKDsmPc}
!45 = !{ptr @_ZN7simdutf25convert_latin1_to_utf16leEPKcmPDs}
!46 = !{ptr @_ZN7simdutf35convert_utf16le_to_utf8_with_errorsEPKDsmPc}
!47 = !{ptr @_ZN7simdutf37convert_utf16le_to_latin1_with_errorsEPKDsmPc}
!48 = !{ptr @_ZN7simdutf29convert_valid_utf16le_to_utf8EPKDsmPc}
!49 = !{ptr @_ZN7simdutf31convert_valid_utf16le_to_latin1EPKDsmPc}
!50 = !{ptr @_ZN7simdutf24convert_utf32_to_utf16leEPKDimPDs}
!51 = !{ptr @_ZN7simdutf36convert_utf32_to_utf16le_with_errorsEPKDimPDs}
!52 = !{ptr @_ZN7simdutf30convert_valid_utf32_to_utf16leEPKDimPDs}
!53 = !{ptr @_ZN7simdutf24convert_utf16le_to_utf32EPKDsmPDi}
!54 = !{ptr @_ZN7simdutf36convert_utf16le_to_utf32_with_errorsEPKDsmPDi}
!55 = !{ptr @_ZN7simdutf30convert_valid_utf16le_to_utf32EPKDsmPDi}
!56 = !{ptr @_ZN7simdutf13count_utf16leEPKDsm}
!57 = !{ptr @_ZN7simdutf24utf8_length_from_utf16leEPKDsm}
!58 = !{ptr @_ZN7simdutf25utf32_length_from_utf16leEPKDsm}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !19}
!64 = !{ptr @_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE}
!65 = distinct !{!65, !21}
!66 = !{ptr @_ZN7simdutf22convert_latin1_to_utf8EPKcmPc}
!67 = distinct !{!67, !21}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN7simdutf6scalar12_GLOBAL__N_16base6434base64_to_binary_details_safe_implIcEENS_11full_resultEPKT_mPcmNS_14base64_optionsENS_27last_chunk_handling_optionsE: argument 0"}
!70 = distinct !{!70, !"_ZN7simdutf6scalar12_GLOBAL__N_16base6434base64_to_binary_details_safe_implIcEENS_11full_resultEPKT_mPcmNS_14base64_optionsENS_27last_chunk_handling_optionsE"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN7simdutf6scalar12_GLOBAL__N_16base6434base64_to_binary_details_safe_implIDsEENS_11full_resultEPKT_mPcmNS_14base64_optionsENS_27last_chunk_handling_optionsE: argument 0"}
!73 = distinct !{!73, !"_ZN7simdutf6scalar12_GLOBAL__N_16base6434base64_to_binary_details_safe_implIDsEENS_11full_resultEPKT_mPcmNS_14base64_optionsENS_27last_chunk_handling_optionsE"}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !21, !40, !41}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = distinct !{!97, !21, !40, !41}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !21, !40}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !21, !40, !41}
!106 = distinct !{!106, !21, !40, !41}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !21, !40}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !21, !40, !41}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !21, !40}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = !{!126}
!126 = distinct !{!126, !127}
!127 = distinct !{!127, !"LVerDomain"}
!128 = !{!129}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !21, !40, !41}
!131 = distinct !{!131, !21, !40, !41}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !21, !40}
!134 = !{!135}
!135 = distinct !{!135, !136}
!136 = distinct !{!136, !"LVerDomain"}
!137 = !{!138}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !21, !40, !41}
!140 = distinct !{!140, !21, !40, !41}
!141 = distinct !{!141, !19}
!142 = distinct !{!142, !21, !40}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
!145 = !{!146}
!146 = distinct !{!146, !147}
end_hunk_4
