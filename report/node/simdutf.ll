Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3213convert_validEPKcmPDi:bb.a
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 6
  %i.bk = or disjoint i32 %i.bj, %i.be
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.bl = and i32 %i.at, 248
  %i.bm = icmp eq i32 %i.bl, 240
  br i1 %i.bm, label %bb.j, label %.thread85

bb.j:                                             ; preds = %bb.i
  %i.bn = add i64 %.05994, 3                      ; 2 uses
  %.not75 = icmp ult i64 %i.bn, %1
  br i1 %.not75, label %bb.k, label %.thread81

bb.k:                                             ; preds = %bb.j
  %i.bo = shl nuw nsw i32 %i.at, 18
  %i.bp = and i32 %i.bo, 1835008
  %i.bq = getelementptr i8, ptr %i.as, i64 1
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = and i8 %i.br, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 12
  %i.bv = or disjoint i32 %i.bu, %i.bp
  %i.bw = getelementptr i8, ptr %i.as, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 6
  %i.cb = or disjoint i32 %i.bv, %i.ca
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.k, %bb.h
  %.sink115 = phi i64 [ %i.bc, %bb.h ], [ %i.bn, %bb.k ], [ %i.ax, %bb.e ]
  %.sink110 = phi i32 [ %i.bk, %bb.h ], [ %i.cb, %bb.k ], [ %i.az, %bb.e ]
  %.sink.ph = phi i64 [ 3, %bb.h ], [ 4, %bb.k ], [ 2, %bb.e ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink115
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cd, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %.sink110, %i.cf
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %.thread
  %.sink109 = phi i32 [ %i.at, %.thread ], [ %i.cg, %.sink.split ]
  %.sink = phi i64 [ 1, %.thread ], [ %.sink.ph, %.sink.split ]
  store i32 %.sink109, ptr %.06293, align 4
  %i.ch = add i64 %.05994, %.sink
  %.466 = getelementptr inbounds nuw i8, ptr %.06293, i64 4
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph.preheader, %.preheader, %bb.l
  %.062.be = phi ptr [ %.466, %bb.l ], [ %.06293, %.preheader ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %.059.be = phi i64 [ %i.ch, %bb.l ], [ %.05994, %.preheader ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ci = icmp ult i64 %.059.be, %1
  br i1 %i.ci, label %.lr.ph95, label %.thread81

.thread81:                                        ; preds = %.backedge, %bb.j, %bb.d, %bb.g, %bb.a
  %.062.lcssa = phi ptr [ %2, %bb.a ], [ %.06293, %bb.g ], [ %.06293, %bb.d ], [ %.06293, %bb.j ], [ %.062.be, %.backedge ]
  %i.cj = ptrtoint ptr %.062.lcssa to i64
  %i.ck = ptrtoint ptr %2 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2
  br label %.thread85

.thread85:                                        ; preds = %bb.i, %.thread81
  %.2 = phi i64 [ %i.cm, %.thread81 ], [ 0, %bb.i ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8fallback14implementation25convert_utf16le_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit, label %.preheader.i.preheader

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
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.load = load <4 x i16>, ptr %i.d, align 2, !alias.scope !189 ; 2 uses
  %wide.load8 = load <4 x i16>, ptr %i.e, align 2, !alias.scope !189 ; 2 uses
  %i.f = zext <4 x i16> %wide.load to <4 x i32>
  %i.g = zext <4 x i16> %wide.load8 to <4 x i32>
  %i.h = or <4 x i32> %vec.phi, %i.f              ; 2 uses
  %i.i = or <4 x i32> %vec.phi7, %i.g             ; 2 uses
  %i.j = trunc <4 x i16> %wide.load to <4 x i8>
  %i.k = trunc <4 x i16> %wide.load8 to <4 x i8>
  %i.l = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.j, ptr %next.gep, align 1, !alias.scope !190, !noalias !189
  store <4 x i8> %i.k, ptr %i.l, align 1, !alias.scope !190, !noalias !189
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.i, %i.h
  %i.n = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.preheader10

.preheader.i.preheader10:                         ; preds = %vector.memcheck, %.preheader.i.preheader, %middle.block
  %.023.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.01722.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.preheader.i.preheader ], [ %i.c, %middle.block ] ; 2 uses
  %.01821.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader10, %.preheader.i.prol
  %.023.i.prol = phi i32 [ %i.r, %.preheader.i.prol ], [ %.023.i.ph, %.preheader.i.preheader10 ]
  %.01722.i.prol = phi ptr [ %i.t, %.preheader.i.prol ], [ %.01722.i.ph, %.preheader.i.preheader10 ] ; 2 uses
  %.01821.i.prol = phi i64 [ %i.u, %.preheader.i.prol ], [ %.01821.i.ph, %.preheader.i.preheader10 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader10 ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i.prol
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = or i32 %.023.i.prol, %i.q                ; 3 uses
  %i.s = trunc i16 %i.p to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01722.i.prol, i64 1 ; 3 uses
  store i8 %i.s, ptr %.01722.i.prol, align 1
  %i.u = add nuw i64 %.01821.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !187

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader10
  %.lcssa12.unr = phi i32 [ poison, %.preheader.i.preheader10 ], [ %i.r, %.preheader.i.prol ]
  %.lcssa11.unr = phi ptr [ poison, %.preheader.i.preheader10 ], [ %i.t, %.preheader.i.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader10 ], [ %i.r, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader10 ], [ %i.t, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader10 ], [ %i.u, %.preheader.i.prol ]
  %i.v = sub i64 %.01821.i.ph, %2
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.av, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.ax, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.ay, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = zext i16 %i.y to i32
  %i.aa = or i32 %.023.i, %i.z
  %i.ab = trunc i16 %i.y to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.ab, ptr %.01722.i, align 1
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01821.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = load i16, ptr %i.ae, align 2            ; 2 uses
  %i.ag = zext i16 %i.af to i32
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
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !188

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa5 = phi i32 [ %i.n, %middle.block ], [ %.lcssa12.unr, %.preheader.i.prol.loopexit ], [ %i.av, %.preheader.i ]
  %.lcssa = phi ptr [ %i.c, %middle.block ], [ %.lcssa11.unr, %.preheader.i.prol.loopexit ], [ %i.ax, %.preheader.i ]
  %4 = and i32 %.lcssa5, 65280
  %.not.i = icmp eq i32 %4, 0
  %i.az = ptrtoint ptr %.lcssa to i64
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.019.i = select i1 %.not.i, i64 %i.bb, i64 0
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
  %wide.load = load <4 x i16>, ptr %i.d, align 2, !alias.scope !197
  %wide.load8 = load <4 x i16>, ptr %i.e, align 2, !alias.scope !197
  %i.f = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load) ; 2 uses
  %i.g = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load8) ; 2 uses
  %i.h = zext <4 x i16> %i.f to <4 x i32>
  %i.i = zext <4 x i16> %i.g to <4 x i32>
  %i.j = or <4 x i32> %vec.phi, %i.h              ; 2 uses
  %i.k = or <4 x i32> %vec.phi7, %i.i             ; 2 uses
  %i.l = trunc <4 x i16> %i.f to <4 x i8>
  %i.m = trunc <4 x i16> %i.g to <4 x i8>
  %i.n = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.l, ptr %next.gep, align 1, !alias.scope !198, !noalias !197
  store <4 x i8> %i.m, ptr %i.n, align 1, !alias.scope !198, !noalias !197
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !194

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
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !195

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
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !196

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa5 = phi i32 [ %i.p, %middle.block ], [ %.lcssa12.unr, %.preheader.i.prol.loopexit ], [ %i.bc, %.preheader.i ]
  %.lcssa = phi ptr [ %i.c, %middle.block ], [ %.lcssa11.unr, %.preheader.i.prol.loopexit ], [ %i.be, %.preheader.i ]
  %4 = and i32 %.lcssa5, 65280
  %.not.i = icmp eq i32 %4, 0
  %i.bg = ptrtoint ptr %.lcssa to i64
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.019.i = select i1 %.not.i, i64 %i.bi, i64 0
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
  %.05472.i = phi i64 [ %.054.be.i, %.backedge.i ], [ 0, %bb.a ] ; 6 uses
  %.05571.i = phi ptr [ %.055.be.i, %.backedge.i ], [ %3, %bb.a ] ; 20 uses
  %i.b = add i64 %.05472.i, 16                    ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %2
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05472.i ; 18 uses
  br i1 %.not.i, label %.preheader64..thread_crit_edge.i, label %bb.b

.preheader64..thread_crit_edge.i:                 ; preds = %.preheader64.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %.thread.i

bb.b:                                             ; preds = %.preheader64.i
  %i.c = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 24
  %.0.copyload13.i = load i64, ptr %.phi.trans.insert.i, align 2 ; 2 uses
  %i.f = load <4 x i64>, ptr %.phi.trans.insert.i, align 2
  %i.g = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.f)
  %i.h = and i64 %i.g, -71777214294589696
  %i.i = icmp eq i64 %i.h, 0
  %i.j = trunc i64 %.0.copyload13.i to i16
  br i1 %i.i, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.b
  %i.k = icmp ult i64 %.05472.i, -16
  br i1 %i.k, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.l = trunc i64 %.0.copyload13.i to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.05571.i, i64 1
  store i8 %i.l, ptr %.05571.i, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %i.p = trunc i16 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.05571.i, i64 2
  store i8 %i.p, ptr %i.m, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.s = load i16, ptr %i.r, align 2
  %i.t = trunc i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.05571.i, i64 3
  store i8 %i.t, ptr %i.q, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.w = load i16, ptr %i.v, align 2
  %i.x = trunc i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.05571.i, i64 4
  store i8 %i.x, ptr %i.u, align 1
  %i.z = load i16, ptr %i.c, align 2
  %i.aa = trunc i16 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.05571.i, i64 5
  store i8 %i.aa, ptr %i.y, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = trunc i16 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %.05571.i, i64 6
  store i8 %i.ae, ptr %i.ab, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.05571.i, i64 7
  store i8 %i.ai, ptr %i.af, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = trunc i16 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.05571.i, i64 8
  store i8 %i.am, ptr %i.aj, align 1
  %i.ao = load i16, ptr %i.d, align 2
  %i.ap = trunc i16 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.05571.i, i64 9
  store i8 %i.ap, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 18
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = trunc i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.05571.i, i64 10
  store i8 %i.at, ptr %i.aq, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 20
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = trunc i16 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.05571.i, i64 11
  store i8 %i.ax, ptr %i.au, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 22
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.05571.i, i64 12
  store i8 %i.bb, ptr %i.ay, align 1
  %i.bd = load i16, ptr %i.e, align 2
  %i.be = trunc i16 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.05571.i, i64 13
  store i8 %i.be, ptr %i.bc, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 26
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = trunc i16 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.05571.i, i64 14
  store i8 %i.bi, ptr %i.bf, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 28
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = trunc i16 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.05571.i, i64 15
  store i8 %i.bm, ptr %i.bj, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 30
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = trunc i16 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.05571.i, i64 16
  store i8 %i.bq, ptr %i.bn, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.b, %.preheader64..thread_crit_edge.i
  %i.bs = phi i16 [ %.pre.i, %.preheader64..thread_crit_edge.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.bt = icmp ult i16 %i.bs, 256
  br i1 %i.bt, label %bb.c, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit

bb.c:                                             ; preds = %.thread.i
  %i.bu = trunc nuw i16 %i.bs to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.05571.i, i64 1
  store i8 %i.bu, ptr %.05571.i, align 1
  %i.bw = add i64 %.05472.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.c, %.lr.ph.preheader.i, %.preheader.i
  %.055.be.i = phi ptr [ %i.bv, %bb.c ], [ %.05571.i, %.preheader.i ], [ %i.br, %.lr.ph.preheader.i ] ; 2 uses
  %.054.be.i = phi i64 [ %i.bw, %bb.c ], [ %.05472.i, %.preheader.i ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %i.bx = icmp ult i64 %.054.be.i, %2
  br i1 %i.bx, label %.preheader64.i, label %bb.d, !llvm.loop !14

bb.d:                                             ; preds = %.backedge.i
  %i.by = ptrtoint ptr %.055.be.i to i64
  %i.bz = ptrtoint ptr %3 to i64
  %i.ca = sub i64 %i.by, %i.bz
  br label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin119convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsmPc.exit: ; preds = %.thread.i, %bb.a, %bb.d
  %.sroa.4.0.i = phi i64 [ %i.ca, %bb.d ], [ 0, %bb.a ], [ %.05472.i, %.thread.i ]
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
  %.05472 = phi i64 [ %.054.be, %.backedge ], [ 0, %bb.a ] ; 21 uses
  %.05571 = phi ptr [ %.055.be, %.backedge ], [ %2, %bb.a ] ; 20 uses
  %i.b = add i64 %.05472, 16                      ; 2 uses
  %.not = icmp ugt i64 %i.b, %1
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05472 ; 3 uses
  br i1 %.not, label %.preheader64..thread_crit_edge, label %bb.b

.preheader64..thread_crit_edge:                   ; preds = %.preheader64
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %.thread

bb.b:                                             ; preds = %.preheader64
  %.0.copyload13 = load i64, ptr %.phi.trans.insert, align 2 ; 2 uses
  %i.c = load <4 x i64>, ptr %.phi.trans.insert, align 2
  %i.d = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.c) ; 2 uses
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 56)
  %i.f = and i64 %i.e, -71777214294589696
  %i.g = icmp eq i64 %i.f, 0
  %i.h = trunc i64 %.0.copyload13 to i16
  br i1 %i.g, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.i = icmp ult i64 %.05472, -16
  br i1 %i.i, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = lshr i64 %.0.copyload13, 8
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.05571, i64 1
  store i8 %i.k, ptr %.05571, align 1
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05472
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc:bb.a
  br i1 %i.s, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27: ; preds = %bb.b, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit
  %.sroa.031.2.i33 = phi ptr [ %1, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.n, %bb.b ] ; 11 uses
  %.043.lcssa.i32 = phi ptr [ %3, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.o, %bb.b ] ; 9 uses
  %i.t = ptrtoint ptr %.043.lcssa.i32 to i64
  %i.u = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %.not = icmp eq ptr %.sroa.031.2.i33, %i.a
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27
  %i.w = ptrtoint ptr %.sroa.031.2.i33 to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 1                   ; 4 uses
  %i.aa = sub i64 %2, %i.z                        ; 9 uses
  %i.ab = icmp eq i64 %2, %i.z
  br i1 %i.ab, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.043.lcssa.i32, i64 %i.aa
  %i.ac = shl i64 %2, 1
  %i.ad = sub i64 %i.ac, %i.y
  %scevgep49 = getelementptr i8, ptr %.sroa.031.2.i33, i64 %i.ad
  %bound0 = icmp ult ptr %.043.lcssa.i32, %scevgep49
  %bound1 = icmp ult ptr %.sroa.031.2.i33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, -32                     ; 5 uses
  %i.af = getelementptr i8, ptr %.043.lcssa.i32, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi51 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi52 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi53 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %next.gep = getelementptr i8, ptr %.043.lcssa.i32, i64 %index ; 4 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %index ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %wide.load = load <8 x i16>, ptr %i.ag, align 2, !alias.scope !669 ; 2 uses
  %wide.load54 = load <8 x i16>, ptr %i.ah, align 2, !alias.scope !669 ; 2 uses
  %wide.load55 = load <8 x i16>, ptr %i.ai, align 2, !alias.scope !669 ; 2 uses
  %wide.load56 = load <8 x i16>, ptr %i.aj, align 2, !alias.scope !669 ; 2 uses
  %i.ak = zext <8 x i16> %wide.load to <8 x i32>
  %i.al = zext <8 x i16> %wide.load54 to <8 x i32>
  %i.am = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.an = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.ao = or <8 x i32> %vec.phi, %i.ak            ; 2 uses
  %i.ap = or <8 x i32> %vec.phi51, %i.al          ; 2 uses
  %i.aq = or <8 x i32> %vec.phi52, %i.am          ; 2 uses
  %i.ar = or <8 x i32> %vec.phi53, %i.an          ; 2 uses
  %i.as = trunc <8 x i16> %wide.load to <8 x i8>
  %i.at = trunc <8 x i16> %wide.load54 to <8 x i8>
  %i.au = trunc <8 x i16> %wide.load55 to <8 x i8>
  %i.av = trunc <8 x i16> %wide.load56 to <8 x i8>
  %i.aw = getelementptr i8, ptr %next.gep, i64 8
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %i.ay = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.as, ptr %next.gep, align 1, !alias.scope !670, !noalias !669
  store <8 x i8> %i.at, ptr %i.aw, align 1, !alias.scope !670, !noalias !669
  store <8 x i8> %i.au, ptr %i.ax, align 1, !alias.scope !670, !noalias !669
  store <8 x i8> %i.av, ptr %i.ay, align 1, !alias.scope !670, !noalias !669
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !665

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i32> %i.ap, %i.ao
  %bin.rdx57 = or <8 x i32> %i.aq, %bin.rdx
  %bin.rdx58 = or <8 x i32> %i.ar, %bin.rdx57
  %i.ba = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %bin.rdx58) ; 3 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.aa, -8                    ; 4 uses
  %i.bb = getelementptr i8, ptr %.043.lcssa.i32, i64 %n.vec59 ; 2 uses
  %i.bc = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi61 = phi <8 x i32> [ %i.bc, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %next.gep62 = getelementptr i8, ptr %.043.lcssa.i32, i64 %index60
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %index60
  %wide.load63 = load <8 x i16>, ptr %i.bd, align 2, !alias.scope !669 ; 2 uses
  %i.be = zext <8 x i16> %wide.load63 to <8 x i32>
  %i.bf = or <8 x i32> %vec.phi61, %i.be          ; 2 uses
  %i.bg = trunc <8 x i16> %wide.load63 to <8 x i8>
  store <8 x i8> %i.bg, ptr %next.gep62, align 1, !alias.scope !670, !noalias !669
  %index.next64 = add nuw i64 %index60, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !666

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bi = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.bf) ; 2 uses
  %cmp.n65 = icmp eq i64 %i.aa, %n.vec59
  br i1 %cmp.n65, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.01722.i.ph = phi ptr [ %.043.lcssa.i32, %iter.check ], [ %.043.lcssa.i32, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 2 uses
  %.01821.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ] ; 3 uses
  %i.bj = sub i64 %2, %i.z
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.023.i.prol = phi i32 [ %i.bn, %.preheader.i.prol ], [ %.023.i.ph, %.preheader.i.preheader ]
  %.01722.i.prol = phi ptr [ %i.bp, %.preheader.i.prol ], [ %.01722.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.01821.i.prol = phi i64 [ %i.bq, %.preheader.i.prol ], [ %.01821.i.ph, %.preheader.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i.prol
  %i.bl = load i16, ptr %i.bk, align 2            ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = or i32 %.023.i.prol, %i.bm              ; 3 uses
  %i.bo = trunc i16 %i.bl to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.01722.i.prol, i64 1 ; 3 uses
  store i8 %i.bo, ptr %.01722.i.prol, align 1
  %i.bq = add nuw i64 %.01821.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !667

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa70.unr = phi i32 [ poison, %.preheader.i.preheader ], [ %i.bn, %.preheader.i.prol ]
  %.lcssa69.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.bp, %.preheader.i.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader ], [ %i.bn, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader ], [ %i.bp, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader ], [ %i.bq, %.preheader.i.prol ]
  %i.br = sub i64 %.01821.i.ph, %2
  %i.bs = add i64 %i.br, %i.z
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.cs, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.cu, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.cv, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.bv = load i16, ptr %i.bu, align 2            ; 2 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = or i32 %.023.i, %i.bw
  %i.by = trunc i16 %i.bv to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.by, ptr %.01722.i, align 1
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = load i16, ptr %i.cb, align 2            ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = or i32 %i.bx, %i.cd
  %i.cf = trunc i16 %i.cc to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.cf, ptr %i.bz, align 1
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i16, ptr %i.ci, align 2            ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %i.cl = or i32 %i.ce, %i.ck
  %i.cm = trunc i16 %i.cj to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.cm, ptr %i.cg, align 1
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = load i16, ptr %i.cp, align 2            ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = or i32 %i.cl, %i.cr                     ; 2 uses
  %i.ct = trunc i16 %i.cq to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.01722.i, i64 4 ; 2 uses
  store i8 %i.ct, ptr %i.cn, align 1
  %i.cv = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cv, %i.aa
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !668

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa46 = phi i32 [ %i.bi, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %.lcssa70.unr, %.preheader.i.prol.loopexit ], [ %i.cs, %.preheader.i ]
  %.lcssa = phi ptr [ %i.bb, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %.lcssa69.unr, %.preheader.i.prol.loopexit ], [ %i.cu, %.preheader.i ]
  %4 = and i32 %.lcssa46, 65280
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit: ; preds = %.loopexit
  %i.cw = ptrtoint ptr %.lcssa to i64
  %i.cx = sub i64 %i.cw, %i.u
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread: ; preds = %.lr.ph.i, %.loopexit, %bb.c, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.cx, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit ], [ %i.v, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27 ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation25convert_utf16be_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 31
  br i1 %i.c, label %.lr.ph.i, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.050.i = phi ptr [ %i.q, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.04349.i = phi ptr [ %i.r, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <32 x i8>, ptr %.050.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.050.i, i64 32
  %i.f = load <32 x i8>, ptr %i.e, align 1
  %i.g = shufflevector <32 x i8> %i.d, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30> ; 2 uses
  %i.h = shufflevector <32 x i8> %i.f, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30> ; 2 uses
  %i.i = or <32 x i8> %i.h, %i.g
  %i.j = bitcast <32 x i8> %i.i to <4 x i64>
  %i.k = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.j, <4 x i64> splat (i64 -71777214294589696))
  %.not.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.not.i, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = bitcast <32 x i8> %i.g to <16 x i16>
  %i.m = bitcast <32 x i8> %i.h to <16 x i16>
  %i.n = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.l, <16 x i16> %i.m)
  %i.o = bitcast <32 x i8> %i.n to <4 x i64>
  %i.p = shufflevector <4 x i64> %i.o, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.p, ptr %.04349.i, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.050.i, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04349.i, i64 32 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.b, %i.s
  %i.u = icmp sgt i64 %i.t, 62
  br i1 %i.u, label %.lr.ph.i, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27, !llvm.loop !49

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit: ; preds = %bb.a
  %i.v = icmp eq ptr %1, null
  br i1 %i.v, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27: ; preds = %bb.b, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit
  %.sroa.031.2.i33 = phi ptr [ %1, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.q, %bb.b ] ; 11 uses
  %.043.lcssa.i32 = phi ptr [ %3, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.r, %bb.b ] ; 9 uses
  %i.w = ptrtoint ptr %.043.lcssa.i32 to i64
  %i.x = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %.not = icmp eq ptr %.sroa.031.2.i33, %i.a
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27
  %i.z = ptrtoint ptr %.sroa.031.2.i33 to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 1                 ; 4 uses
  %i.ad = sub i64 %2, %i.ac                       ; 9 uses
  %i.ae = icmp eq i64 %2, %i.ac
  br i1 %i.ae, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.043.lcssa.i32, i64 %i.ad
  %i.af = shl i64 %2, 1
  %i.ag = sub i64 %i.af, %i.ab
  %scevgep49 = getelementptr i8, ptr %.sroa.031.2.i33, i64 %i.ag
  %bound0 = icmp ult ptr %.043.lcssa.i32, %scevgep49
  %bound1 = icmp ult ptr %.sroa.031.2.i33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, -32                     ; 5 uses
  %i.ai = getelementptr i8, ptr %.043.lcssa.i32, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi51 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi52 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi53 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %next.gep = getelementptr i8, ptr %.043.lcssa.i32, i64 %index ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %index ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %wide.load = load <8 x i16>, ptr %i.aj, align 2, !alias.scope !678
  %wide.load54 = load <8 x i16>, ptr %i.ak, align 2, !alias.scope !678
  %wide.load55 = load <8 x i16>, ptr %i.al, align 2, !alias.scope !678
  %wide.load56 = load <8 x i16>, ptr %i.am, align 2, !alias.scope !678
  %i.an = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load) ; 2 uses
  %i.ao = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load54) ; 2 uses
  %i.ap = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load55) ; 2 uses
  %i.aq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load56) ; 2 uses
  %i.ar = zext <8 x i16> %i.an to <8 x i32>
  %i.as = zext <8 x i16> %i.ao to <8 x i32>
  %i.at = zext <8 x i16> %i.ap to <8 x i32>
  %i.au = zext <8 x i16> %i.aq to <8 x i32>
  %i.av = or <8 x i32> %vec.phi, %i.ar            ; 2 uses
  %i.aw = or <8 x i32> %vec.phi51, %i.as          ; 2 uses
  %i.ax = or <8 x i32> %vec.phi52, %i.at          ; 2 uses
  %i.ay = or <8 x i32> %vec.phi53, %i.au          ; 2 uses
  %i.az = trunc <8 x i16> %i.an to <8 x i8>
  %i.ba = trunc <8 x i16> %i.ao to <8 x i8>
  %i.bb = trunc <8 x i16> %i.ap to <8 x i8>
  %i.bc = trunc <8 x i16> %i.aq to <8 x i8>
  %i.bd = getelementptr i8, ptr %next.gep, i64 8
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  %i.bf = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.az, ptr %next.gep, align 1, !alias.scope !679, !noalias !678
  store <8 x i8> %i.ba, ptr %i.bd, align 1, !alias.scope !679, !noalias !678
  store <8 x i8> %i.bb, ptr %i.be, align 1, !alias.scope !679, !noalias !678
  store <8 x i8> %i.bc, ptr %i.bf, align 1, !alias.scope !679, !noalias !678
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i32> %i.aw, %i.av
  %bin.rdx57 = or <8 x i32> %i.ax, %bin.rdx
  %bin.rdx58 = or <8 x i32> %i.ay, %bin.rdx57
  %i.bh = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %bin.rdx58) ; 3 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bh, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.ad, -8                    ; 4 uses
  %i.bi = getelementptr i8, ptr %.043.lcssa.i32, i64 %n.vec59 ; 2 uses
  %i.bj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi61 = phi <8 x i32> [ %i.bj, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %next.gep62 = getelementptr i8, ptr %.043.lcssa.i32, i64 %index60
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %index60
  %wide.load63 = load <8 x i16>, ptr %i.bk, align 2, !alias.scope !678
  %i.bl = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load63) ; 2 uses
  %i.bm = zext <8 x i16> %i.bl to <8 x i32>
  %i.bn = or <8 x i32> %vec.phi61, %i.bm          ; 2 uses
  %i.bo = trunc <8 x i16> %i.bl to <8 x i8>
  store <8 x i8> %i.bo, ptr %next.gep62, align 1, !alias.scope !679, !noalias !678
  %index.next64 = add nuw i64 %index60, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !675

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bq = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.bn) ; 2 uses
  %cmp.n65 = icmp eq i64 %i.ad, %n.vec59
  br i1 %cmp.n65, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 2 uses
  %.01722.i.ph = phi ptr [ %.043.lcssa.i32, %iter.check ], [ %.043.lcssa.i32, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.01821.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ] ; 3 uses
  %i.br = sub i64 %2, %i.ac
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.023.i.prol = phi i32 [ %i.bw, %.preheader.i.prol ], [ %.023.i.ph, %.preheader.i.preheader ]
  %.01722.i.prol = phi ptr [ %i.by, %.preheader.i.prol ], [ %.01722.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.01821.i.prol = phi i64 [ %i.bz, %.preheader.i.prol ], [ %.01821.i.ph, %.preheader.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i.prol
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or i32 %.023.i.prol, %i.bv              ; 3 uses
  %i.bx = trunc i16 %i.bu to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.01722.i.prol, i64 1 ; 3 uses
  store i8 %i.bx, ptr %.01722.i.prol, align 1
  %i.bz = add nuw i64 %.01821.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !676

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa70.unr = phi i32 [ poison, %.preheader.i.preheader ], [ %i.bw, %.preheader.i.prol ]
  %.lcssa69.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.by, %.preheader.i.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader ], [ %i.bw, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader ], [ %i.by, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader ], [ %i.bz, %.preheader.i.prol ]
  %i.ca = sub i64 %.01821.i.ph, %2
  %i.cb = add i64 %i.ca, %i.ac
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.df, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.dh, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.di, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 2 uses
  %i.cg = zext i16 %i.cf to i32
  %i.ch = or i32 %.023.i, %i.cg
  %i.ci = trunc i16 %i.cf to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.ci, ptr %.01722.i, align 1
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = tail call noundef i16 @llvm.bswap.i16(i16 %i.cm) ; 2 uses
  %i.co = zext i16 %i.cn to i32
  %i.cp = or i32 %i.ch, %i.co
  %i.cq = trunc i16 %i.cn to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.cq, ptr %i.cj, align 1
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu) ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = or i32 %i.cp, %i.cw
  %i.cy = trunc i16 %i.cv to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.cy, ptr %i.cr, align 1
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33, i64 %.01821.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = tail call noundef i16 @llvm.bswap.i16(i16 %i.dc) ; 2 uses
  %i.de = zext i16 %i.dd to i32
  %i.df = or i32 %i.cx, %i.de                     ; 2 uses
  %i.dg = trunc i16 %i.dd to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.01722.i, i64 4 ; 2 uses
  store i8 %i.dg, ptr %i.cz, align 1
  %i.di = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.di, %i.ad
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !677

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa46 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %.lcssa70.unr, %.preheader.i.prol.loopexit ], [ %i.df, %.preheader.i ]
  %.lcssa = phi ptr [ %i.bi, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %.lcssa69.unr, %.preheader.i.prol.loopexit ], [ %i.dh, %.preheader.i ]
  %4 = and i32 %.lcssa46, 65280
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit: ; preds = %.loopexit
  %i.dj = ptrtoint ptr %.lcssa to i64
  %i.dk = sub i64 %i.dj, %i.x
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread: ; preds = %.lr.ph.i, %.loopexit, %bb.c, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.dk, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit ], [ %i.y, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27 ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation37convert_utf16le_to_latin1_with_errorsEPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %i.e = phi i64 [ %i.cq, %.critedge.i ], [ %i.c, %bb.a ]
  %.03767.i = phi ptr [ %.138.i, %.critedge.i ], [ %1, %bb.a ] ; 17 uses
  %.066.i = phi ptr [ %.3.i, %.critedge.i ], [ %3, %bb.a ] ; 18 uses
  %i.f = load <4 x i64>, ptr %.03767.i, align 1, !noalias !683 ; 4 uses
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
  store <2 x i64> %i.r, ptr %.066.i, align 1, !noalias !683
  br label %.critedge.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.s = trunc nuw i16 %i.h to i8
  store i8 %i.s, ptr %.066.i, align 1, !noalias !683
  %i.t = getelementptr inbounds nuw i8, ptr %.03767.i, i64 2
  %i.u = load i16, ptr %i.t, align 2, !noalias !683 ; 2 uses
  %i.v = icmp ult i16 %i.u, 256
  br i1 %i.v, label %.preheader.2.i, label %bb.c

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %.066.i, i64 1
  %i.x = trunc nuw i16 %i.u to i8
  store i8 %i.x, ptr %i.w, align 1, !noalias !683
  %i.y = getelementptr inbounds nuw i8, ptr %.03767.i, i64 4
  %i.z = load i16, ptr %i.y, align 2, !noalias !683 ; 2 uses
  %i.aa = icmp ult i16 %i.z, 256
  br i1 %i.aa, label %.preheader.3.i, label %bb.c

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.066.i, i64 2
  %i.ac = trunc nuw i16 %i.z to i8
  store i8 %i.ac, ptr %i.ab, align 1, !noalias !683
  %i.ad = getelementptr inbounds nuw i8, ptr %.03767.i, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !683 ; 2 uses
  %i.af = icmp ult i16 %i.ae, 256
  br i1 %i.af, label %.preheader.4.i, label %bb.c

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.066.i, i64 3
  %i.ah = trunc nuw i16 %i.ae to i8
  store i8 %i.ah, ptr %i.ag, align 1, !noalias !683
  %i.ai = getelementptr inbounds nuw i8, ptr %.03767.i, i64 8
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !683 ; 2 uses
  %i.ak = icmp ult i16 %i.aj, 256
  br i1 %i.ak, label %.preheader.5.i, label %bb.c

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.al = getelementptr inbounds nuw i8, ptr %.066.i, i64 4
  %i.am = trunc nuw i16 %i.aj to i8
  store i8 %i.am, ptr %i.al, align 1, !noalias !683
  %i.an = getelementptr inbounds nuw i8, ptr %.03767.i, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !noalias !683 ; 2 uses
  %i.ap = icmp ult i16 %i.ao, 256
  br i1 %i.ap, label %.preheader.6.i, label %bb.c

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.066.i, i64 5
  %i.ar = trunc nuw i16 %i.ao to i8
  store i8 %i.ar, ptr %i.aq, align 1, !noalias !683
  %i.as = getelementptr inbounds nuw i8, ptr %.03767.i, i64 12
  %i.at = load i16, ptr %i.as, align 2, !noalias !683 ; 2 uses
  %i.au = icmp ult i16 %i.at, 256
  br i1 %i.au, label %.preheader.7.i, label %bb.c

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.av = getelementptr inbounds nuw i8, ptr %.066.i, i64 6
  %i.aw = trunc nuw i16 %i.at to i8
  store i8 %i.aw, ptr %i.av, align 1, !noalias !683
  %i.ax = getelementptr inbounds nuw i8, ptr %.03767.i, i64 14
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !683 ; 2 uses
  %i.az = icmp ult i16 %i.ay, 256
  br i1 %i.az, label %.preheader.8.i, label %bb.c

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.066.i, i64 7
  %i.bb = trunc nuw i16 %i.ay to i8
  store i8 %i.bb, ptr %i.ba, align 1, !noalias !683
  %i.bc = getelementptr inbounds nuw i8, ptr %.03767.i, i64 16
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !683 ; 2 uses
  %i.be = icmp ult i16 %i.bd, 256
  br i1 %i.be, label %.preheader.9.i, label %bb.c

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %i.bg = trunc nuw i16 %i.bd to i8
  store i8 %i.bg, ptr %i.bf, align 1, !noalias !683
  %i.bh = getelementptr inbounds nuw i8, ptr %.03767.i, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !noalias !683 ; 2 uses
  %i.bj = icmp ult i16 %i.bi, 256
  br i1 %i.bj, label %.preheader.10.i, label %bb.c

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.066.i, i64 9
  %i.bl = trunc nuw i16 %i.bi to i8
  store i8 %i.bl, ptr %i.bk, align 1, !noalias !683
  %i.bm = getelementptr inbounds nuw i8, ptr %.03767.i, i64 20
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !683 ; 2 uses
  %i.bo = icmp ult i16 %i.bn, 256
  br i1 %i.bo, label %.preheader.11.i, label %bb.c

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.066.i, i64 10
  %i.bq = trunc nuw i16 %i.bn to i8
  store i8 %i.bq, ptr %i.bp, align 1, !noalias !683
  %i.br = getelementptr inbounds nuw i8, ptr %.03767.i, i64 22
  %i.bs = load i16, ptr %i.br, align 2, !noalias !683 ; 2 uses
  %i.bt = icmp ult i16 %i.bs, 256
  br i1 %i.bt, label %.preheader.12.i, label %bb.c

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.066.i, i64 11
  %i.bv = trunc nuw i16 %i.bs to i8
  store i8 %i.bv, ptr %i.bu, align 1, !noalias !683
  %i.bw = getelementptr inbounds nuw i8, ptr %.03767.i, i64 24
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !683 ; 2 uses
  %i.by = icmp ult i16 %i.bx, 256
  br i1 %i.by, label %.preheader.13.i, label %bb.c

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.066.i, i64 12
  %i.ca = trunc nuw i16 %i.bx to i8
  store i8 %i.ca, ptr %i.bz, align 1, !noalias !683
  %i.cb = getelementptr inbounds nuw i8, ptr %.03767.i, i64 26
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !683 ; 2 uses
  %i.cd = icmp ult i16 %i.cc, 256
  br i1 %i.cd, label %.preheader.14.i, label %bb.c

.preheader.14.i:                                  ; preds = %.preheader.13.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.066.i, i64 13
  %i.cf = trunc nuw i16 %i.cc to i8
  store i8 %i.cf, ptr %i.ce, align 1, !noalias !683
  %i.cg = getelementptr inbounds nuw i8, ptr %.03767.i, i64 28
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !683 ; 2 uses
  %i.ci = icmp ult i16 %i.ch, 256
  br i1 %i.ci, label %.preheader.15.i, label %bb.c

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.066.i, i64 14
  %i.ck = trunc nuw i16 %i.ch to i8
  store i8 %i.ck, ptr %i.cj, align 1, !noalias !683
  %i.cl = getelementptr inbounds nuw i8, ptr %.03767.i, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !683 ; 2 uses
  %i.cn = icmp ult i16 %i.cm, 256
  br i1 %i.cn, label %.critedge.loopexit.i, label %bb.c

.critedge.loopexit.i:                             ; preds = %.preheader.15.i
  %i.co = getelementptr inbounds nuw i8, ptr %.066.i, i64 15
  %i.cp = trunc nuw i16 %i.cm to i8
  store i8 %i.cp, ptr %i.co, align 1, !noalias !683
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.3.i = getelementptr inbounds nuw i8, ptr %.066.i, i64 16 ; 2 uses
  %.138.i = getelementptr inbounds nuw i8, ptr %.03767.i, i64 32 ; 2 uses
  %i.cq = ptrtoint ptr %.138.i to i64             ; 3 uses
  %i.cr = sub i64 %i.b, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 30
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit, !llvm.loop !682

bb.c:                                             ; preds = %.preheader.15.i, %.preheader.14.i, %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.03665.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ], [ 4, %.preheader.4.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ], [ 8, %.preheader.8.i ], [ 9, %.preheader.9.i ], [ 10, %.preheader.10.i ], [ 11, %.preheader.11.i ], [ 12, %.preheader.12.i ], [ 13, %.preheader.13.i ], [ 14, %.preheader.14.i ], [ 15, %.preheader.15.i ]
  %i.ct = sub i64 %i.e, %i.c
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7haswell14implementation31convert_valid_utf16be_to_latin1EPKDsmPc:bb.a

