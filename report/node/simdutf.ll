inline.NumInlined: 2176
inline.NumDeleted: 448
begin_hunk_0_@_ZNK7simdutf8westmere14implementation13count_utf16leEPKDsm:bb.a
  %exitcond.not.i = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1234

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit ], [ %i.bf, %middle.block ], [ %i.bl, %.lr.ph.i ]
  %i.bn = add i64 %.0.lcssa.i, %.011.i.lcssa
  ret i64 %i.bn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation13count_utf16beEPKDsm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i104 = phi i64 [ %i.ax, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i103 = phi i64 [ %i.aw, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i104 ; 4 uses
  %i.c = load <16 x i8>, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <16 x i8>, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <16 x i8>, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <16 x i8>, ptr %i.h, align 1
  %i.j = shufflevector <16 x i8> %i.c, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.k = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.l = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.m = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.n = bitcast <16 x i8> %i.j to <8 x i16>
  %i.o = add <8 x i16> %i.n, splat (i16 8192)
  %i.p = icmp ult <8 x i16> %i.o, splat (i16 -1024)
  %i.q = sext <8 x i1> %i.p to <8 x i16>
  %i.r = bitcast <16 x i8> %i.k to <8 x i16>
  %i.s = add <8 x i16> %i.r, splat (i16 8192)
  %i.t = icmp ult <8 x i16> %i.s, splat (i16 -1024)
  %i.u = sext <8 x i1> %i.t to <8 x i16>
  %i.v = bitcast <16 x i8> %i.l to <8 x i16>
  %i.w = add <8 x i16> %i.v, splat (i16 8192)
  %i.x = icmp ult <8 x i16> %i.w, splat (i16 -1024)
  %i.y = sext <8 x i1> %i.x to <8 x i16>
  %i.z = bitcast <16 x i8> %i.m to <8 x i16>
  %i.aa = add <8 x i16> %i.z, splat (i16 8192)
  %i.ab = icmp ult <8 x i16> %i.aa, splat (i16 -1024)
  %i.ac = sext <8 x i1> %i.ab to <8 x i16>
  %i.ad = bitcast <8 x i16> %i.q to <16 x i8>
  %i.ae = icmp slt <16 x i8> %i.ad, zeroinitializer
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = bitcast <8 x i16> %i.u to <16 x i8>
  %i.ah = icmp slt <16 x i8> %i.ag, zeroinitializer
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = bitcast <8 x i16> %i.y to <16 x i8>
  %i.ak = icmp slt <16 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = bitcast <8 x i16> %i.ac to <16 x i8>
  %i.an = icmp slt <16 x i8> %i.am, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %i.aq = insertelement <4 x i16> %i.ap, i16 %i.ai, i64 1
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.al, i64 2
  %i.as = insertelement <4 x i16> %i.ar, i16 %i.ao, i64 3
  %i.at = bitcast <4 x i16> %i.as to i64
  %i.au = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = lshr i64 %i.au, 1
  %i.aw = add i64 %i.av, %.011.i103               ; 2 uses
  %i.ax = add nuw i64 %.0.i104, 32                ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.a
  br i1 %i.ay, label %.lr.ph, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit, !llvm.loop !1235

_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.az = and i64 %2, -32
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.aw, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.az, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.bb = sub i64 %2, %.0.i.lcssa                 ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %n.vec = sub nuw i64 %i.bb, %n.mod.vf           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi110 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %wide.load = load <2 x i16>, ptr %i.bc, align 2
  %wide.load111 = load <2 x i16>, ptr %i.bd, align 2
  %i.be = and <2 x i16> %wide.load, splat (i16 252)
  %i.bf = and <2 x i16> %wide.load111, splat (i16 252)
  %i.bg = icmp ne <2 x i16> %i.be, splat (i16 220)
  %i.bh = icmp ne <2 x i16> %i.bf, splat (i16 220)
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi, %i.bi           ; 2 uses
  %i.bl = add <2 x i64> %vec.phi110, %i.bj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !1236

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader112

.lr.ph.i.preheader112:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i15.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bn, %middle.block ]
  %.0910.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader112, %.lr.ph.i
  %.011.i15 = phi i64 [ %i.bt, %.lr.ph.i ], [ %.011.i15.ph, %.lr.ph.i.preheader112 ]
  %.0910.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader112 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.0910.i
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = and i16 %i.bp, 252
  %i.br = icmp ne i16 %i.bq, 220
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %.011.i15, %i.bs                ; 2 uses
  %i.bu = add nuw i64 %.0910.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bb
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1237

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.bn, %middle.block ], [ %i.bt, %.lr.ph.i ]
  %i.bv = add i64 %.0.lcssa.i, %.011.i.lcssa
  ret i64 %i.bv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation10count_utf8EPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %.not.i58 = icmp ult i64 %2, 64
  br i1 %.not.i58, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.thread
  %.ph = phi i64 [ %i.x, %.thread ], [ 64, %bb.a ]
  %.0.i61.ph = phi i64 [ %i.a, %.thread ], [ 0, %bb.a ]
  %.sroa.023.059.ph = phi <2 x i64> [ %i.w, %.thread ], [ zeroinitializer, %bb.a ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.b
  %i.a = phi i64 [ %i.u, %bb.b ], [ %.ph, %.lr.ph.outer ] ; 7 uses
  %.0.i61 = phi i64 [ %i.a, %bb.b ], [ %.0.i61.ph, %.lr.ph.outer ]
  %.023.i60 = phi i64 [ %i.s, %bb.b ], [ 0, %.lr.ph.outer ]
  %i.b = phi <16 x i8> [ %i.r, %bb.b ], [ zeroinitializer, %.lr.ph.outer ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i61 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load <16 x i8>, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load <16 x i8>, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = icmp sgt <16 x i8> %i.d, splat (i8 -65)
  %.neg = zext <16 x i1> %i.k to <16 x i8>
  %i.l = icmp sgt <16 x i8> %i.f, splat (i8 -65)
  %.neg55 = zext <16 x i1> %i.l to <16 x i8>
  %i.m = icmp sgt <16 x i8> %i.h, splat (i8 -65)
  %.neg56 = zext <16 x i1> %i.m to <16 x i8>
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -65)
  %.neg57 = zext <16 x i1> %i.n to <16 x i8>
  %i.o = add <16 x i8> %i.b, %.neg
  %i.p = add <16 x i8> %i.o, %.neg55
  %i.q = add <16 x i8> %i.p, %.neg56
  %i.r = add <16 x i8> %i.q, %.neg57              ; 3 uses
  %i.s = add i64 %.023.i60, 1                     ; 3 uses
  %i.t = icmp eq i64 %i.s, 63
  br i1 %i.t, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = add i64 %i.a, 64                         ; 2 uses
  %.not.i = icmp ugt i64 %i.u, %2
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !1238

.thread:                                          ; preds = %.lr.ph
  %i.v = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> zeroinitializer)
  %i.w = add <2 x i64> %i.v, %.sroa.023.059.ph    ; 2 uses
  %i.x = add i64 %i.a, 64                         ; 2 uses
  %.not.i77 = icmp ugt i64 %i.x, %2
  br i1 %.not.i77, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit, label %.lr.ph.outer, !llvm.loop !1238

