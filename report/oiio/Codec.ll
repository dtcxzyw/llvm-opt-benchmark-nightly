inline.NumInlined: 193
inline.NumDeleted: 62
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEhLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.0.i50 = phi i64 [ %i.n, %bb.b ], [ -1, %bb.a ]
  %.0.i48 = phi i32 [ %i.m, %bb.b ], [ 255, %bb.a ] ; 3 uses
  %i.o = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not54 = icmp slt i32 %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  %i.p = mul i32 %.0.i48, %i.e                    ; 3 uses
  %i.q = mul i32 %i.p, %i.o
  %i.r = add i32 %i.q, 31
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %trunc = trunc nuw i32 %.0.i48 to i8
  %i.w = add i32 %i.b, 1
  %i.x = sub i32 %i.w, %i.d
  %wide.trip.count = zext i32 %i.x to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit, %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit ] ; 4 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !23
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %indvars.iv, %i.z
  %i.ab = mul nsw i64 %i.aa, %i.u
  %i.ac = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.ad = mul i32 %i.p, %i.ac                     ; 2 uses
  %i.ae = sdiv i32 %i.ad, 32
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = mul nsw i64 %indvars.iv, %.0.i50
  %i.ai = add nsw i64 %i.ab, %i.ah
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ac
  %i.al = add i32 %reass.sub, 1
  %i.am = mul i32 %i.p, %i.al
  %i.an = srem i32 %i.ad, 32
  %i.ao = add nsw i32 %i.an, 31
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = sdiv i32 %i.ap, 32
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = mul i32 %i.e, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.aw) ; 0 uses
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !19
  %i.bc = load i32, ptr %4, align 4, !tbaa !21
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %i.bf = mul nsw i32 %i.be, %i.e                 ; 2 uses
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.c
  %.017.i = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %.017.i to i64            ; 3 uses
  switch i8 %trunc, label %.lr.ph.split.i [
    i8 10, label %.lr.ph.split.us.i
    i8 12, label %.lr.ph.split.us19.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bk = trunc i64 %indvars.iv27.i to i32
  %i.bl = mul i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bl, 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %i.bq = trunc i64 %indvars.iv27.i to i16
  %i.br = shl i16 %i.bq, 2
  %.not.us.i = and i16 %i.br, 4
  %i.bs = xor i16 %.not.us.i, 4
  %i.bt = shl i16 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv27.i
  %i.bv = lshr i16 %i.bt, 6
  %i.bw = trunc i16 %i.bv to i8
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !29
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %.not36.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not36.i, label %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit, label %.lr.ph.split.us.i, !llvm.loop !89

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.us19.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bx = trunc i64 %indvars.iv.i to i32
  %i.by = mul i32 %i.bx, 12
  %i.bz = sdiv i32 %i.by, 8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !25
  %i.cd = trunc i64 %indvars.iv.i to i16
  %i.ce = shl i16 %i.cd, 2
  %.not.us21.i = and i16 %i.ce, 4
  %i.cf = xor i16 %.not.us21.i, 4
  %i.cg = shl i16 %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i
  %i.ci = lshr i16 %i.cg, 8
  %i.cj = trunc nuw i16 %i.ci to i8
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !29
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !89

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.ck = trunc i64 %indvars.iv30.i to i32
  %i.cl = mul i32 %.0.i48, %i.ck
  %i.cm = sdiv i32 %i.cl, 8
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %1, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !25
  %i.cq = trunc i64 %indvars.iv30.i to i16
  %i.cr = shl i16 %i.cq, 2
  %.not.i = and i16 %i.cr, 4
  %i.cs = xor i16 %.not.i, 4
  %i.ct = shl i16 %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv30.i
  %i.cv = lshr i16 %i.ct, 8
  %i.cw = trunc nuw i16 %i.cv to i8
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !29
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1
  %.not37.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %.not37.i, label %_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit, label %.lr.ph.split.i, !llvm.loop !89

_ZN3dpx12UnPackPackedIhLj65520ELi4ELi2ELi4EEEvPjiPT_ii.exit: ; preds = %.lr.ph.split.us19.i, %.lr.ph.split.us.i, %.lr.ph.split.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !90
}