bb.c:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i
  %i.z = ptrtoint ptr %.sroa.031.2.i33.i to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 1                 ; 4 uses
  %i.ad = sub i64 %2, %i.ac                       ; 9 uses
  %i.ae = icmp eq i64 %2, %i.ac
  br i1 %i.ae, label %_ZNK7simdutf7haswell14implementation25convert_utf16be_to_latin1EPKDsmPc.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %i.ad
  %i.af = shl i64 %2, 1
  %i.ag = sub i64 %i.af, %i.ab
  %scevgep15 = getelementptr i8, ptr %.sroa.031.2.i33.i, i64 %i.ag
  %bound0 = icmp ult ptr %.043.lcssa.i32.i, %scevgep15
  %bound1 = icmp ult ptr %.sroa.031.2.i33.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, -32                     ; 5 uses
  %i.ai = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi17 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi18 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi19 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %next.gep = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %index ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %index ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %wide.load = load <8 x i16>, ptr %i.aj, align 2, !alias.scope !695
  %wide.load20 = load <8 x i16>, ptr %i.ak, align 2, !alias.scope !695
  %wide.load21 = load <8 x i16>, ptr %i.al, align 2, !alias.scope !695
  %wide.load22 = load <8 x i16>, ptr %i.am, align 2, !alias.scope !695
  %i.an = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load) ; 2 uses
  %i.ao = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load20) ; 2 uses
  %i.ap = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load21) ; 2 uses
  %i.aq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load22) ; 2 uses
  %i.ar = zext <8 x i16> %i.an to <8 x i32>
  %i.as = zext <8 x i16> %i.ao to <8 x i32>
  %i.at = zext <8 x i16> %i.ap to <8 x i32>
  %i.au = zext <8 x i16> %i.aq to <8 x i32>
  %i.av = or <8 x i32> %vec.phi, %i.ar            ; 2 uses
  %i.aw = or <8 x i32> %vec.phi17, %i.as          ; 2 uses
  %i.ax = or <8 x i32> %vec.phi18, %i.at          ; 2 uses
  %i.ay = or <8 x i32> %vec.phi19, %i.au          ; 2 uses
  %i.az = trunc <8 x i16> %i.an to <8 x i8>
  %i.ba = trunc <8 x i16> %i.ao to <8 x i8>
  %i.bb = trunc <8 x i16> %i.ap to <8 x i8>
  %i.bc = trunc <8 x i16> %i.aq to <8 x i8>
  %i.bd = getelementptr i8, ptr %next.gep, i64 8
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  %i.bf = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.az, ptr %next.gep, align 1, !alias.scope !696, !noalias !695
  store <8 x i8> %i.ba, ptr %i.bd, align 1, !alias.scope !696, !noalias !695
  store <8 x i8> %i.bb, ptr %i.be, align 1, !alias.scope !696, !noalias !695
  store <8 x i8> %i.bc, ptr %i.bf, align 1, !alias.scope !696, !noalias !695
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i32> %i.aw, %i.av
  %bin.rdx23 = or <8 x i32> %i.ax, %bin.rdx
  %bin.rdx24 = or <8 x i32> %i.ay, %bin.rdx23
  %i.bh = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %bin.rdx24) ; 3 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bh, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.ad, -8                    ; 4 uses
  %i.bi = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %n.vec25 ; 2 uses
  %i.bj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi27 = phi <8 x i32> [ %i.bj, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %next.gep28 = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %index26
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %index26
  %wide.load29 = load <8 x i16>, ptr %i.bk, align 2, !alias.scope !695
  %i.bl = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load29) ; 2 uses
  %i.bm = zext <8 x i16> %i.bl to <8 x i32>
  %i.bn = or <8 x i32> %vec.phi27, %i.bm          ; 2 uses
  %i.bo = trunc <8 x i16> %i.bl to <8 x i8>
  store <8 x i8> %i.bo, ptr %next.gep28, align 1, !alias.scope !696, !noalias !695
  %index.next30 = add nuw i64 %index26, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !692

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bq = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.bn) ; 2 uses
  %cmp.n31 = icmp eq i64 %i.ad, %n.vec25
  br i1 %cmp.n31, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 2 uses
  %.01722.i.i.ph = phi ptr [ %.043.lcssa.i32.i, %iter.check ], [ %.043.lcssa.i32.i, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.01821.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %i.br = sub i64 %2, %i.ac
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.023.i.i.prol = phi i32 [ %i.bw, %.preheader.i.i.prol ], [ %.023.i.i.ph, %.preheader.i.i.preheader ]
  %.01722.i.i.prol = phi ptr [ %i.by, %.preheader.i.i.prol ], [ %.01722.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.01821.i.i.prol = phi i64 [ %i.bz, %.preheader.i.i.prol ], [ %.01821.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i.prol
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or i32 %.023.i.i.prol, %i.bv            ; 3 uses
  %i.bx = trunc i16 %i.bu to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.01722.i.i.prol, i64 1 ; 3 uses
  store i8 %i.bx, ptr %.01722.i.i.prol, align 1
  %i.bz = add nuw i64 %.01821.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !693

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa36.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.bw, %.preheader.i.i.prol ]
  %.lcssa35.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.by, %.preheader.i.i.prol ]
  %.023.i.i.unr = phi i32 [ %.023.i.i.ph, %.preheader.i.i.preheader ], [ %i.bw, %.preheader.i.i.prol ]
  %.01722.i.i.unr = phi ptr [ %.01722.i.i.ph, %.preheader.i.i.preheader ], [ %i.by, %.preheader.i.i.prol ]
  %.01821.i.i.unr = phi i64 [ %.01821.i.i.ph, %.preheader.i.i.preheader ], [ %i.bz, %.preheader.i.i.prol ]
  %i.ca = sub i64 %.01821.i.i.ph, %2
  %i.cb = add i64 %i.ca, %i.ac
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.023.i.i = phi i32 [ %i.df, %.preheader.i.i ], [ %.023.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %.01722.i.i = phi ptr [ %i.dh, %.preheader.i.i ], [ %.01722.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.01821.i.i = phi i64 [ %i.di, %.preheader.i.i ], [ %.01821.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 2 uses
  %i.cg = zext i16 %i.cf to i32
  %i.ch = or i32 %.023.i.i, %i.cg
  %i.ci = trunc i16 %i.cf to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 1
  store i8 %i.ci, ptr %.01722.i.i, align 1
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = tail call noundef i16 @llvm.bswap.i16(i16 %i.cm) ; 2 uses
  %i.co = zext i16 %i.cn to i32
  %i.cp = or i32 %i.ch, %i.co
  %i.cq = trunc i16 %i.cn to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 2
  store i8 %i.cq, ptr %i.cj, align 1
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu) ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = or i32 %i.cp, %i.cw
  %i.cy = trunc i16 %i.cv to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 3
  store i8 %i.cy, ptr %i.cr, align 1
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = tail call noundef i16 @llvm.bswap.i16(i16 %i.dc) ; 2 uses
  %i.de = zext i16 %i.dd to i32
  %i.df = or i32 %i.cx, %i.de                     ; 2 uses
  %i.dg = trunc i16 %i.dd to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 4 ; 2 uses
  store i8 %i.dg, ptr %i.cz, align 1
  %i.di = add nuw i64 %.01821.i.i, 4              ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.di, %i.ad
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.preheader.i.i, !llvm.loop !694

.loopexit:                                        ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa12 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %.lcssa36.unr, %.preheader.i.i.prol.loopexit ], [ %i.df, %.preheader.i.i ]
  %.lcssa = phi ptr [ %i.bi, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %.lcssa35.unr, %.preheader.i.i.prol.loopexit ], [ %i.dh, %.preheader.i.i ]
  %4 = and i32 %.lcssa12, 65280
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i, label %_ZNK7simdutf7haswell14implementation25convert_utf16be_to_latin1EPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i: ; preds = %.loopexit
  %i.dj = ptrtoint ptr %.lcssa to i64
  %i.dk = sub i64 %i.dj, %i.x
  br label %_ZNK7simdutf7haswell14implementation25convert_utf16be_to_latin1EPKDsmPc.exit

_ZNK7simdutf7haswell14implementation25convert_utf16be_to_latin1EPKDsmPc.exit: ; preds = %.lr.ph.i.i, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, %bb.c, %.loopexit, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i
  %.2.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.dk, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i ], [ %i.y, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ]
  ret i64 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation31convert_valid_utf16le_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 31
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.050.i.i = phi ptr [ %i.n, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.04349.i.i = phi ptr [ %i.o, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <4 x i64>, ptr %.050.i.i, align 1   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.050.i.i, i64 32
  %i.f = load <4 x i64>, ptr %i.e, align 1        ; 2 uses
  %i.g = or <4 x i64> %i.f, %i.d
  %i.h = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.g, <4 x i64> splat (i64 -71777214294589696))
  %.not.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.not.i.i, label %_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = bitcast <4 x i64> %i.d to <16 x i16>
  %i.j = bitcast <4 x i64> %i.f to <16 x i16>
  %i.k = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.i, <16 x i16> %i.j)
  %i.l = bitcast <32 x i8> %i.k to <4 x i64>
  %i.m = shufflevector <4 x i64> %i.l, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.m, ptr %.04349.i.i, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.050.i.i, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.04349.i.i, i64 32 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = icmp sgt i64 %i.q, 62
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, !llvm.loop !48

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i: ; preds = %bb.a
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i

_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i: ; preds = %bb.b, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i
  %.sroa.031.2.i33.i = phi ptr [ %1, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.n, %bb.b ] ; 11 uses
  %.043.lcssa.i32.i = phi ptr [ %3, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.o, %bb.b ] ; 9 uses
  %i.t = ptrtoint ptr %.043.lcssa.i32.i to i64
  %i.u = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %.not.i = icmp eq ptr %.sroa.031.2.i33.i, %i.a
  br i1 %.not.i, label %_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i
  %i.w = ptrtoint ptr %.sroa.031.2.i33.i to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 1                   ; 4 uses
  %i.aa = sub i64 %2, %i.z                        ; 9 uses
  %i.ab = icmp eq i64 %2, %i.z
  br i1 %i.ab, label %_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %i.aa
  %i.ac = shl i64 %2, 1
  %i.ad = sub i64 %i.ac, %i.y
  %scevgep15 = getelementptr i8, ptr %.sroa.031.2.i33.i, i64 %i.ad
  %bound0 = icmp ult ptr %.043.lcssa.i32.i, %scevgep15
  %bound1 = icmp ult ptr %.sroa.031.2.i33.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, -32                     ; 5 uses
  %i.af = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi17 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi18 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi19 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %next.gep = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %index ; 4 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %index ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %wide.load = load <8 x i16>, ptr %i.ag, align 2, !alias.scope !704 ; 2 uses
  %wide.load20 = load <8 x i16>, ptr %i.ah, align 2, !alias.scope !704 ; 2 uses
  %wide.load21 = load <8 x i16>, ptr %i.ai, align 2, !alias.scope !704 ; 2 uses
  %wide.load22 = load <8 x i16>, ptr %i.aj, align 2, !alias.scope !704 ; 2 uses
  %i.ak = zext <8 x i16> %wide.load to <8 x i32>
  %i.al = zext <8 x i16> %wide.load20 to <8 x i32>
  %i.am = zext <8 x i16> %wide.load21 to <8 x i32>
  %i.an = zext <8 x i16> %wide.load22 to <8 x i32>
  %i.ao = or <8 x i32> %vec.phi, %i.ak            ; 2 uses
  %i.ap = or <8 x i32> %vec.phi17, %i.al          ; 2 uses
  %i.aq = or <8 x i32> %vec.phi18, %i.am          ; 2 uses
  %i.ar = or <8 x i32> %vec.phi19, %i.an          ; 2 uses
  %i.as = trunc <8 x i16> %wide.load to <8 x i8>
  %i.at = trunc <8 x i16> %wide.load20 to <8 x i8>
  %i.au = trunc <8 x i16> %wide.load21 to <8 x i8>
  %i.av = trunc <8 x i16> %wide.load22 to <8 x i8>
  %i.aw = getelementptr i8, ptr %next.gep, i64 8
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %i.ay = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.as, ptr %next.gep, align 1, !alias.scope !705, !noalias !704
  store <8 x i8> %i.at, ptr %i.aw, align 1, !alias.scope !705, !noalias !704
  store <8 x i8> %i.au, ptr %i.ax, align 1, !alias.scope !705, !noalias !704
  store <8 x i8> %i.av, ptr %i.ay, align 1, !alias.scope !705, !noalias !704
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i32> %i.ap, %i.ao
  %bin.rdx23 = or <8 x i32> %i.aq, %bin.rdx
  %bin.rdx24 = or <8 x i32> %i.ar, %bin.rdx23
  %i.ba = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %bin.rdx24) ; 3 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.aa, -8                    ; 4 uses
  %i.bb = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %n.vec25 ; 2 uses
  %i.bc = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi27 = phi <8 x i32> [ %i.bc, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %next.gep28 = getelementptr i8, ptr %.043.lcssa.i32.i, i64 %index26
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %index26
  %wide.load29 = load <8 x i16>, ptr %i.bd, align 2, !alias.scope !704 ; 2 uses
  %i.be = zext <8 x i16> %wide.load29 to <8 x i32>
  %i.bf = or <8 x i32> %vec.phi27, %i.be          ; 2 uses
  %i.bg = trunc <8 x i16> %wide.load29 to <8 x i8>
  store <8 x i8> %i.bg, ptr %next.gep28, align 1, !alias.scope !705, !noalias !704
  %index.next30 = add nuw i64 %index26, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !701

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bi = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.bf) ; 2 uses
  %cmp.n31 = icmp eq i64 %i.aa, %n.vec25
  br i1 %cmp.n31, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.01722.i.i.ph = phi ptr [ %.043.lcssa.i32.i, %iter.check ], [ %.043.lcssa.i32.i, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 2 uses
  %.01821.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %i.bj = sub i64 %2, %i.z
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.023.i.i.prol = phi i32 [ %i.bn, %.preheader.i.i.prol ], [ %.023.i.i.ph, %.preheader.i.i.preheader ]
  %.01722.i.i.prol = phi ptr [ %i.bp, %.preheader.i.i.prol ], [ %.01722.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.01821.i.i.prol = phi i64 [ %i.bq, %.preheader.i.i.prol ], [ %.01821.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i.prol
  %i.bl = load i16, ptr %i.bk, align 2            ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = or i32 %.023.i.i.prol, %i.bm            ; 3 uses
  %i.bo = trunc i16 %i.bl to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.01722.i.i.prol, i64 1 ; 3 uses
  store i8 %i.bo, ptr %.01722.i.i.prol, align 1
  %i.bq = add nuw i64 %.01821.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !702

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa36.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.bn, %.preheader.i.i.prol ]
  %.lcssa35.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.bp, %.preheader.i.i.prol ]
  %.023.i.i.unr = phi i32 [ %.023.i.i.ph, %.preheader.i.i.preheader ], [ %i.bn, %.preheader.i.i.prol ]
  %.01722.i.i.unr = phi ptr [ %.01722.i.i.ph, %.preheader.i.i.preheader ], [ %i.bp, %.preheader.i.i.prol ]
  %.01821.i.i.unr = phi i64 [ %.01821.i.i.ph, %.preheader.i.i.preheader ], [ %i.bq, %.preheader.i.i.prol ]
  %i.br = sub i64 %.01821.i.i.ph, %2
  %i.bs = add i64 %i.br, %i.z
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.023.i.i = phi i32 [ %i.cs, %.preheader.i.i ], [ %.023.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %.01722.i.i = phi ptr [ %i.cu, %.preheader.i.i ], [ %.01722.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.01821.i.i = phi i64 [ %i.cv, %.preheader.i.i ], [ %.01821.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.bv = load i16, ptr %i.bu, align 2            ; 2 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = or i32 %.023.i.i, %i.bw
  %i.by = trunc i16 %i.bv to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 1
  store i8 %i.by, ptr %.01722.i.i, align 1
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = load i16, ptr %i.cb, align 2            ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = or i32 %i.bx, %i.cd
  %i.cf = trunc i16 %i.cc to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 2
  store i8 %i.cf, ptr %i.bz, align 1
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i16, ptr %i.ci, align 2            ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %i.cl = or i32 %i.ce, %i.ck
  %i.cm = trunc i16 %i.cj to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 3
  store i8 %i.cm, ptr %i.cg, align 1
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.2.i33.i, i64 %.01821.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = load i16, ptr %i.cp, align 2            ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = or i32 %i.cl, %i.cr                     ; 2 uses
  %i.ct = trunc i16 %i.cq to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 4 ; 2 uses
  store i8 %i.ct, ptr %i.cn, align 1
  %i.cv = add nuw i64 %.01821.i.i, 4              ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cv, %i.aa
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.preheader.i.i, !llvm.loop !703

.loopexit:                                        ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa12 = phi i32 [ %i.bi, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %.lcssa36.unr, %.preheader.i.i.prol.loopexit ], [ %i.cs, %.preheader.i.i ]
  %.lcssa = phi ptr [ %i.bb, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %.lcssa35.unr, %.preheader.i.i.prol.loopexit ], [ %i.cu, %.preheader.i.i ]
  %4 = and i32 %.lcssa12, 65280
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i, label %_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i: ; preds = %.loopexit
  %i.cw = ptrtoint ptr %.lcssa to i64
  %i.cx = sub i64 %i.cw, %i.u
  br label %_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

_ZNK7simdutf7haswell14implementation25convert_utf16le_to_latin1EPKDsmPc.exit: ; preds = %.lr.ph.i.i, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, %bb.c, %.loopexit, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i
  %.2.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.cx, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i ], [ %i.v, %_ZN7simdutf7haswell12_GLOBAL__N_128avx2_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ]
  ret i64 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation23convert_utf16le_to_utf8EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 27
  br i1 %i.c, label %.lr.ph.i, label %_ZN7simdutf7haswell12_GLOBAL__N_126avx2_convert_utf16_to_utf8ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.m
  %.0266294.i = phi ptr [ %.3.i, %bb.m ], [ %1, %bb.a ] ; 7 uses
  %.0268293.i = phi ptr [ %.6.i, %bb.m ], [ %3, %bb.a ] ; 7 uses
  %i.d = load <4 x i64>, ptr %.0266294.i, align 1 ; 7 uses
  %i.e = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.d, <4 x i64> splat (i64 -35747867511423104))
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = bitcast <4 x i64> %i.d to <16 x i16>
  %i.g = shufflevector <16 x i16> %i.f, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.h = bitcast <4 x i64> %i.d to <16 x i16>
  %i.i = shufflevector <16 x i16> %i.h, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.i)
  store <16 x i8> %i.j, ptr %.0268293.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.0266294.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.0268293.i, i64 16
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = bitcast <4 x i64> %i.d to <16 x i16>     ; 4 uses
  %i.n = icmp ult <16 x i16> %i.m, splat (i16 128) ; 2 uses
  %i.o = sext <16 x i1> %i.n to <16 x i16>
  %i.p = bitcast <16 x i16> %i.o to <32 x i8>
  %i.q = icmp slt <32 x i8> %i.p, zeroinitializer
  %i.r = bitcast <32 x i1> %i.q to i32            ; 2 uses
  %i.s = bitcast <4 x i64> %i.d to <16 x i16>
  %i.t = and <16 x i16> %i.s, splat (i16 -2048)   ; 2 uses
  %i.u = icmp eq <16 x i16> %i.t, zeroinitializer ; 2 uses
  %i.v = sext <16 x i1> %i.u to <16 x i16>
  %i.w = bitcast <16 x i16> %i.v to <32 x i8>
  %i.x = icmp slt <32 x i8> %i.w, zeroinitializer
  %i.y = bitcast <32 x i1> %i.x to i32            ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl <16 x i16> %i.m, splat (i16 2)
  %i.ab = bitcast <16 x i16> %i.aa to <4 x i64>
  %i.ac = and <4 x i64> %i.ab, splat (i64 2233819500556328704)
  %i.ad = and <4 x i64> %i.d, splat (i64 17733194119839807)
  %i.ae = or disjoint <4 x i64> %i.ac, %i.ad
  %i.af = bitcast <4 x i64> %i.ae to <16 x i16>
  %i.ag = or disjoint <16 x i16> %i.af, splat (i16 -16256)
  %i.ah = select <16 x i1> %i.n, <16 x i16> %i.m, <16 x i16> %i.ag
  %i.ai = bitcast <16 x i16> %i.ah to <32 x i8>
  %i.aj = and i32 %i.r, 1431655765                ; 2 uses
  %i.ak = lshr i32 %i.aj, 7
  %i.al = or disjoint i32 %i.ak, %i.aj            ; 2 uses
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf819pack_1_2_utf8_bytesE, i64 %i.an ; 2 uses
  %i.ap = lshr i32 %i.al, 16
  %i.aq = and i32 %i.ap, 255
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf819pack_1_2_utf8_bytesE, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.au = load <2 x i64>, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.aw = load <2 x i64>, ptr %i.av, align 1
  %i.ax = shufflevector <2 x i64> %i.au, <2 x i64> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = bitcast <4 x i64> %i.ax to <32 x i8>
  %i.az = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ai, <32 x i8> %i.ay) ; 2 uses
  %i.ba = bitcast <32 x i8> %i.az to <4 x i64>
  %i.bb = shufflevector <4 x i64> %i.ba, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.bb, ptr %.0268293.i, align 1
  %i.bc = load i8, ptr %i.ao, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0268293.i, i64 %i.bd ; 2 uses
  %i.bf = bitcast <32 x i8> %i.az to <8 x i32>
  %i.bg = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.bg, ptr %i.be, align 1
  %i.bh = load i8, ptr %i.as, align 1
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.0266294.i, i64 32
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.bl = icmp eq <16 x i16> %i.t, splat (i16 -10240)
  %i.bm = sext <16 x i1> %i.bl to <16 x i16>
  %i.bn = bitcast <16 x i16> %i.bm to <32 x i8>
  %i.bo = icmp slt <32 x i8> %i.bn, zeroinitializer
  %i.bp = bitcast <32 x i1> %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.br = bitcast <4 x i64> %i.d to <32 x i8>
  %i.bs = shufflevector <32 x i8> %i.br, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.bt = lshr <16 x i16> %i.m, splat (i16 4)
  %i.bu = bitcast <16 x i16> %i.bt to <32 x i8>
  %i.bv = and <32 x i8> %i.bu, <i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15>
  %i.bw = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bv, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %.inner33 = or <16 x i16> %i.bw, splat (i16 -16160)
  %.inner34 = select <16 x i1> %i.u, <16 x i16> splat (i16 16384), <16 x i16> zeroinitializer
  %.inner35 = xor <16 x i16> %.inner33, %.inner34
  %i.bx = bitcast <32 x i8> %i.bs to <16 x i16>
  %i.by = and <16 x i16> %i.bx, splat (i16 16255)
  %i.bz = or disjoint <16 x i16> %i.by, splat (i16 -32768) ; 2 uses
  %i.ca = xor <16 x i16> %.inner35, splat (i16 16384) ; 2 uses
  %i.cb = shufflevector <16 x i16> %i.bz, <16 x i16> %i.ca, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cc = shufflevector <16 x i16> %i.bz, <16 x i16> %i.ca, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cd = and i32 %i.r, 1431655765
  %i.ce = and i32 %i.y, -1431655766
  %i.cf = or disjoint i32 %i.ce, %i.cd            ; 4 uses
  %i.cg = and i32 %i.cf, 255
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf821pack_1_2_3_utf8_bytesE, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load <16 x i8>, ptr %i.cj, align 1
  %i.cl = bitcast <16 x i16> %i.cb to <32 x i8>
  %i.cm = shufflevector <32 x i8> %i.cl, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cm, <16 x i8> %i.ck)
  %i.co = lshr i32 %i.cf, 8
  %i.cp = and i32 %i.co, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf821pack_1_2_3_utf8_bytesE, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load <16 x i8>, ptr %i.cs, align 1
  %i.cu = bitcast <16 x i16> %i.cc to <32 x i8>
  %i.cv = shufflevector <32 x i8> %i.cu, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cv, <16 x i8> %i.ct)
  %i.cx = lshr i32 %i.cf, 16
  %i.cy = and i32 %i.cx, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf821pack_1_2_3_utf8_bytesE, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load <16 x i8>, ptr %i.db, align 1
  %i.dd = bitcast <16 x i16> %i.cb to <32 x i8>
  %i.de = shufflevector <32 x i8> %i.dd, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.df = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.de, <16 x i8> %i.dc)
  %i.dg = lshr i32 %i.cf, 24
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf821pack_1_2_3_utf8_bytesE, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load <16 x i8>, ptr %i.dj, align 1
  %i.dl = bitcast <16 x i16> %i.cc to <32 x i8>
  %i.dm = shufflevector <32 x i8> %i.dl, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.dm, <16 x i8> %i.dk)
  store <16 x i8> %i.cn, ptr %.0268293.i, align 1
  %i.do = load i8, ptr %i.ci, align 1
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.0268293.i, i64 %i.dp ; 2 uses
  store <16 x i8> %i.cw, ptr %i.dq, align 1
  %i.dr = load i8, ptr %i.cr, align 1
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  store <16 x i8> %i.df, ptr %i.dt, align 1
  %i.du = load i8, ptr %i.da, align 1
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  store <16 x i8> %i.dn, ptr %i.dw, align 1
  %i.dx = load i8, ptr %i.di, align 1
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %.0266294.i, i64 32
  br label %bb.m

