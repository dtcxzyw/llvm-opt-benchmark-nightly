inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf7haswell14implementation23change_endianness_utf16EPKDsmPDs:bb.a
.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %.0.i.i52 = phi i64 [ %i.cj, %.lr.ph54 ], [ %.0.i.i52.unr, %.lr.ph54.prol.loopexit ] ; 5 uses
  %.07.i.i51 = phi ptr [ %i.ci, %.lr.ph54 ], [ %.07.i.i51.unr, %.lr.ph54.prol.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.0.i.i52
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = tail call i16 @llvm.bswap.i16(i16 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.i.i51, i64 2
  store i16 %i.bs, ptr %.07.i.i51, align 2
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.0.i.i52
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = tail call i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i51, i64 4
  store i16 %i.bx, ptr %i.bt, align 2
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.0.i.i52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = tail call i16 @llvm.bswap.i16(i16 %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i51, i64 6
  store i16 %i.cc, ptr %i.by, align 2
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.0.i.i52
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %.07.i.i51, i64 8
  store i16 %i.ch, ptr %i.cd, align 2
  %i.cj = add nuw i64 %.0.i.i52, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cj, %i.ai
  br i1 %exitcond.not.3, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623change_endianness_utf16EPKDsmPDs.exit, label %.lr.ph54, !llvm.loop !760

_ZN7simdutf7haswell12_GLOBAL__N_15utf1623change_endianness_utf16EPKDsmPDs.exit: ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %middle.block, %vec.epilog.middle.block, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation13count_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i226 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i225 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i226 ; 2 uses
  %i.c = load <16 x i16>, ptr %i.b, align 1, !noalias !761
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <16 x i16>, ptr %i.d, align 1, !noalias !764
  %i.f = shufflevector <16 x i16> %i.c, <16 x i16> %i.e, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.g = add <32 x i16> %i.f, splat (i16 8192)
  %i.h = icmp ult <32 x i16> %i.g, splat (i16 -1024)
  %i.i = sext <32 x i1> %i.h to <32 x i16>
  %i.j = bitcast <32 x i16> %i.i to <64 x i8>
  %i.k = icmp slt <64 x i8> %i.j, zeroinitializer
  %i.l = bitcast <64 x i1> %i.k to i64
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = lshr i64 %i.m, 1
  %i.o = add i64 %i.n, %.011.i225                 ; 2 uses
  %i.p = add nuw i64 %.0.i226, 32                 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.a
  br i1 %i.q, label %.lr.ph, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit.loopexit, !llvm.loop !767

_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.r = and i64 %2, -32
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit

_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit.loopexit ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.lcssa ; 3 uses
  %i.t = sub i64 %2, %.0.i.lcssa                  ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check232 = icmp ult i64 %i.t, 16
  br i1 %min.iters.check232, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.t, %n.mod.vf            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi233 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi234 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi235 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load = load <4 x i16>, ptr %i.u, align 2
  %wide.load236 = load <4 x i16>, ptr %i.v, align 2
  %wide.load237 = load <4 x i16>, ptr %i.w, align 2
  %wide.load238 = load <4 x i16>, ptr %i.x, align 2
  %i.y = and <4 x i16> %wide.load, splat (i16 -1024)
  %i.z = and <4 x i16> %wide.load236, splat (i16 -1024)
  %i.aa = and <4 x i16> %wide.load237, splat (i16 -1024)
  %i.ab = and <4 x i16> %wide.load238, splat (i16 -1024)
  %i.ac = icmp ne <4 x i16> %i.y, splat (i16 -9216)
  %i.ad = icmp ne <4 x i16> %i.z, splat (i16 -9216)
  %i.ae = icmp ne <4 x i16> %i.aa, splat (i16 -9216)
  %i.af = icmp ne <4 x i16> %i.ab, splat (i16 -9216)
  %i.ag = zext <4 x i1> %i.ac to <4 x i64>
  %i.ah = zext <4 x i1> %i.ad to <4 x i64>
  %i.ai = zext <4 x i1> %i.ae to <4 x i64>
  %i.aj = zext <4 x i1> %i.af to <4 x i64>
  %i.ak = add <4 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.al = add <4 x i64> %vec.phi233, %i.ah        ; 2 uses
  %i.am = add <4 x i64> %vec.phi234, %i.ai        ; 2 uses
  %i.an = add <4 x i64> %vec.phi235, %i.aj        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !768

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.al, %i.ak
  %bin.rdx239 = add <4 x i64> %i.am, %bin.rdx
  %bin.rdx240 = add <4 x i64> %i.an, %bin.rdx239
  %i.ap = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx240) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf241 = and i64 %2, 3                    ; 2 uses
  %n.vec242 = sub i64 %i.t, %n.mod.vf241          ; 2 uses
  %i.aq = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index243 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next246, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi244 = phi <4 x i64> [ %i.aq, %vec.epilog.ph ], [ %i.av, %vec.epilog.vector.body ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index243
  %wide.load245 = load <4 x i16>, ptr %i.ar, align 2
  %i.as = and <4 x i16> %wide.load245, splat (i16 -1024)
  %i.at = icmp ne <4 x i16> %i.as, splat (i16 -9216)
  %i.au = zext <4 x i1> %i.at to <4 x i64>
  %i.av = add <4 x i64> %vec.phi244, %i.au        ; 2 uses
  %index.next246 = add nuw i64 %index243, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next246, %n.vec242
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !769

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ax = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.av) ; 2 uses
  %cmp.n247 = icmp eq i64 %n.mod.vf241, 0
  br i1 %cmp.n247, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i1.ph = phi i64 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0910.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec242, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i1 = phi i64 [ %i.bd, %.lr.ph.i ], [ %.011.i1.ph, %.lr.ph.i.preheader ]
  %.0910.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.0910.i
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, -1024
  %i.bb = icmp ne i16 %i.ba, -9216
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.011.i1, %i.bc                 ; 2 uses
  %i.be = add nuw i64 %.0910.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.t
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !770

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.bd, %.lr.ph.i ]
  %i.bf = add i64 %.0.lcssa.i, %.011.i.lcssa
  ret i64 %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation13count_utf16beEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i226 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i225 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i226 ; 2 uses
  %i.c = load <32 x i8>, ptr %i.b, align 1, !noalias !771
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <32 x i8>, ptr %i.d, align 1, !noalias !774
  %i.f = shufflevector <32 x i8> %i.c, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.g = shufflevector <32 x i8> %i.e, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.h = bitcast <32 x i8> %i.f to <16 x i16>
  %i.i = bitcast <32 x i8> %i.g to <16 x i16>
  %3 = shufflevector <16 x i16> %i.h, <16 x i16> %i.i, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %4 = add <32 x i16> %3, splat (i16 8192)
  %5 = icmp ult <32 x i16> %4, splat (i16 -1024)
  %6 = sext <32 x i1> %5 to <32 x i16>
  %i.j = bitcast <32 x i16> %6 to <64 x i8>
  %i.k = icmp slt <64 x i8> %i.j, zeroinitializer
  %i.l = bitcast <64 x i1> %i.k to i64
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = lshr i64 %i.m, 1
  %i.o = add i64 %i.n, %.011.i225                 ; 2 uses
  %i.p = add nuw i64 %.0.i226, 32                 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.a
  br i1 %i.q, label %.lr.ph, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit, !llvm.loop !777

_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.r = and i64 %2, -32
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit

_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.lcssa ; 3 uses
  %i.t = sub i64 %2, %.0.i.lcssa                  ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check232 = icmp ult i64 %i.t, 16
  br i1 %min.iters.check232, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.t, %n.mod.vf            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi233 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi234 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi235 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load = load <4 x i16>, ptr %i.u, align 2
  %wide.load236 = load <4 x i16>, ptr %i.v, align 2
  %wide.load237 = load <4 x i16>, ptr %i.w, align 2
  %wide.load238 = load <4 x i16>, ptr %i.x, align 2
  %i.y = and <4 x i16> %wide.load, splat (i16 252)
  %i.z = and <4 x i16> %wide.load236, splat (i16 252)
  %i.aa = and <4 x i16> %wide.load237, splat (i16 252)
  %i.ab = and <4 x i16> %wide.load238, splat (i16 252)
  %i.ac = icmp ne <4 x i16> %i.y, splat (i16 220)
  %i.ad = icmp ne <4 x i16> %i.z, splat (i16 220)
  %i.ae = icmp ne <4 x i16> %i.aa, splat (i16 220)
  %i.af = icmp ne <4 x i16> %i.ab, splat (i16 220)
  %i.ag = zext <4 x i1> %i.ac to <4 x i64>
  %i.ah = zext <4 x i1> %i.ad to <4 x i64>
  %i.ai = zext <4 x i1> %i.ae to <4 x i64>
  %i.aj = zext <4 x i1> %i.af to <4 x i64>
  %i.ak = add <4 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.al = add <4 x i64> %vec.phi233, %i.ah        ; 2 uses
  %i.am = add <4 x i64> %vec.phi234, %i.ai        ; 2 uses
  %i.an = add <4 x i64> %vec.phi235, %i.aj        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !778

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.al, %i.ak
  %bin.rdx239 = add <4 x i64> %i.am, %bin.rdx
  %bin.rdx240 = add <4 x i64> %i.an, %bin.rdx239
  %i.ap = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx240) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf241 = and i64 %2, 3                    ; 2 uses
  %n.vec242 = sub i64 %i.t, %n.mod.vf241          ; 2 uses
  %i.aq = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index243 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next246, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi244 = phi <4 x i64> [ %i.aq, %vec.epilog.ph ], [ %i.av, %vec.epilog.vector.body ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index243
  %wide.load245 = load <4 x i16>, ptr %i.ar, align 2
  %i.as = and <4 x i16> %wide.load245, splat (i16 252)
  %i.at = icmp ne <4 x i16> %i.as, splat (i16 220)
  %i.au = zext <4 x i1> %i.at to <4 x i64>
  %i.av = add <4 x i64> %vec.phi244, %i.au        ; 2 uses
  %index.next246 = add nuw i64 %index243, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next246, %n.vec242
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !779

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ax = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.av) ; 2 uses
  %cmp.n247 = icmp eq i64 %n.mod.vf241, 0
  br i1 %cmp.n247, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i1.ph = phi i64 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0910.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec242, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i1 = phi i64 [ %i.bd, %.lr.ph.i ], [ %.011.i1.ph, %.lr.ph.i.preheader ]
  %.0910.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.0910.i
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 252
  %i.bb = icmp ne i16 %i.ba, 220
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.011.i1, %i.bc                 ; 2 uses
  %i.be = add nuw i64 %.0910.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.t
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !780

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.bd, %.lr.ph.i ]
  %i.bf = add i64 %.0.lcssa.i, %.011.i.lcssa
  ret i64 %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation10count_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %.not.i288 = icmp ult i64 %2, 128
  br i1 %.not.i288, label %_ZN7simdutf7haswell12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.thread
  %.ph = phi i64 [ %i.x, %.thread ], [ 128, %bb.a ]
  %.021.i290.ph = phi i64 [ %i.a, %.thread ], [ 0, %bb.a ]
  %.sroa.037.0289.ph = phi <4 x i64> [ %i.w, %.thread ], [ zeroinitializer, %bb.a ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.b
  %i.a = phi i64 [ %i.u, %bb.b ], [ %.ph, %.lr.ph.outer ] ; 7 uses
  %.0.i291 = phi i64 [ %i.s, %bb.b ], [ 0, %.lr.ph.outer ]
  %.021.i290 = phi i64 [ %i.a, %bb.b ], [ %.021.i290.ph, %.lr.ph.outer ]
  %i.b = phi <32 x i8> [ %i.r, %bb.b ], [ zeroinitializer, %.lr.ph.outer ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.021.i290 ; 4 uses
  %i.d = load <32 x i8>, ptr %i.c, align 1, !noalias !781
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load <32 x i8>, ptr %i.e, align 1, !noalias !784
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.h = load <32 x i8>, ptr %i.g, align 1, !noalias !787
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.j = load <32 x i8>, ptr %i.i, align 1, !noalias !790
  %i.k = icmp sgt <32 x i8> %i.d, splat (i8 -65)
  %.neg = zext <32 x i1> %i.k to <32 x i8>
  %i.l = icmp sgt <32 x i8> %i.f, splat (i8 -65)
  %.neg285 = zext <32 x i1> %i.l to <32 x i8>
  %i.m = icmp sgt <32 x i8> %i.h, splat (i8 -65)
  %.neg286 = zext <32 x i1> %i.m to <32 x i8>
  %i.n = icmp sgt <32 x i8> %i.j, splat (i8 -65)
  %.neg287 = zext <32 x i1> %i.n to <32 x i8>
  %i.o = add <32 x i8> %i.b, %.neg
  %i.p = add <32 x i8> %i.o, %.neg285
  %i.q = add <32 x i8> %i.p, %.neg286
  %i.r = add <32 x i8> %i.q, %.neg287             ; 3 uses
  %i.s = add i64 %.0.i291, 1                      ; 3 uses
  %i.t = icmp eq i64 %i.s, 63
  br i1 %i.t, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = add i64 %i.a, 128                        ; 2 uses
  %.not.i = icmp ugt i64 %i.u, %2
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !793

.thread:                                          ; preds = %.lr.ph
  %i.v = tail call noundef <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.r, <32 x i8> zeroinitializer)
  %i.w = add <4 x i64> %i.v, %.sroa.037.0289.ph   ; 2 uses
  %i.x = add i64 %i.a, 128                        ; 2 uses
  %.not.i307 = icmp ugt i64 %i.x, %2
  br i1 %.not.i307, label %_ZN7simdutf7haswell12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit, label %.lr.ph.outer, !llvm.loop !793

._crit_edge:                                      ; preds = %bb.b
  %i.y = icmp eq i64 %i.s, 0
  br i1 %i.y, label %_ZN7simdutf7haswell12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = tail call noundef <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.r, <32 x i8> zeroinitializer)
  %i.aa = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.z)
  br label %_ZN7simdutf7haswell12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit

