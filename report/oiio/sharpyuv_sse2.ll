inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0_@SharpYuvUpdateRGB_SSE2:bb.a
  %i.q = add i64 %index, %i.d                     ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !12, !alias.scope !26
  %wide.load48 = load <8 x i16>, ptr %i.s, align 2, !tbaa !12, !alias.scope !26
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load49 = load <8 x i16>, ptr %i.t, align 2, !tbaa !12, !alias.scope !29
  %wide.load50 = load <8 x i16>, ptr %i.u, align 2, !tbaa !12, !alias.scope !29
  %i.v = sub <8 x i16> %wide.load, %wide.load49
  %i.w = sub <8 x i16> %wide.load48, %wide.load50
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.q ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %i.x, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %wide.load52 = load <8 x i16>, ptr %i.y, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %i.z = add <8 x i16> %i.v, %wide.load51
  %i.aa = add <8 x i16> %i.w, %wide.load52
  store <8 x i16> %i.z, ptr %i.x, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  store <8 x i16> %i.aa, ptr %i.y, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.h, 8589934588             ; 3 uses
  %i.ac = add nuw nsw i64 %n.vec54, %i.d
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = add i64 %index55, %i.d                  ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  %wide.load56 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !12, !alias.scope !26
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %wide.load57 = load <4 x i16>, ptr %i.af, align 2, !tbaa !12, !alias.scope !29
  %i.ag = sub <4 x i16> %wide.load56, %wide.load57
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad ; 2 uses
  %wide.load58 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %i.ai = add <4 x i16> %i.ag, %wide.load58
  store <4 x i16> %i.ai, ptr %i.ah, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.h, %n.vec54
  br i1 %cmp.n60, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.ph = phi i64 [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv31
  %i.al = load <8 x i16>, ptr %i.ak, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv31
  %i.an = load <8 x i16>, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %i.ap = load <8 x i16>, ptr %i.ao, align 1, !tbaa !9
  %i.aq = sub <8 x i16> %i.al, %i.an
  %i.ar = add <8 x i16> %i.aq, %i.ap
  store <8 x i16> %i.ar, ptr %i.ao, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !37

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph30 ], [ %indvars.iv36.ph, %.lr.ph30.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36
  %i.at = load i16, ptr %i.as, align 2, !tbaa !12
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36
  %i.av = load i16, ptr %i.au, align 2, !tbaa !12
  %i.aw = sub i16 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !12
  %i.az = add i16 %i.aw, %i.ay
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !12
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next37 to i32
  %i.bb = icmp sgt i32 %3, %i.ba
  br i1 %i.bb, label %.lr.ph30, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph30, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SharpYuvFilterRow_SSE2(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp slt i32 %5, 11
  %notmask.i = shl nsw i32 -1, %5
  %i.b = xor i32 %notmask.i, -1                   ; 7 uses
  %i.c = trunc i32 %i.b to i16
  %i.d = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not92.i = icmp slt i32 %2, 8
  br i1 %.not92.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.f = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.g = and i32 %2, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.g, %.preheader.loopexit.i ] ; 2 uses
  %i.h = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.h, label %.lr.ph95.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph95.preheader.i:                             ; preds = %.preheader.i
  %i.i = zext nneg i32 %.0.lcssa.i to i64         ; 7 uses
  %wide.trip.count23 = zext i32 %2 to i64         ; 5 uses
  %i.j = sub nsw i64 %wide.trip.count23, %i.i     ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check68, label %.lr.ph95.i.preheader, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph95.preheader.i
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %scevgep48 = getelementptr i8, ptr %4, i64 %i.k ; 3 uses
  %i.l = shl nuw nsw i64 %wide.trip.count23, 2    ; 2 uses
  %scevgep49 = getelementptr i8, ptr %4, i64 %i.l ; 3 uses
  %i.m = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  %scevgep50 = getelementptr i8, ptr %0, i64 %i.m
  %i.n = shl nuw nsw i64 %wide.trip.count23, 1
  %i.o = add nuw nsw i64 %i.n, 2                  ; 2 uses
  %scevgep51 = getelementptr i8, ptr %0, i64 %i.o
  %scevgep52 = getelementptr i8, ptr %1, i64 %i.m
  %scevgep53 = getelementptr i8, ptr %1, i64 %i.o
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.k
  %scevgep55 = getelementptr i8, ptr %3, i64 %i.l
  %bound056 = icmp ult ptr %scevgep48, %scevgep51
  %bound157 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %scevgep48, %scevgep53
  %bound160 = icmp ult ptr %scevgep52, %scevgep49
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  %bound063 = icmp ult ptr %scevgep48, %scevgep55
  %bound164 = icmp ult ptr %scevgep54, %scevgep49
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  br i1 %conflict.rdx66, label %.lr.ph95.i.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck47
  %n.mod.vf70 = and i64 %wide.trip.count23, 3     ; 2 uses
  %n.vec71 = sub nsw i64 %i.j, %n.mod.vf70        ; 2 uses
  %i.p = add nsw i64 %n.vec71, %i.i
  %broadcast.splatinsert72 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat73 = shufflevector <4 x i32> %broadcast.splatinsert72, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph69
  %index75 = phi i64 [ 0, %vector.ph69 ], [ %index.next84, %vector.body74 ] ; 2 uses
  %i.q = add i64 %index75, %i.i                   ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.q
  %wide.load76 = load <4 x i16>, ptr %i.r, align 2, !tbaa !12, !alias.scope !39
  %i.s = sext <4 x i16> %wide.load76 to <4 x i32> ; 2 uses
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.t
  %wide.load77 = load <4 x i16>, ptr %i.u, align 2, !tbaa !12, !alias.scope !42
  %i.v = sext <4 x i16> %wide.load77 to <4 x i32>
  %i.w = add nsw <4 x i32> %i.v, %i.s             ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.t
  %wide.load78 = load <4 x i16>, ptr %i.x, align 2, !tbaa !12, !alias.scope !39
  %i.y = sext <4 x i16> %wide.load78 to <4 x i32> ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %wide.load79 = load <4 x i16>, ptr %i.z, align 2, !tbaa !12, !alias.scope !42
  %i.aa = sext <4 x i16> %wide.load79 to <4 x i32>
  %i.ab = add nsw <4 x i32> %i.aa, %i.y           ; 2 uses
  %i.ac = add nsw <4 x i32> %i.w, splat (i32 8)
  %i.ad = add nsw <4 x i32> %i.ac, %i.ab          ; 2 uses
  %i.ae = shl nsw <4 x i32> %i.s, splat (i32 3)
  %i.af = shl nsw <4 x i32> %i.ab, splat (i32 1)
  %i.ag = add nsw <4 x i32> %i.af, %i.ae
  %i.ah = add nsw <4 x i32> %i.ag, %i.ad
  %i.ai = ashr <4 x i32> %i.ah, splat (i32 4)
  %i.aj = shl nsw <4 x i32> %i.y, splat (i32 3)
  %i.ak = shl nsw <4 x i32> %i.w, splat (i32 1)
  %i.al = add nsw <4 x i32> %i.aj, %i.ak
  %i.am = add nsw <4 x i32> %i.al, %i.ad
  %i.an = ashr <4 x i32> %i.am, splat (i32 4)
  %i.ao = shl nuw nsw i64 %i.q, 1                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ao
  %wide.vec80 = load <8 x i16>, ptr %i.ap, align 2, !tbaa !12, !alias.scope !44 ; 2 uses
  %strided.vec81 = shufflevector <8 x i16> %wide.vec80, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec82 = shufflevector <8 x i16> %wide.vec80, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %6 = zext <4 x i16> %strided.vec81 to <4 x i32>
  %i.aq = add nsw <4 x i32> %i.ai, %6             ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aq, <4 x i32> %broadcast.splat73)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ao
  %7 = zext <4 x i16> %strided.vec82 to <4 x i32>
  %i.at = add nsw <4 x i32> %i.an, %7             ; 2 uses
  %i.au = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.at, <4 x i32> %broadcast.splat73)
  %i.av = shufflevector <4 x i32> %i.aq, <4 x i32> %i.at, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aw = icmp slt <8 x i32> %i.av, zeroinitializer
  %i.ax = shufflevector <4 x i32> %i.ar, <4 x i32> %i.au, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %interleaved.vec83 = select <8 x i1> %i.aw, <8 x i16> zeroinitializer, <8 x i16> %i.ay
  store <8 x i16> %interleaved.vec83, ptr %i.as, align 2, !tbaa !12, !alias.scope !46, !noalias !48
  %index.next84 = add nuw i64 %index75, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next84, %n.vec71
  br i1 %i.az, label %middle.block85, label %vector.body74, !llvm.loop !49