.preheader.i:                                     ; preds = %bb.e, %bb.l
  %.0292.i = phi i64 [ %i.gc, %bb.l ], [ 0, %bb.e ] ; 5 uses
  %.1269291.i = phi ptr [ %.3271.i, %bb.l ], [ %.0268293.i, %bb.e ] ; 11 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.0266294.i, i64 %.0292.i
  %i.ec = load i16, ptr %i.eb, align 2            ; 9 uses
  %i.ed = icmp ult i16 %i.ec, 128
  br i1 %i.ed, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.ee = trunc nuw nsw i16 %i.ec to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.1269291.i, i64 1
  store i8 %i.ee, ptr %.1269291.i, align 1
  br label %bb.l

bb.h:                                             ; preds = %.preheader.i
  %i.eg = and i16 %i.ec, -2048
  switch i16 %i.eg, label %bb.j [
    i16 0, label %bb.i
    i16 -10240, label %bb.k
  ]

end_hunk_2
begin_hunk_3_@_ZNK7simdutf8westmere14implementation27convert_valid_utf8_to_utf32EPKcmPDi:bb.a

.loopexit.i:                                      ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit.i, %bb.c, %bb.b
  %.285.i = phi ptr [ %i.bp, %bb.b ], [ %.08391.i, %bb.c ], [ %.4.i, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit.i ] ; 2 uses
  %.2.i = phi i64 [ %i.a, %bb.b ], [ %.092.i, %bb.c ], [ %i.ha, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf32EPKcmRPDi.exit.i ] ; 4 uses
  %i.hd = add i64 %.2.i, 64
  %i.he = add i64 %.2.i, 80
  %.not.i = icmp ugt i64 %i.he, %2
  br i1 %.not.i, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3213convert_validEPKcmPDi.exit, label %.lr.ph93.i, !llvm.loop !1116

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf3213convert_validEPKcmPDi.exit: ; preds = %.loopexit.i, %bb.a
  %.083.lcssa.i = phi ptr [ %3, %bb.a ], [ %.285.i, %.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  %i.hg = sub i64 %2, %.0.lcssa.i
  %i.hh = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3213convert_validEPKcmPDi(ptr noundef readonly %i.hf, i64 noundef %i.hg, ptr noundef %.083.lcssa.i)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.083.lcssa.i, i64 %i.hh
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %3 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 2
  ret i64 %i.hm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %.lr.ph.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.025.i = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.01824.i = phi ptr [ %i.k, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <2 x i64>, ptr %.025.i, align 1     ; 2 uses
  %i.e = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.d, <2 x i64> splat (i64 -71777214294589696))
  %.not.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.not.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = bitcast <2 x i64> %i.d to <8 x i16>
  %i.g = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.f, <8 x i16> poison)
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = extractelement <2 x i64> %i.h, i64 0
  store i64 %i.i, ptr %.01824.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01824.i, i64 8 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = icmp sgt i64 %i.m, 14
  br i1 %i.n, label %.lr.ph.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27, !llvm.loop !58

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit: ; preds = %bb.a
  %i.o = icmp eq ptr %1, null
  br i1 %i.o, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27: ; preds = %bb.b, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit
  %.sroa.016.2.i33 = phi ptr [ %1, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.j, %bb.b ] ; 10 uses
  %.018.lcssa.i32 = phi ptr [ %3, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.k, %bb.b ] ; 7 uses
  %i.p = ptrtoint ptr %.018.lcssa.i32 to i64
  %i.q = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %.not = icmp eq ptr %.sroa.016.2.i33, %i.a
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27
  %i.s = ptrtoint ptr %.sroa.016.2.i33 to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 1                   ; 4 uses
  %i.w = sub i64 %2, %i.v                         ; 5 uses
  %i.x = icmp eq i64 %2, %i.v
  br i1 %i.x, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.w, 12
  br i1 %min.iters.check, label %.preheader.i.preheader53, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.preheader
  %scevgep = getelementptr i8, ptr %.018.lcssa.i32, i64 %i.w
  %i.y = shl i64 %2, 1
  %i.z = sub i64 %i.y, %i.u
  %scevgep49 = getelementptr i8, ptr %.sroa.016.2.i33, i64 %i.z
  %bound0 = icmp ult ptr %.018.lcssa.i32, %scevgep49
  %bound1 = icmp ult ptr %.sroa.016.2.i33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -8                       ; 4 uses
  %i.aa = getelementptr i8, ptr %.018.lcssa.i32, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %next.gep = getelementptr i8, ptr %.018.lcssa.i32, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load = load <4 x i16>, ptr %i.ab, align 2, !alias.scope !1123 ; 2 uses
  %wide.load51 = load <4 x i16>, ptr %i.ac, align 2, !alias.scope !1123 ; 2 uses
  %i.ad = zext <4 x i16> %wide.load to <4 x i32>
  %i.ae = zext <4 x i16> %wide.load51 to <4 x i32>
  %i.af = or <4 x i32> %vec.phi, %i.ad            ; 2 uses
  %i.ag = or <4 x i32> %vec.phi50, %i.ae          ; 2 uses
  %i.ah = trunc <4 x i16> %wide.load to <4 x i8>
  %i.ai = trunc <4 x i16> %wide.load51 to <4 x i8>
  %i.aj = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.ah, ptr %next.gep, align 1, !alias.scope !1124, !noalias !1123
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !alias.scope !1124, !noalias !1123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ag, %i.af
  %i.al = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.preheader53

