inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf8fallback14implementation25convert_utf16le_to_latin1EPKDsmPc:bb.a
  %i.ah = or i32 %i.aa, %i.ag
  %i.ai = trunc i16 %i.af to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.ai, ptr %i.ac, align 1
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = or i32 %i.ah, %i.an
  %i.ap = trunc i16 %i.am to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.ap, ptr %i.aj, align 1
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = or i32 %i.ao, %i.au                     ; 2 uses
  %i.aw = trunc i16 %i.at to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01722.i, i64 4 ; 2 uses
  store i8 %i.aw, ptr %i.aq, align 1
  %i.ay = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ay, %2
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !132

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa5 = phi i32 [ %i.n, %middle.block ], [ %.lcssa12.unr, %.preheader.i.prol.loopexit ], [ %i.av, %.preheader.i ]
  %.lcssa = phi ptr [ %i.c, %middle.block ], [ %.lcssa11.unr, %.preheader.i.prol.loopexit ], [ %i.ax, %.preheader.i ]
  %i.az = and i32 %.lcssa5, 65280
  %.not.i = icmp eq i32 %i.az, 0
  %i.ba = ptrtoint ptr %.lcssa to i64
  %i.bb = ptrtoint ptr %3 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.019.i = select i1 %.not.i, i64 %i.bc, i64 0
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit: ; preds = %bb.a, %.loopexit
  %.1.i = phi i64 [ %.019.i, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8fallback14implementation25convert_utf16be_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.preheader
  %scevgep = getelementptr i8, ptr %3, i64 %2
  %i.b = shl i64 %2, 1
  %scevgep6 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %3, %scevgep6
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.c = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.load = load <4 x i16>, ptr %i.d, align 2, !alias.scope !133
  %wide.load8 = load <4 x i16>, ptr %i.e, align 2, !alias.scope !133
  %i.f = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load) ; 2 uses
  %i.g = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load8) ; 2 uses
  %i.h = zext <4 x i16> %i.f to <4 x i32>
  %i.i = zext <4 x i16> %i.g to <4 x i32>
  %i.j = or <4 x i32> %vec.phi, %i.h              ; 2 uses
  %i.k = or <4 x i32> %vec.phi7, %i.i             ; 2 uses
  %i.l = trunc <4 x i16> %i.f to <4 x i8>
  %i.m = trunc <4 x i16> %i.g to <4 x i8>
  %i.n = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.l, ptr %next.gep, align 1, !alias.scope !136, !noalias !133
  store <4 x i8> %i.m, ptr %i.n, align 1, !alias.scope !136, !noalias !133
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.k, %i.j
  %i.p = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.preheader10

.preheader.i.preheader10:                         ; preds = %vector.memcheck, %.preheader.i.preheader, %middle.block
  %.023.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %.01722.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.preheader.i.preheader ], [ %i.c, %middle.block ] ; 2 uses
  %.01821.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader10, %.preheader.i.prol
  %.023.i.prol = phi i32 [ %i.u, %.preheader.i.prol ], [ %.023.i.ph, %.preheader.i.preheader10 ]
  %.01722.i.prol = phi ptr [ %i.w, %.preheader.i.prol ], [ %.01722.i.ph, %.preheader.i.preheader10 ] ; 2 uses
  %.01821.i.prol = phi i64 [ %i.x, %.preheader.i.prol ], [ %.01821.i.ph, %.preheader.i.preheader10 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader10 ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i.prol
  %i.r = load i16, ptr %i.q, align 2
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r) ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = or i32 %.023.i.prol, %i.t                ; 3 uses
  %i.v = trunc i16 %i.s to i8
  %i.w = getelementptr inbounds nuw i8, ptr %.01722.i.prol, i64 1 ; 3 uses
  store i8 %i.v, ptr %.01722.i.prol, align 1
  %i.x = add nuw i64 %.01821.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !139

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader10
  %.lcssa12.unr = phi i32 [ poison, %.preheader.i.preheader10 ], [ %i.u, %.preheader.i.prol ]
  %.lcssa11.unr = phi ptr [ poison, %.preheader.i.preheader10 ], [ %i.w, %.preheader.i.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader10 ], [ %i.u, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader10 ], [ %i.w, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader10 ], [ %i.x, %.preheader.i.prol ]
  %i.y = sub i64 %.01821.i.ph, %2
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.bc, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.be, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.bf, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab) ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = or i32 %.023.i, %i.ad
  %i.af = trunc i16 %i.ac to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.af, ptr %.01722.i, align 1
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj) ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = or i32 %i.ae, %i.al
  %i.an = trunc i16 %i.ak to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.an, ptr %i.ag, align 1
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar) ; 2 uses
  %i.at = zext i16 %i.as to i32
  %i.au = or i32 %i.am, %i.at
  %i.av = trunc i16 %i.as to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.av, ptr %i.ao, align 1
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az) ; 2 uses
  %i.bb = zext i16 %i.ba to i32
  %i.bc = or i32 %i.au, %i.bb                     ; 2 uses
  %i.bd = trunc i16 %i.ba to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.01722.i, i64 4 ; 2 uses
  store i8 %i.bd, ptr %i.aw, align 1
  %i.bf = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bf, %2
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !140

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa5 = phi i32 [ %i.p, %middle.block ], [ %.lcssa12.unr, %.preheader.i.prol.loopexit ], [ %i.bc, %.preheader.i ]
  %.lcssa = phi ptr [ %i.c, %middle.block ], [ %.lcssa11.unr, %.preheader.i.prol.loopexit ], [ %i.be, %.preheader.i ]
  %i.bg = and i32 %.lcssa5, 65280
  %.not.i = icmp eq i32 %i.bg, 0
  %i.bh = ptrtoint ptr %.lcssa to i64
  %i.bi = ptrtoint ptr %3 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %.019.i = select i1 %.not.i, i64 %i.bj, i64 0
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit: ; preds = %bb.a, %.loopexit
  %.1.i = phi i64 [ %.019.i, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation37convert_utf16le_to_latin1_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit, label %.preheader64.i

.preheader64.i:                                   ; preds = %bb.a, %.backedge.i
  %.05072.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %3, %bb.a ] ; 20 uses
  %.05571.i = phi i64 [ %.055.be.i, %.backedge.i ], [ 0, %bb.a ] ; 6 uses
  %i.b = add i64 %.05571.i, 16                    ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %2
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05571.i ; 17 uses
  br i1 %.not.i, label %.preheader64..thread_crit_edge.i, label %bb.b

.preheader64..thread_crit_edge.i:                 ; preds = %.preheader64.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %.thread.i

