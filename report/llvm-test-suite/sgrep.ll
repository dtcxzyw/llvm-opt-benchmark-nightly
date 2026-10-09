Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgrep?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@initmask:bb.a
pred.store.if144:                                 ; preds = %vec.epilog.vector.body
  store i8 10, ptr %i.do, align 1, !tbaa !21
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %vec.epilog.vector.body
  %i.dt = extractelement <8 x i1> %i.dr, i64 1
  br i1 %i.dt, label %pred.store.if146, label %pred.store.continue147

pred.store.if146:                                 ; preds = %pred.store.continue145
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 10, ptr %i.dv, align 1, !tbaa !21
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.if146, %pred.store.continue145
  %i.dw = extractelement <8 x i1> %i.dr, i64 2
  br i1 %i.dw, label %pred.store.if148, label %pred.store.continue149

pred.store.if148:                                 ; preds = %pred.store.continue147
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 10, ptr %i.dy, align 1, !tbaa !21
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.if148, %pred.store.continue147
  %i.dz = extractelement <8 x i1> %i.dr, i64 3
  br i1 %i.dz, label %pred.store.if150, label %pred.store.continue151

pred.store.if150:                                 ; preds = %pred.store.continue149
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  store i8 10, ptr %i.eb, align 1, !tbaa !21
  br label %pred.store.continue151

pred.store.continue151:                           ; preds = %pred.store.if150, %pred.store.continue149
  %i.ec = extractelement <8 x i1> %i.dr, i64 4
  br i1 %i.ec, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %pred.store.continue151
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i8 10, ptr %i.ee, align 1, !tbaa !21
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %pred.store.continue151
  %i.ef = extractelement <8 x i1> %i.dr, i64 5
  br i1 %i.ef, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 5
  store i8 10, ptr %i.eh, align 1, !tbaa !21
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %i.ei = extractelement <8 x i1> %i.dr, i64 6
  br i1 %i.ei, label %pred.store.if156, label %pred.store.continue157

pred.store.if156:                                 ; preds = %pred.store.continue155
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  store i8 10, ptr %i.ek, align 1, !tbaa !21
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.if156, %pred.store.continue155
  %i.el = extractelement <8 x i1> %i.dr, i64 7
  br i1 %i.el, label %pred.store.if158, label %pred.store.continue159

pred.store.if158:                                 ; preds = %pred.store.continue157
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %index142
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  store i8 10, ptr %i.en, align 1, !tbaa !21
  br label %pred.store.continue159

pred.store.continue159:                           ; preds = %pred.store.if158, %pred.store.continue157
  %index.next160 = add nuw i64 %index142, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next160, %n.vec141
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %pred.store.continue159
  %cmp.n161 = icmp eq i64 %n.vec141, %wide.trip.count
  br i1 %cmp.n161, label %.preheader47, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec141, %vec.epilog.middle.block ]
  br label %.lr.ph52