declare noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx22Read12bitFilledMethodBINS_17ElementReadStreamEtEEbRKNS_6HeaderEPtPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = load i32, ptr %4, align 4, !tbaa !21
  %i.g = add i32 %i.e, 1
  %i.h = sub i32 %i.g, %i.f
  %.fr = freeze i32 %i.h
  %i.i = mul i32 %.fr, %i.c                       ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23   ; 3 uses
  %i.n = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0) ; 2 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i32 %3 to i64
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 812
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  %spec.select = select i1 %i.s, i32 0, i32 %i.r
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.b, %bb.a
  %i.t = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.not42 = icmp slt i32 %i.k, %i.m
  br i1 %.not42, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.u = shl i32 %i.c, 1                          ; 2 uses
  %i.v = shl nsw i32 %i.i, 1
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp sgt i32 %i.i, 0
  br i1 %i.x, label %.lr.ph.us.preheader, label %.lr.ph44.split.preheader

.lr.ph44.split.preheader:                         ; preds = %.lr.ph44
  %i.y = add i32 %i.k, 1
  %i.z = sub i32 %i.y, %i.m
  br label %.lr.ph44.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph44
  %i.aa = sext i32 %i.t to i64
  %i.ab = zext nneg i32 %i.i to i64               ; 10 uses
  %i.ac = add i32 %i.k, 1
  %i.ad = sub i32 %i.ac, %i.m
  %wide.trip.count53 = zext i32 %i.ad to i64
  %i.ae = sub i64 %i.b, %i.a
  %i.af = shl nuw nsw i64 %i.ab, 1
  %min.iters.check = icmp ult i32 %i.i, 4
  %invariant.op = add i64 %i.ae, -1
  %min.iters.check58 = icmp ult i32 %i.i, 16
  %n.mod.vf = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec61 = and i64 %i.ab, 2147483644            ; 3 uses
  %cmp.n65 = icmp eq i64 %n.vec61, %i.ab
  %xtraiter = and i64 %i.ab, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %i.ab, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv50 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next51, %._crit_edge.us ] ; 5 uses
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !23
  %i.ai = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.aj = add nsw i32 %i.ah, %i.ai
  %i.ak = mul nsw i32 %i.aj, %i.n
  %i.al = load i32, ptr %4, align 4, !tbaa !21
  %i.am = add i32 %i.ak, %i.al
  %i.an = mul i32 %i.u, %i.am
  %i.ao = mul nsw i64 %indvars.iv50, %i.aa
  %i.ap = sext i32 %i.an to i64
  %i.aq = add nsw i64 %i.ao, %i.ap
  %i.ar = load ptr, ptr %2, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aq, ptr noundef %1, i64 noundef %i.w) ; 0 uses
  %i.av = mul nuw nsw i64 %indvars.iv50, %i.ab
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.av ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = mul i64 %i.af, %indvars.iv50
  %i.ax = add i64 %i.aw, %invariant.op
  %diff.check = icmp ult i64 %i.ax, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <8 x i16>, ptr %i.ay, align 2, !tbaa !25 ; 2 uses
  %wide.load59 = load <8 x i16>, ptr %i.az, align 2, !tbaa !25 ; 2 uses
  %i.ba = shl <8 x i16> %wide.load, splat (i16 4)
  %i.bb = shl <8 x i16> %wide.load59, splat (i16 4)
  %i.bc = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.bd = lshr <8 x i16> %wide.load59, splat (i16 8)
  %i.be = or <8 x i16> %i.ba, %i.bc
  %i.bf = or <8 x i16> %i.bb, %i.bd
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <8 x i16> %i.be, ptr %i.bg, align 2, !tbaa !25
  store <8 x i16> %i.bf, ptr %i.bh, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index62
  %wide.load63 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !25 ; 2 uses
  %i.bk = shl <4 x i16> %wide.load63, splat (i16 4)
  %i.bl = lshr <4 x i16> %wide.load63, splat (i16 8)
  %i.bm = or <4 x i16> %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index62
  store <4 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !25
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n65, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !25 ; 2 uses
  %i.br = shl i16 %i.bq, 4
  %i.bs = lshr i16 %i.bq, 8
  %i.bt = or i16 %i.br, %i.bs
  %gep.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i16 %i.bt, ptr %gep.prol, align 2, !tbaa !25
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bu = icmp eq i64 %indvars.iv.ph, %i.ag
  br i1 %i.bu, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !25 ; 2 uses
  %i.bx = shl i16 %i.bw, 4
  %i.by = lshr i16 %i.bw, 8
  %i.bz = or i16 %i.bx, %i.by
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.bz, ptr %gep, align 2, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !25 ; 2 uses
  %i.cc = shl i16 %i.cb, 4
  %i.cd = lshr i16 %i.cb, 8
  %i.ce = or i16 %i.cc, %i.cd
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i16 %i.ce, ptr %gep.1, align 2, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond49.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ab
  br i1 %exitcond49.not.1, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !93

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge45, label %iter.check, !llvm.loop !94