bb.b:                                             ; preds = %.preheader64.i
  %.0.copyload13.i = load i64, ptr %.phi.trans.insert.i, align 2 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload9.i = load i64, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 16 ; 2 uses
  %.0.copyload5.i = load i64, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 24 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.e, align 2
  %4 = or i64 %.0.copyload9.i, %.0.copyload5.i
  %5 = or i64 %4, %.0.copyload.i
  %6 = or i64 %5, %.0.copyload13.i
  %i.f = and i64 %6, -71777214294589696
  %i.g = icmp eq i64 %i.f, 0
  %i.h = trunc i64 %.0.copyload13.i to i16
  br i1 %i.g, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.b
  %i.i = icmp ult i64 %.05571.i, -16
  br i1 %i.i, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = trunc i64 %.0.copyload13.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.05072.i, i64 1
  store i8 %i.j, ptr %.05072.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = trunc i16 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.05072.i, i64 2
  store i8 %i.n, ptr %i.k, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.q = load i16, ptr %i.p, align 2
  %i.r = trunc i16 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.05072.i, i64 3
  store i8 %i.r, ptr %i.o, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.u = load i16, ptr %i.t, align 2
  %i.v = trunc i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %.05072.i, i64 4
  store i8 %i.v, ptr %i.s, align 1
  %i.x = load i16, ptr %i.c, align 2
  %i.y = trunc i16 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.05072.i, i64 5
  store i8 %i.y, ptr %i.w, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.05072.i, i64 6
  store i8 %i.ac, ptr %i.z, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = trunc i16 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.05072.i, i64 7
  store i8 %i.ag, ptr %i.ad, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = trunc i16 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.05072.i, i64 8
  store i8 %i.ak, ptr %i.ah, align 1
  %i.am = load i16, ptr %i.d, align 2
  %i.an = trunc i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.05072.i, i64 9
  store i8 %i.an, ptr %i.al, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 18
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = trunc i16 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.05072.i, i64 10
  store i8 %i.ar, ptr %i.ao, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 20
  %i.au = load i16, ptr %i.at, align 2
  %i.av = trunc i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.05072.i, i64 11
  store i8 %i.av, ptr %i.as, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 22
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = trunc i16 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.05072.i, i64 12
  store i8 %i.az, ptr %i.aw, align 1
  %i.bb = load i16, ptr %i.e, align 2
  %i.bc = trunc i16 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.05072.i, i64 13
  store i8 %i.bc, ptr %i.ba, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 26
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = trunc i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.05072.i, i64 14
  store i8 %i.bg, ptr %i.bd, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 28
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.05072.i, i64 15
  store i8 %i.bk, ptr %i.bh, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 30
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.05072.i, i64 16
  store i8 %i.bo, ptr %i.bl, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.b, %.preheader64..thread_crit_edge.i
  %i.bq = phi i16 [ %.pre.i, %.preheader64..thread_crit_edge.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.br = icmp ult i16 %i.bq, 256
  br i1 %i.br, label %bb.c, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit

bb.c:                                             ; preds = %.thread.i
  %i.bs = trunc nuw i16 %i.bq to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.05072.i, i64 1
  store i8 %i.bs, ptr %.05072.i, align 1
  %i.bu = add i64 %.05571.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.c, %.lr.ph.preheader.i, %.preheader.i
  %.055.be.i = phi i64 [ %i.bu, %bb.c ], [ %.05571.i, %.preheader.i ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %.050.be.i = phi ptr [ %i.bt, %bb.c ], [ %.05072.i, %.preheader.i ], [ %i.bp, %.lr.ph.preheader.i ] ; 2 uses
  %i.bv = icmp ult i64 %.055.be.i, %2
  br i1 %i.bv, label %.preheader64.i, label %bb.d, !llvm.loop !141

bb.d:                                             ; preds = %.backedge.i
  %i.bw = ptrtoint ptr %.050.be.i to i64
  %i.bx = ptrtoint ptr %3 to i64
  %i.by = sub i64 %i.bw, %i.bx
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit: ; preds = %.thread.i, %bb.a, %bb.d
  %.sroa.4.0.i = phi i64 [ %i.by, %bb.d ], [ 0, %bb.a ], [ %.05571.i, %.thread.i ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 5, %.thread.i ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation37convert_utf16be_to_latin1_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsmPc(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret { i32, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsmPc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit65, label %.preheader64

.preheader64:                                     ; preds = %bb.a, %.backedge
  %.05072 = phi ptr [ %.050.be, %.backedge ], [ %2, %bb.a ] ; 20 uses
  %.05571 = phi i64 [ %.055.be, %.backedge ], [ 0, %bb.a ] ; 21 uses
  %i.b = add i64 %.05571, 16                      ; 2 uses
  %.not = icmp ugt i64 %i.b, %1
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571 ; 5 uses
  br i1 %.not, label %.preheader64..thread_crit_edge, label %bb.b

.preheader64..thread_crit_edge:                   ; preds = %.preheader64
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %.thread

bb.b:                                             ; preds = %.preheader64
  %.0.copyload13 = load i64, ptr %.phi.trans.insert, align 2 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.0.copyload9 = load i64, ptr %3, align 2
  %4 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.0.copyload5 = load i64, ptr %4, align 2
  %5 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 24
  %.0.copyload = load i64, ptr %5, align 2
  %6 = or i64 %.0.copyload9, %.0.copyload5
  %7 = or i64 %6, %.0.copyload
  %8 = or i64 %7, %.0.copyload13                  ; 2 uses
  %i.c = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 56)
  %i.d = and i64 %i.c, -71777214294589696
  %i.e = icmp eq i64 %i.d, 0
  %i.f = trunc i64 %.0.copyload13 to i16
  br i1 %i.e, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.g = icmp ult i64 %.05571, -16
  br i1 %i.g, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = lshr i64 %.0.copyload13, 8
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.05072, i64 1
  store i8 %i.i, ptr %.05072, align 1
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = lshr i16 %i.m, 8
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.05072, i64 2
  store i8 %i.o, ptr %i.j, align 1
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i16, ptr %i.r, align 2
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.05072, i64 3
  store i8 %i.u, ptr %i.p, align 1
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.y = load i16, ptr %i.x, align 2
  %i.z = lshr i16 %i.y, 8
  %i.aa = trunc nuw i16 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.05072, i64 4
  store i8 %i.aa, ptr %i.v, align 1
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = lshr i16 %i.ae, 8
  %i.ag = trunc nuw i16 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.05072, i64 5
  store i8 %i.ag, ptr %i.ab, align 1
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = lshr i16 %i.ak, 8
  %i.am = trunc nuw i16 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.05072, i64 6
  store i8 %i.am, ptr %i.ah, align 1
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = lshr i16 %i.aq, 8
  %i.as = trunc nuw i16 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.05072, i64 7
  store i8 %i.as, ptr %i.an, align 1
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = lshr i16 %i.aw, 8
  %i.ay = trunc nuw i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.05072, i64 8
  store i8 %i.ay, ptr %i.at, align 1
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = lshr i16 %i.bc, 8
  %i.be = trunc nuw i16 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.05072, i64 9
  store i8 %i.be, ptr %i.az, align 1
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = lshr i16 %i.bi, 8
  %i.bk = trunc nuw i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.05072, i64 10
  store i8 %i.bk, ptr %i.bf, align 1
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = lshr i16 %i.bo, 8
  %i.bq = trunc nuw i16 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.05072, i64 11
  store i8 %i.bq, ptr %i.bl, align 1
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 22
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = lshr i16 %i.bu, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.05072, i64 12
  store i8 %i.bw, ptr %i.br, align 1
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = lshr i16 %i.ca, 8
  %i.cc = trunc nuw i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.05072, i64 13
  store i8 %i.cc, ptr %i.bx, align 1
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 26
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.05072, i64 14
  store i8 %i.ci, ptr %i.cd, align 1
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = lshr i16 %i.cm, 8
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.05072, i64 15
  store i8 %i.co, ptr %i.cj, align 1
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05571
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 30
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = lshr i16 %i.cs, 8
  %i.cu = trunc nuw i16 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %.05072, i64 16
  store i8 %i.cu, ptr %i.cp, align 1
  br label %.backedge

.thread:                                          ; preds = %.preheader64..thread_crit_edge, %bb.b
  %i.cw = phi i16 [ %.pre, %.preheader64..thread_crit_edge ], [ %i.f, %bb.b ]
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %i.cw) ; 2 uses
  %i.cy = icmp ult i16 %i.cx, 256
  br i1 %i.cy, label %bb.c, label %.loopexit65

bb.c:                                             ; preds = %.thread
  %i.cz = trunc nuw i16 %i.cx to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.05072, i64 1
  store i8 %i.cz, ptr %.05072, align 1
  %i.db = add i64 %.05571, 1
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph.preheader, %.preheader, %bb.c
  %.055.be = phi i64 [ %i.db, %bb.c ], [ %.05571, %.preheader ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.050.be = phi ptr [ %i.da, %bb.c ], [ %.05072, %.preheader ], [ %i.cv, %.lr.ph.preheader ] ; 2 uses
  %i.dc = icmp ult i64 %.055.be, %1
  br i1 %i.dc, label %.preheader64, label %bb.d, !llvm.loop !142

bb.d:                                             ; preds = %.backedge
  %i.dd = ptrtoint ptr %.050.be to i64
  %i.de = ptrtoint ptr %2 to i64
  %i.df = sub i64 %i.dd, %i.de
  br label %.loopexit65

.loopexit65:                                      ; preds = %.thread, %bb.a, %bb.d
  %.sroa.4.0 = phi i64 [ %i.df, %bb.d ], [ 0, %bb.a ], [ %.05571, %.thread ]
  %.sroa.0.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 5, %.thread ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8fallback14implementation31convert_valid_utf16le_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin113convert_validILNS_10endiannessE0EEEmPKDsmPc.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %3, i64 %2
  %i.a = shl i64 %2, 1
  %scevgep2 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %3, %scevgep2
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %2, 16
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 5 uses
  %i.c = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <8 x i16>, ptr %i.d, align 2, !alias.scope !143
  %wide.load4 = load <8 x i16>, ptr %i.e, align 2, !alias.scope !143
  %i.f = trunc <8 x i16> %wide.load to <8 x i8>
  %i.g = trunc <8 x i16> %wide.load4 to <8 x i8>
  %i.h = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.f, ptr %next.gep, align 1, !alias.scope !146, !noalias !143
  store <8 x i8> %i.g, ptr %i.h, align 1, !alias.scope !146, !noalias !143
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7haswell14implementation37convert_utf16le_to_latin1_with_errorsEPKDsmPc:bb.a
  %i.e = phi i64 [ %i.cq, %.critedge.i ], [ %i.c, %bb.a ]
  %.069.i = phi ptr [ %.1.i, %.critedge.i ], [ %1, %bb.a ] ; 17 uses
  %.05868.i = phi ptr [ %.3.i, %.critedge.i ], [ %3, %bb.a ] ; 18 uses
  %i.f = load <4 x i64>, ptr %.069.i, align 1, !noalias !663 ; 4 uses
  %i.g = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.f, <4 x i64> splat (i64 -71777214294589696))
  %.not.i = icmp eq i32 %i.g, 0
  %bc.i = bitcast <4 x i64> %i.f to <16 x i16>
  %i.h = extractelement <16 x i16> %bc.i, i64 0   ; 2 uses
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.b

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %i.i = icmp ult i16 %i.h, 256
  br i1 %i.i, label %.preheader.1.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = bitcast <4 x i64> %i.f to <16 x i16>
  %i.k = shufflevector <16 x i16> %i.j, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.l = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.k, <8 x i16> poison)
  %i.m = bitcast <16 x i8> %i.l to <2 x i64>
  %i.n = bitcast <4 x i64> %i.f to <16 x i16>
  %i.o = shufflevector <16 x i16> %i.n, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.p = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.o, <8 x i16> poison)
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = shufflevector <2 x i64> %i.m, <2 x i64> %i.q, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.r, ptr %.05868.i, align 1, !noalias !663
  br label %.critedge.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.s = trunc nuw i16 %i.h to i8
  store i8 %i.s, ptr %.05868.i, align 1, !noalias !663
  %i.t = getelementptr inbounds nuw i8, ptr %.069.i, i64 2
  %i.u = load i16, ptr %i.t, align 2, !noalias !663 ; 2 uses
  %i.v = icmp ult i16 %i.u, 256
  br i1 %i.v, label %.preheader.2.i, label %bb.c

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05868.i, i64 1
  %i.x = trunc nuw i16 %i.u to i8
  store i8 %i.x, ptr %i.w, align 1, !noalias !663
  %i.y = getelementptr inbounds nuw i8, ptr %.069.i, i64 4
  %i.z = load i16, ptr %i.y, align 2, !noalias !663 ; 2 uses
  %i.aa = icmp ult i16 %i.z, 256
  br i1 %i.aa, label %.preheader.3.i, label %bb.c

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05868.i, i64 2
  %i.ac = trunc nuw i16 %i.z to i8
  store i8 %i.ac, ptr %i.ab, align 1, !noalias !663
  %i.ad = getelementptr inbounds nuw i8, ptr %.069.i, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !663 ; 2 uses
  %i.af = icmp ult i16 %i.ae, 256
  br i1 %i.af, label %.preheader.4.i, label %bb.c

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05868.i, i64 3
  %i.ah = trunc nuw i16 %i.ae to i8
  store i8 %i.ah, ptr %i.ag, align 1, !noalias !663
  %i.ai = getelementptr inbounds nuw i8, ptr %.069.i, i64 8
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !663 ; 2 uses
  %i.ak = icmp ult i16 %i.aj, 256
  br i1 %i.ak, label %.preheader.5.i, label %bb.c

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05868.i, i64 4
  %i.am = trunc nuw i16 %i.aj to i8
  store i8 %i.am, ptr %i.al, align 1, !noalias !663
  %i.an = getelementptr inbounds nuw i8, ptr %.069.i, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !noalias !663 ; 2 uses
  %i.ap = icmp ult i16 %i.ao, 256
  br i1 %i.ap, label %.preheader.6.i, label %bb.c

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05868.i, i64 5
  %i.ar = trunc nuw i16 %i.ao to i8
  store i8 %i.ar, ptr %i.aq, align 1, !noalias !663
  %i.as = getelementptr inbounds nuw i8, ptr %.069.i, i64 12
  %i.at = load i16, ptr %i.as, align 2, !noalias !663 ; 2 uses
  %i.au = icmp ult i16 %i.at, 256
  br i1 %i.au, label %.preheader.7.i, label %bb.c

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05868.i, i64 6
  %i.aw = trunc nuw i16 %i.at to i8
  store i8 %i.aw, ptr %i.av, align 1, !noalias !663
  %i.ax = getelementptr inbounds nuw i8, ptr %.069.i, i64 14
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !663 ; 2 uses
  %i.az = icmp ult i16 %i.ay, 256
  br i1 %i.az, label %.preheader.8.i, label %bb.c

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05868.i, i64 7
  %i.bb = trunc nuw i16 %i.ay to i8
  store i8 %i.bb, ptr %i.ba, align 1, !noalias !663
  %i.bc = getelementptr inbounds nuw i8, ptr %.069.i, i64 16
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !663 ; 2 uses
  %i.be = icmp ult i16 %i.bd, 256
  br i1 %i.be, label %.preheader.9.i, label %bb.c

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05868.i, i64 8
  %i.bg = trunc nuw i16 %i.bd to i8
  store i8 %i.bg, ptr %i.bf, align 1, !noalias !663
  %i.bh = getelementptr inbounds nuw i8, ptr %.069.i, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !noalias !663 ; 2 uses
  %i.bj = icmp ult i16 %i.bi, 256
  br i1 %i.bj, label %.preheader.10.i, label %bb.c

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05868.i, i64 9
  %i.bl = trunc nuw i16 %i.bi to i8
  store i8 %i.bl, ptr %i.bk, align 1, !noalias !663
  %i.bm = getelementptr inbounds nuw i8, ptr %.069.i, i64 20
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !663 ; 2 uses
  %i.bo = icmp ult i16 %i.bn, 256
  br i1 %i.bo, label %.preheader.11.i, label %bb.c

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05868.i, i64 10
  %i.bq = trunc nuw i16 %i.bn to i8
  store i8 %i.bq, ptr %i.bp, align 1, !noalias !663
  %i.br = getelementptr inbounds nuw i8, ptr %.069.i, i64 22
  %i.bs = load i16, ptr %i.br, align 2, !noalias !663 ; 2 uses
  %i.bt = icmp ult i16 %i.bs, 256
  br i1 %i.bt, label %.preheader.12.i, label %bb.c

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05868.i, i64 11
  %i.bv = trunc nuw i16 %i.bs to i8
  store i8 %i.bv, ptr %i.bu, align 1, !noalias !663
  %i.bw = getelementptr inbounds nuw i8, ptr %.069.i, i64 24
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !663 ; 2 uses
  %i.by = icmp ult i16 %i.bx, 256
  br i1 %i.by, label %.preheader.13.i, label %bb.c

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05868.i, i64 12
  %i.ca = trunc nuw i16 %i.bx to i8
  store i8 %i.ca, ptr %i.bz, align 1, !noalias !663
  %i.cb = getelementptr inbounds nuw i8, ptr %.069.i, i64 26
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !663 ; 2 uses
  %i.cd = icmp ult i16 %i.cc, 256
  br i1 %i.cd, label %.preheader.14.i, label %bb.c

.preheader.14.i:                                  ; preds = %.preheader.13.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.05868.i, i64 13
  %i.cf = trunc nuw i16 %i.cc to i8
  store i8 %i.cf, ptr %i.ce, align 1, !noalias !663
  %i.cg = getelementptr inbounds nuw i8, ptr %.069.i, i64 28
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !663 ; 2 uses
  %i.ci = icmp ult i16 %i.ch, 256
  br i1 %i.ci, label %.preheader.15.i, label %bb.c

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05868.i, i64 14
  %i.ck = trunc nuw i16 %i.ch to i8
  store i8 %i.ck, ptr %i.cj, align 1, !noalias !663
  %i.cl = getelementptr inbounds nuw i8, ptr %.069.i, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !663 ; 2 uses
  %i.cn = icmp ult i16 %i.cm, 256
  br i1 %i.cn, label %.critedge.loopexit.i, label %bb.c

.critedge.loopexit.i:                             ; preds = %.preheader.15.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05868.i, i64 15
  %i.cp = trunc nuw i16 %i.cm to i8
  store i8 %i.cp, ptr %i.co, align 1, !noalias !663
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.3.i = getelementptr inbounds nuw i8, ptr %.05868.i, i64 16 ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.069.i, i64 32 ; 2 uses
  %i.cq = ptrtoint ptr %.1.i to i64               ; 3 uses
  %i.cr = sub i64 %i.b, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 30
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit, !llvm.loop !666

bb.c:                                             ; preds = %.preheader.15.i, %.preheader.14.i, %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.03967.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ], [ 4, %.preheader.4.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ], [ 8, %.preheader.8.i ], [ 9, %.preheader.9.i ], [ 10, %.preheader.10.i ], [ 11, %.preheader.11.i ], [ 12, %.preheader.12.i ], [ 13, %.preheader.13.i ], [ 14, %.preheader.14.i ], [ 15, %.preheader.15.i ]
  %i.ct = sub i64 %i.e, %i.c
  %i.cu = ashr exact i64 %i.ct, 1
  %i.cv = add nsw i64 %.03967.lcssa.wide.i, %i.cu
  br label %bb.j