._crit_edge:                                      ; preds = %bb.b
  %i.y = icmp eq i64 %i.s, 0
  br i1 %i.y, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> zeroinitializer)
  %3 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.z)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit

_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit: ; preds = %.thread, %bb.a, %._crit_edge, %bb.c
  %.0.i.lcssa74 = phi i64 [ %i.a, %bb.c ], [ %i.a, %._crit_edge ], [ 0, %bb.a ], [ %i.a, %.thread ] ; 3 uses
  %.sroa.023.0.lcssa73 = phi <2 x i64> [ %.sroa.023.059.ph, %bb.c ], [ %.sroa.023.059.ph, %._crit_edge ], [ zeroinitializer, %bb.a ], [ %i.w, %.thread ]
  %.022.i = phi i64 [ %3, %bb.c ], [ 0, %._crit_edge ], [ 0, %bb.a ], [ 0, %.thread ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa74 ; 2 uses
  %i.ab = sub i64 %2, %.0.i.lcssa74               ; 4 uses
  %.not.i1 = icmp eq i64 %2, %.0.i.lcssa74
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %wide.load = load <2 x i8>, ptr %i.ac, align 1
  %wide.load96 = load <2 x i8>, ptr %i.ad, align 1
  %i.ae = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.af = icmp sgt <2 x i8> %wide.load96, splat (i8 -65)
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = zext <2 x i1> %i.af to <2 x i64>
  %i.ai = add <2 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.aj = add <2 x i64> %vec.phi95, %i.ah         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1239

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph.i.preheader101

.lr.ph.i.preheader101:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader101, %.lr.ph.i
  %.09.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader101 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader101 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.09.i
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp sgt i8 %i.an, -65
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i = add i64 %.078.i, %i.ap         ; 2 uses
  %i.aq = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %i.ab
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph.i, !llvm.loop !1240

_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit
  %.07.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit ], [ %i.al, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %4 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.sroa.023.0.lcssa73)
  %i.ar = add i64 %4, %.022.i
  %i.as = add i64 %i.ar, %.07.lcssa.i
  ret i64 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation23latin1_length_from_utf8EPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %.not.i58.i = icmp ult i64 %2, 64
  br i1 %.not.i58.i, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.a, %.thread.i
  %.ph.i = phi i64 [ %i.y, %.thread.i ], [ 64, %bb.a ] ; 3 uses
  %.0.i61.ph.i = phi i64 [ %i.a, %.thread.i ], [ 0, %bb.a ]
  %.sroa.023.059.ph.i = phi <2 x i64> [ %i.x, %.thread.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = add i64 %.ph.i, 3968                     ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.outer.i
  %i.b = phi i64 [ %i.v, %bb.b ], [ %.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %.0.i61.i = phi i64 [ %i.b, %bb.b ], [ %.0.i61.ph.i, %.lr.ph.outer.i ]
  %.023.i60.i = phi i64 [ %i.t, %bb.b ], [ 0, %.lr.ph.outer.i ]
  %i.c = phi <16 x i8> [ %i.s, %bb.b ], [ zeroinitializer, %.lr.ph.outer.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i61.i ; 4 uses
  %i.e = load <16 x i8>, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <16 x i8>, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load <16 x i8>, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <16 x i8>, ptr %i.j, align 1
  %i.l = icmp sgt <16 x i8> %i.e, splat (i8 -65)
  %.neg.i = zext <16 x i1> %i.l to <16 x i8>
  %i.m = icmp sgt <16 x i8> %i.g, splat (i8 -65)
  %.neg55.i = zext <16 x i1> %i.m to <16 x i8>
  %i.n = icmp sgt <16 x i8> %i.i, splat (i8 -65)
  %.neg56.i = zext <16 x i1> %i.n to <16 x i8>
  %i.o = icmp sgt <16 x i8> %i.k, splat (i8 -65)
  %.neg57.i = zext <16 x i1> %i.o to <16 x i8>
  %i.p = add <16 x i8> %i.c, %.neg.i
  %i.q = add <16 x i8> %i.p, %.neg55.i
  %i.r = add <16 x i8> %i.q, %.neg56.i
  %i.s = add <16 x i8> %i.r, %.neg57.i            ; 3 uses
  %i.t = add nuw nsw i64 %.023.i60.i, 1           ; 2 uses
  %i.u = icmp eq i64 %i.t, 63
  br i1 %i.u, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = add i64 %i.b, 64                         ; 2 uses
  %.not.i.i = icmp ugt i64 %i.v, %2
  br i1 %.not.i.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1238

.thread.i:                                        ; preds = %.lr.ph.i
  %i.w = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.s, <16 x i8> zeroinitializer)
  %i.x = add <2 x i64> %i.w, %.sroa.023.059.ph.i  ; 2 uses
  %i.y = add i64 %.ph.i, 4032                     ; 2 uses
  %.not.i77.i = icmp ugt i64 %i.y, %2
  br i1 %.not.i77.i, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i, label %.lr.ph.outer.i, !llvm.loop !1238

._crit_edge.i:                                    ; preds = %bb.b
  %i.z = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.s, <16 x i8> zeroinitializer)
  %3 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.z)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i