.preheader.i.preheader53:                         ; preds = %vector.memcheck, %.preheader.i.preheader, %middle.block
  %.023.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.01722.i.ph = phi ptr [ %.018.lcssa.i32, %vector.memcheck ], [ %.018.lcssa.i32, %.preheader.i.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.01821.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.am = sub i64 %2, %i.v
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader53, %.preheader.i.prol
  %.023.i.prol = phi i32 [ %i.aq, %.preheader.i.prol ], [ %.023.i.ph, %.preheader.i.preheader53 ]
  %.01722.i.prol = phi ptr [ %i.as, %.preheader.i.prol ], [ %.01722.i.ph, %.preheader.i.preheader53 ] ; 2 uses
  %.01821.i.prol = phi i64 [ %i.at, %.preheader.i.prol ], [ %.01821.i.ph, %.preheader.i.preheader53 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader53 ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i.prol
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = or i32 %.023.i.prol, %i.ap              ; 3 uses
  %i.ar = trunc i16 %i.ao to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.01722.i.prol, i64 1 ; 3 uses
  store i8 %i.ar, ptr %.01722.i.prol, align 1
  %i.at = add nuw i64 %.01821.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !1121

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader53
  %.lcssa55.unr = phi i32 [ poison, %.preheader.i.preheader53 ], [ %i.aq, %.preheader.i.prol ]
  %.lcssa54.unr = phi ptr [ poison, %.preheader.i.preheader53 ], [ %i.as, %.preheader.i.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader53 ], [ %i.aq, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader53 ], [ %i.as, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader53 ], [ %i.at, %.preheader.i.prol ]
  %i.au = sub i64 %.01821.i.ph, %2
  %i.av = add i64 %i.au, %i.v
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.bv, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.bx, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.by, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.ay = load i16, ptr %i.ax, align 2            ; 2 uses
  %i.az = zext i16 %i.ay to i32
  %i.ba = or i32 %.023.i, %i.az
  %i.bb = trunc i16 %i.ay to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.bb, ptr %.01722.i, align 1
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = or i32 %i.ba, %i.bg
  %i.bi = trunc i16 %i.bf to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.bi, ptr %i.bc, align 1
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i16, ptr %i.bl, align 2            ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = or i32 %i.bh, %i.bn
  %i.bp = trunc i16 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.bp, ptr %i.bj, align 1
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2            ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = or i32 %i.bo, %i.bu                     ; 2 uses
  %i.bw = trunc i16 %i.bt to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.01722.i, i64 4 ; 2 uses
  store i8 %i.bw, ptr %i.bq, align 1
  %i.by = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.by, %i.w
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !1122

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa46 = phi i32 [ %i.al, %middle.block ], [ %.lcssa55.unr, %.preheader.i.prol.loopexit ], [ %i.bv, %.preheader.i ]
  %.lcssa = phi ptr [ %i.aa, %middle.block ], [ %.lcssa54.unr, %.preheader.i.prol.loopexit ], [ %i.bx, %.preheader.i ]
  %4 = and i32 %.lcssa46, 65280
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit: ; preds = %.loopexit
  %i.bz = ptrtoint ptr %.lcssa to i64
  %i.ca = sub i64 %i.bz, %i.q
  br label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread: ; preds = %.lr.ph.i, %.loopexit, %bb.c, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.ca, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit ], [ %i.r, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27 ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %.lr.ph.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.025.i = phi ptr [ %i.l, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.01824.i = phi ptr [ %i.m, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <16 x i8>, ptr %.025.i, align 1
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.f = bitcast <16 x i8> %i.e to <2 x i64>
  %i.g = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.f, <2 x i64> splat (i64 -71777214294589696))
  %.not.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.not.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = bitcast <16 x i8> %i.e to <8 x i16>
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.h, <8 x i16> poison)
  %i.j = bitcast <16 x i8> %i.i to <2 x i64>
  %i.k = extractelement <2 x i64> %i.j, i64 0
  store i64 %i.k, ptr %.01824.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01824.i, i64 8 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = icmp sgt i64 %i.o, 14
  br i1 %i.p, label %.lr.ph.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27, !llvm.loop !59

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit: ; preds = %bb.a
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27: ; preds = %bb.b, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit
  %.sroa.016.2.i33 = phi ptr [ %1, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.l, %bb.b ] ; 10 uses
  %.018.lcssa.i32 = phi ptr [ %3, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.m, %bb.b ] ; 7 uses
  %i.r = ptrtoint ptr %.018.lcssa.i32 to i64
  %i.s = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %.not = icmp eq ptr %.sroa.016.2.i33, %i.a
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27
  %i.u = ptrtoint ptr %.sroa.016.2.i33 to i64
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 1                   ; 4 uses
  %i.y = sub i64 %2, %i.x                         ; 5 uses
  %i.z = icmp eq i64 %2, %i.x
  br i1 %i.z, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.preheader.i.preheader53, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.preheader
  %scevgep = getelementptr i8, ptr %.018.lcssa.i32, i64 %i.y
  %i.aa = shl i64 %2, 1
  %i.ab = sub i64 %i.aa, %i.w
  %scevgep49 = getelementptr i8, ptr %.sroa.016.2.i33, i64 %i.ab
  %bound0 = icmp ult ptr %.018.lcssa.i32, %scevgep49
  %bound1 = icmp ult ptr %.sroa.016.2.i33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 4 uses
  %i.ac = getelementptr i8, ptr %.018.lcssa.i32, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %next.gep = getelementptr i8, ptr %.018.lcssa.i32, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %wide.load = load <4 x i16>, ptr %i.ad, align 2, !alias.scope !1131
  %wide.load51 = load <4 x i16>, ptr %i.ae, align 2, !alias.scope !1131
  %i.af = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load) ; 2 uses
  %i.ag = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load51) ; 2 uses
  %i.ah = zext <4 x i16> %i.af to <4 x i32>
  %i.ai = zext <4 x i16> %i.ag to <4 x i32>
  %i.aj = or <4 x i32> %vec.phi, %i.ah            ; 2 uses
  %i.ak = or <4 x i32> %vec.phi50, %i.ai          ; 2 uses
  %i.al = trunc <4 x i16> %i.af to <4 x i8>
  %i.am = trunc <4 x i16> %i.ag to <4 x i8>
  %i.an = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.al, ptr %next.gep, align 1, !alias.scope !1132, !noalias !1131
  store <4 x i8> %i.am, ptr %i.an, align 1, !alias.scope !1132, !noalias !1131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ak, %i.aj
  %i.ap = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.preheader53