.loopexit:                                        ; preds = %.critedge.i, %bb.a
  %.058.lcssa.i = phi ptr [ %3, %bb.a ], [ %.3.i, %.critedge.i ] ; 4 uses
  %.lcssa.i = phi i64 [ %i.c, %bb.a ], [ %i.cq, %.critedge.i ]
  %i.cw = sub i64 %.lcssa.i, %i.c                 ; 2 uses
  %i.cx = ashr exact i64 %i.cw, 1                 ; 3 uses
  %.not17 = icmp eq i64 %i.cx, %2
  br i1 %.not17, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cz = sub i64 %2, %i.cx                       ; 2 uses
  br label %.preheader64.i

.preheader64.i:                                   ; preds = %bb.d, %.backedge.i
  %.05072.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %.058.lcssa.i, %bb.d ] ; 20 uses
  %.05571.i = phi i64 [ %.055.be.i, %.backedge.i ], [ 0, %bb.d ] ; 6 uses
  %i.da = add i64 %.05571.i, 16                   ; 2 uses
  %.not.i19 = icmp ugt i64 %i.da, %i.cz
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %.05571.i ; 17 uses
  br i1 %.not.i19, label %.preheader64..thread_crit_edge.i, label %bb.e

.preheader64..thread_crit_edge.i:                 ; preds = %.preheader64.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %.thread.i