_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i: ; preds = %.thread.i, %._crit_edge.i, %bb.a
  %.0.i.lcssa74.i = phi i64 [ %i.b, %._crit_edge.i ], [ 0, %bb.a ], [ %i.a, %.thread.i ] ; 3 uses
  %.sroa.023.0.lcssa73.i = phi <2 x i64> [ %.sroa.023.059.ph.i, %._crit_edge.i ], [ zeroinitializer, %bb.a ], [ %i.x, %.thread.i ]
  %.022.i.i = phi i64 [ %3, %._crit_edge.i ], [ 0, %bb.a ], [ 0, %.thread.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa74.i ; 2 uses
  %i.ab = sub i64 %2, %.0.i.lcssa74.i             ; 4 uses
  %.not.i1.i = icmp eq i64 %2, %.0.i.lcssa74.i
  br i1 %.not.i1.i, label %_ZNK7simdutf8westmere14implementation10count_utf8EPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi31 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %wide.load = load <2 x i8>, ptr %i.ac, align 1
  %wide.load32 = load <2 x i8>, ptr %i.ad, align 1
  %i.ae = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.af = icmp sgt <2 x i8> %wide.load32, splat (i8 -65)
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = zext <2 x i1> %i.af to <2 x i64>
  %i.ai = add <2 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.aj = add <2 x i64> %vec.phi31, %i.ah         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1241

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNK7simdutf8westmere14implementation10count_utf8EPKcm.exit, label %.lr.ph.i.i.preheader37

.lr.ph.i.i.preheader37:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader37, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader37 ] ; 2 uses
  %.078.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader37 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.09.i.i
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp sgt i8 %i.an, -65
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i.i = add i64 %.078.i.i, %i.ap     ; 2 uses
  %i.aq = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aq, %i.ab
  br i1 %exitcond.not.i.i, label %_ZNK7simdutf8westmere14implementation10count_utf8EPKcm.exit, label %.lr.ph.i.i, !llvm.loop !1242

