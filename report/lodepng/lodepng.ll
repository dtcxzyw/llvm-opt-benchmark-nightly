Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL8unfilterPhPKhjjj:bb.a
  br i1 %i.alw, label %vec.epilog.middle.block606, label %vec.epilog.vector.body599, !llvm.loop !947

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body599
  %cmp.n607 = icmp eq i64 %i.ajt, %n.vec598
  br i1 %cmp.n607, label %.loopexit, label %.lr.ph820.i.preheader

.lr.ph820.i.preheader:                            ; preds = %iter.check593, %vector.memcheck569, %vec.epilog.iter.check595, %vec.epilog.middle.block606
  %.21819.i.ph = phi i64 [ %.20.i, %iter.check593 ], [ %.20.i, %vector.memcheck569 ], [ %i.ajx, %vec.epilog.iter.check595 ], [ %i.akx, %vec.epilog.middle.block606 ]
  br label %.lr.ph820.i

.lr.ph820.i:                                      ; preds = %.lr.ph820.i.preheader, %.lr.ph820.i
  %.21819.i = phi i64 [ %i.amw, %.lr.ph820.i ], [ %.21819.i.ph, %.lr.ph820.i.preheader ] ; 5 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.21819.i
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !35
  %i.alz = sub i64 %.21819.i, %i.d                ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !35 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.02789, i64 %.21819.i
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !35 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.alz
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !35 ; 2 uses
  %i.amg = zext i8 %i.amd to i32                  ; 2 uses
  %i.amh = zext i8 %i.amf to i32                  ; 3 uses
  %i.ami = sub nsw i32 %i.amg, %i.amh
  %i.amj = tail call i32 @llvm.abs.i32(i32 %i.ami, i1 true) ; 2 uses
  %i.amk = zext i8 %i.amb to i32                  ; 2 uses
  %i.aml = sub nsw i32 %i.amk, %i.amh
  %i.amm = tail call i32 @llvm.abs.i32(i32 %i.aml, i1 true) ; 2 uses
  %i.amn = add nuw nsw i32 %i.amg, %i.amk
  %i.amo = shl nuw nsw i32 %i.amh, 1
  %i.amp = sub nsw i32 %i.amn, %i.amo
  %i.amq = tail call i32 @llvm.abs.i32(i32 %i.amp, i1 true)
  %i.amr = icmp samesign ult i32 %i.amm, %i.amj
  %.032.i687.i = select i1 %i.amr, i8 %i.amd, i8 %i.amb
  %.0.in.i688.i = tail call i32 @llvm.umin.i32(i32 %i.amm, i32 %i.amj)
  %i.ams = icmp samesign ult i32 %i.amq, %.0.in.i688.i
  %i.amt = select i1 %i.ams, i8 %i.amf, i8 %.032.i687.i
  %i.amu = add i8 %i.amt, %i.aly
  %i.amv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.21819.i
  store i8 %i.amu, ptr %i.amv, align 1, !tbaa !35
  %i.amw = add i64 %.21819.i, 1                   ; 2 uses
  %.not629.i = icmp eq i64 %i.amw, %i.n
  br i1 %.not629.i, label %.loopexit, label %.lr.ph820.i, !llvm.loop !948

.preheader731.i:                                  ; preds = %.lr.ph823.i.prol.loopexit, %.lr.ph823.i, %middle.block553, %vec.epilog.middle.block566, %.preheader733.i
  br i1 %.not626824.i, label %.loopexit, label %iter.check521

iter.check521:                                    ; preds = %.preheader731.i
  %brmerge736 = select i1 %min.iters.check505, i1 true, i1 %conflict.rdx504
  br i1 %brmerge736, label %.lr.ph827.i.preheader, label %vector.main.loop.iter.check506

vector.main.loop.iter.check506:                   ; preds = %iter.check521
  br i1 %min.iters.check507, label %vec.epilog.ph525, label %vector.body510