.preheader.i.preheader53:                         ; preds = %vector.memcheck, %.preheader.i.preheader, %middle.block
  %.023.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %i.ap, %middle.block ] ; 2 uses
  %.01722.i.ph = phi ptr [ %.018.lcssa.i32, %vector.memcheck ], [ %.018.lcssa.i32, %.preheader.i.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %.01821.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.aq = sub i64 %2, %i.x
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader53, %.preheader.i.prol
  %.023.i.prol = phi i32 [ %i.av, %.preheader.i.prol ], [ %.023.i.ph, %.preheader.i.preheader53 ]
  %.01722.i.prol = phi ptr [ %i.ax, %.preheader.i.prol ], [ %.01722.i.ph, %.preheader.i.preheader53 ] ; 2 uses
  %.01821.i.prol = phi i64 [ %i.ay, %.preheader.i.prol ], [ %.01821.i.ph, %.preheader.i.preheader53 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader53 ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i.prol
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as) ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = or i32 %.023.i.prol, %i.au              ; 3 uses
  %i.aw = trunc i16 %i.at to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01722.i.prol, i64 1 ; 3 uses
  store i8 %i.aw, ptr %.01722.i.prol, align 1
  %i.ay = add nuw i64 %.01821.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !1129

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader53
  %.lcssa55.unr = phi i32 [ poison, %.preheader.i.preheader53 ], [ %i.av, %.preheader.i.prol ]
  %.lcssa54.unr = phi ptr [ poison, %.preheader.i.preheader53 ], [ %i.ax, %.preheader.i.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.preheader.i.preheader53 ], [ %i.av, %.preheader.i.prol ]
  %.01722.i.unr = phi ptr [ %.01722.i.ph, %.preheader.i.preheader53 ], [ %i.ax, %.preheader.i.prol ]
  %.01821.i.unr = phi i64 [ %.01821.i.ph, %.preheader.i.preheader53 ], [ %i.ay, %.preheader.i.prol ]
  %i.az = sub i64 %.01821.i.ph, %2
  %i.ba = add i64 %i.az, %i.x
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.023.i = phi i32 [ %i.ce, %.preheader.i ], [ %.023.i.unr, %.preheader.i.prol.loopexit ]
  %.01722.i = phi ptr [ %i.cg, %.preheader.i ], [ %.01722.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01821.i = phi i64 [ %i.ch, %.preheader.i ], [ %.01821.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd) ; 2 uses
  %i.bf = zext i16 %i.be to i32
  %i.bg = or i32 %.023.i, %i.bf
  %i.bh = trunc i16 %i.be to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01722.i, i64 1
  store i8 %i.bh, ptr %.01722.i, align 1
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl) ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = or i32 %i.bg, %i.bn
  %i.bp = trunc i16 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01722.i, i64 2
  store i8 %i.bp, ptr %i.bi, align 1
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or i32 %i.bo, %i.bv
  %i.bx = trunc i16 %i.bu to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.01722.i, i64 3
  store i8 %i.bx, ptr %i.bq, align 1
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33, i64 %.01821.i
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
  br i1 %exitcond.not.i.3, label %.loopexit, label %.preheader.i, !llvm.loop !1130

.loopexit:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %.lcssa46 = phi i32 [ %i.ap, %middle.block ], [ %.lcssa55.unr, %.preheader.i.prol.loopexit ], [ %i.ce, %.preheader.i ]
  %.lcssa = phi ptr [ %i.ac, %middle.block ], [ %.lcssa54.unr, %.preheader.i.prol.loopexit ], [ %i.cg, %.preheader.i ]
  %4 = and i32 %.lcssa46, 65280
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit: ; preds = %.loopexit
  %i.ci = ptrtoint ptr %.lcssa to i64
  %i.cj = sub i64 %i.ci, %i.s
  br label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread: ; preds = %.lr.ph.i, %.loopexit, %bb.c, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit ], [ %i.cj, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit ], [ %i.t, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27 ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i ]
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
  %.03255.i = phi ptr [ %.133.i, %.critedge.i ], [ %1, %bb.a ] ; 9 uses
  %.054.i = phi ptr [ %.3.i, %.critedge.i ], [ %3, %bb.a ] ; 10 uses
  %i.f = load <2 x i64>, ptr %.03255.i, align 1, !noalias !1136 ; 2 uses
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
  store i64 %i.l, ptr %.054.i, align 1, !noalias !1136
  br label %.critedge.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.m = trunc nuw i16 %i.h to i8
  store i8 %i.m, ptr %.054.i, align 1, !noalias !1136
  %i.n = getelementptr inbounds nuw i8, ptr %.03255.i, i64 2
  %i.o = load i16, ptr %i.n, align 2, !noalias !1136 ; 2 uses
  %i.p = icmp ult i16 %i.o, 256
  br i1 %i.p, label %.preheader.2.i, label %bb.c

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.q = getelementptr inbounds nuw i8, ptr %.054.i, i64 1
  %i.r = trunc nuw i16 %i.o to i8
  store i8 %i.r, ptr %i.q, align 1, !noalias !1136
  %i.s = getelementptr inbounds nuw i8, ptr %.03255.i, i64 4
  %i.t = load i16, ptr %i.s, align 2, !noalias !1136 ; 2 uses
  %i.u = icmp ult i16 %i.t, 256
  br i1 %i.u, label %.preheader.3.i, label %bb.c

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.v = getelementptr inbounds nuw i8, ptr %.054.i, i64 2
  %i.w = trunc nuw i16 %i.t to i8
  store i8 %i.w, ptr %i.v, align 1, !noalias !1136
  %i.x = getelementptr inbounds nuw i8, ptr %.03255.i, i64 6
  %i.y = load i16, ptr %i.x, align 2, !noalias !1136 ; 2 uses
  %i.z = icmp ult i16 %i.y, 256
  br i1 %i.z, label %.preheader.4.i, label %bb.c

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.054.i, i64 3
  %i.ab = trunc nuw i16 %i.y to i8
  store i8 %i.ab, ptr %i.aa, align 1, !noalias !1136
  %i.ac = getelementptr inbounds nuw i8, ptr %.03255.i, i64 8
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !1136 ; 2 uses
  %i.ae = icmp ult i16 %i.ad, 256
  br i1 %i.ae, label %.preheader.5.i, label %bb.c

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.af = getelementptr inbounds nuw i8, ptr %.054.i, i64 4
  %i.ag = trunc nuw i16 %i.ad to i8
  store i8 %i.ag, ptr %i.af, align 1, !noalias !1136
  %i.ah = getelementptr inbounds nuw i8, ptr %.03255.i, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !1136 ; 2 uses
  %i.aj = icmp ult i16 %i.ai, 256
  br i1 %i.aj, label %.preheader.6.i, label %bb.c

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.054.i, i64 5
  %i.al = trunc nuw i16 %i.ai to i8
  store i8 %i.al, ptr %i.ak, align 1, !noalias !1136
  %i.am = getelementptr inbounds nuw i8, ptr %.03255.i, i64 12
  %i.an = load i16, ptr %i.am, align 2, !noalias !1136 ; 2 uses
  %i.ao = icmp ult i16 %i.an, 256
  br i1 %i.ao, label %.preheader.7.i, label %bb.c

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.054.i, i64 6
  %i.aq = trunc nuw i16 %i.an to i8
  store i8 %i.aq, ptr %i.ap, align 1, !noalias !1136
  %i.ar = getelementptr inbounds nuw i8, ptr %.03255.i, i64 14
  %i.as = load i16, ptr %i.ar, align 2, !noalias !1136 ; 2 uses
  %i.at = icmp ult i16 %i.as, 256
  br i1 %i.at, label %.critedge.loopexit.i, label %bb.c