_ZNK7simdutf8westmere14implementation10count_utf8EPKcm.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i
  %.07.lcssa.i.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit.i ], [ %i.al, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %4 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.sroa.023.0.lcssa73.i)
  %i.ar = add i64 %4, %.022.i.i
  %i.as = add i64 %i.ar, %.07.lcssa.i.i
  ret i64 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation24utf8_length_from_utf16leEPKDsm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = and i64 %2, -8                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.i44 = phi i64 [ %i.af, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.027.i43 = phi i64 [ %.1.i, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.028.i42 = phi i64 [ %.129.i, %bb.c ], [ 32767, %bb.a ]
  %.sroa.010.041 = phi <2 x i64> [ %.sroa.010.1, %bb.c ], [ zeroinitializer, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i44
  %i.c = load <8 x i16>, ptr %i.b, align 1        ; 2 uses
  %i.d = and <8 x i16> %i.c, splat (i16 -2048)    ; 2 uses
  %i.e = icmp eq <8 x i16> %i.d, splat (i16 -10240)
  %i.f = sext <8 x i1> %i.e to <8 x i16>
  %i.g = icmp ugt <8 x i16> %i.c, splat (i16 127)
  %i.h = zext <8 x i1> %i.g to <8 x i16>
  %i.i = icmp ne <8 x i16> %i.d, zeroinitializer
  %i.j = zext <8 x i1> %i.i to <8 x i16>
  %i.k = bitcast <2 x i64> %.sroa.010.041 to <8 x i16>
  %i.l = add <8 x i16> %i.h, %i.k
  %i.m = add <8 x i16> %i.l, %i.j
  %i.n = add <8 x i16> %i.m, %i.f                 ; 3 uses
  %i.o = bitcast <8 x i16> %i.n to <2 x i64>
  %i.p = add i64 %.028.i42, -1                    ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.r = bitcast <8 x i16> %i.n to <4 x i32>
  %i.s = lshr <4 x i32> %i.r, splat (i32 16)
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = and <4 x i32> %i.t, splat (i32 65535)
  %i.v = add nuw nsw <4 x i32> %i.u, %i.s         ; 2 uses
  %i.w = bitcast <4 x i32> %i.v to <2 x i64>
  %i.x = bitcast <4 x i32> %i.v to <2 x i64>
  %i.y = and <2 x i64> %i.x, splat (i64 131071)
  %i.z = lshr <2 x i64> %i.w, splat (i64 32)
  %i.aa = add nuw nsw <2 x i64> %i.y, %i.z        ; 2 uses
  %i.ab = extractelement <2 x i64> %i.aa, i64 0
  %i.ac = extractelement <2 x i64> %i.aa, i64 1
  %i.ad = add i64 %i.ac, %.027.i43
  %i.ae = add i64 %i.ad, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.010.1 = phi <2 x i64> [ zeroinitializer, %bb.b ], [ %i.o, %.lr.ph ] ; 2 uses
  %.129.i = phi i64 [ 32767, %bb.b ], [ %i.p, %.lr.ph ]
  %.1.i = phi i64 [ %i.ae, %bb.b ], [ %.027.i43, %.lr.ph ] ; 2 uses
  %i.af = add nuw i64 %.0.i44, 8                  ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.a
  br i1 %i.ag, label %.lr.ph, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit.loopexit, !llvm.loop !1243

_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit.loopexit: ; preds = %bb.c
  %i.ah = and i64 %2, -8
  %i.ai = bitcast <2 x i64> %.sroa.010.1 to <4 x i32>
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit.loopexit, %bb.a
  %.sroa.010.0.lcssa = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.ai, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit.loopexit ] ; 2 uses
  %.027.i.lcssa = phi i64 [ 0, %bb.a ], [ %.1.i, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit.loopexit ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.ak = sub i64 %2, %.0.i.lcssa                 ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %n.vec = sub nuw i64 %i.ak, %n.mod.vf           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi50 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %wide.load = load <2 x i16>, ptr %i.al, align 2 ; 3 uses
  %wide.load51 = load <2 x i16>, ptr %i.am, align 2 ; 3 uses
  %i.an = add <2 x i64> %vec.phi, splat (i64 1)
  %i.ao = add <2 x i64> %vec.phi50, splat (i64 1)
  %i.ap = icmp ugt <2 x i16> %wide.load, splat (i16 127)
  %i.aq = icmp ugt <2 x i16> %wide.load51, splat (i16 127)
  %i.ar = zext <2 x i1> %i.ap to <2 x i64>
  %i.as = zext <2 x i1> %i.aq to <2 x i64>
  %i.at = add <2 x i64> %i.an, %i.ar
  %i.au = add <2 x i64> %i.ao, %i.as
  %i.av = add <2 x i16> %wide.load, splat (i16 -2048)
  %i.aw = add <2 x i16> %wide.load51, splat (i16 -2048)
  %i.ax = icmp ult <2 x i16> %i.av, splat (i16 -12288)
  %i.ay = icmp ult <2 x i16> %i.aw, splat (i16 -12288)
  %i.az = icmp ugt <2 x i16> %wide.load, splat (i16 -8193)
  %i.ba = icmp ugt <2 x i16> %wide.load51, splat (i16 -8193)
  %i.bb = or <2 x i1> %i.az, %i.ax
  %i.bc = or <2 x i1> %i.ba, %i.ay
  %i.bd = zext <2 x i1> %i.bb to <2 x i64>
  %i.be = zext <2 x i1> %i.bc to <2 x i64>
  %i.bf = add <2 x i64> %i.at, %i.bd              ; 2 uses
  %i.bg = add <2 x i64> %i.au, %i.be              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1244

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i.preheader54

.lr.ph.i.preheader54:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.018.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bi, %middle.block ]
  %.01617.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader54, %.lr.ph.i
  %.018.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.018.i.ph, %.lr.ph.i.preheader54 ]
  %.01617.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.01617.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.01617.i
  %i.bk = load i16, ptr %i.bj, align 2            ; 3 uses
  %i.bl = add i64 %.018.i, 1
  %i.bm = icmp ugt i16 %i.bk, 127
  %i.bn = zext i1 %i.bm to i64
  %i.bo = add i64 %i.bl, %i.bn
  %i.bp = add i16 %i.bk, -2048
  %or.cond.i = icmp ult i16 %i.bp, -12288
  %i.bq = icmp ugt i16 %i.bk, -8193
  %i.br = or i1 %i.bq, %or.cond.i
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %i.bo, %i.bs                    ; 2 uses
  %i.bu = add nuw i64 %.01617.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.ak
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1245

_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE0EEEmPKDsm.exit ], [ %i.bi, %middle.block ], [ %i.bt, %.lr.ph.i ]
  %i.bv = and <4 x i32> %.sroa.010.0.lcssa, splat (i32 65535)
  %i.bw = lshr <4 x i32> %.sroa.010.0.lcssa, splat (i32 16)
  %i.bx = add nuw nsw <4 x i32> %i.bv, %i.bw      ; 2 uses
  %i.by = bitcast <4 x i32> %i.bx to <2 x i64>
  %i.bz = bitcast <4 x i32> %i.bx to <2 x i64>
  %i.ca = and <2 x i64> %i.bz, splat (i64 131071)
  %i.cb = lshr <2 x i64> %i.by, splat (i64 32)
  %i.cc = add nuw nsw <2 x i64> %i.ca, %i.cb      ; 2 uses
  %i.cd = extractelement <2 x i64> %i.cc, i64 0
  %i.ce = extractelement <2 x i64> %i.cc, i64 1
  %i.cf = add i64 %i.ce, %.027.i.lcssa
  %i.cg = add i64 %i.cf, %i.cd
  %i.ch = add i64 %i.cg, %.0.lcssa.i
  ret i64 %i.ch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation24utf8_length_from_utf16beEPKDsm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = and i64 %2, -8                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.i44 = phi i64 [ %i.ai, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.027.i43 = phi i64 [ %.1.i, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.028.i42 = phi i64 [ %.129.i, %bb.c ], [ 32767, %bb.a ]
  %.sroa.010.041 = phi <2 x i64> [ %.sroa.010.1, %bb.c ], [ zeroinitializer, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i44
  %i.c = load <16 x i8>, ptr %i.b, align 1
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.e = bitcast <16 x i8> %i.d to <8 x i16>
  %i.f = bitcast <16 x i8> %i.d to <8 x i16>
  %i.g = and <8 x i16> %i.f, splat (i16 -2048)    ; 2 uses
  %i.h = icmp eq <8 x i16> %i.g, splat (i16 -10240)
  %i.i = sext <8 x i1> %i.h to <8 x i16>
  %i.j = icmp ugt <8 x i16> %i.e, splat (i16 127)
  %i.k = zext <8 x i1> %i.j to <8 x i16>
  %i.l = icmp ne <8 x i16> %i.g, zeroinitializer
  %i.m = zext <8 x i1> %i.l to <8 x i16>
  %i.n = bitcast <2 x i64> %.sroa.010.041 to <8 x i16>
  %i.o = add <8 x i16> %i.k, %i.n
  %i.p = add <8 x i16> %i.o, %i.m
  %i.q = add <8 x i16> %i.p, %i.i                 ; 3 uses
  %i.r = bitcast <8 x i16> %i.q to <2 x i64>
  %i.s = add i64 %.028.i42, -1                    ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.u = bitcast <8 x i16> %i.q to <4 x i32>
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = bitcast <8 x i16> %i.q to <4 x i32>
end_hunk_0
begin_hunk_1_@_ZNK7simdutf8westmere14implementation25utf32_length_from_utf16leEPKDsm:bb.a
  %i.bn = add i64 %.0.lcssa.i, %.011.i.i.lcssa
  ret i64 %i.bn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation25utf32_length_from_utf16beEPKDsm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i103 = phi i64 [ %i.ax, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i.i102 = phi i64 [ %i.aw, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i103 ; 4 uses
  %i.c = load <16 x i8>, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <16 x i8>, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <16 x i8>, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <16 x i8>, ptr %i.h, align 1
  %i.j = shufflevector <16 x i8> %i.c, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.k = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.l = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.m = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.n = bitcast <16 x i8> %i.j to <8 x i16>
  %i.o = add <8 x i16> %i.n, splat (i16 8192)
  %i.p = icmp ult <8 x i16> %i.o, splat (i16 -1024)
  %i.q = sext <8 x i1> %i.p to <8 x i16>
  %i.r = bitcast <16 x i8> %i.k to <8 x i16>
  %i.s = add <8 x i16> %i.r, splat (i16 8192)
  %i.t = icmp ult <8 x i16> %i.s, splat (i16 -1024)
  %i.u = sext <8 x i1> %i.t to <8 x i16>
  %i.v = bitcast <16 x i8> %i.l to <8 x i16>
  %i.w = add <8 x i16> %i.v, splat (i16 8192)
  %i.x = icmp ult <8 x i16> %i.w, splat (i16 -1024)
  %i.y = sext <8 x i1> %i.x to <8 x i16>
  %i.z = bitcast <16 x i8> %i.m to <8 x i16>
  %i.aa = add <8 x i16> %i.z, splat (i16 8192)
  %i.ab = icmp ult <8 x i16> %i.aa, splat (i16 -1024)
  %i.ac = sext <8 x i1> %i.ab to <8 x i16>
  %i.ad = bitcast <8 x i16> %i.q to <16 x i8>
  %i.ae = icmp slt <16 x i8> %i.ad, zeroinitializer
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = bitcast <8 x i16> %i.u to <16 x i8>
  %i.ah = icmp slt <16 x i8> %i.ag, zeroinitializer
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = bitcast <8 x i16> %i.y to <16 x i8>
  %i.ak = icmp slt <16 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = bitcast <8 x i16> %i.ac to <16 x i8>
  %i.an = icmp slt <16 x i8> %i.am, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %i.aq = insertelement <4 x i16> %i.ap, i16 %i.ai, i64 1
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.al, i64 2
  %i.as = insertelement <4 x i16> %i.ar, i16 %i.ao, i64 3
  %i.at = bitcast <4 x i16> %i.as to i64
  %i.au = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = lshr i64 %i.au, 1
  %i.aw = add i64 %i.av, %.011.i.i102             ; 2 uses
  %i.ax = add nuw i64 %.0.i.i103, 32              ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.a
  br i1 %i.ay, label %.lr.ph, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit, !llvm.loop !1235

_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.az = and i64 %2, -32
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.aw, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit ]
  %.0.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.az, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i.lcssa ; 2 uses
  %i.bb = sub i64 %2, %.0.i.i.lcssa               ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.i.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %n.vec = sub nuw i64 %i.bb, %n.mod.vf           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi109 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %wide.load = load <2 x i16>, ptr %i.bc, align 2
  %wide.load110 = load <2 x i16>, ptr %i.bd, align 2
  %i.be = and <2 x i16> %wide.load, splat (i16 252)
  %i.bf = and <2 x i16> %wide.load110, splat (i16 252)
  %i.bg = icmp ne <2 x i16> %i.be, splat (i16 220)
  %i.bh = icmp ne <2 x i16> %i.bf, splat (i16 220)
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi, %i.bi           ; 2 uses
  %i.bl = add <2 x i64> %vec.phi109, %i.bj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !1258

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader111

.lr.ph.i.preheader111:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bn, %middle.block ]
  %.0910.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader111, %.lr.ph.i
  %.011.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader111 ]
  %.0910.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader111 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.0910.i
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = and i16 %i.bp, 252
  %i.br = icmp ne i16 %i.bq, 220
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %.011.i, %i.bs                  ; 2 uses
  %i.bu = add nuw i64 %.0910.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bb
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1259

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.bn, %middle.block ], [ %i.bt, %.lr.ph.i ]
  %i.bv = add i64 %.0.lcssa.i, %.011.i.i.lcssa
  ret i64 %i.bv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf16_length_from_utf8EPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %.not.i40 = icmp ult i64 %2, 16
  br i1 %.not.i40, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.thread
  %.ph = phi i64 [ %i.aa, %.thread ], [ 16, %bb.a ]
  %.016.i42.ph = phi i64 [ %i.l, %.thread ], [ 0, %bb.a ]
  %.sroa.015.041.ph = phi <2 x i64> [ %i.z, %.thread ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i42.ph
  %i.b = load <16 x i8>, ptr %i.a, align 1        ; 2 uses
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -65)
  %.neg77 = zext <16 x i1> %i.c to <16 x i8>
  %i.d = icmp ugt <16 x i8> %i.b, splat (i8 -17)
  %.neg3978 = zext <16 x i1> %i.d to <16 x i8>
  %i.e = add nuw nsw <16 x i8> %.neg77, %.neg3978
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.g = load <16 x i8>, ptr %i.f, align 1        ; 2 uses
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -65)
  %.neg = zext <16 x i1> %i.h to <16 x i8>
  %i.i = icmp ugt <16 x i8> %i.g, splat (i8 -17)
  %.neg39 = zext <16 x i1> %i.i to <16 x i8>
  %i.j = add <16 x i8> %i.v, %.neg
  %i.k = add <16 x i8> %i.j, %.neg39              ; 2 uses
  %i.l = add i64 %i.w, 32                         ; 4 uses
  %.not.i.1 = icmp ugt i64 %i.l, %2
  br i1 %.not.i.1, label %._crit_edge, label %.lr.ph.1, !llvm.loop !1260

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.n = load <16 x i8>, ptr %i.m, align 1        ; 2 uses
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -65)
  %.neg.1 = zext <16 x i1> %i.o to <16 x i8>
  %i.p = icmp ugt <16 x i8> %i.n, splat (i8 -17)
  %.neg39.1 = zext <16 x i1> %i.p to <16 x i8>
  %i.q = add <16 x i8> %i.k, %.neg.1
  %i.r = add <16 x i8> %i.q, %.neg39.1            ; 2 uses
  %i.s = add nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.t = icmp eq i64 %i.s, 127
  br i1 %i.t, label %.thread, label %bb.b, !llvm.loop !1260