_ZN7simdutf7haswell12_GLOBAL__N_14utf826count_code_points_bytemaskEPKcm.exit: ; preds = %.thread, %bb.a, %._crit_edge, %bb.c
  %.021.i.lcssa304 = phi i64 [ %i.a, %bb.c ], [ %i.a, %._crit_edge ], [ 0, %bb.a ], [ %i.a, %.thread ] ; 3 uses
  %.sroa.037.0.lcssa303 = phi <4 x i64> [ %.sroa.037.0289.ph, %bb.c ], [ %.sroa.037.0289.ph, %._crit_edge ], [ zeroinitializer, %bb.a ], [ %i.w, %.thread ]
  %.020.i = phi i64 [ %i.aa, %bb.c ], [ 0, %._crit_edge ], [ 0, %bb.a ], [ 0, %.thread ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.021.i.lcssa304 ; 3 uses
  %i.ac = sub i64 %2, %.021.i.lcssa304            ; 8 uses
  %.not.i1 = icmp eq i64 %2, %.021.i.lcssa304
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %iter.check
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7haswell14implementation24utf8_length_from_utf16beEPKDsm:bb.a
  %.01617.i = phi i64 [ %i.dk, %.lr.ph.i ], [ %.01617.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.01617.i
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz) ; 3 uses
  %i.db = add i64 %.018.i, 1
  %i.dc = icmp ugt i16 %i.da, 127
  %i.dd = zext i1 %i.dc to i64
  %i.de = add i64 %i.db, %i.dd
  %i.df = add i16 %i.da, -2048
  %or.cond.i = icmp ult i16 %i.df, -12288
  %i.dg = icmp ugt i16 %i.da, -8193
  %i.dh = or i1 %i.dg, %or.cond.i
  %i.di = zext i1 %i.dh to i64
  %i.dj = add i64 %i.de, %i.di                    ; 2 uses
  %i.dk = add nuw i64 %.01617.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dk, %i.ak
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !825

_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.cx, %vec.epilog.middle.block ], [ %i.ci, %middle.block ], [ %i.dj, %.lr.ph.i ]
  %i.dl = and <8 x i32> %.sroa.032.0.lcssa, splat (i32 65535)
  %i.dm = lshr <8 x i32> %.sroa.032.0.lcssa, splat (i32 16)
  %i.dn = add nuw nsw <8 x i32> %i.dl, %i.dm      ; 2 uses
  %i.do = bitcast <8 x i32> %i.dn to <4 x i64>
  %i.dp = bitcast <8 x i32> %i.dn to <4 x i64>
  %i.dq = and <4 x i64> %i.dp, splat (i64 131071)
  %i.dr = lshr <4 x i64> %i.do, splat (i64 32)
  %i.ds = add nuw nsw <4 x i64> %i.dq, %i.dr
  %i.dt = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ds)
  %op.rdx = add i64 %i.dt, %.0.lcssa.i
  %op.rdx294 = add i64 %op.rdx, %.016.i.lcssa
  ret i64 %op.rdx294
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation25utf32_length_from_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i225 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i.i224 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i225 ; 2 uses
  %i.c = load <16 x i16>, ptr %i.b, align 1, !noalias !826
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <16 x i16>, ptr %i.d, align 1, !noalias !829
  %i.f = shufflevector <16 x i16> %i.c, <16 x i16> %i.e, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.g = add <32 x i16> %i.f, splat (i16 8192)
  %i.h = icmp ult <32 x i16> %i.g, splat (i16 -1024)
  %i.i = sext <32 x i1> %i.h to <32 x i16>
  %i.j = bitcast <32 x i16> %i.i to <64 x i8>
  %i.k = icmp slt <64 x i8> %i.j, zeroinitializer
  %i.l = bitcast <64 x i1> %i.k to i64
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = lshr i64 %i.m, 1
  %i.o = add i64 %i.n, %.011.i.i224               ; 2 uses
  %i.p = add nuw i64 %.0.i.i225, 32               ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.a
  br i1 %i.q, label %.lr.ph, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit, !llvm.loop !767