.critedge.loopexit.i:                             ; preds = %.preheader.7.i
  %i.au = getelementptr inbounds nuw i8, ptr %.054.i, i64 7
  %i.av = trunc nuw i16 %i.as to i8
  store i8 %i.av, ptr %i.au, align 1, !noalias !1136
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.3.i = getelementptr inbounds nuw i8, ptr %.054.i, i64 8 ; 2 uses
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 16 ; 2 uses
  %i.aw = ptrtoint ptr %.133.i to i64             ; 3 uses
  %i.ax = sub i64 %i.b, %i.aw
  %i.ay = icmp sgt i64 %i.ax, 14
  br i1 %i.ay, label %.lr.ph.i, label %.loopexit, !llvm.loop !1135

bb.c:                                             ; preds = %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.03153.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ], [ 4, %.preheader.4.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ]
  %i.az = sub i64 %i.e, %i.c
  %i.ba = ashr exact i64 %i.az, 1
  %i.bb = add nsw i64 %.03153.lcssa.wide.i, %i.ba
  br label %bb.j

.loopexit:                                        ; preds = %.critedge.i, %bb.a
  %.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %.3.i, %.critedge.i ] ; 4 uses
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
  %.05472.i = phi i64 [ %.054.be.i, %.backedge.i ], [ 0, %bb.d ] ; 6 uses
  %.05571.i = phi ptr [ %.055.be.i, %.backedge.i ], [ %.0.lcssa.i, %bb.d ] ; 20 uses
  %i.bg = add i64 %.05472.i, 16                   ; 2 uses
  %.not.i19 = icmp ugt i64 %i.bg, %i.bf
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %.05472.i ; 18 uses
  br i1 %.not.i19, label %.preheader64..thread_crit_edge.i, label %bb.e