vector.body510:                                   ; preds = %vector.main.loop.iter.check506, %vector.body510
  %index511 = phi i64 [ %index.next516, %vector.body510 ], [ 0, %vector.main.loop.iter.check506 ] ; 3 uses
  %i.amx = add i64 %index511, %i.d                ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.amx ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %wide.load512 = load <16 x i8>, ptr %i.amy, align 1, !tbaa !35, !alias.scope !988
  %wide.load513 = load <16 x i8>, ptr %i.amz, align 1, !tbaa !35, !alias.scope !988
  %i.ana = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index511 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %wide.load514 = load <16 x i8>, ptr %i.ana, align 1, !tbaa !35, !alias.scope !989
  %wide.load515 = load <16 x i8>, ptr %i.anb, align 1, !tbaa !35, !alias.scope !989
  %i.anc = add <16 x i8> %wide.load514, %wide.load512
  %i.and = add <16 x i8> %wide.load515, %wide.load513
  %i.ane = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.amx ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  store <16 x i8> %i.anc, ptr %i.ane, align 1, !tbaa !35, !alias.scope !990, !noalias !991
  store <16 x i8> %i.and, ptr %i.anf, align 1, !tbaa !35, !alias.scope !990, !noalias !991
  %index.next516 = add nuw i64 %index511, 32      ; 2 uses
  %i.ang = icmp eq i64 %index.next516, %n.vec509
  br i1 %i.ang, label %middle.block517, label %vector.body510, !llvm.loop !953

middle.block517:                                  ; preds = %vector.body510
  br i1 %cmp.n518, label %.loopexit, label %vec.epilog.iter.check523

vec.epilog.iter.check523:                         ; preds = %middle.block517
  br i1 %min.epilog.iters.check524, label %.lr.ph827.i.preheader, label %vec.epilog.ph525, !prof !90

vec.epilog.ph525:                                 ; preds = %vector.main.loop.iter.check506, %vec.epilog.iter.check523
  %vec.epilog.resume.val519 = phi i64 [ %n.vec509, %vec.epilog.iter.check523 ], [ 0, %vector.main.loop.iter.check506 ]
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph525
  %index528 = phi i64 [ %vec.epilog.resume.val519, %vec.epilog.ph525 ], [ %index.next531, %vec.epilog.vector.body527 ] ; 3 uses
  %i.anh = add i64 %index528, %i.d                ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.anh
  %wide.load529 = load <4 x i8>, ptr %i.ani, align 1, !tbaa !35, !alias.scope !988
  %i.anj = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index528
  %wide.load530 = load <4 x i8>, ptr %i.anj, align 1, !tbaa !35, !alias.scope !989
  %i.ank = add <4 x i8> %wide.load530, %wide.load529
  %i.anl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.anh
  store <4 x i8> %i.ank, ptr %i.anl, align 1, !tbaa !35, !alias.scope !990, !noalias !991
  %index.next531 = add nuw i64 %index528, 4       ; 2 uses
  %i.anm = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.anm, label %vec.epilog.middle.block532, label %vec.epilog.vector.body527, !llvm.loop !954

vec.epilog.middle.block532:                       ; preds = %vec.epilog.vector.body527
  br i1 %cmp.n533, label %.loopexit, label %.lr.ph827.i.preheader

.lr.ph827.i.preheader:                            ; preds = %iter.check521, %vec.epilog.iter.check523, %vec.epilog.middle.block532
  %.0826.i.ph = phi i64 [ 0, %iter.check521 ], [ %n.vec526, %vec.epilog.middle.block532 ], [ %n.vec509, %vec.epilog.iter.check523 ] ; 3 uses
  %.23825.i.ph = phi i64 [ %i.d, %iter.check521 ], [ %i.em, %vec.epilog.middle.block532 ], [ %i.el, %vec.epilog.iter.check523 ] ; 6 uses
  %i.ann = sub i64 %i.ds, %.23825.i.ph
  %.neg = add i64 %.23825.i.ph, 1
  %xtraiter678 = and i64 %i.ann, 1
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.lr.ph827.i.prol.loopexit, label %.lr.ph827.i.prol