bb.e:                                             ; preds = %.preheader64.i
  %.0.copyload13.i = load i64, ptr %.phi.trans.insert.i, align 2 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload9.i = load i64, ptr %i.db, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 16 ; 2 uses
  %.0.copyload5.i = load i64, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 24 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.dd, align 2
  %4 = or i64 %.0.copyload9.i, %.0.copyload5.i
  %5 = or i64 %4, %.0.copyload.i
  %6 = or i64 %5, %.0.copyload13.i
  %i.de = and i64 %6, -71777214294589696
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = trunc i64 %.0.copyload13.i to i16
  br i1 %i.df, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.dh = icmp ult i64 %.05571.i, -16
  br i1 %i.dh, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.di = trunc i64 %.0.copyload13.i to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %.05072.i, i64 1
  store i8 %i.di, ptr %.05072.i, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = trunc i16 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.05072.i, i64 2
  store i8 %i.dm, ptr %i.dj, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = trunc i16 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %.05072.i, i64 3
  store i8 %i.dq, ptr %i.dn, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = trunc i16 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %.05072.i, i64 4
  store i8 %i.du, ptr %i.dr, align 1
  %i.dw = load i16, ptr %i.db, align 2
  %i.dx = trunc i16 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.05072.i, i64 5
  store i8 %i.dx, ptr %i.dv, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = trunc i16 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.05072.i, i64 6
  store i8 %i.eb, ptr %i.dy, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = trunc i16 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.05072.i, i64 7
  store i8 %i.ef, ptr %i.ec, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = trunc i16 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.05072.i, i64 8
  store i8 %i.ej, ptr %i.eg, align 1
  %i.el = load i16, ptr %i.dc, align 2
  %i.em = trunc i16 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.05072.i, i64 9
  store i8 %i.em, ptr %i.ek, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 18
  %i.ep = load i16, ptr %i.eo, align 2
  %i.eq = trunc i16 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %.05072.i, i64 10
  store i8 %i.eq, ptr %i.en, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 20
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = trunc i16 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.05072.i, i64 11
  store i8 %i.eu, ptr %i.er, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 22
  %i.ex = load i16, ptr %i.ew, align 2
  %i.ey = trunc i16 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.05072.i, i64 12
  store i8 %i.ey, ptr %i.ev, align 1
  %i.fa = load i16, ptr %i.dd, align 2
  %i.fb = trunc i16 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.05072.i, i64 13
  store i8 %i.fb, ptr %i.ez, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 26
  %i.fe = load i16, ptr %i.fd, align 2
  %i.ff = trunc i16 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %.05072.i, i64 14
  store i8 %i.ff, ptr %i.fc, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 28
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = trunc i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.05072.i, i64 15
  store i8 %i.fj, ptr %i.fg, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 30
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = trunc i16 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.05072.i, i64 16
  store i8 %i.fn, ptr %i.fk, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.e, %.preheader64..thread_crit_edge.i
  %i.fp = phi i16 [ %.pre.i, %.preheader64..thread_crit_edge.i ], [ %i.dg, %bb.e ] ; 2 uses
  %i.fq = icmp ult i16 %i.fp, 256
  br i1 %i.fq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread.i
  %i.fr = trunc nuw i16 %i.fp to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.05072.i, i64 1
  store i8 %i.fr, ptr %.05072.i, align 1
  %i.ft = add i64 %.05571.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.f, %.lr.ph.preheader.i, %.preheader.i
  %.055.be.i = phi i64 [ %i.ft, %bb.f ], [ %.05571.i, %.preheader.i ], [ %i.da, %.lr.ph.preheader.i ] ; 2 uses
  %.050.be.i = phi ptr [ %i.fs, %bb.f ], [ %.05072.i, %.preheader.i ], [ %i.fo, %.lr.ph.preheader.i ] ; 2 uses
  %i.fu = icmp ult i64 %.055.be.i, %i.cz
  br i1 %i.fu, label %.preheader64.i, label %bb.g, !llvm.loop !141