.preheader64..thread_crit_edge.i:                 ; preds = %.preheader64.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %.thread.i

bb.e:                                             ; preds = %.preheader64.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 24
  %.0.copyload13.i = load i64, ptr %.phi.trans.insert.i, align 2 ; 2 uses
  %i.bk = load <4 x i64>, ptr %.phi.trans.insert.i, align 2
  %i.bl = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bk)
  %i.bm = and i64 %i.bl, -71777214294589696
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = trunc i64 %.0.copyload13.i to i16
  br i1 %i.bn, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.bp = icmp ult i64 %.05472.i, -16
  br i1 %i.bp, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bq = trunc i64 %.0.copyload13.i to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.05571.i, i64 1
  store i8 %i.bq, ptr %.05571.i, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.05571.i, i64 2
  store i8 %i.bu, ptr %i.br, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = trunc i16 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.05571.i, i64 3
  store i8 %i.by, ptr %i.bv, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = trunc i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.05571.i, i64 4
  store i8 %i.cc, ptr %i.bz, align 1
  %i.ce = load i16, ptr %i.bh, align 2
  %i.cf = trunc i16 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.05571.i, i64 5
  store i8 %i.cf, ptr %i.cd, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = trunc i16 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.05571.i, i64 6
  store i8 %i.cj, ptr %i.cg, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = trunc i16 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.05571.i, i64 7
  store i8 %i.cn, ptr %i.ck, align 1
end_hunk_3
begin_hunk_4_@_ZNK7simdutf8westmere14implementation37convert_utf16be_to_latin1_with_errorsEPKDsmPc:bb.a
  %.sroa.10.0 = phi ptr [ %.0.lcssa.i, %.loopexit ], [ %i.bv, %bb.f ]
  %i.bw = ptrtoint ptr %.sroa.10.0 to i64
  %i.bx = ptrtoint ptr %3 to i64
  %i.by = sub i64 %i.bw, %i.bx
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.0.0 = phi i32 [ 5, %bb.c ], [ %i.bs, %bb.e ], [ 0, %bb.g ]
  %.sroa.59.0 = phi i64 [ %i.bm, %bb.c ], [ %i.bu, %bb.e ], [ %i.by, %bb.g ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.59.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation31convert_valid_utf16be_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.025.i.i = phi ptr [ %i.l, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.m, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <16 x i8>, ptr %.025.i.i, align 1
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.f = bitcast <16 x i8> %i.e to <2 x i64>
  %i.g = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.f, <2 x i64> splat (i64 -71777214294589696))
  %.not.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.not.i.i, label %_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = bitcast <16 x i8> %i.e to <8 x i16>
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.h, <8 x i16> poison)
  %i.j = bitcast <16 x i8> %i.i to <2 x i64>
  %i.k = extractelement <2 x i64> %i.j, i64 0
  store i64 %i.k, ptr %.01824.i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = icmp sgt i64 %i.o, 14
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, !llvm.loop !59

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i: ; preds = %bb.a
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i: ; preds = %bb.b, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i
  %.sroa.016.2.i33.i = phi ptr [ %1, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.l, %bb.b ] ; 10 uses
  %.018.lcssa.i32.i = phi ptr [ %3, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.m, %bb.b ] ; 7 uses
  %i.r = ptrtoint ptr %.018.lcssa.i32.i to i64
  %i.s = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %.not.i = icmp eq ptr %.sroa.016.2.i33.i, %i.a
  br i1 %.not.i, label %_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i
  %i.u = ptrtoint ptr %.sroa.016.2.i33.i to i64
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 1                   ; 4 uses
  %i.y = sub i64 %2, %i.x                         ; 5 uses
  %i.z = icmp eq i64 %2, %i.x
  br i1 %i.z, label %_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.preheader
  %scevgep = getelementptr i8, ptr %.018.lcssa.i32.i, i64 %i.y
  %i.aa = shl i64 %2, 1
  %i.ab = sub i64 %i.aa, %i.w
  %scevgep15 = getelementptr i8, ptr %.sroa.016.2.i33.i, i64 %i.ab
  %bound0 = icmp ult ptr %.018.lcssa.i32.i, %scevgep15
  %bound1 = icmp ult ptr %.sroa.016.2.i33.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 4 uses
  %i.ac = getelementptr i8, ptr %.018.lcssa.i32.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %next.gep = getelementptr i8, ptr %.018.lcssa.i32.i, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %wide.load = load <4 x i16>, ptr %i.ad, align 2, !alias.scope !1147
  %wide.load17 = load <4 x i16>, ptr %i.ae, align 2, !alias.scope !1147
  %i.af = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load) ; 2 uses
  %i.ag = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load17) ; 2 uses
  %i.ah = zext <4 x i16> %i.af to <4 x i32>
  %i.ai = zext <4 x i16> %i.ag to <4 x i32>
  %i.aj = or <4 x i32> %vec.phi, %i.ah            ; 2 uses
  %i.ak = or <4 x i32> %vec.phi16, %i.ai          ; 2 uses
  %i.al = trunc <4 x i16> %i.af to <4 x i8>
  %i.am = trunc <4 x i16> %i.ag to <4 x i8>
  %i.an = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.al, ptr %next.gep, align 1, !alias.scope !1148, !noalias !1147
  store <4 x i8> %i.am, ptr %i.an, align 1, !alias.scope !1148, !noalias !1147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ak, %i.aj
  %i.ap = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.i.preheader19

.preheader.i.i.preheader19:                       ; preds = %vector.memcheck, %.preheader.i.i.preheader, %middle.block
  %.023.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.preheader ], [ %i.ap, %middle.block ] ; 2 uses
  %.01722.i.i.ph = phi ptr [ %.018.lcssa.i32.i, %vector.memcheck ], [ %.018.lcssa.i32.i, %.preheader.i.i.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %.01821.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.aq = sub i64 %2, %i.x
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader19, %.preheader.i.i.prol
  %.023.i.i.prol = phi i32 [ %i.av, %.preheader.i.i.prol ], [ %.023.i.i.ph, %.preheader.i.i.preheader19 ]
  %.01722.i.i.prol = phi ptr [ %i.ax, %.preheader.i.i.prol ], [ %.01722.i.i.ph, %.preheader.i.i.preheader19 ] ; 2 uses
  %.01821.i.i.prol = phi i64 [ %i.ay, %.preheader.i.i.prol ], [ %.01821.i.i.ph, %.preheader.i.i.preheader19 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader19 ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i.prol
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as) ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = or i32 %.023.i.i.prol, %i.au            ; 3 uses
  %i.aw = trunc i16 %i.at to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01722.i.i.prol, i64 1 ; 3 uses
  store i8 %i.aw, ptr %.01722.i.i.prol, align 1
  %i.ay = add nuw i64 %.01821.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !1145

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader19
  %.lcssa21.unr = phi i32 [ poison, %.preheader.i.i.preheader19 ], [ %i.av, %.preheader.i.i.prol ]
  %.lcssa20.unr = phi ptr [ poison, %.preheader.i.i.preheader19 ], [ %i.ax, %.preheader.i.i.prol ]
  %.023.i.i.unr = phi i32 [ %.023.i.i.ph, %.preheader.i.i.preheader19 ], [ %i.av, %.preheader.i.i.prol ]
  %.01722.i.i.unr = phi ptr [ %.01722.i.i.ph, %.preheader.i.i.preheader19 ], [ %i.ax, %.preheader.i.i.prol ]
  %.01821.i.i.unr = phi i64 [ %.01821.i.i.ph, %.preheader.i.i.preheader19 ], [ %i.ay, %.preheader.i.i.prol ]
  %i.az = sub i64 %.01821.i.i.ph, %2
  %i.ba = add i64 %i.az, %i.x
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.023.i.i = phi i32 [ %i.ce, %.preheader.i.i ], [ %.023.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %.01722.i.i = phi ptr [ %i.cg, %.preheader.i.i ], [ %.01722.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.01821.i.i = phi i64 [ %i.ch, %.preheader.i.i ], [ %.01821.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd) ; 2 uses
  %i.bf = zext i16 %i.be to i32
  %i.bg = or i32 %.023.i.i, %i.bf
  %i.bh = trunc i16 %i.be to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 1
  store i8 %i.bh, ptr %.01722.i.i, align 1
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl) ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = or i32 %i.bg, %i.bn
  %i.bp = trunc i16 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 2
  store i8 %i.bp, ptr %i.bi, align 1
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or i32 %i.bo, %i.bv
  %i.bx = trunc i16 %i.bu to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 3
  store i8 %i.bx, ptr %i.bq, align 1
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb) ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = or i32 %i.bw, %i.cd                     ; 2 uses
  %i.cf = trunc i16 %i.cc to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 4 ; 2 uses
  store i8 %i.cf, ptr %i.by, align 1
  %i.ch = add nuw i64 %.01821.i.i, 4              ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.y
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.preheader.i.i, !llvm.loop !1146

.loopexit:                                        ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block
  %.lcssa12 = phi i32 [ %i.ap, %middle.block ], [ %.lcssa21.unr, %.preheader.i.i.prol.loopexit ], [ %i.ce, %.preheader.i.i ]
  %.lcssa = phi ptr [ %i.ac, %middle.block ], [ %.lcssa20.unr, %.preheader.i.i.prol.loopexit ], [ %i.cg, %.preheader.i.i ]
  %4 = and i32 %.lcssa12, 65280
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i, label %_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i: ; preds = %.loopexit
  %i.ci = ptrtoint ptr %.lcssa to i64
  %i.cj = sub i64 %i.ci, %i.s
  br label %_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit

_ZNK7simdutf8westmere14implementation25convert_utf16be_to_latin1EPKDsmPc.exit: ; preds = %.lr.ph.i.i, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, %bb.c, %.loopexit, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i
  %.2.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.cj, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE1EEEmPKDsmPc.exit.i ], [ %i.t, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE1EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ]
  ret i64 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation31convert_valid_utf16le_to_latin1EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.025.i.i = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.k, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.d = load <2 x i64>, ptr %.025.i.i, align 1   ; 2 uses
  %i.e = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.d, <2 x i64> splat (i64 -71777214294589696))
  %.not.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.not.i.i, label %_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = bitcast <2 x i64> %i.d to <8 x i16>
  %i.g = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.f, <8 x i16> poison)
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = extractelement <2 x i64> %i.h, i64 0
  store i64 %i.i, ptr %.01824.i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = icmp sgt i64 %i.m, 14
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, !llvm.loop !58

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i: ; preds = %bb.a
  %i.o = icmp eq ptr %1, null
  br i1 %i.o, label %_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i

_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i: ; preds = %bb.b, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i
  %.sroa.016.2.i33.i = phi ptr [ %1, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.j, %bb.b ] ; 10 uses
  %.018.lcssa.i32.i = phi ptr [ %3, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.k, %bb.b ] ; 7 uses
  %i.p = ptrtoint ptr %.018.lcssa.i32.i to i64
  %i.q = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %.not.i = icmp eq ptr %.sroa.016.2.i33.i, %i.a
  br i1 %.not.i, label %_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i
  %i.s = ptrtoint ptr %.sroa.016.2.i33.i to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 1                   ; 4 uses
  %i.w = sub i64 %2, %i.v                         ; 5 uses
  %i.x = icmp eq i64 %2, %i.v
  br i1 %i.x, label %_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.w, 12
  br i1 %min.iters.check, label %.preheader.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.preheader
  %scevgep = getelementptr i8, ptr %.018.lcssa.i32.i, i64 %i.w
  %i.y = shl i64 %2, 1
  %i.z = sub i64 %i.y, %i.u
  %scevgep15 = getelementptr i8, ptr %.sroa.016.2.i33.i, i64 %i.z
  %bound0 = icmp ult ptr %.018.lcssa.i32.i, %scevgep15
  %bound1 = icmp ult ptr %.sroa.016.2.i33.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -8                       ; 4 uses
  %i.aa = getelementptr i8, ptr %.018.lcssa.i32.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %next.gep = getelementptr i8, ptr %.018.lcssa.i32.i, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load = load <4 x i16>, ptr %i.ab, align 2, !alias.scope !1155 ; 2 uses
  %wide.load17 = load <4 x i16>, ptr %i.ac, align 2, !alias.scope !1155 ; 2 uses
  %i.ad = zext <4 x i16> %wide.load to <4 x i32>
  %i.ae = zext <4 x i16> %wide.load17 to <4 x i32>
  %i.af = or <4 x i32> %vec.phi, %i.ad            ; 2 uses
  %i.ag = or <4 x i32> %vec.phi16, %i.ae          ; 2 uses
  %i.ah = trunc <4 x i16> %wide.load to <4 x i8>
  %i.ai = trunc <4 x i16> %wide.load17 to <4 x i8>
  %i.aj = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.ah, ptr %next.gep, align 1, !alias.scope !1156, !noalias !1155
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !alias.scope !1156, !noalias !1155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ag, %i.af
  %i.al = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.i.preheader19