.lr.ph827.i.prol:                                 ; preds = %.lr.ph827.i.preheader
  %i.ano = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.23825.i.ph
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !35
  %i.anq = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.0826.i.ph
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !35
  %i.ans = add i8 %i.anr, %i.anp
  %i.ant = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.23825.i.ph
  store i8 %i.ans, ptr %i.ant, align 1, !tbaa !35
  %i.anu = add i64 %.23825.i.ph, 1
  %i.anv = or disjoint i64 %.0826.i.ph, 1
  br label %.lr.ph827.i.prol.loopexit

.lr.ph827.i.prol.loopexit:                        ; preds = %.lr.ph827.i.prol, %.lr.ph827.i.preheader
  %.0826.i.unr = phi i64 [ %.0826.i.ph, %.lr.ph827.i.preheader ], [ %i.anv, %.lr.ph827.i.prol ]
  %.23825.i.unr = phi i64 [ %.23825.i.ph, %.lr.ph827.i.preheader ], [ %i.anu, %.lr.ph827.i.prol ]
  %i.anw = icmp eq i64 %i.dt, %.neg
  br i1 %i.anw, label %.loopexit, label %.lr.ph827.i

.lr.ph823.i:                                      ; preds = %.lr.ph823.i.prol.loopexit, %.lr.ph823.i
  %.22822.i = phi i64 [ %i.aom, %.lr.ph823.i ], [ %.22822.i.unr, %.lr.ph823.i.prol.loopexit ] ; 6 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.22822.i
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !35
  %i.anz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.22822.i
  store i8 %i.any, ptr %i.anz, align 1, !tbaa !35
  %i.aoa = add nuw nsw i64 %.22822.i, 1           ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aoa
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !35
  %i.aod = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aoa
  store i8 %i.aoc, ptr %i.aod, align 1, !tbaa !35
  %i.aoe = add nuw nsw i64 %.22822.i, 2           ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aoe
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !35
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aoe
  store i8 %i.aog, ptr %i.aoh, align 1, !tbaa !35
  %i.aoi = add nuw nsw i64 %.22822.i, 3           ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aoi
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !35
  %i.aol = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aoi
  store i8 %i.aok, ptr %i.aol, align 1, !tbaa !35
  %i.aom = add nuw nsw i64 %.22822.i, 4           ; 2 uses
  %.not625.i.3 = icmp eq i64 %i.aom, %i.d
  br i1 %.not625.i.3, label %.preheader731.i, label %.lr.ph823.i, !llvm.loop !955

.lr.ph827.i:                                      ; preds = %.lr.ph827.i.prol.loopexit, %.lr.ph827.i
  %.0826.i = phi i64 [ %i.apc, %.lr.ph827.i ], [ %.0826.i.unr, %.lr.ph827.i.prol.loopexit ] ; 3 uses
  %.23825.i = phi i64 [ %i.apb, %.lr.ph827.i ], [ %.23825.i.unr, %.lr.ph827.i.prol.loopexit ] ; 4 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.23825.i
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !35
  %i.aop = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.0826.i
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !35
  %i.aor = add i8 %i.aoq, %i.aoo
  %i.aos = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.23825.i
  store i8 %i.aor, ptr %i.aos, align 1, !tbaa !35
  %i.aot = add i64 %.23825.i, 1                   ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aot
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !35
  %i.aow = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.0826.i
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 1
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !35
  %i.aoz = add i8 %i.aoy, %i.aov
  %i.apa = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aot
  store i8 %i.aoz, ptr %i.apa, align 1, !tbaa !35
  %i.apb = add i64 %.23825.i, 2                   ; 2 uses
  %i.apc = add nuw i64 %.0826.i, 2
  %.not626.i.1 = icmp eq i64 %i.apb, %i.n
  br i1 %.not626.i.1, label %.loopexit, label %.lr.ph827.i, !llvm.loop !956

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph820.i, %.lr.ph827.i.prol.loopexit, %.lr.ph827.i, %.lr.ph851.i.prol.loopexit, %.lr.ph851.i, %.lr.ph858.i.prol.loopexit, %.lr.ph858.i, %.lr.ph861.i.prol.loopexit, %.lr.ph861.i, %.lr.ph864.i.prol.loopexit, %.lr.ph864.i, %.lr.ph871.i.prol.loopexit, %.lr.ph871.i, %.lr.ph874.i.prol.loopexit, %.lr.ph874.i, %middle.block589, %vec.epilog.middle.block606, %middle.block517, %vec.epilog.middle.block532, %middle.block430, %vec.epilog.middle.block447, %middle.block361, %vec.epilog.middle.block376, %middle.block319, %vec.epilog.middle.block333, %middle.block279, %vec.epilog.middle.block292, %middle.block210, %vec.epilog.middle.block225, %middle.block, %vec.epilog.middle.block, %.preheader720.i, %.preheader716.i, %.preheader718.i, %.preheader731.i, %.loopexit725.i, %.preheader713.i, %.preheader.i, %.loopexit736.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZL16unfilterScanlinePhPKhS1_mhm.exit, label %bb.b, !llvm.loop !957