_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.r = and i64 %2, -32
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit

_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit ]
  %.0.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i.lcssa ; 3 uses
  %i.t = sub i64 %2, %.0.i.i.lcssa                ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.i.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check231 = icmp ult i64 %i.t, 16
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.t, %n.mod.vf            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi232 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi233 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi234 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load = load <4 x i16>, ptr %i.u, align 2
  %wide.load235 = load <4 x i16>, ptr %i.v, align 2
  %wide.load236 = load <4 x i16>, ptr %i.w, align 2
  %wide.load237 = load <4 x i16>, ptr %i.x, align 2
  %i.y = and <4 x i16> %wide.load, splat (i16 -1024)
  %i.z = and <4 x i16> %wide.load235, splat (i16 -1024)
  %i.aa = and <4 x i16> %wide.load236, splat (i16 -1024)
  %i.ab = and <4 x i16> %wide.load237, splat (i16 -1024)
  %i.ac = icmp ne <4 x i16> %i.y, splat (i16 -9216)
  %i.ad = icmp ne <4 x i16> %i.z, splat (i16 -9216)
  %i.ae = icmp ne <4 x i16> %i.aa, splat (i16 -9216)
  %i.af = icmp ne <4 x i16> %i.ab, splat (i16 -9216)
  %i.ag = zext <4 x i1> %i.ac to <4 x i64>
  %i.ah = zext <4 x i1> %i.ad to <4 x i64>
  %i.ai = zext <4 x i1> %i.ae to <4 x i64>
  %i.aj = zext <4 x i1> %i.af to <4 x i64>
  %i.ak = add <4 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.al = add <4 x i64> %vec.phi232, %i.ah        ; 2 uses
  %i.am = add <4 x i64> %vec.phi233, %i.ai        ; 2 uses
  %i.an = add <4 x i64> %vec.phi234, %i.aj        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !832

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.al, %i.ak
  %bin.rdx238 = add <4 x i64> %i.am, %bin.rdx
  %bin.rdx239 = add <4 x i64> %i.an, %bin.rdx238
  %i.ap = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx239) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf240 = and i64 %2, 3                    ; 2 uses
  %n.vec241 = sub i64 %i.t, %n.mod.vf240          ; 2 uses
  %i.aq = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index242 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi243 = phi <4 x i64> [ %i.aq, %vec.epilog.ph ], [ %i.av, %vec.epilog.vector.body ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index242
  %wide.load244 = load <4 x i16>, ptr %i.ar, align 2
  %i.as = and <4 x i16> %wide.load244, splat (i16 -1024)
  %i.at = icmp ne <4 x i16> %i.as, splat (i16 -9216)
  %i.au = zext <4 x i1> %i.at to <4 x i64>
  %i.av = add <4 x i64> %vec.phi243, %i.au        ; 2 uses
  %index.next245 = add nuw i64 %index242, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next245, %n.vec241
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !833

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ax = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.av) ; 2 uses
  %cmp.n246 = icmp eq i64 %n.mod.vf240, 0
  br i1 %cmp.n246, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.ph = phi i64 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0910.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec241, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader ]
  %.0910.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.0910.i
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, -1024
  %i.bb = icmp ne i16 %i.ba, -9216
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.011.i, %i.bc                  ; 2 uses
  %i.be = add nuw i64 %.0910.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.t
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !834

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.bd, %.lr.ph.i ]
  %i.bf = add i64 %.0.lcssa.i, %.011.i.i.lcssa
  ret i64 %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation25utf32_length_from_utf16beEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i225 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i.i224 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i225 ; 2 uses
  %i.c = load <32 x i8>, ptr %i.b, align 1, !noalias !835
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <32 x i8>, ptr %i.d, align 1, !noalias !838
  %i.f = shufflevector <32 x i8> %i.c, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.g = shufflevector <32 x i8> %i.e, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.h = bitcast <32 x i8> %i.f to <16 x i16>
  %i.i = bitcast <32 x i8> %i.g to <16 x i16>
  %3 = shufflevector <16 x i16> %i.h, <16 x i16> %i.i, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %4 = add <32 x i16> %3, splat (i16 8192)
  %5 = icmp ult <32 x i16> %4, splat (i16 -1024)
  %6 = sext <32 x i1> %5 to <32 x i16>
  %i.j = bitcast <32 x i16> %6 to <64 x i8>
  %i.k = icmp slt <64 x i8> %i.j, zeroinitializer
  %i.l = bitcast <64 x i1> %i.k to i64
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = lshr i64 %i.m, 1
  %i.o = add i64 %i.n, %.011.i.i224               ; 2 uses
  %i.p = add nuw i64 %.0.i.i225, 32               ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.a
  br i1 %i.q, label %.lr.ph, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit, !llvm.loop !777