.preheader.i.i.preheader19:                       ; preds = %vector.memcheck, %.preheader.i.i.preheader, %middle.block
  %.023.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.01722.i.i.ph = phi ptr [ %.018.lcssa.i32.i, %vector.memcheck ], [ %.018.lcssa.i32.i, %.preheader.i.i.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.01821.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.am = sub i64 %2, %i.v
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader19, %.preheader.i.i.prol
  %.023.i.i.prol = phi i32 [ %i.aq, %.preheader.i.i.prol ], [ %.023.i.i.ph, %.preheader.i.i.preheader19 ]
  %.01722.i.i.prol = phi ptr [ %i.as, %.preheader.i.i.prol ], [ %.01722.i.i.ph, %.preheader.i.i.preheader19 ] ; 2 uses
  %.01821.i.i.prol = phi i64 [ %i.at, %.preheader.i.i.prol ], [ %.01821.i.i.ph, %.preheader.i.i.preheader19 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader19 ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i.prol
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = or i32 %.023.i.i.prol, %i.ap            ; 3 uses
  %i.ar = trunc i16 %i.ao to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.01722.i.i.prol, i64 1 ; 3 uses
  store i8 %i.ar, ptr %.01722.i.i.prol, align 1
  %i.at = add nuw i64 %.01821.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !1153

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader19
  %.lcssa21.unr = phi i32 [ poison, %.preheader.i.i.preheader19 ], [ %i.aq, %.preheader.i.i.prol ]
  %.lcssa20.unr = phi ptr [ poison, %.preheader.i.i.preheader19 ], [ %i.as, %.preheader.i.i.prol ]
  %.023.i.i.unr = phi i32 [ %.023.i.i.ph, %.preheader.i.i.preheader19 ], [ %i.aq, %.preheader.i.i.prol ]
  %.01722.i.i.unr = phi ptr [ %.01722.i.i.ph, %.preheader.i.i.preheader19 ], [ %i.as, %.preheader.i.i.prol ]
  %.01821.i.i.unr = phi i64 [ %.01821.i.i.ph, %.preheader.i.i.preheader19 ], [ %i.at, %.preheader.i.i.prol ]
  %i.au = sub i64 %.01821.i.i.ph, %2
  %i.av = add i64 %i.au, %i.v
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.023.i.i = phi i32 [ %i.bv, %.preheader.i.i ], [ %.023.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %.01722.i.i = phi ptr [ %i.bx, %.preheader.i.i ], [ %.01722.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.01821.i.i = phi i64 [ %i.by, %.preheader.i.i ], [ %.01821.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.ay = load i16, ptr %i.ax, align 2            ; 2 uses
  %i.az = zext i16 %i.ay to i32
  %i.ba = or i32 %.023.i.i, %i.az
  %i.bb = trunc i16 %i.ay to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 1
  store i8 %i.bb, ptr %.01722.i.i, align 1
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = or i32 %i.ba, %i.bg
  %i.bi = trunc i16 %i.bf to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 2
  store i8 %i.bi, ptr %i.bc, align 1
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i16, ptr %i.bl, align 2            ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = or i32 %i.bh, %i.bn
  %i.bp = trunc i16 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 3
  store i8 %i.bp, ptr %i.bj, align 1
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.016.2.i33.i, i64 %.01821.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2            ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = or i32 %i.bo, %i.bu                     ; 2 uses
  %i.bw = trunc i16 %i.bt to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.01722.i.i, i64 4 ; 2 uses
  store i8 %i.bw, ptr %i.bq, align 1
  %i.by = add nuw i64 %.01821.i.i, 4              ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.by, %i.w
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.preheader.i.i, !llvm.loop !1154

.loopexit:                                        ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block
  %.lcssa12 = phi i32 [ %i.al, %middle.block ], [ %.lcssa21.unr, %.preheader.i.i.prol.loopexit ], [ %i.bv, %.preheader.i.i ]
  %.lcssa = phi ptr [ %i.aa, %middle.block ], [ %.lcssa20.unr, %.preheader.i.i.prol.loopexit ], [ %i.bx, %.preheader.i.i ]
  %4 = and i32 %.lcssa12, 65280
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i, label %_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i: ; preds = %.loopexit
  %i.bz = ptrtoint ptr %.lcssa to i64
  %i.ca = sub i64 %i.bz, %i.q
  br label %_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit

_ZNK7simdutf8westmere14implementation25convert_utf16le_to_latin1EPKDsmPc.exit: ; preds = %.lr.ph.i.i, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i, %bb.c, %.loopexit, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i
  %.2.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.i ], [ %i.ca, %_ZN7simdutf6scalar12_GLOBAL__N_115utf16_to_latin17convertILNS_10endiannessE0EEEmPKDsmPc.exit.i ], [ %i.r, %_ZN7simdutf8westmere12_GLOBAL__N_127sse_convert_utf16_to_latin1ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit.thread27.i ], [ 0, %.loopexit ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ]
  ret i64 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation23convert_utf16le_to_utf8EPKDsmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = icmp ugt i64 %2, 27
  br i1 %i.c, label %.lr.ph187.i, label %_ZN7simdutf8westmere12_GLOBAL__N_125sse_convert_utf16_to_utf8ILNS_10endiannessE0EEESt4pairIPKDsPcES6_mS7_.exit

.lr.ph187.i:                                      ; preds = %bb.a, %bb.p
  %.0145186.i = phi ptr [ %.5.i, %bb.p ], [ %1, %bb.a ] ; 4 uses
  %.0147185.i = phi ptr [ %.7153.i, %bb.p ], [ %3, %bb.a ] ; 5 uses
  %i.d = load <2 x i64>, ptr %.0145186.i, align 1 ; 3 uses
  %i.e = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.d, <2 x i64> splat (i64 -35747867511423104))
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph187.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0145186.i, i64 16 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 1        ; 3 uses
  %i.h = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.g, <2 x i64> splat (i64 -35747867511423104))
  %.not105.i = icmp eq i32 %i.h, 0
  %i.i = bitcast <2 x i64> %i.d to <8 x i16>      ; 3 uses
  br i1 %.not105.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.j = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.i, <8 x i16> %i.i)
  store <16 x i8> %i.j, ptr %.0147185.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.0147185.i, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = bitcast <2 x i64> %i.g to <8 x i16>
  %i.m = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.i, <8 x i16> %i.l)
  store <16 x i8> %i.m, ptr %.0147185.i, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0145186.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0147185.i, i64 16
  br label %bb.p

bb.d:                                             ; preds = %.thread.i, %.lr.ph187.i
  %.1148.i = phi ptr [ %.0147185.i, %.lr.ph187.i ], [ %i.k, %.thread.i ] ; 9 uses
  %.2146.i = phi ptr [ %.0145186.i, %.lr.ph187.i ], [ %i.f, %.thread.i ] ; 7 uses
  %.197.i = phi <2 x i64> [ %i.d, %.lr.ph187.i ], [ %i.g, %.thread.i ] ; 4 uses
  %i.p = bitcast <2 x i64> %.197.i to <8 x i16>   ; 4 uses
  %i.q = icmp ult <8 x i16> %i.p, splat (i16 128) ; 2 uses
  %i.r = sext <8 x i1> %i.q to <8 x i16>
  %i.s = bitcast <8 x i16> %i.r to <16 x i8>
  %i.t = icmp slt <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 3 uses
  %i.v = bitcast <2 x i64> %.197.i to <8 x i16>
  %i.w = and <8 x i16> %i.v, splat (i16 -2048)    ; 2 uses
  %i.x = icmp eq <8 x i16> %i.w, zeroinitializer  ; 2 uses
  %i.y = sext <8 x i1> %i.x to <8 x i16>
  %i.z = bitcast <8 x i16> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = shl <8 x i16> %i.p, splat (i16 2)
  %i.ae = bitcast <8 x i16> %i.ad to <2 x i64>
  %i.af = and <2 x i64> %i.ae, splat (i64 2233819500556328704)
  %i.ag = and <2 x i64> %.197.i, splat (i64 17733194119839807)
  %i.ah = or disjoint <2 x i64> %i.af, %i.ag
  %i.ai = bitcast <2 x i64> %i.ah to <8 x i16>
  %i.aj = or disjoint <8 x i16> %i.ai, splat (i16 -16256)
  %i.ak = select <8 x i1> %i.q, <8 x i16> %i.p, <8 x i16> %i.aj
  %i.al = bitcast <8 x i16> %i.ak to <16 x i8>
  %i.am = lshr i16 %i.u, 7
  %i.an = and i16 %i.am, 170
  %.masked.i.i = and i16 %i.u, 85
  %i.ao = or disjoint i16 %i.an, %.masked.i.i
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf819pack_1_2_utf8_bytesE, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load <16 x i8>, ptr %i.ar, align 1
  %i.at = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.al, <16 x i8> %i.as)
  store <16 x i8> %i.at, ptr %.1148.i, align 1
  %i.au = load i8, ptr %i.aq, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.1148.i, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.2146.i, i64 16
  br label %bb.p, !llvm.loop !1157

bb.f:                                             ; preds = %bb.d
  %i.ay = icmp eq <8 x i16> %i.w, splat (i16 -10240)
  %i.az = sext <8 x i1> %i.ay to <8 x i16>
  %i.ba = bitcast <8 x i16> %i.az to <16 x i8>
  %i.bb = icmp slt <16 x i8> %i.ba, zeroinitializer
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = bitcast <2 x i64> %.197.i to <16 x i8>
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.bg = lshr <8 x i16> %i.p, splat (i16 4)
  %i.bh = bitcast <8 x i16> %i.bg to <16 x i8>
  %i.bi = and <16 x i8> %i.bh, <i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15, i8 -4, i8 15>
  %i.bj = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.bi, <16 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %.inner34 = or <8 x i16> %i.bj, splat (i16 -16160)
  %.inner35 = select <8 x i1> %i.x, <8 x i16> splat (i16 16384), <8 x i16> zeroinitializer
  %.inner36 = xor <8 x i16> %.inner34, %.inner35
  %i.bk = bitcast <16 x i8> %i.bf to <8 x i16>
  %i.bl = and <8 x i16> %i.bk, splat (i16 16255)
  %i.bm = or disjoint <8 x i16> %i.bl, splat (i16 -32768) ; 2 uses
  %i.bn = xor <8 x i16> %.inner36, splat (i16 16384) ; 2 uses
  %i.bo = shufflevector <8 x i16> %i.bm, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bp = shufflevector <8 x i16> %i.bm, <8 x i16> %i.bn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bq = and i16 %i.u, 21845
  %i.br = and i16 %i.ab, -21846
  %i.bs = or disjoint i16 %i.br, %i.bq            ; 2 uses
  %.not110.i = icmp eq i16 %i.bs, 0
  br i1 %.not110.i, label %.thread158.i, label %bb.h

.thread158.i:                                     ; preds = %bb.g
  %i.bt = bitcast <8 x i16> %i.bo to <16 x i8>
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 1, i32 6, i32 7, i32 5, i32 10, i32 11, i32 9, i32 14, i32 15, i32 13, i32 16, i32 16, i32 16, i32 16>
  %i.bv = bitcast <8 x i16> %i.bp to <16 x i8>
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 1, i32 6, i32 7, i32 5, i32 10, i32 11, i32 9, i32 14, i32 15, i32 13, i32 16, i32 16, i32 16, i32 16>
  store <16 x i8> %i.bu, ptr %.1148.i, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.1148.i, i64 12
  store <16 x i8> %i.bw, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.1148.i, i64 24
  %storemerge108161.i = getelementptr inbounds nuw i8, ptr %.2146.i, i64 16
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bz = zext i16 %i.bs to i32                   ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf821pack_1_2_3_utf8_bytesE, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load <16 x i8>, ptr %i.cd, align 1
  %i.cf = bitcast <8 x i16> %i.bo to <16 x i8>
  %i.cg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cf, <16 x i8> %i.ce)
  %i.ch = lshr i32 %i.bz, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [17 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf16_to_utf821pack_1_2_3_utf8_bytesE, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load <16 x i8>, ptr %i.ck, align 1
  %i.cm = bitcast <8 x i16> %i.bp to <16 x i8>
  %i.cn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cm, <16 x i8> %i.cl)
  store <16 x i8> %i.cg, ptr %.1148.i, align 1
  %i.co = load i8, ptr %i.cc, align 1
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.1148.i, i64 %i.cp ; 2 uses
  store <16 x i8> %i.cn, ptr %i.cq, align 1
  %i.cr = load i8, ptr %i.cj, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %storemerge108.i = getelementptr inbounds nuw i8, ptr %.2146.i, i64 16
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.cu = ptrtoint ptr %.2146.i to i64
  %i.cv = sub i64 %i.b, %i.cu
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 16)
  %spec.select.i = add nsw i64 %i.cx, -1          ; 2 uses
  %.not107181.not.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not107181.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.o
  %.0183.i = phi i64 [ %i.ez, %bb.o ], [ 0, %bb.i ] ; 5 uses
  %.2149182.i = phi ptr [ %.4151.i, %bb.o ], [ %.1148.i, %bb.i ] ; 11 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.2146.i, i64 %.0183.i
  %i.cz = load i16, ptr %i.cy, align 2            ; 9 uses
  %i.da = icmp ult i16 %i.cz, 128
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.db = trunc nuw nsw i16 %i.cz to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.2149182.i, i64 1
  store i8 %i.db, ptr %.2149182.i, align 1
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  %i.dd = and i16 %i.cz, -2048
  switch i16 %i.dd, label %bb.m [
    i16 0, label %bb.l
    i16 -10240, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.de = lshr i16 %i.cz, 6
  %i.df = trunc i16 %i.de to i8
  %i.dg = or i8 %i.df, -64
end_hunk_4