bb.g:                                             ; preds = %.backedge.i
  %i.fv = ptrtoint ptr %.050.be.i to i64
  %i.fw = ptrtoint ptr %.058.lcssa.i to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.058.lcssa.i, i64 %i.fx
  br label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.fz = add i64 %.05571.i, %i.cx
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.loopexit
  %.sroa.10.0 = phi ptr [ %.058.lcssa.i, %.loopexit ], [ %i.fy, %bb.g ]
  %i.ga = ptrtoint ptr %.sroa.10.0 to i64
  %i.gb = ptrtoint ptr %3 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.c
  %.sroa.0.0 = phi i32 [ 5, %bb.c ], [ 5, %bb.h ], [ 0, %bb.i ]
  %.sroa.59.0 = phi i64 [ %i.cv, %bb.c ], [ %i.fz, %bb.h ], [ %i.gc, %bb.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.59.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation37convert_utf16be_to_latin1_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %i.e = phi i64 [ %i.di, %.critedge.i ], [ %i.c, %bb.a ]
  %.069.i = phi ptr [ %.1.i, %.critedge.i ], [ %1, %bb.a ] ; 17 uses
  %.05868.i = phi ptr [ %.3.i, %.critedge.i ], [ %3, %bb.a ] ; 18 uses
  %i.f = load <32 x i8>, ptr %.069.i, align 1, !noalias !667 ; 2 uses
  %i.g = shufflevector <32 x i8> %i.f, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30> ; 3 uses
  %i.h = bitcast <32 x i8> %i.g to <4 x i64>
  %i.i = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.h, <4 x i64> splat (i64 -71777214294589696))
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.b

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %bc.i = bitcast <32 x i8> %i.f to <16 x i16>
  %i.j = extractelement <16 x i16> %bc.i, i64 0
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j) ; 2 uses
  %i.l = icmp ult i16 %i.k, 256
  br i1 %i.l, label %.preheader.1.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = bitcast <32 x i8> %i.g to <16 x i16>
  %i.n = shufflevector <16 x i16> %i.m, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.o = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.n, <8 x i16> poison)
  %i.p = bitcast <16 x i8> %i.o to <2 x i64>
  %i.q = bitcast <32 x i8> %i.g to <16 x i16>
  %i.r = shufflevector <16 x i16> %i.q, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.s = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.r, <8 x i16> poison)
  %i.t = bitcast <16 x i8> %i.s to <2 x i64>
  %i.u = shufflevector <2 x i64> %i.p, <2 x i64> %i.t, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.u, ptr %.05868.i, align 1, !noalias !667
  br label %.critedge.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.v = trunc nuw i16 %i.k to i8
  store i8 %i.v, ptr %.05868.i, align 1, !noalias !667
  %i.w = getelementptr inbounds nuw i8, ptr %.069.i, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !667
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x) ; 2 uses
  %i.z = icmp ult i16 %i.y, 256
  br i1 %i.z, label %.preheader.2.i, label %bb.c

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05868.i, i64 1
  %i.ab = trunc nuw i16 %i.y to i8
  store i8 %i.ab, ptr %i.aa, align 1, !noalias !667
  %i.ac = getelementptr inbounds nuw i8, ptr %.069.i, i64 4
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !667
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad) ; 2 uses
  %i.af = icmp ult i16 %i.ae, 256
  br i1 %i.af, label %.preheader.3.i, label %bb.c

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05868.i, i64 2
  %i.ah = trunc nuw i16 %i.ae to i8
  store i8 %i.ah, ptr %i.ag, align 1, !noalias !667
  %i.ai = getelementptr inbounds nuw i8, ptr %.069.i, i64 6
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !667
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj) ; 2 uses
  %i.al = icmp ult i16 %i.ak, 256
  br i1 %i.al, label %.preheader.4.i, label %bb.c

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05868.i, i64 3
  %i.an = trunc nuw i16 %i.ak to i8
  store i8 %i.an, ptr %i.am, align 1, !noalias !667
  %i.ao = getelementptr inbounds nuw i8, ptr %.069.i, i64 8
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !667
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap) ; 2 uses
  %i.ar = icmp ult i16 %i.aq, 256
  br i1 %i.ar, label %.preheader.5.i, label %bb.c