bb.b:                                             ; preds = %.lr.ph.1, %.lr.ph.outer
  %i.u = phi i64 [ 1, %.lr.ph.outer ], [ %i.s, %.lr.ph.1 ]
  %i.v = phi <16 x i8> [ %i.e, %.lr.ph.outer ], [ %i.r, %.lr.ph.1 ] ; 2 uses
  %i.w = phi i64 [ %.ph, %.lr.ph.outer ], [ %i.l, %.lr.ph.1 ] ; 5 uses
  %i.x = add i64 %i.w, 16                         ; 3 uses
  %.not.i = icmp ugt i64 %i.x, %2
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !1260

.thread:                                          ; preds = %.lr.ph.1
  %i.y = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> zeroinitializer)
  %i.z = add <2 x i64> %i.y, %.sroa.015.041.ph    ; 2 uses
  %i.aa = add i64 %i.w, 48                        ; 2 uses
  %.not.i59 = icmp ugt i64 %i.aa, %2
  br i1 %.not.i59, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit, label %.lr.ph.outer, !llvm.loop !1260

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa91 = phi <16 x i8> [ %i.v, %bb.b ], [ %i.k, %.lr.ph ]
  %.lcssa89 = phi i64 [ %i.w, %bb.b ], [ %i.x, %.lr.ph ]
  %i.ab = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa91, <16 x i8> zeroinitializer)
  %3 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ab)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit

_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit: ; preds = %.thread, %bb.a, %._crit_edge
  %.016.i.lcssa56 = phi i64 [ %.lcssa89, %._crit_edge ], [ 0, %bb.a ], [ %i.l, %.thread ] ; 3 uses
  %.sroa.015.0.lcssa55 = phi <2 x i64> [ %.sroa.015.041.ph, %._crit_edge ], [ zeroinitializer, %bb.a ], [ %i.z, %.thread ]
  %.017.i = phi i64 [ %3, %._crit_edge ], [ 0, %bb.a ], [ 0, %.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i.lcssa56 ; 2 uses
  %i.ad = sub i64 %2, %.016.i.lcssa56             ; 4 uses
  %.not.i2 = icmp eq i64 %2, %.016.i.lcssa56
  br i1 %.not.i2, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ad, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi79 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %wide.load = load <2 x i8>, ptr %i.ae, align 1  ; 2 uses
  %wide.load80 = load <2 x i8>, ptr %i.af, align 1 ; 2 uses
  %i.ag = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.ah = icmp sgt <2 x i8> %wide.load80, splat (i8 -65)
  %i.ai = zext <2 x i1> %i.ag to <2 x i64>
  %i.aj = zext <2 x i1> %i.ah to <2 x i64>
  %i.ak = add <2 x i64> %vec.phi, %i.ai
  %i.al = add <2 x i64> %vec.phi79, %i.aj
  %i.am = icmp ugt <2 x i8> %wide.load, splat (i8 -17)
  %i.an = icmp ugt <2 x i8> %wide.load80, splat (i8 -17)
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %i.ak, %i.ao              ; 2 uses
  %i.ar = add <2 x i64> %i.al, %i.ap              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1261

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.01011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %.012.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader85 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.012.i
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -65
  %i.ax = zext i1 %i.aw to i64
  %spec.select.i = add i64 %.01011.i, %i.ax
  %i.ay = icmp ugt i8 %i.av, -17
  %i.az = zext i1 %i.ay to i64
  %.2.i = add i64 %spec.select.i, %i.az           ; 2 uses
  %i.ba = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %i.ad
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i, !llvm.loop !1262

_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit
  %.010.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit ], [ %i.at, %middle.block ], [ %.2.i, %.lr.ph.i ]
  %4 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.sroa.015.0.lcssa55)
  %i.bb = add i64 %4, %.017.i
  %i.bc = add i64 %i.bb, %.010.lcssa.i
  ret i64 %i.bc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf8_length_from_utf32EPKDim(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = lshr i64 %2, 4                           ; 2 uses
  %.not.i73 = icmp eq i64 %i.a, 0
  br i1 %.not.i73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i76 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0141.i75 = phi i64 [ %op.rdx111, %bb.b ], [ 0, %bb.a ]
  %.0144.i74 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.0144.i74, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub i64 %.0144.i74, %i.b                 ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 6
  %scevgep = getelementptr i8, ptr %.0.i76, i64 %i.d ; 2 uses
  %i.e = sext <4 x i32> %i.ax to <4 x i64>
  %i.f = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.e)
  %op.rdx111 = add i64 %i.f, %.0141.i75           ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !1263

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.1.i72 = phi ptr [ %.0.i76, %.lr.ph ], [ %i.ay, %bb.c ] ; 5 uses
  %.0145.i71 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.c ]
  %i.g = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.ax, %bb.c ]
  %i.h = load <4 x i32>, ptr %.1.i72, align 1     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %i.j = load <4 x i32>, ptr %i.i, align 1        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i72, i64 32
  %i.l = load <4 x i32>, ptr %i.k, align 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i72, i64 48
  %i.n = load <4 x i32>, ptr %i.m, align 1        ; 3 uses
  %i.o = icmp ugt <4 x i32> %i.h, splat (i32 127)
  %i.p = zext <4 x i1> %i.o to <4 x i32>
  %i.q = add <4 x i32> %i.g, %i.p
  %i.r = icmp ugt <4 x i32> %i.j, splat (i32 127)
  %i.s = zext <4 x i1> %i.r to <4 x i32>
  %i.t = icmp ugt <4 x i32> %i.l, splat (i32 127)
  %i.u = zext <4 x i1> %i.t to <4 x i32>
  %i.v = icmp ugt <4 x i32> %i.n, splat (i32 127)
  %i.w = zext <4 x i1> %i.v to <4 x i32>
  %i.x = icmp ugt <4 x i32> %i.h, splat (i32 2047)
  %i.y = zext <4 x i1> %i.x to <4 x i32>
  %i.z = icmp ugt <4 x i32> %i.j, splat (i32 2047)
  %i.aa = zext <4 x i1> %i.z to <4 x i32>
  %i.ab = icmp ugt <4 x i32> %i.l, splat (i32 2047)
  %i.ac = zext <4 x i1> %i.ab to <4 x i32>
  %i.ad = icmp ugt <4 x i32> %i.n, splat (i32 2047)
  %i.ae = zext <4 x i1> %i.ad to <4 x i32>
  %i.af = icmp ugt <4 x i32> %i.h, splat (i32 65535)
  %i.ag = zext <4 x i1> %i.af to <4 x i32>
  %i.ah = icmp ugt <4 x i32> %i.j, splat (i32 65535)
  %i.ai = zext <4 x i1> %i.ah to <4 x i32>
  %i.aj = icmp ugt <4 x i32> %i.l, splat (i32 65535)
  %i.ak = zext <4 x i1> %i.aj to <4 x i32>
  %i.al = icmp ugt <4 x i32> %i.n, splat (i32 65535)
  %i.am = zext <4 x i1> %i.al to <4 x i32>
  %i.an = add <4 x i32> %i.q, %i.y
  %i.ao = add <4 x i32> %i.an, %i.ag
  %i.ap = add <4 x i32> %i.ao, %i.s
  %i.aq = add <4 x i32> %i.ap, %i.aa
  %i.ar = add <4 x i32> %i.aq, %i.ai
  %i.as = add <4 x i32> %i.ar, %i.u
  %i.at = add <4 x i32> %i.as, %i.ac
  %i.au = add <4 x i32> %i.at, %i.ak
  %i.av = add <4 x i32> %i.au, %i.w
  %i.aw = add <4 x i32> %i.av, %i.ae
  %i.ax = add <4 x i32> %i.aw, %i.am              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i72, i64 64
  %i.az = add nuw nsw i64 %.0145.i71, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1264

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0141.i.lcssa = phi i64 [ 0, %bb.a ], [ %op.rdx111, %bb.b ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %bb.b ] ; 2 uses
  %i.ba = lshr i64 %2, 2
  %i.bb = and i64 %i.ba, 3                        ; 2 uses
  %.not149.i80 = icmp eq i64 %i.bb, 0
  br i1 %.not149.i80, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge, %bb.d
  %.2.i83 = phi ptr [ %scevgep95, %bb.d ], [ %.0.i.lcssa, %._crit_edge ] ; 2 uses
  %.1142.i82 = phi i64 [ %op.rdx, %bb.d ], [ %.0141.i.lcssa, %._crit_edge ]
  %.0146.i81 = phi i64 [ %i.bd, %bb.d ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bc = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.0146.i81, i64 1431655765) ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.bd = sub i64 %.0146.i81, %i.bc               ; 2 uses
  %i.be = shl nuw nsw i64 %i.bc, 4
  %scevgep95 = getelementptr i8, ptr %.2.i83, i64 %i.be ; 2 uses
  %i.bf = sext <4 x i32> %i.br to <4 x i64>
  %i.bg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bf)
  %op.rdx = add i64 %i.bg, %.1142.i82             ; 2 uses
  %.not149.i = icmp eq i64 %i.bd, 0
  br i1 %.not149.i, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph85, !llvm.loop !1265