_ZL16unfilterScanlinePhPKhS1_mhm.exit:            ; preds = %.loopexit, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 36, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr nofree noundef nonnull captures(none) initializes((0, 28)) %0, ptr nofree noundef nonnull captures(none) initializes((0, 28)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %3, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #8 {
bb.a:
  %i.a = add i32 %5, 7
  %i.b = lshr i32 %i.a, 3
  store i32 %i.b, ptr %0, align 4, !tbaa !29
  %i.c = add i32 %6, 7
  %i.d = lshr i32 %i.c, 3                         ; 4 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !29
  %i.e = load i32, ptr %0, align 4, !tbaa !29
  %i.f = icmp eq i32 %i.e, 0
  %spec.store.select = select i1 %i.f, i32 0, i32 %i.d ; 2 uses
  store i32 %spec.store.select, ptr %1, align 4, !tbaa !29
  %i.g = icmp eq i32 %spec.store.select, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = add i32 %5, 3
  %i.i = lshr i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 %i.d, ptr %i.k, align 4, !tbaa !29
  %i.l = load i32, ptr %i.j, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.l, 0
  %spec.store.select.1 = select i1 %i.m, i32 0, i32 %i.d ; 2 uses
  store i32 %spec.store.select.1, ptr %i.k, align 4, !tbaa !29
  %i.n = icmp eq i32 %spec.store.select.1, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = add i32 %5, 3
  %i.p = lshr i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !29
  %i.r = add i32 %6, 3
  %i.s = lshr i32 %i.r, 3                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !29
  %i.u = load i32, ptr %i.q, align 4, !tbaa !29
  %i.v = icmp eq i32 %i.u, 0
  %spec.store.select.2 = select i1 %i.v, i32 0, i32 %i.s ; 2 uses
  store i32 %spec.store.select.2, ptr %i.t, align 4, !tbaa !29
  %i.w = icmp eq i32 %spec.store.select.2, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 4, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = add i32 %5, 1
  %i.y = lshr i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !29
  %i.aa = add i32 %6, 3
  %i.ab = lshr i32 %i.aa, 2                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !29
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.store.select.3 = select i1 %i.ae, i32 0, i32 %i.ab ; 2 uses
  store i32 %spec.store.select.3, ptr %i.ac, align 4, !tbaa !29
  %i.af = icmp eq i32 %spec.store.select.3, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 4, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = add i32 %5, 1
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !29
  %i.aj = add i32 %6, 1
  %i.ak = lshr i32 %i.aj, 2                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !29
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.an = icmp eq i32 %i.am, 0
  %spec.store.select.4 = select i1 %i.an, i32 0, i32 %i.ak ; 2 uses
  store i32 %spec.store.select.4, ptr %i.al, align 4, !tbaa !29
  %i.ao = icmp eq i32 %spec.store.select.4, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = lshr i32 %5, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !29
  %i.ar = add i32 %6, 1
  %i.as = lshr i32 %i.ar, 1                       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !29
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.av = icmp eq i32 %i.au, 0
  %spec.store.select.5 = select i1 %i.av, i32 0, i32 %i.as ; 2 uses
  store i32 %spec.store.select.5, ptr %i.at, align 4, !tbaa !29
  %i.aw = icmp eq i32 %spec.store.select.5, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 4, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %5, ptr %i.ax, align 4, !tbaa !29
  %i.ay = lshr i32 %6, 1                          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !29
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.bb = icmp eq i32 %i.ba, 0
  %spec.store.select.6 = select i1 %i.bb, i32 0, i32 %i.ay ; 2 uses
  store i32 %spec.store.select.6, ptr %i.az, align 4, !tbaa !29
  %i.bc = icmp eq i32 %spec.store.select.6, 0
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ax, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 0, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %3, align 8, !tbaa !25
  store i64 0, ptr %2, align 8, !tbaa !25
  %i.bd = load i32, ptr %0, align 4, !tbaa !29    ; 3 uses
  %.not60 = icmp eq i32 %i.bd, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !29    ; 4 uses
  %.not61 = icmp eq i32 %.pre, 0
  %or.cond = select i1 %.not60, i1 true, i1 %.not61
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = mul i32 %i.bd, %7
  %i.bf = add i32 %i.be, 7
  %i.bg = lshr i32 %i.bf, 3
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = mul i32 %.pre, %i.bh
  %i.bj = zext i32 %i.bi to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.p ], [ 0, %bb.o ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !25
  %i.bm = load i64, ptr %3, align 8, !tbaa !25
  %i.bn = mul i32 %i.bd, %7                       ; 2 uses
  %i.bo = add i32 %i.bn, 7
  %i.bp = lshr i32 %i.bo, 3
  %i.bq = mul i32 %.pre, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = add i64 %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !25
  %i.bu = load i64, ptr %4, align 8, !tbaa !25
  %i.bv = mul i32 %i.bn, %.pre
  %i.bw = add i32 %i.bv, 7
  %i.bx = lshr i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = add i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !25
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !25
  %i.cc = load i32, ptr %i.j, align 4, !tbaa !29  ; 3 uses
  %.not60.1 = icmp eq i32 %i.cc, 0
  %.pre66 = load i32, ptr %i.k, align 4, !tbaa !29 ; 4 uses
  %.not61.1 = icmp eq i32 %.pre66, 0
  %or.cond78 = select i1 %.not60.1, i1 true, i1 %.not61.1
  br i1 %or.cond78, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = mul i32 %i.cc, %7
  %i.ce = add i32 %i.cd, 7
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = add nuw nsw i32 %i.cf, 1
  %i.ch = mul i32 %.pre66, %i.cg
  %i.ci = zext i32 %i.ch to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = phi i64 [ %i.ci, %bb.r ], [ 0, %bb.q ]
  %i.ck = add i64 %i.cj, %i.cb
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !25
  %i.cm = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.cn = mul i32 %i.cc, %7                       ; 2 uses
  %i.co = add i32 %i.cn, 7
  %i.cp = lshr i32 %i.co, 3
  %i.cq = mul i32 %.pre66, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add i64 %i.cm, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !25
  %i.cu = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cv = mul i32 %i.cn, %.pre66
  %i.cw = add i32 %i.cv, 7
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !25
  %i.db = load i64, ptr %i.cl, align 8, !tbaa !25
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !29  ; 3 uses
  %.not60.2 = icmp eq i32 %i.dc, 0
  %.pre67 = load i32, ptr %i.t, align 4, !tbaa !29 ; 4 uses
  %.not61.2 = icmp eq i32 %.pre67, 0
  %or.cond79 = select i1 %.not60.2, i1 true, i1 %.not61.2
  br i1 %or.cond79, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = mul i32 %i.dc, %7
  %i.de = add i32 %i.dd, 7
  %i.df = lshr i32 %i.de, 3
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = mul i32 %.pre67, %i.dg
  %i.di = zext i32 %i.dh to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dj = phi i64 [ %i.di, %bb.t ], [ 0, %bb.s ]
  %i.dk = add i64 %i.dj, %i.db
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !25
  %i.dm = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.dn = mul i32 %i.dc, %7                       ; 2 uses
  %i.do = add i32 %i.dn, 7
  %i.dp = lshr i32 %i.do, 3
  %i.dq = mul i32 %.pre67, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add i64 %i.dm, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !25
  %i.du = load i64, ptr %i.da, align 8, !tbaa !25
  %i.dv = mul i32 %i.dn, %.pre67
  %i.dw = add i32 %i.dv, 7
  %i.dx = lshr i32 %i.dw, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = add i64 %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !25
  %i.eb = load i64, ptr %i.dl, align 8, !tbaa !25
  %i.ec = load i32, ptr %i.z, align 4, !tbaa !29  ; 3 uses
  %.not60.3 = icmp eq i32 %i.ec, 0
  %.pre68 = load i32, ptr %i.ac, align 4, !tbaa !29 ; 4 uses
  %.not61.3 = icmp eq i32 %.pre68, 0
  %or.cond80 = select i1 %.not60.3, i1 true, i1 %.not61.3
  br i1 %or.cond80, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = mul i32 %i.ec, %7
  %i.ee = add i32 %i.ed, 7
  %i.ef = lshr i32 %i.ee, 3
  %i.eg = add nuw nsw i32 %i.ef, 1
  %i.eh = mul i32 %.pre68, %i.eg
  %i.ei = zext i32 %i.eh to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ej = phi i64 [ %i.ei, %bb.v ], [ 0, %bb.u ]
  %i.ek = add i64 %i.ej, %i.eb
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !25
  %i.em = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.en = mul i32 %i.ec, %7                       ; 2 uses
  %i.eo = add i32 %i.en, 7
  %i.ep = lshr i32 %i.eo, 3
  %i.eq = mul i32 %.pre68, %i.ep
  %i.er = zext i32 %i.eq to i64
  %i.es = add i64 %i.em, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 %i.es, ptr %i.et, align 8, !tbaa !25
  %i.eu = load i64, ptr %i.ea, align 8, !tbaa !25
  %i.ev = mul i32 %i.en, %.pre68
  %i.ew = add i32 %i.ev, 7
  %i.ex = lshr i32 %i.ew, 3
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = add i64 %i.eu, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !25
  %i.fb = load i64, ptr %i.el, align 8, !tbaa !25
  %i.fc = load i32, ptr %i.ai, align 4, !tbaa !29 ; 3 uses
  %.not60.4 = icmp eq i32 %i.fc, 0
  %.pre69 = load i32, ptr %i.al, align 4, !tbaa !29 ; 4 uses
  %.not61.4 = icmp eq i32 %.pre69, 0
  %or.cond81 = select i1 %.not60.4, i1 true, i1 %.not61.4
  br i1 %or.cond81, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fd = mul i32 %i.fc, %7
  %i.fe = add i32 %i.fd, 7
  %i.ff = lshr i32 %i.fe, 3
  %i.fg = add nuw nsw i32 %i.ff, 1
  %i.fh = mul i32 %.pre69, %i.fg
  %i.fi = zext i32 %i.fh to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fj = phi i64 [ %i.fi, %bb.x ], [ 0, %bb.w ]
  %i.fk = add i64 %i.fj, %i.fb
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !25
  %i.fm = load i64, ptr %i.et, align 8, !tbaa !25
  %i.fn = mul i32 %i.fc, %7                       ; 2 uses
  %i.fo = add i32 %i.fn, 7
  %i.fp = lshr i32 %i.fo, 3
  %i.fq = mul i32 %.pre69, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add i64 %i.fm, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !25
  %i.fu = load i64, ptr %i.fa, align 8, !tbaa !25
  %i.fv = mul i32 %i.fn, %.pre69
  %i.fw = add i32 %i.fv, 7
  %i.fx = lshr i32 %i.fw, 3
end_hunk_0