.preheader.5.i:                                   ; preds = %.preheader.4.i
end_hunk_1
begin_hunk_2_@_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc:bb.a
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader52 ], [ %i.av, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader52 ], [ %i.ax, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader52 ], [ %i.ay, %.preheader.i.prol ]
  %i.az = sub i64 %.01821.i.ph, %2
  %i.ba = add i64 %i.az, %i.x
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.ce, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.cg, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.ch, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i32, i64 %.01821.i
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd) ; 2 uses
  %i.bf = zext i16 %i.be to i32
  %i.bg = or i32 %.023.i, %i.bf
  %i.bh = trunc i16 %i.be to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.bh, ptr %.01722.i, align 1
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i32, i64 %.01821.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl) ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = or i32 %i.bg, %i.bn
  %i.bp = trunc i16 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.bp, ptr %i.bi, align 1
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i32, i64 %.01821.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or i32 %i.bo, %i.bv
  %i.bx = trunc i16 %i.bu to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.bx, ptr %i.bq, align 1
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i32, i64 %.01821.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb) ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = or i32 %i.bw, %i.cd                     ; 2 uses
  %i.cf = trunc i16 %i.cc to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.01722.i, i64 4 ; 2 uses
  store i8 %i.cf, ptr %i.by, align 1
  %i.ch = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ch, %i.y
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !1125

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa45 = phi i32 [ %i.ap, %middle.block ], [ %.lcssa54.unr, %.preheader.i.prol.loopexit ], [ %i.ce, %.preheader.i ]
  %.lcssa = phi ptr [ %i.ac, %middle.block ], [ %.lcssa53.unr, %.preheader.i.prol.loopexit ], [ %i.cg, %.preheader.i ]
  %i.ci = and i32 %.lcssa45, 65280
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit: ; preds = %.loopexit
  %i.cj = ptrtoint ptr %.lcssa to i64
  %i.ck = sub i64 %i.cj, %i.s
  br label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread: ; preds = %.lr.ph.i, %.loopexit, %bb.c, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread26, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.ck, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit ], [ %i.t, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread26 ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation37convert_utf16le_to_latin1_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = icmp ugt i64 %2, 7
  br i1 %i.d, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %i.e = phi i64 [ %i.aw, %.critedge.i ], [ %i.c, %bb.a ]
  %.057.i = phi ptr [ %.1.i, %.critedge.i ], [ %1, %bb.a ] ; 9 uses
  %.04656.i = phi ptr [ %.3.i, %.critedge.i ], [ %3, %bb.a ] ; 10 uses
  %i.f = load <2 x i64>, ptr %.057.i, align 1, !noalias !1126 ; 2 uses
  %i.g = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.f, <2 x i64> splat (i64 -71777214294589696))
  %.not.i = icmp eq i32 %i.g, 0
  %bc.i = bitcast <2 x i64> %i.f to <8 x i16>     ; 2 uses
  %i.h = extractelement <8 x i16> %bc.i, i64 0    ; 2 uses
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.b

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %i.i = icmp ult i16 %i.h, 256
  br i1 %i.i, label %.preheader.1.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %bc.i, <8 x i16> poison)
  %i.k = bitcast <16 x i8> %i.j to <2 x i64>
  %i.l = extractelement <2 x i64> %i.k, i64 0
  store i64 %i.l, ptr %.04656.i, align 1, !noalias !1126
  br label %.critedge.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.m = trunc nuw i16 %i.h to i8
  store i8 %i.m, ptr %.04656.i, align 1, !noalias !1126
  %i.n = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.o = load i16, ptr %i.n, align 2, !noalias !1126 ; 2 uses
  %i.p = icmp ult i16 %i.o, 256
  br i1 %i.p, label %.preheader.2.i, label %bb.c

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.q = getelementptr inbounds nuw i8, ptr %.04656.i, i64 1
  %i.r = trunc nuw i16 %i.o to i8
  store i8 %i.r, ptr %i.q, align 1, !noalias !1126
  %i.s = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.t = load i16, ptr %i.s, align 2, !noalias !1126 ; 2 uses
  %i.u = icmp ult i16 %i.t, 256
  br i1 %i.u, label %.preheader.3.i, label %bb.c

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.v = getelementptr inbounds nuw i8, ptr %.04656.i, i64 2
  %i.w = trunc nuw i16 %i.t to i8
  store i8 %i.w, ptr %i.v, align 1, !noalias !1126
  %i.x = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.y = load i16, ptr %i.x, align 2, !noalias !1126 ; 2 uses
  %i.z = icmp ult i16 %i.y, 256
  br i1 %i.z, label %.preheader.4.i, label %bb.c

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.04656.i, i64 3
  %i.ab = trunc nuw i16 %i.y to i8
  store i8 %i.ab, ptr %i.aa, align 1, !noalias !1126
  %i.ac = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !1126 ; 2 uses
  %i.ae = icmp ult i16 %i.ad, 256
  br i1 %i.ae, label %.preheader.5.i, label %bb.c

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.af = getelementptr inbounds nuw i8, ptr %.04656.i, i64 4
  %i.ag = trunc nuw i16 %i.ad to i8
  store i8 %i.ag, ptr %i.af, align 1, !noalias !1126
  %i.ah = getelementptr inbounds nuw i8, ptr %.057.i, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !1126 ; 2 uses
  %i.aj = icmp ult i16 %i.ai, 256
  br i1 %i.aj, label %.preheader.6.i, label %bb.c

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.04656.i, i64 5
  %i.al = trunc nuw i16 %i.ai to i8
  store i8 %i.al, ptr %i.ak, align 1, !noalias !1126
  %i.am = getelementptr inbounds nuw i8, ptr %.057.i, i64 12
  %i.an = load i16, ptr %i.am, align 2, !noalias !1126 ; 2 uses
  %i.ao = icmp ult i16 %i.an, 256
  br i1 %i.ao, label %.preheader.7.i, label %bb.c

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.04656.i, i64 6
  %i.aq = trunc nuw i16 %i.an to i8
  store i8 %i.aq, ptr %i.ap, align 1, !noalias !1126
  %i.ar = getelementptr inbounds nuw i8, ptr %.057.i, i64 14
  %i.as = load i16, ptr %i.ar, align 2, !noalias !1126 ; 2 uses
  %i.at = icmp ult i16 %i.as, 256
  br i1 %i.at, label %.critedge.loopexit.i, label %bb.c

.critedge.loopexit.i:                             ; preds = %.preheader.7.i
  %i.au = getelementptr inbounds nuw i8, ptr %.04656.i, i64 7
  %i.av = trunc nuw i16 %i.as to i8
  store i8 %i.av, ptr %i.au, align 1, !noalias !1126
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.3.i = getelementptr inbounds nuw i8, ptr %.04656.i, i64 8 ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.057.i, i64 16 ; 2 uses
  %i.aw = ptrtoint ptr %.1.i to i64               ; 3 uses
  %i.ax = sub i64 %i.b, %i.aw
  %i.ay = icmp sgt i64 %i.ax, 14
  br i1 %i.ay, label %.lr.ph.i, label %.loopexit, !llvm.loop !1129

bb.c:                                             ; preds = %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.03455.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ], [ 4, %.preheader.4.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ]
  %i.az = sub i64 %i.e, %i.c
  %i.ba = ashr exact i64 %i.az, 1
  %i.bb = add nsw i64 %.03455.lcssa.wide.i, %i.ba
  br label %bb.j