middle.block85:                                   ; preds = %vector.body74
  %cmp.n86 = icmp eq i64 %n.mod.vf70, 0
  br i1 %cmp.n86, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %vector.memcheck47, %.lr.ph95.preheader.i, %middle.block85
  %indvars.iv101.i.ph = phi i64 [ %i.i, %vector.memcheck47 ], [ %i.i, %.lr.ph95.preheader.i ], [ %i.p, %middle.block85 ]
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next97.i, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96.i ; 2 uses
  %i.bb = load <8 x i16>, ptr %i.ba, align 1, !tbaa !9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bd = load <8 x i16>, ptr %i.bc, align 1, !tbaa !9 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv96.i ; 2 uses
  %i.bf = load <8 x i16>, ptr %i.be, align 1, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bh = load <8 x i16>, ptr %i.bg, align 1, !tbaa !9
  %i.bi = add <8 x i16> %i.bh, %i.bb              ; 2 uses
  %i.bj = add <8 x i16> %i.bf, %i.bd              ; 2 uses
  %i.bk = add <8 x i16> %i.bj, splat (i16 8)
  %i.bl = add <8 x i16> %i.bk, %i.bi              ; 2 uses
  %i.bm = shl <8 x i16> %i.bi, splat (i16 1)
  %i.bn = shl <8 x i16> %i.bj, splat (i16 1)
  %i.bo = add <8 x i16> %i.bm, %i.bl
  %i.bp = ashr <8 x i16> %i.bo, splat (i16 3)
  %i.bq = add <8 x i16> %i.bl, %i.bn
  %i.br = ashr <8 x i16> %i.bq, splat (i16 3)
  %i.bs = add <8 x i16> %i.br, %i.bb
  %i.bt = add <8 x i16> %i.bp, %i.bd
  %i.bu = ashr <8 x i16> %i.bs, splat (i16 1)     ; 2 uses
  %i.bv = ashr <8 x i16> %i.bt, splat (i16 1)     ; 2 uses
  %i.bw = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bx = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.by = shl nuw nsw i64 %indvars.iv96.i, 1      ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.by ; 2 uses
  %i.ca = load <8 x i16>, ptr %i.bz, align 1, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load <8 x i16>, ptr %i.cb, align 1, !tbaa !9
  %i.cd = add <8 x i16> %i.bw, %i.ca
  %i.ce = add <8 x i16> %i.bx, %i.cc
  %i.cf = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cd, <8 x i16> %i.e)
  %i.cg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cf, <8 x i16> zeroinitializer)
  %i.ch = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ce, <8 x i16> %i.e)
  %i.ci = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ch, <8 x i16> zeroinitializer)
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.by ; 2 uses
  store <8 x i16> %i.cg, ptr %i.cj, align 1, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <8 x i16> %i.ci, ptr %i.ck, align 1, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.f
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph95.i ], [ %indvars.iv101.i.ph, %.lr.ph95.i.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !12
  %i.cn = sext i16 %i.cm to i32                   ; 2 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 4 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next102.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !12
  %i.cq = sext i16 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, %i.cn                ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next102.i
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !12
  %i.cu = sext i16 %i.ct to i32                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv101.i
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !12
  %i.cx = sext i16 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, %i.cu                ; 2 uses
  %i.cz = add nsw i32 %i.cr, 8
  %i.da = add nsw i32 %i.cz, %i.cy                ; 2 uses
  %i.db = shl nsw i32 %i.cn, 3
  %i.dc = shl nsw i32 %i.cy, 1
  %i.dd = add nsw i32 %i.dc, %i.db
  %i.de = add nsw i32 %i.dd, %i.da
  %i.df = ashr i32 %i.de, 4
  %i.dg = shl nsw i32 %i.cu, 3
  %i.dh = shl nsw i32 %i.cr, 1
  %i.di = add nsw i32 %i.dg, %i.dh
  %i.dj = add nsw i32 %i.di, %i.da
  %i.dk = ashr i32 %i.dj, 4
  %i.dl = shl nuw nsw i64 %indvars.iv101.i, 1     ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !12
  %i.do = zext i16 %i.dn to i32
  %i.dp = add nsw i32 %i.df, %i.do                ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  %i.dr = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.dp, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = select i1 %i.dq, i16 0, i16 %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dl
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !12
  %i.dv = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !12
  %i.dy = zext i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dk, %i.dy                ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.dz, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = select i1 %i.ea, i16 0, i16 %i.ec
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dv
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !12
  %exitcond24.not = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count23
  br i1 %exitcond24.not, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i, !llvm.loop !51

bb.c:                                             ; preds = %bb.a
  %.not83.i = icmp slt i32 %2, 4
  br i1 %.not83.i, label %.preheader.i19, label %.lr.ph.preheader.i13

.lr.ph.preheader.i13:                             ; preds = %bb.c
  %i.ef = zext nneg i32 %2 to i64
  br label %.lr.ph.i14

.preheader.loopexit.i18:                          ; preds = %.lr.ph.i14
  %i.eg = and i32 %2, 2147483644
  br label %.preheader.i19

.preheader.i19:                                   ; preds = %.preheader.loopexit.i18, %bb.c
  %.0.lcssa.i20 = phi i32 [ 0, %bb.c ], [ %i.eg, %.preheader.loopexit.i18 ] ; 2 uses
  %i.eh = icmp slt i32 %.0.lcssa.i20, %2
  br i1 %i.eh, label %.lr.ph86.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph86.preheader.i:                             ; preds = %.preheader.i19
  %i.ei = zext nneg i32 %.0.lcssa.i20 to i64      ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %i.ej = sub nsw i64 %wide.trip.count, %i.ei     ; 2 uses
  %min.iters.check = icmp ult i64 %i.ej, 8
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.preheader.i
  %i.ek = shl nuw nsw i64 %i.ei, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.ek  ; 3 uses
  %i.el = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep29 = getelementptr i8, ptr %4, i64 %i.el ; 3 uses
  %i.em = shl nuw nsw i64 %i.ei, 1                ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.em
  %i.en = shl nuw nsw i64 %wide.trip.count, 1
  %i.eo = add nuw nsw i64 %i.en, 2                ; 2 uses
  %scevgep31 = getelementptr i8, ptr %0, i64 %i.eo
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.em
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.eo
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.ek
  %scevgep35 = getelementptr i8, ptr %3, i64 %i.el
  %bound0 = icmp ult ptr %scevgep, %scevgep31
  %bound1 = icmp ult ptr %scevgep30, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult ptr %scevgep, %scevgep33
  %bound137 = icmp ult ptr %scevgep32, %scevgep29
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  %bound039 = icmp ult ptr %scevgep, %scevgep35
  %bound140 = icmp ult ptr %scevgep34, %scevgep29
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41
  br i1 %conflict.rdx42, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count, 3         ; 2 uses
  %n.vec = sub nsw i64 %i.ej, %n.mod.vf           ; 2 uses
  %i.ep = add nsw i64 %n.vec, %i.ei
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = add i64 %index, %i.ei                   ; 4 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eq
  %wide.load = load <4 x i16>, ptr %i.er, align 2, !tbaa !12, !alias.scope !52
  %i.es = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.et = or disjoint i64 %i.eq, 1                ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.et
  %wide.load43 = load <4 x i16>, ptr %i.eu, align 2, !tbaa !12, !alias.scope !55
  %i.ev = sext <4 x i16> %wide.load43 to <4 x i32>
  %i.ew = add nsw <4 x i32> %i.ev, %i.es          ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.et
  %wide.load44 = load <4 x i16>, ptr %i.ex, align 2, !tbaa !12, !alias.scope !52
  %i.ey = sext <4 x i16> %wide.load44 to <4 x i32> ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eq
  %wide.load45 = load <4 x i16>, ptr %i.ez, align 2, !tbaa !12, !alias.scope !55
  %i.fa = sext <4 x i16> %wide.load45 to <4 x i32>
  %i.fb = add nsw <4 x i32> %i.fa, %i.ey          ; 2 uses
  %i.fc = add nsw <4 x i32> %i.ew, splat (i32 8)
  %i.fd = add nsw <4 x i32> %i.fc, %i.fb          ; 2 uses
  %i.fe = shl nsw <4 x i32> %i.es, splat (i32 3)
  %i.ff = shl nsw <4 x i32> %i.fb, splat (i32 1)
  %i.fg = add nsw <4 x i32> %i.ff, %i.fe
  %i.fh = add nsw <4 x i32> %i.fg, %i.fd
  %i.fi = ashr <4 x i32> %i.fh, splat (i32 4)
  %i.fj = shl nsw <4 x i32> %i.ey, splat (i32 3)
  %i.fk = shl nsw <4 x i32> %i.ew, splat (i32 1)
  %i.fl = add nsw <4 x i32> %i.fj, %i.fk
  %i.fm = add nsw <4 x i32> %i.fl, %i.fd
  %i.fn = ashr <4 x i32> %i.fm, splat (i32 4)
  %i.fo = shl nuw nsw i64 %i.eq, 1                ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fo
  %wide.vec = load <8 x i16>, ptr %i.fp, align 2, !tbaa !12, !alias.scope !57 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec46 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = zext <4 x i16> %strided.vec to <4 x i32>
  %i.fq = add nsw <4 x i32> %i.fi, %8             ; 2 uses
  %i.fr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fq, <4 x i32> %broadcast.splat)
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.fo
  %9 = zext <4 x i16> %strided.vec46 to <4 x i32>
  %i.ft = add nsw <4 x i32> %i.fn, %9             ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ft, <4 x i32> %broadcast.splat)
  %i.fv = shufflevector <4 x i32> %i.fq, <4 x i32> %i.ft, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fw = icmp slt <8 x i32> %i.fv, zeroinitializer
  %i.fx = shufflevector <4 x i32> %i.fr, <4 x i32> %i.fu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fy = trunc <8 x i32> %i.fx to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.fw, <8 x i16> zeroinitializer, <8 x i16> %i.fy
  store <8 x i16> %interleaved.vec, ptr %i.fs, align 2, !tbaa !12, !alias.scope !59, !noalias !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv92.i.ph = phi i64 [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph86.preheader.i ], [ %i.ep, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.preheader.i13
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph.preheader.i13 ], [ %indvars.iv.next88.i, %.lr.ph.i14 ] ; 4 uses
  %indvars.iv.i15 = phi i64 [ 4, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i16, %.lr.ph.i14 ]
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv87.i ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 1, !tbaa !9
  %i.gc = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.gd = bitcast <2 x i64> %i.gc to <8 x i16>
  %i.ge = shufflevector <8 x i16> %i.gd, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gf = bitcast <8 x i16> %i.ge to <4 x i32>
  %i.gg = ashr <4 x i32> %i.gf, splat (i32 16)    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  %i.gi = load i64, ptr %i.gh, align 1, !tbaa !9
  %i.gj = insertelement <2 x i64> poison, i64 %i.gi, i64 0
  %i.gk = bitcast <2 x i64> %i.gj to <8 x i16>
  %i.gl = shufflevector <8 x i16> %i.gk, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gm = bitcast <8 x i16> %i.gl to <4 x i32>
  %i.gn = ashr <4 x i32> %i.gm, splat (i32 16)    ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87.i ; 2 uses
  %i.gp = load i64, ptr %i.go, align 1, !tbaa !9
  %i.gq = insertelement <2 x i64> poison, i64 %i.gp, i64 0
  %i.gr = bitcast <2 x i64> %i.gq to <8 x i16>
  %i.gs = shufflevector <8 x i16> %i.gr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gt = bitcast <8 x i16> %i.gs to <4 x i32>
  %i.gu = ashr <4 x i32> %i.gt, splat (i32 16)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gw = load i64, ptr %i.gv, align 1, !tbaa !9
  %i.gx = insertelement <2 x i64> poison, i64 %i.gw, i64 0
  %i.gy = bitcast <2 x i64> %i.gx to <8 x i16>
  %i.gz = shufflevector <8 x i16> %i.gy, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ha = bitcast <8 x i16> %i.gz to <4 x i32>
  %i.hb = ashr <4 x i32> %i.ha, splat (i32 16)
  %i.hc = add nsw <4 x i32> %i.hb, %i.gg          ; 2 uses
  %i.hd = add nsw <4 x i32> %i.gu, %i.gn          ; 2 uses
  %i.he = add nsw <4 x i32> %i.hd, splat (i32 8)
  %i.hf = add nsw <4 x i32> %i.he, %i.hc          ; 2 uses
  %i.hg = shl nsw <4 x i32> %i.hc, splat (i32 1)
  %i.hh = shl nsw <4 x i32> %i.hd, splat (i32 1)
  %i.hi = add nsw <4 x i32> %i.hg, %i.hf
  %i.hj = ashr <4 x i32> %i.hi, splat (i32 3)
  %i.hk = add nsw <4 x i32> %i.hf, %i.hh
  %i.hl = ashr <4 x i32> %i.hk, splat (i32 3)
  %i.hm = add nsw <4 x i32> %i.hl, %i.gg
  %i.hn = add nsw <4 x i32> %i.hj, %i.gn
  %i.ho = ashr <4 x i32> %i.hm, splat (i32 1)     ; 2 uses
  %i.hp = ashr <4 x i32> %i.hn, splat (i32 1)     ; 2 uses
  %i.hq = shufflevector <4 x i32> %i.ho, <4 x i32> %i.hp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hr = shufflevector <4 x i32> %i.ho, <4 x i32> %i.hp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.hs = shl nuw nsw i64 %indvars.iv87.i, 1      ; 2 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.hs
  %i.hu = load <8 x i16>, ptr %i.ht, align 1, !tbaa !9
  %i.hv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hq, <4 x i32> %i.hr)
  %i.hw = add <8 x i16> %i.hv, %i.hu
  %i.hx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hw, <8 x i16> %i.e)
  %i.hy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hx, <8 x i16> zeroinitializer)
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.hs
  store <8 x i16> %i.hy, ptr %i.hz, align 1, !tbaa !9
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 4 ; 2 uses
  %.not.i17 = icmp samesign ugt i64 %indvars.iv.next.i16, %i.ef
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 4
  br i1 %.not.i17, label %.preheader.loopexit.i18, label %.lr.ph.i14, !llvm.loop !63

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph86.i ], [ %indvars.iv92.i.ph, %.lr.ph86.i.preheader ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv92.i
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !12
  %i.ic = sext i16 %i.ib to i32                   ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 4 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next93.i
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !12
  %i.if = sext i16 %i.ie to i32
  %i.ig = add nsw i32 %i.if, %i.ic                ; 2 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next93.i
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !12
  %i.ij = sext i16 %i.ii to i32                   ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92.i
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !12
  %i.im = sext i16 %i.il to i32
  %i.in = add nsw i32 %i.im, %i.ij                ; 2 uses
  %i.io = add nsw i32 %i.ig, 8
  %i.ip = add nsw i32 %i.io, %i.in                ; 2 uses
  %i.iq = shl nsw i32 %i.ic, 3
  %i.ir = shl nsw i32 %i.in, 1
  %i.is = add nsw i32 %i.ir, %i.iq
  %i.it = add nsw i32 %i.is, %i.ip
  %i.iu = ashr i32 %i.it, 4
  %i.iv = shl nsw i32 %i.ij, 3
  %i.iw = shl nsw i32 %i.ig, 1
  %i.ix = add nsw i32 %i.iv, %i.iw
  %i.iy = add nsw i32 %i.ix, %i.ip
  %i.iz = ashr i32 %i.iy, 4
  %i.ja = shl nuw nsw i64 %indvars.iv92.i, 1      ; 3 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !12
  %i.jd = zext i16 %i.jc to i32
  %i.je = add nsw i32 %i.iu, %i.jd                ; 2 uses
  %i.jf = icmp slt i32 %i.je, 0
  %i.jg = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.je, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.jh = trunc i32 %i.jg to i16
  %i.ji = select i1 %i.jf, i16 0, i16 %i.jh
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ja
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !12
  %i.jk = or disjoint i64 %i.ja, 1                ; 2 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !12
  %i.jn = zext i16 %i.jm to i32
  %i.jo = add nsw i32 %i.iz, %i.jn                ; 2 uses
  %i.jp = icmp slt i32 %i.jo, 0
  %i.jq = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.jo, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.jr = trunc i32 %i.jq to i16
  %i.js = select i1 %i.jp, i16 0, i16 %i.jr
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.jk
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count
  br i1 %exitcond.not, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i, !llvm.loop !64

SharpYuvFilterRow16_SSE2.exit:                    ; preds = %.lr.ph86.i, %.lr.ph95.i, %middle.block, %middle.block85, %.preheader.i19, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
end_hunk_0