.preheader47:                                     ; preds = %bb.c, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %1, i8 -1, i64 1024, i1 false), !tbaa !20
  %wide.trip.count74 = zext nneg i32 %2 to i64
  %xtraiter164 = and i64 %wide.trip.count, 1
  %i.ep = icmp eq i32 %2, 1
  %unroll_iter168 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod166.not = icmp eq i64 %xtraiter164, 0
  %lcmp.mod167 = trunc i32 %2 to i1
  br label %.lr.ph56

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph52.preheader ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !21
  switch i8 %i.er, label %bb.c [
    i8 94, label %bb.b
    i8 36, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph52, %.lr.ph52
  store i8 10, ptr %i.eq, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond62.not, label %.preheader47, label %.lr.ph52, !llvm.loop !57

.lr.ph56:                                         ; preds = %.preheader47, %._crit_edge57
  %indvars.iv71 = phi i64 [ 0, %.preheader47 ], [ %indvars.iv.next72, %._crit_edge57 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv71
  %i.et = load i8, ptr %i.es, align 1, !tbaa !21  ; 4 uses
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu ; 6 uses
  br i1 %i.ep, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56, %bb.g
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.1, %bb.g ], [ 0, %.lr.ph56 ] ; 4 uses
  %niter169 = phi i64 [ %niter169.next.1, %bb.g ], [ 0, %.lr.ph56 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv66
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !21
  %i.ey = icmp eq i8 %i.et, %i.ex
  br i1 %i.ey, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph56.new
  %i.ez = load i32, ptr %i.ev, align 4, !tbaa !20
  %i.fa = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.fb = lshr exact i32 -2147483648, %i.fa
  %i.fc = xor i32 %i.fb, -1
  %i.fd = and i32 %i.ez, %i.fc
  store i32 %i.fd, ptr %i.ev, align 4, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph56.new, %bb.d
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next67
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !21
  %i.fg = icmp eq i8 %i.et, %i.ff
  br i1 %i.fg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fh = load i32, ptr %i.ev, align 4, !tbaa !20
  %i.fi = trunc nuw nsw i64 %indvars.iv.next67 to i32
  %i.fj = lshr exact i32 -2147483648, %i.fi
  %i.fk = xor i32 %i.fj, -1
  %i.fl = and i32 %i.fh, %i.fk
  store i32 %i.fl, ptr %i.ev, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %._crit_edge57.unr-lcssa, label %.lr.ph56.new, !llvm.loop !4

._crit_edge57.unr-lcssa:                          ; preds = %bb.g
  br i1 %lcmp.mod166.not, label %._crit_edge57, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge57.unr-lcssa, %.lr.ph56
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next67.1, %._crit_edge57.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv66.epil.init
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !21
  %i.fo = icmp eq i8 %i.et, %i.fn
  br i1 %i.fo, label %bb.h, label %._crit_edge57

bb.h:                                             ; preds = %.epil.preheader
  %i.fp = load i32, ptr %i.ev, align 4, !tbaa !20
  %i.fq = trunc nuw nsw i64 %indvars.iv66.epil.init to i32
  %i.fr = lshr exact i32 -2147483648, %i.fq
  %i.fs = xor i32 %i.fr, -1
  %i.ft = and i32 %i.fp, %i.fs
  store i32 %i.ft, ptr %i.ev, align 4, !tbaa !20
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %.epil.preheader, %bb.h, %._crit_edge57.unr-lcssa
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge60.split, label %.lr.ph56, !llvm.loop !5

._crit_edge60.split:                              ; preds = %._crit_edge57, %.preheader47.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @prep(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %2, 1                        ; 5 uses
  %i.b = sdiv i32 %1, %i.a                        ; 18 uses
  %i.c = trunc i32 %i.b to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %i.c, i64 256, i1 false), !tbaa !21
  %i.d = mul i32 %i.b, %i.a                       ; 0 uses
  %.recomposed = srem i32 %1, %i.a                ; 2 uses
  %i.e = add nsw i32 %1, -1                       ; 9 uses
  %.not80.not = icmp sgt i32 %1, %.recomposed
  br i1 %.not80.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %i.g = sext i32 %.recomposed to i64             ; 3 uses
  %i.h = sub nsw i64 %i.f, %i.g
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.prol = add nsw i64 %i.f, -1         ; 4 uses
  %i.i = trunc i64 %indvars.iv.prol to i32
  %i.j = sub i32 %i.e, %i.i
  %i.k = urem i32 %i.j, %i.b                      ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.prol
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = zext i8 %i.p to i32
  %i.r = icmp slt i32 %i.k, %i.q
  br i1 %i.r, label %bb.b, label %.lr.ph.prol.loopexit

bb.b:                                             ; preds = %.lr.ph.prol
  %i.s = trunc i32 %i.k to i8
  store i8 %i.s, ptr %i.o, align 1, !tbaa !21
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %bb.b, %.lr.ph.preheader
  %indvars.iv.in.unr = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.prol, %bb.b ], [ %indvars.iv.prol, %.lr.ph.prol ]
  %i.t = add nsw i64 %i.f, -1
  %i.u = icmp eq i64 %i.t, %i.g
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %indvars.iv.in = phi i64 [ %indvars.iv.1, %bb.e ], [ %indvars.iv.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 2 uses
  %i.v = trunc i64 %indvars.iv to i32
  %i.w = sub i32 %i.e, %i.v
  %i.x = urem i32 %i.w, %i.b                      ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = zext i8 %i.ac to i32
  %i.ae = icmp slt i32 %i.x, %i.ad
  br i1 %i.ae, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.af = trunc i32 %i.x to i8
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !21
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %indvars.iv.1 = add nsw i64 %indvars.iv.in, -2  ; 4 uses
  %i.ag = trunc i64 %indvars.iv.1 to i32
  %i.ah = sub i32 %i.e, %i.ag
  %i.ai = urem i32 %i.ah, %i.b                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = zext i8 %i.an to i32
  %i.ap = icmp slt i32 %i.ai, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.aq = trunc i32 %i.ai to i8
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.not.not.1 = icmp sgt i64 %indvars.iv.1, %i.g
  br i1 %.not.not.1, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.e, %bb.a
  store i32 %i.b, ptr @shift_1, align 4, !tbaa !20
  %.not72100 = icmp slt i32 %2, 0                 ; 2 uses
  %i.ar = icmp ult i32 %i.b, 2
  %or.cond148 = or i1 %.not72100, %i.ar
  br i1 %or.cond148, label %._crit_edge105.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %._crit_edge
  %wide.trip.count130 = zext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count, 1
  %i.as = icmp eq i32 %2, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod152.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod155 = trunc i32 %i.a to i1
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge93
  %.2102 = phi i32 [ %i.cf, %._crit_edge93 ], [ 0, %.preheader.lr.ph.preheader ] ; 3 uses
  %shift_1.promoted8699101 = phi i32 [ %shift_1.promoted8695.lcssa, %._crit_edge93 ], [ %i.b, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.at = mul i32 %i.b, %.2102
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge85
  %indvars.iv127 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next128, %._crit_edge85 ] ; 5 uses
  %shift_1.promoted8697 = phi i32 [ %shift_1.promoted8699101, %.preheader.lr.ph ], [ %shift_1.promoted8695.lcssa, %._crit_edge85 ] ; 2 uses
  %shift_1.promoted9091 = phi i32 [ %shift_1.promoted8699101, %.preheader.lr.ph ], [ %shift_1.promoted87.lcssa, %._crit_edge85 ] ; 4 uses
  %i.au = trunc nuw nsw i64 %indvars.iv127 to i32 ; 12 uses
  %i.av = add i32 %i.at, %i.au
  %i.aw = sub i32 %i.e, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 3 uses
  %.pre142 = load i8, ptr %i.ay, align 1, !tbaa !21 ; 2 uses
  br i1 %i.as, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.i
  %i.az = phi i8 [ %i.bu, %bb.i ], [ %.pre142, %.preheader ] ; 2 uses
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %shift_1.promoted8696 = phi i32 [ %shift_1.promoted8695.1, %bb.i ], [ %shift_1.promoted8697, %.preheader ]
  %shift_1.promoted88 = phi i32 [ %shift_1.promoted87.1, %bb.i ], [ %shift_1.promoted9091, %.preheader ]
  %i.ba = phi i32 [ %i.bv, %bb.i ], [ %shift_1.promoted9091, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.preheader ]
  %i.bb = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.bc = mul i32 %i.b, %i.bb
  %i.bd = sub i32 %i.e, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21
  %i.bh = icmp eq i8 %i.az, %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = icmp slt i64 %indvars.iv127, %i.bi
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.new
  store i32 %i.au, ptr @shift_1, align 4, !tbaa !20
  %.pre = load i8, ptr %i.ay, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %.preheader.new, %bb.f
  %i.bk = phi i8 [ %i.az, %.preheader.new ], [ %.pre, %bb.f ] ; 2 uses
  %shift_1.promoted8695 = phi i32 [ %shift_1.promoted8696, %.preheader.new ], [ %i.au, %bb.f ]
  %shift_1.promoted87 = phi i32 [ %shift_1.promoted88, %.preheader.new ], [ %i.au, %bb.f ]
  %i.bl = phi i32 [ %i.ba, %.preheader.new ], [ %i.au, %bb.f ] ; 2 uses
  %i.bm = trunc i64 %indvars.iv124 to i32
  %.neg = xor i32 %i.bm, -1
  %.neg156 = mul i32 %i.b, %.neg
  %i.bn = add i32 %.neg156, %i.e
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = icmp eq i8 %i.bk, %i.bq
  %i.bs = sext i32 %i.bl to i64
  %i.bt = icmp slt i64 %indvars.iv127, %i.bs
  %or.cond.1 = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.au, ptr @shift_1, align 4, !tbaa !20
  %.pre.1 = load i8, ptr %i.ay, align 1, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bu = phi i8 [ %i.bk, %bb.g ], [ %.pre.1, %bb.h ] ; 2 uses
  %shift_1.promoted8695.1 = phi i32 [ %shift_1.promoted8695, %bb.g ], [ %i.au, %bb.h ] ; 3 uses
  %shift_1.promoted87.1 = phi i32 [ %shift_1.promoted87, %bb.g ], [ %i.au, %bb.h ] ; 3 uses
  %i.bv = phi i32 [ %i.bl, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge85.unr-lcssa, label %.preheader.new, !llvm.loop !60

._crit_edge85.unr-lcssa:                          ; preds = %bb.i
  br i1 %lcmp.mod152.not, label %._crit_edge85, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge85.unr-lcssa, %.preheader
  %.epil.init = phi i8 [ %.pre142, %.preheader ], [ %i.bu, %._crit_edge85.unr-lcssa ]
  %indvars.iv124.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125.1, %._crit_edge85.unr-lcssa ]
  %shift_1.promoted8696.epil.init = phi i32 [ %shift_1.promoted8697, %.preheader ], [ %shift_1.promoted8695.1, %._crit_edge85.unr-lcssa ]
  %shift_1.promoted88.epil.init = phi i32 [ %shift_1.promoted9091, %.preheader ], [ %shift_1.promoted87.1, %._crit_edge85.unr-lcssa ]
  %.epil.init151 = phi i32 [ %shift_1.promoted9091, %.preheader ], [ %i.bv, %._crit_edge85.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.bw = trunc nuw nsw i64 %indvars.iv124.epil.init to i32
  %i.bx = mul i32 %i.b, %i.bw
  %i.by = sub i32 %i.e, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = icmp eq i8 %.epil.init, %i.cb
  %i.cd = sext i32 %.epil.init151 to i64
  %i.ce = icmp slt i64 %indvars.iv127, %i.cd
  %or.cond.epil = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond.epil, label %bb.j, label %._crit_edge85

bb.j:                                             ; preds = %.epil.preheader
  store i32 %i.au, ptr @shift_1, align 4, !tbaa !20
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %.epil.preheader, %bb.j, %._crit_edge85.unr-lcssa
  %shift_1.promoted8695.lcssa = phi i32 [ %shift_1.promoted8695.1, %._crit_edge85.unr-lcssa ], [ %shift_1.promoted8696.epil.init, %.epil.preheader ], [ %i.au, %bb.j ] ; 3 uses
  %shift_1.promoted87.lcssa = phi i32 [ %shift_1.promoted87.1, %._crit_edge85.unr-lcssa ], [ %shift_1.promoted88.epil.init, %.epil.preheader ], [ %i.au, %bb.j ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge93, label %.preheader, !llvm.loop !61

._crit_edge93:                                    ; preds = %._crit_edge85
  %i.cf = add nuw i32 %.2102, 1
  %exitcond132.not = icmp eq i32 %.2102, %2
  br i1 %exitcond132.not, label %._crit_edge105.split, label %.preheader.lr.ph, !llvm.loop !62

._crit_edge105.split:                             ; preds = %._crit_edge93, %._crit_edge
  %i.cg = phi i32 [ %i.b, %._crit_edge ], [ %shift_1.promoted8695.lcssa, %._crit_edge93 ]
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge105.split
  store i32 1, ptr @shift_1, align 4, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge105.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @MEMBER, i8 0, i64 8192, i1 false), !tbaa !21
  br i1 %.not72100, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.l
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.lr.ph118.split, label %.lr.ph111.us.preheader

.lr.ph111.us.preheader:                           ; preds = %.lr.ph118
  %exitcond140.not = icmp eq i32 %i.b, 1
  %exitcond140.not.1 = icmp eq i32 %i.b, 2
  br label %.lr.ph111.us

.lr.ph111.us:                                     ; preds = %.lr.ph111.us.preheader, %._crit_edge112.us
  %.4116.us = phi i32 [ %i.de, %._crit_edge112.us ], [ 0, %.lr.ph111.us.preheader ] ; 3 uses
  %i.ci = mul i32 %i.b, %.4116.us                 ; 2 uses
  %i.cj = sub i32 %i.e, %i.ci                     ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  br i1 %exitcond140.not, label %._crit_edge112.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph111.us
  %i.co = shl nuw nsw i32 %i.cn, 2
  %.neg157 = xor i32 %i.ci, -1
  %i.cp = add i32 %i.e, %.neg157
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.co, %i.ct            ; 2 uses
  br i1 %exitcond140.not.1, label %._crit_edge112.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = shl nuw nsw i32 %i.cu, 2
  %i.cw = add i32 %i.cj, -2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !21
  %i.da = zext i8 %i.cz to i32
  %i.db = add nuw nsw i32 %i.cv, %i.da
  br label %._crit_edge112.us

._crit_edge112.us:                                ; preds = %bb.n, %bb.m, %.lr.ph111.us
  %.lcssa = phi i32 [ %i.cn, %.lr.ph111.us ], [ %i.cu, %bb.m ], [ %i.db, %bb.n ]
  %i.dc = zext i32 %.lcssa to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @MEMBER, i64 %i.dc
  store i8 1, ptr %i.dd, align 1, !tbaa !21
  %i.de = add nuw i32 %.4116.us, 1
  %exitcond141.not = icmp eq i32 %.4116.us, %2
  br i1 %exitcond141.not, label %._crit_edge119, label %.lr.ph111.us, !llvm.loop !63

.lr.ph118.split:                                  ; preds = %.lr.ph118
  store i8 1, ptr @MEMBER, align 16, !tbaa !21
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge112.us, %.lr.ph118.split, %bb.l
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @agrep(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [2048 x [2 x i32]], align 16      ; 10 uses
  %i.b = alloca [21 x i32], align 16              ; 21 uses
  %i.c = alloca [21 x i32], align 16              ; 20 uses
  %i.d = add i32 %4, 1                            ; 2 uses
  %i.e = sdiv i32 %1, %i.d                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !20
  store i32 0, ptr %i.a, align 16, !tbaa !20
  %i.g = load i32, ptr @shift_1, align 4, !tbaa !20 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.e, i32 3) ; 3 uses
  %i.h = icmp ult ptr %2, %3
  br i1 %i.h, label %.lr.ph236, label %.._crit_edge237_crit_edge

.._crit_edge237_crit_edge:                        ; preds = %bb.a
  %.pre = ptrtoint ptr %2 to i64
  br label %._crit_edge237

.lr.ph236:                                        ; preds = %bb.a
  %i.i = add nsw i32 %i.e, -1                     ; 2 uses
  %i.j = icmp ugt i32 %., 1
  %i.k = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.l = add i32 %4, %1                           ; 6 uses
  br i1 %i.j, label %.lr.ph236.split.us.preheader, label %.lr.ph236.split.preheader

.lr.ph236.split.preheader:                        ; preds = %.lr.ph236
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not340 = icmp ult ptr %i.n, %3
  br i1 %.not340, label %.lr.ph342.preheader, label %._crit_edge237

.lr.ph342.preheader:                              ; preds = %.lr.ph236.split.preheader
  %i.o = sext i32 %i.g to i64
  br label %.lr.ph342

.lr.ph236.split.us.preheader:                     ; preds = %.lr.ph236
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %.not.us344 = icmp ult ptr %i.q, %3
  br i1 %.not.us344, label %.lr.ph346.preheader, label %._crit_edge237

.lr.ph346.preheader:                              ; preds = %.lr.ph236.split.us.preheader
  %wide.trip.count = zext i32 %. to i64
  %i.r = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = add i32 %., -2
  %i.t = icmp ult i32 %i.s, 3
  %unroll_iter = and i64 %i.r, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod353 = icmp ne i64 %xtraiter, 0
  %i.u = sext i32 %i.g to i64
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.preheader, %.lr.ph236.split.us
  %i.v = phi ptr [ %i.cf, %.lr.ph236.split.us ], [ %i.q, %.lr.ph346.preheader ] ; 3 uses
  %.0142234.us345 = phi i32 [ %.2144.us, %.lr.ph236.split.us ], [ 0, %.lr.ph346.preheader ] ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21    ; 2 uses
  %.old1.not.us = icmp eq i8 %i.z, 0
  br i1 %.old1.not.us, label %.loopexit227.us, label %.preheader226.us

.preheader226.us:                                 ; preds = %.lr.ph346, %bb.b
  %.1160.us = phi ptr [ %i.ah, %bb.b ], [ %i.v, %.lr.ph346 ]
  %.1152.in.us = phi i8 [ %i.al, %bb.b ], [ %i.z, %.lr.ph346 ]
  %i.aa = zext i8 %.1152.in.us to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.1160.us, i64 %i.aa ; 4 uses
  %.not172.us = icmp ult ptr %i.ab, %3
  br i1 %.not172.us, label %bb.b, label %.loopexit227.us

bb.b:                                             ; preds = %.preheader226.us
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21  ; 2 uses
  %i.am = icmp ult ptr %i.ah, %3
  %i.an = icmp ne i8 %i.al, 0
  %or.cond.us = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.us, label %.preheader226.us, label %.loopexit227.us, !llvm.loop !64

.loopexit227.us:                                  ; preds = %.preheader226.us, %bb.b, %.lr.ph346
  %.2161.us = phi ptr [ %i.v, %.lr.ph346 ], [ %i.ah, %bb.b ], [ %i.ab, %.preheader226.us ] ; 9 uses
  %.not173.us = icmp ult ptr %.2161.us, %3
  br i1 %.not173.us, label %.lr.ph.us, label %._crit_edge237

.lr.ph.us:                                        ; preds = %.loopexit227.us
  %i.ao = load i8, ptr %.2161.us, align 1, !tbaa !21
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %.0150230.us = phi i32 [ %i.bn, %.lr.ph.us.new ], [ %i.ap, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.aq = sub nsw i64 0, %indvars.iv
  %i.ar = getelementptr inbounds i8, ptr %.2161.us, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %.0150230.us, 4
  %i.av = shl nuw nsw i32 %i.at, 2
  %i.aw = add i32 %i.au, %i.av
  %i.ax = xor i64 %indvars.iv, -1
  %i.ay = getelementptr inbounds i8, ptr %.2161.us, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !21
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %i.aw, %i.ba
  %i.bc = sub nuw nsw i64 -2, %indvars.iv
  %i.bd = getelementptr inbounds i8, ptr %.2161.us, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl i32 %i.bb, 4
  %i.bh = shl nuw nsw i32 %i.bf, 2
  %i.bi = add i32 %i.bg, %i.bh
  %i.bj = sub nuw nsw i64 -3, %indvars.iv
  %i.bk = getelementptr inbounds i8, ptr %.2161.us, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bi, %i.bm                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !65

bb.c:                                             ; preds = %._crit_edge.us
  %i.bo = ptrtoint ptr %.2161.us to i64
  %i.bp = sub i64 %i.bo, %i.k
  %i.bq = trunc i64 %i.bp to i32                  ; 3 uses
  %i.br = sub i32 %i.bq, %i.l                     ; 2 uses
  %i.bs = add nsw i32 %i.br, -10
  %i.bt = sext i32 %.0142234.us345 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = icmp sgt i32 %i.bs, %i.bw
  br i1 %i.bx, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = add i32 %i.l, %i.bq
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !20
  br label %.lr.ph236.split.us

bb.e:                                             ; preds = %bb.c
  %i.bz = add nsw i32 %i.br, -2
  %i.ca = add nsw i32 %.0142234.us345, 1          ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cb ; 2 uses
  store i32 %i.bz, ptr %i.cc, align 8, !tbaa !20
  %i.cd = add i32 %i.l, %i.bq
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !20
  br label %.lr.ph236.split.us

.lr.ph236.split.us:                               ; preds = %bb.e, %bb.d, %._crit_edge.us
  %.2144.us = phi i32 [ %.0142234.us345, %bb.d ], [ %i.ca, %bb.e ], [ %.0142234.us345, %._crit_edge.us ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.2161.us, i64 %i.u ; 2 uses
  %.not.us = icmp ult ptr %i.cf, %3
  br i1 %.not.us, label %.lr.ph346, label %._crit_edge237

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0150230.us.epil.init = phi i32 [ %i.ap, %.lr.ph.us ], [ %i.bn, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod353)
end_hunk_0