.loopexit:                                        ; preds = %.critedge.i, %bb.a
  %.046.lcssa.i = phi ptr [ %3, %bb.a ], [ %.3.i, %.critedge.i ] ; 4 uses
  %.lcssa.i = phi i64 [ %i.c, %bb.a ], [ %i.aw, %.critedge.i ]
  %i.bc = sub i64 %.lcssa.i, %i.c                 ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 1                 ; 3 uses
  %.not17 = icmp eq i64 %i.bd, %2
  br i1 %.not17, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.bf = sub i64 %2, %i.bd                       ; 2 uses
  br label %.preheader64.i

.preheader64.i:                                   ; preds = %bb.d, %.backedge.i
  %.05072.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %.046.lcssa.i, %bb.d ] ; 20 uses
  %.05571.i = phi i64 [ %.055.be.i, %.backedge.i ], [ 0, %bb.d ] ; 6 uses
  %i.bg = add i64 %.05571.i, 16                   ; 2 uses
  %.not.i19 = icmp ugt i64 %i.bg, %i.bf
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %.05571.i ; 17 uses
  br i1 %.not.i19, label %.preheader64..thread_crit_edge.i, label %bb.e

.preheader64..thread_crit_edge.i:                 ; preds = %.preheader64.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %.thread.i

bb.e:                                             ; preds = %.preheader64.i
  %.0.copyload13.i = load i64, ptr %.phi.trans.insert.i, align 2 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload9.i = load i64, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 16 ; 2 uses
  %.0.copyload5.i = load i64, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 24 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.bj, align 2
  %4 = or i64 %.0.copyload9.i, %.0.copyload5.i
  %5 = or i64 %4, %.0.copyload.i
  %6 = or i64 %5, %.0.copyload13.i
  %i.bk = and i64 %6, -71777214294589696
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = trunc i64 %.0.copyload13.i to i16
  br i1 %i.bl, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.bn = icmp ult i64 %.05571.i, -16
  br i1 %i.bn, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bo = trunc i64 %.0.copyload13.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.05072.i, i64 1
  store i8 %i.bo, ptr %.05072.i, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = trunc i16 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.05072.i, i64 2
  store i8 %i.bs, ptr %i.bp, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = trunc i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.05072.i, i64 3
  store i8 %i.bw, ptr %i.bt, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = trunc i16 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.05072.i, i64 4
  store i8 %i.ca, ptr %i.bx, align 1
  %i.cc = load i16, ptr %i.bh, align 2
  %i.cd = trunc i16 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.05072.i, i64 5
  store i8 %i.cd, ptr %i.cb, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = trunc i16 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.05072.i, i64 6
  store i8 %i.ch, ptr %i.ce, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = trunc i16 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.05072.i, i64 7
  store i8 %i.cl, ptr %i.ci, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = trunc i16 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.05072.i, i64 8
  store i8 %i.cp, ptr %i.cm, align 1
  %i.cr = load i16, ptr %i.bi, align 2
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.05072.i, i64 9
  store i8 %i.cs, ptr %i.cq, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 18
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = trunc i16 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.05072.i, i64 10
  store i8 %i.cw, ptr %i.ct, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 20
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = trunc i16 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.05072.i, i64 11
  store i8 %i.da, ptr %i.cx, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 22
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = trunc i16 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.05072.i, i64 12
  store i8 %i.de, ptr %i.db, align 1
  %i.dg = load i16, ptr %i.bj, align 2
  %i.dh = trunc i16 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.05072.i, i64 13
  store i8 %i.dh, ptr %i.df, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 26
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = trunc i16 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %.05072.i, i64 14
  store i8 %i.dl, ptr %i.di, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 28
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = trunc i16 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.05072.i, i64 15
  store i8 %i.dp, ptr %i.dm, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 30
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = trunc i16 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.05072.i, i64 16
  store i8 %i.dt, ptr %i.dq, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.e, %.preheader64..thread_crit_edge.i
  %i.dv = phi i16 [ %.pre.i, %.preheader64..thread_crit_edge.i ], [ %i.bm, %bb.e ] ; 2 uses
  %i.dw = icmp ult i16 %i.dv, 256
  br i1 %i.dw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread.i
  %i.dx = trunc nuw i16 %i.dv to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.05072.i, i64 1
  store i8 %i.dx, ptr %.05072.i, align 1
  %i.dz = add i64 %.05571.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.f, %.lr.ph.preheader.i, %.preheader.i
  %.055.be.i = phi i64 [ %i.dz, %bb.f ], [ %.05571.i, %.preheader.i ], [ %i.bg, %.lr.ph.preheader.i ] ; 2 uses
  %.050.be.i = phi ptr [ %i.dy, %bb.f ], [ %.05072.i, %.preheader.i ], [ %i.du, %.lr.ph.preheader.i ] ; 2 uses
  %i.ea = icmp ult i64 %.055.be.i, %i.bf
  br i1 %i.ea, label %.preheader64.i, label %bb.g, !llvm.loop !141

bb.g:                                             ; preds = %.backedge.i
  %i.eb = ptrtoint ptr %.050.be.i to i64
  %i.ec = ptrtoint ptr %.046.lcssa.i to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.046.lcssa.i, i64 %i.ed
  br label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.ef = add i64 %.05571.i, %i.bd
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.loopexit
  %.sroa.10.0 = phi ptr [ %.046.lcssa.i, %.loopexit ], [ %i.ee, %bb.g ]
  %i.eg = ptrtoint ptr %.sroa.10.0 to i64
  %i.eh = ptrtoint ptr %3 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.c
  %.sroa.0.0 = phi i32 [ 5, %bb.c ], [ 5, %bb.h ], [ 0, %bb.i ]
  %.sroa.59.0 = phi i64 [ %i.bb, %bb.c ], [ %i.ef, %bb.h ], [ %i.ei, %bb.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.59.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation37convert_utf16be_to_latin1_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = icmp ugt i64 %2, 7
  br i1 %i.d, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %i.e = phi i64 [ %i.bh, %.critedge.i ], [ %i.c, %bb.a ]
  %.057.i = phi ptr [ %.1.i, %.critedge.i ], [ %1, %bb.a ] ; 9 uses
  %.04656.i = phi ptr [ %.3.i, %.critedge.i ], [ %3, %bb.a ] ; 10 uses
  %i.f = load <16 x i8>, ptr %.057.i, align 1, !noalias !1130 ; 2 uses
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.h, <2 x i64> splat (i64 -71777214294589696))
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.b

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %bc.i = bitcast <16 x i8> %i.f to <8 x i16>
  %i.j = extractelement <8 x i16> %bc.i, i64 0
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j) ; 2 uses
  %i.l = icmp ult i16 %i.k, 256
  br i1 %i.l, label %.preheader.1.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = bitcast <16 x i8> %i.g to <8 x i16>
  %i.n = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.m, <8 x i16> poison)
  %i.o = bitcast <16 x i8> %i.n to <2 x i64>
  %i.p = extractelement <2 x i64> %i.o, i64 0
  store i64 %i.p, ptr %.04656.i, align 1, !noalias !1130
  br label %.critedge.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.q = trunc nuw i16 %i.k to i8
  store i8 %i.q, ptr %.04656.i, align 1, !noalias !1130
  %i.r = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.s = load i16, ptr %i.r, align 2, !noalias !1130
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 2 uses
  %i.u = icmp ult i16 %i.t, 256
  br i1 %i.u, label %.preheader.2.i, label %bb.c

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.v = getelementptr inbounds nuw i8, ptr %.04656.i, i64 1
  %i.w = trunc nuw i16 %i.t to i8
  store i8 %i.w, ptr %i.v, align 1, !noalias !1130
  %i.x = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.y = load i16, ptr %i.x, align 2, !noalias !1130
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  %i.aa = icmp ult i16 %i.z, 256
  br i1 %i.aa, label %.preheader.3.i, label %bb.c

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.04656.i, i64 2
  %i.ac = trunc nuw i16 %i.z to i8
  store i8 %i.ac, ptr %i.ab, align 1, !noalias !1130
  %i.ad = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !1130
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = icmp ult i16 %i.af, 256
  br i1 %i.ag, label %.preheader.4.i, label %bb.c

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.04656.i, i64 3
  %i.ai = trunc nuw i16 %i.af to i8
  store i8 %i.ai, ptr %i.ah, align 1, !noalias !1130
  %i.aj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !1130
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak) ; 2 uses
  %i.am = icmp ult i16 %i.al, 256
  br i1 %i.am, label %.preheader.5.i, label %bb.c

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.an = getelementptr inbounds nuw i8, ptr %.04656.i, i64 4
  %i.ao = trunc nuw i16 %i.al to i8
  store i8 %i.ao, ptr %i.an, align 1, !noalias !1130
  %i.ap = getelementptr inbounds nuw i8, ptr %.057.i, i64 10
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !1130
end_hunk_2
begin_hunk_3_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIDsEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  br i1 %brmerge314.i, label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb0EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit, label %.thread308.i