bb.e:                                             ; preds = %.lr.ph85, %bb.e
  %.3.i79 = phi ptr [ %.2.i83, %.lr.ph85 ], [ %i.bs, %bb.e ] ; 2 uses
  %.0147.i78 = phi i64 [ 0, %.lr.ph85 ], [ %i.bt, %bb.e ]
  %i.bh = phi <4 x i32> [ zeroinitializer, %.lr.ph85 ], [ %i.br, %bb.e ]
  %i.bi = load <4 x i32>, ptr %.3.i79, align 1    ; 3 uses
  %i.bj = icmp ugt <4 x i32> %i.bi, splat (i32 127)
  %i.bk = zext <4 x i1> %i.bj to <4 x i32>
  %i.bl = add <4 x i32> %i.bh, %i.bk
  %i.bm = icmp ugt <4 x i32> %i.bi, splat (i32 2047)
  %i.bn = zext <4 x i1> %i.bm to <4 x i32>
  %i.bo = add <4 x i32> %i.bl, %i.bn
  %i.bp = icmp ugt <4 x i32> %i.bi, splat (i32 65535)
  %i.bq = zext <4 x i1> %i.bp to <4 x i32>
  %i.br = add <4 x i32> %i.bo, %i.bq              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3.i79, i64 16
  %i.bt = add nuw nsw i64 %.0147.i78, 1           ; 2 uses
  %exitcond96.not = icmp eq i64 %i.bt, %i.bc
  br i1 %exitcond96.not, label %bb.d, label %bb.e, !llvm.loop !1266