_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.r = and i64 %2, -32
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit

_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit ]
  %.0.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i.lcssa ; 3 uses
  %i.t = sub i64 %2, %.0.i.i.lcssa                ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.i.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check231 = icmp ult i64 %i.t, 16
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.t, %n.mod.vf            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi232 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi233 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi234 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load = load <4 x i16>, ptr %i.u, align 2
  %wide.load235 = load <4 x i16>, ptr %i.v, align 2
  %wide.load236 = load <4 x i16>, ptr %i.w, align 2
  %wide.load237 = load <4 x i16>, ptr %i.x, align 2
  %i.y = and <4 x i16> %wide.load, splat (i16 252)
  %i.z = and <4 x i16> %wide.load235, splat (i16 252)
  %i.aa = and <4 x i16> %wide.load236, splat (i16 252)
  %i.ab = and <4 x i16> %wide.load237, splat (i16 252)
  %i.ac = icmp ne <4 x i16> %i.y, splat (i16 220)
  %i.ad = icmp ne <4 x i16> %i.z, splat (i16 220)
  %i.ae = icmp ne <4 x i16> %i.aa, splat (i16 220)
  %i.af = icmp ne <4 x i16> %i.ab, splat (i16 220)
  %i.ag = zext <4 x i1> %i.ac to <4 x i64>
  %i.ah = zext <4 x i1> %i.ad to <4 x i64>
  %i.ai = zext <4 x i1> %i.ae to <4 x i64>
  %i.aj = zext <4 x i1> %i.af to <4 x i64>
  %i.ak = add <4 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.al = add <4 x i64> %vec.phi232, %i.ah        ; 2 uses
  %i.am = add <4 x i64> %vec.phi233, %i.ai        ; 2 uses
  %i.an = add <4 x i64> %vec.phi234, %i.aj        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !841

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.al, %i.ak
  %bin.rdx238 = add <4 x i64> %i.am, %bin.rdx
  %bin.rdx239 = add <4 x i64> %i.an, %bin.rdx238
  %i.ap = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx239) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf240 = and i64 %2, 3                    ; 2 uses
  %n.vec241 = sub i64 %i.t, %n.mod.vf240          ; 2 uses
  %i.aq = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index242 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi243 = phi <4 x i64> [ %i.aq, %vec.epilog.ph ], [ %i.av, %vec.epilog.vector.body ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index242
  %wide.load244 = load <4 x i16>, ptr %i.ar, align 2
  %i.as = and <4 x i16> %wide.load244, splat (i16 252)
  %i.at = icmp ne <4 x i16> %i.as, splat (i16 220)
  %i.au = zext <4 x i1> %i.at to <4 x i64>
  %i.av = add <4 x i64> %vec.phi243, %i.au        ; 2 uses
  %index.next245 = add nuw i64 %index242, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next245, %n.vec241
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !842

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ax = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.av) ; 2 uses
  %cmp.n246 = icmp eq i64 %n.mod.vf240, 0
  br i1 %cmp.n246, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.ph = phi i64 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0910.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec241, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader ]
  %.0910.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.0910.i
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 252
  %i.bb = icmp ne i16 %i.ba, 220
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.011.i, %i.bc                  ; 2 uses
  %i.be = add nuw i64 %.0910.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.t
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !843

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.bd, %.lr.ph.i ]
  %i.bf = add i64 %.0.lcssa.i, %.011.i.i.lcssa
  ret i64 %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation22utf16_length_from_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %.not.i187 = icmp ult i64 %2, 32
  br i1 %.not.i187, label %_ZN7simdutf7haswell12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.thread
  %.ph = phi i64 [ %i.aa, %.thread ], [ 32, %bb.a ]
  %.014.i190.ph = phi i64 [ %i.l, %.thread ], [ 0, %bb.a ]
  %.sroa.023.0188.ph = phi <4 x i64> [ %i.z, %.thread ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.014.i190.ph
  %i.b = load <32 x i8>, ptr %i.a, align 1, !noalias !844 ; 2 uses
  %i.c = icmp sgt <32 x i8> %i.b, splat (i8 -65)
  %.neg224 = zext <32 x i1> %i.c to <32 x i8>
  %i.d = icmp ugt <32 x i8> %i.b, splat (i8 -17)
  %.neg186225 = zext <32 x i1> %i.d to <32 x i8>
  %i.e = add nuw nsw <32 x i8> %.neg224, %.neg186225
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.g = load <32 x i8>, ptr %i.f, align 1, !noalias !844 ; 2 uses
  %i.h = icmp sgt <32 x i8> %i.g, splat (i8 -65)
  %.neg = zext <32 x i1> %i.h to <32 x i8>
  %i.i = icmp ugt <32 x i8> %i.g, splat (i8 -17)
  %.neg186 = zext <32 x i1> %i.i to <32 x i8>
  %i.j = add <32 x i8> %i.v, %.neg
  %i.k = add <32 x i8> %i.j, %.neg186             ; 2 uses
  %i.l = add i64 %i.w, 64                         ; 4 uses
  %.not.i.1 = icmp ugt i64 %i.l, %2
  br i1 %.not.i.1, label %._crit_edge, label %.lr.ph.1, !llvm.loop !847

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.n = load <32 x i8>, ptr %i.m, align 1, !noalias !844 ; 2 uses
  %i.o = icmp sgt <32 x i8> %i.n, splat (i8 -65)
  %.neg.1 = zext <32 x i1> %i.o to <32 x i8>
  %i.p = icmp ugt <32 x i8> %i.n, splat (i8 -17)
  %.neg186.1 = zext <32 x i1> %i.p to <32 x i8>
  %i.q = add <32 x i8> %i.k, %.neg.1
  %i.r = add <32 x i8> %i.q, %.neg186.1           ; 2 uses
  %i.s = add nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.t = icmp eq i64 %i.s, 127
  br i1 %i.t, label %.thread, label %bb.b, !llvm.loop !847

bb.b:                                             ; preds = %.lr.ph.1, %.lr.ph.outer
  %i.u = phi i64 [ 1, %.lr.ph.outer ], [ %i.s, %.lr.ph.1 ]
  %i.v = phi <32 x i8> [ %i.e, %.lr.ph.outer ], [ %i.r, %.lr.ph.1 ] ; 2 uses
  %i.w = phi i64 [ %.ph, %.lr.ph.outer ], [ %i.l, %.lr.ph.1 ] ; 5 uses
  %i.x = add i64 %i.w, 32                         ; 3 uses
  %.not.i = icmp ugt i64 %i.x, %2
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !847

.thread:                                          ; preds = %.lr.ph.1
  %i.y = tail call noundef <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.r, <32 x i8> zeroinitializer)
  %i.z = add <4 x i64> %i.y, %.sroa.023.0188.ph   ; 2 uses
  %i.aa = add i64 %i.w, 96                        ; 2 uses
  %.not.i206 = icmp ugt i64 %i.aa, %2
  br i1 %.not.i206, label %_ZN7simdutf7haswell12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit, label %.lr.ph.outer, !llvm.loop !847

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa252 = phi <32 x i8> [ %i.v, %bb.b ], [ %i.k, %.lr.ph ]
  %.lcssa250 = phi i64 [ %i.w, %bb.b ], [ %i.x, %.lr.ph ]
  %i.ab = tail call noundef <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %.lcssa252, <32 x i8> zeroinitializer)
  %i.ac = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ab)
  br label %_ZN7simdutf7haswell12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit

_ZN7simdutf7haswell12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit: ; preds = %.thread, %bb.a, %._crit_edge
  %.014.i.lcssa203 = phi i64 [ %.lcssa250, %._crit_edge ], [ 0, %bb.a ], [ %i.l, %.thread ] ; 3 uses
  %.sroa.023.0.lcssa202 = phi <4 x i64> [ %.sroa.023.0188.ph, %._crit_edge ], [ zeroinitializer, %bb.a ], [ %i.z, %.thread ]
end_hunk_1