bb.y:                                             ; preds = %bb.u
  br i1 %i.dt, label %switch.early.test317.i, label %.thread308.i

switch.early.test317.i:                           ; preds = %bb.y
  switch i64 %5, label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb0EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit [
    i64 12, label %.thread308.i
    i64 5, label %.thread308.i
    i64 4, label %.thread308.i
  ]

.thread308.i:                                     ; preds = %switch.early.test317.i, %switch.early.test317.i, %switch.early.test317.i, %bb.y, %bb.x, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.thread305.i, %.thread302.i
  %.4.i = phi ptr [ %i.ew, %.thread302.i ], [ %i.fl, %.thread305.i ], [ %.1.lcssa.i, %switch.early.test317.i ], [ %.1.lcssa.i, %switch.early.test.i ], [ %.1.lcssa.i, %switch.early.test.i ], [ %.1.lcssa.i, %switch.early.test.i ], [ %.1.lcssa.i, %bb.x ], [ %.1.lcssa.i, %bb.y ], [ %.1.lcssa.i, %switch.early.test317.i ], [ %.1.lcssa.i, %switch.early.test317.i ]
  br label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb0EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit

bb.z:                                             ; preds = %._crit_edge.i
  %i.fo = load i8, ptr %i.a, align 1, !noalias !1401
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 18
  %i.fr = load i8, ptr %i.l, align 1, !noalias !1401
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 12
  %i.fu = add nuw nsw i32 %i.ft, %i.fq
  %i.fv = load i8, ptr %i.m, align 1, !noalias !1401
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 6
  %i.fy = add nuw nsw i32 %i.fu, %i.fx
  %i.fz = load i8, ptr %i.n, align 1, !noalias !1401
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add nuw nsw i32 %i.fy, %i.ga
  %i.gc = tail call noundef i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = lshr i32 %i.gc, 8
  %storemerge.i = trunc nuw i32 %i.gd to i24
  store i24 %storemerge.i, ptr %.1.lcssa.i, align 1, !noalias !1401
  %i.ge = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 3
  br label %bb.b, !llvm.loop !1407

_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb0EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit: ; preds = %bb.l, %.lr.ph361.i, %bb.t, %bb.o, %bb.q, %bb.s, %.preheader.i, %bb.v, %bb.w, %bb.x, %switch.early.test317.i, %.thread308.i
  %.3256.lcssa.lcssa.sink.i = phi ptr [ %.3256.lcssa.i, %bb.v ], [ %.3256.lcssa.i, %switch.early.test317.i ], [ %.3256.lcssa.i, %bb.o ], [ %i.el, %bb.t ], [ %.3256.lcssa.i, %bb.x ], [ %.3256.lcssa.i, %bb.w ], [ %.3256.lcssa.i, %.thread308.i ], [ %.3256.lcssa.i, %bb.s ], [ %.3256.lcssa.i, %bb.q ], [ %.1254.lcssa.i, %.preheader.i ], [ %.5258360.i, %.lr.ph361.i ], [ %.3256355.i, %bb.l ]
  %.1.lcssa.lcssa391.sink.i = phi ptr [ %.1.lcssa.i, %bb.v ], [ %.1.lcssa.i, %switch.early.test317.i ], [ %.1.lcssa.i, %bb.o ], [ %.1.lcssa.i, %.lr.ph361.i ], [ %.1.lcssa.i, %bb.x ], [ %.1.lcssa.i, %bb.w ], [ %.4.i, %.thread308.i ], [ %.1.lcssa.i, %bb.s ], [ %.1.lcssa.i, %bb.q ], [ %.1.lcssa.i, %.preheader.i ], [ %.1.lcssa.i, %bb.t ], [ %.1.lcssa.i, %bb.l ]
  %.sink398.i = phi i32 [ 9, %bb.v ], [ 7, %switch.early.test317.i ], [ 7, %bb.o ], [ 0, %.lr.ph361.i ], [ 8, %bb.x ], [ 9, %bb.w ], [ 0, %.thread308.i ], [ 8, %bb.s ], [ 7, %bb.q ], [ 0, %.preheader.i ], [ 0, %bb.t ], [ 7, %bb.l ]
  %.sink.i = phi i8 [ 0, %bb.v ], [ 1, %switch.early.test317.i ], [ 1, %bb.o ], [ 0, %.lr.ph361.i ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %.thread308.i ], [ 1, %bb.s ], [ 1, %bb.q ], [ 0, %.preheader.i ], [ 0, %bb.t ], [ 0, %bb.l ]
  %i.gf = ptrtoint ptr %.3256.lcssa.lcssa.sink.i to i64
  %i.gg = ptrtoint ptr %2 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 1
  %i.gj = ptrtoint ptr %.1.lcssa.lcssa391.sink.i to i64
  %i.gk = ptrtoint ptr %1 to i64
  %i.gl = sub i64 %i.gj, %i.gk
  store i32 %.sink398.i, ptr %0, align 8, !alias.scope !1401
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gi, ptr %i.gm, align 8, !alias.scope !1401
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gl, ptr %i.gn, align 8, !alias.scope !1401
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink.i, ptr %i.go, align 8, !alias.scope !1401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !1401
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pext.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #39

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
declare i32 @llvm.pdep.i32(i32, i32) #39

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
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #39

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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
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
end_hunk_3