_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %bb.d, %._crit_edge
  %.1142.i.lcssa = phi i64 [ %.0141.i.lcssa, %._crit_edge ], [ %op.rdx, %bb.d ]
  %.2.i.lcssa = phi ptr [ %.0.i.lcssa, %._crit_edge ], [ %scevgep95, %bb.d ] ; 5 uses
  %i.bu = and i64 %2, 3                           ; 3 uses
  %.not.i1 = icmp eq i64 %i.bu, 0
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %i.bv = load i32, ptr %.2.i.lcssa, align 4      ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, 127
  %i.bx = select i1 %i.bw, i64 2, i64 1
  %i.by = icmp ugt i32 %i.bv, 2047
  %i.bz = zext i1 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bx, %i.bz
  %i.cb = icmp ugt i32 %i.bv, 65535
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.ca, %i.cc            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, 1
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ce = add nuw nsw i64 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 4
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = icmp ugt i32 %i.cg, 127
  %i.ci = zext i1 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ce, %i.ci
  %i.ck = icmp ugt i32 %i.cg, 2047
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.cj, %i.cl
  %i.cn = icmp ugt i32 %i.cg, 65535
  %i.co = zext i1 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.cm, %i.co            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bu, 2
  br i1 %exitcond.not.i.1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.cq = add i64 %i.cp, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 8
  %i.cs = load i32, ptr %i.cr, align 4            ; 3 uses
  %i.ct = icmp ugt i32 %i.cs, 127
  %i.cu = zext i1 %i.ct to i64
  %i.cv = add i64 %i.cq, %i.cu
  %i.cw = icmp ugt i32 %i.cs, 2047
  %i.cx = zext i1 %i.cw to i64
  %i.cy = add i64 %i.cv, %i.cx
  %i.cz = icmp ugt i32 %i.cs, 65535
  %i.da = zext i1 %i.cz to i64
  %i.db = add i64 %i.cy, %i.da
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %.014.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit ], [ %i.cd, %.lr.ph.i ], [ %i.cp, %.lr.ph.i.1 ], [ %i.db, %.lr.ph.i.2 ]
  %.not150.i = icmp eq ptr %.2.i.lcssa, %1
  %i.dc = ptrtoint ptr %.2.i.lcssa to i64
  %i.dd = ptrtoint ptr %1 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2
  %i.dg = select i1 %.not150.i, i64 0, i64 %i.df
  %.2143.i = add i64 %i.dg, %.1142.i.lcssa
  %i.dh = add i64 %.2143.i, %.014.lcssa.i
  ret i64 %i.dh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation23utf16_length_from_utf32EPKDim(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.l, %.lr.ph ], [ 4, %bb.a ]  ; 3 uses
  %.020 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.01419 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020
end_hunk_1