._crit_edge45:                                    ; preds = %.lr.ph44.split, %._crit_edge.us, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

.lr.ph44.split:                                   ; preds = %.lr.ph44.split.preheader, %.lr.ph44.split
  %.03643 = phi i32 [ %i.cs, %.lr.ph44.split ], [ 0, %.lr.ph44.split.preheader ] ; 3 uses
  %i.cf = load i32, ptr %i.l, align 4, !tbaa !23
  %i.cg = add nsw i32 %i.cf, %.03643
  %i.ch = mul nsw i32 %i.cg, %i.n
  %i.ci = load i32, ptr %4, align 4, !tbaa !21
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = mul i32 %i.u, %i.cj
  %i.cl = mul nsw i32 %.03643, %i.t
  %i.cm = add nsw i32 %i.ck, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %2, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.cn, ptr noundef %1, i64 noundef %i.w) ; 0 uses
  %i.cs = add nuw i32 %.03643, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.z
  br i1 %exitcond.not, label %._crit_edge45, label %.lr.ph44.split, !llvm.loop !94
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEtLNS_8DataSizeE1EtLS2_1EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.b = tail call noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = load i32, ptr %4, align 4, !tbaa !21
  %i.f = add i32 %i.d, 1
  %i.g = sub i32 %i.f, %i.e
  %i.h = mul nsw i32 %i.g, %i.a                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %3 to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 812
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  %spec.select = select i1 %i.q, i32 0, i32 %i.p
  %i.r = sext i32 %spec.select to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]
  %i.t = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not36 = icmp slt i32 %i.j, %i.l
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.u = mul i32 %i.b, %i.a
  %i.v = mul nsw i32 %i.h, %i.b
  %i.w = sext i32 %i.v to i64
  %i.x = sext i32 %i.h to i64
  %i.y = add i32 %i.j, 1
  %i.z = sub i32 %i.y, %i.l
  %wide.trip.count = zext i32 %i.z to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = add nsw i32 %i.aa, %i.ab
  %i.ad = mul nsw i32 %i.ac, %i.t
  %i.ae = load i32, ptr %4, align 4, !tbaa !21
  %i.af = add i32 %i.ad, %i.ae
  %i.ag = mul i32 %i.u, %i.af
  %i.ah = mul nsw i64 %indvars.iv, %i.s
  %i.ai = sext i32 %i.ag to i64
  %i.aj = add nsw i64 %i.ah, %i.ai
  %i.ak = mul nsw i64 %indvars.iv, %i.x
  %i.al = getelementptr inbounds [2 x i8], ptr %5, i64 %i.ak
  %i.am = load ptr, ptr %2, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %i.al, i64 noundef %i.w) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !95
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEhLNS_8DataSizeE0EtLS2_1EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.b = tail call noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = load i32, ptr %4, align 4, !tbaa !21
  %i.f = add i32 %i.d, 1
  %i.g = sub i32 %i.f, %i.e
end_hunk_0
