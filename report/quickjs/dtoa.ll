inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mpb_shr_round:bb.a
  store i32 %i.af, ptr %0, align 4, !tbaa !14
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i104, label %mpb_renorm.exit

.lr.ph.i104:                                      ; preds = %mp_shl.exit, %bb.f
  %i.ah = phi i32 [ %i.am, %bb.f ], [ %i.af, %mp_shl.exit ] ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %mpb_renorm.exit

bb.f:                                             ; preds = %.lr.ph.i104
  %i.am = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.am, ptr %0, align 4, !tbaa !14
  %i.an = icmp sgt i32 %i.ah, 2
  br i1 %i.an, label %.lr.ph.i104, label %mpb_renorm.exit, !llvm.loop !19

mpb_renorm.exit:                                  ; preds = %bb.f, %.lr.ph.i104, %mp_shl.exit, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.s, label %bb.g

bb.g:                                             ; preds = %mpb_renorm.exit
  %i.ao = load i32, ptr %0, align 4, !tbaa !14    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph135, label %.preheader

.lr.ph135:                                        ; preds = %bb.g
  %i.aq = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.ar = zext nneg i32 %i.d to i64
  %invariant.gep165 = getelementptr [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %min.iters.check184 = icmp ult i32 %i.ao, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph135
  %n.vec186 = and i64 %i.aq, 2147483640           ; 2 uses
  %i.as = and i64 %i.aq, 7
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next191, %vector.body187 ] ; 2 uses
  %i.at = sub i64 %i.aq, %index188                ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -12
  %i.aw = getelementptr i8, ptr %i.au, i64 -28
  %wide.load189 = load <4 x i32>, ptr %i.av, align 4, !tbaa !14
  %wide.load190 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !14
  %i.ax = getelementptr [4 x i8], ptr %invariant.gep165, i64 %i.at ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -12
  %i.az = getelementptr i8, ptr %i.ax, i64 -28
  store <4 x i32> %wide.load189, ptr %i.ay, align 4, !tbaa !14
  store <4 x i32> %wide.load190, ptr %i.az, align 4, !tbaa !14
  %index.next191 = add nuw i64 %index188, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.ba, label %middle.block192, label %vector.body187, !llvm.loop !27

middle.block192:                                  ; preds = %vector.body187
  %cmp.n193 = icmp eq i64 %n.vec186, %i.aq
  br i1 %cmp.n193, label %.preheader, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph135, %middle.block192
  %indvars.iv146.ph = phi i64 [ %i.aq, %.lr.ph135 ], [ %i.as, %middle.block192 ]
  br label %scalar.ph183

.preheader:                                       ; preds = %scalar.ph183, %middle.block192, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = lshr i32 %i.c, 5
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 1)
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = zext nneg i32 %i.be to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bb, i8 0, i64 %i.bf, i1 false), !tbaa !14
  %i.bg = add nsw i32 %i.ao, %i.d
  store i32 %i.bg, ptr %0, align 4, !tbaa !14
  br label %bb.s

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph183 ], [ %indvars.iv146.ph, %scalar.ph183.preheader ] ; 4 uses
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, -1
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv146
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %gep166 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv146
  store i32 %i.bi, ptr %gep166, align 4, !tbaa !14
  %i.bj = icmp samesign ugt i64 %indvars.iv146, 1
  br i1 %i.bj, label %scalar.ph183, label %.preheader, !llvm.loop !30

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !14    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit107

bb.i:                                             ; preds = %bb.h
  %i.bk = add nsw i32 %1, -1                      ; 2 uses
  %i.bl = lshr i32 %i.bk, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.bl, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit107

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.bm = and i32 %i.bk, 31                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bo = zext nneg i32 %i.bl to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !14 ; 2 uses
  %i.br = shl nuw i32 1, %i.bm
  %i.bs = and i32 %i.bq, %i.br
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %mpb_get_bit.exit107, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.bt = icmp eq i32 %2, 1
  br i1 %i.bt, label %mpb_get_bit.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not126 = icmp eq i32 %1, 1
  br i1 %.not126, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not137 = icmp eq i32 %i.bl, 0
  br i1 %.not137, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i32 %1, 257
  br i1 %min.iters.check, label %.lr.ph.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, 134217720               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !14
  %wide.load170 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !14
  %i.bw = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.bx = or <4 x i32> %wide.load170, %vec.phi169 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bx, %i.bw
  %i.bz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader196

.lr.ph.preheader196:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085129.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader196, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader196 ] ; 2 uses
  %.085129 = phi i32 [ %i.cc, %.lr.ph ], [ %.085129.ph, %.lr.ph.preheader196 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = or i32 %i.cb, %.085129                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bo
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.bz, %middle.block ], [ %i.cc, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.bm
  %i.cd = xor i32 %notmask, -1
  %i.ce = and i32 %i.bq, %i.cd
  %i.cf = or i32 %i.ce, %.085.lcssa
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread, label %mpb_get_bit.exit107

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ch = lshr i32 %1, 5                          ; 2 uses
  %.not.i105 = icmp samesign ult i32 %i.ch, %.pre
  br i1 %.not.i105, label %bb.m, label %mpb_get_bit.exit107

bb.m:                                             ; preds = %.thread
  %i.ci = and i32 %1, 31
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = lshr i32 %i.cl, %i.ci
  %i.cn = and i32 %i.cm, 1
  br label %mpb_get_bit.exit107

mpb_get_bit.exit107:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.cn, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.co = lshr i32 %1, 5                          ; 4 uses
  %i.cp = and i32 %1, 31
  %.not97 = icmp slt i32 %i.co, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit107
  store i32 1, ptr %0, align 4, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.cq, align 4, !tbaa !14
  br label %bb.s

bb.o:                                             ; preds = %mpb_get_bit.exit107
  %.not98 = icmp eq i32 %i.co, 0
  br i1 %.not98, label %.lr.ph.i108.a, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = sub nuw nsw i32 %.pre, %i.co            ; 6 uses
  store i32 %i.cr, ptr %0, align 4, !tbaa !14
  %.not169 = icmp eq i32 %i.cr, 0
  br i1 %.not169, label %mpb_renorm.exit112, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ct = zext nneg i32 %i.co to i64
  %wide.trip.count144 = zext nneg i32 %i.cr to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %min.iters.check172 = icmp ult i32 %i.cr, 8
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph132
  %n.vec174 = and i64 %wide.trip.count144, 2147483640 ; 3 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body175 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index176 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load177 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !14
  %wide.load178 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !14
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index176 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load177, ptr %i.cw, align 4, !tbaa !14
  store <4 x i32> %wide.load178, ptr %i.cx, align 4, !tbaa !14
  %index.next179 = add nuw i64 %index176, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.cy, label %middle.block180, label %vector.body175, !llvm.loop !33

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %n.vec174, %wide.trip.count144
  br i1 %cmp.n181, label %.lr.ph.i108.a, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph132, %middle.block180
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph132 ], [ %n.vec174, %middle.block180 ]
  br label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph171 ], [ %indvars.iv141.ph, %scalar.ph171.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv141
  %i.cz = load i32, ptr %gep, align 4, !tbaa !14
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv141
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !14
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.lr.ph.i108.a, label %scalar.ph171, !llvm.loop !34

.lr.ph.i108.a:                                    ; preds = %scalar.ph171, %middle.block180, %bb.o
  %3 = phi i32 [ %.pre, %bb.o ], [ %i.cr, %middle.block180 ], [ %i.cr, %scalar.ph171 ] ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %i.cp, 0
  br i1 %niter.ncmp.3.not, label %mpb_renorm.exit112, label %.lr.ph.i108.epil.preheader

.lr.ph.i108.epil.preheader:                       ; preds = %.lr.ph.i108.a
  %4 = zext nneg i32 %3 to i64
  br label %.lr.ph.i108.epil

.lr.ph.i108.epil:                                 ; preds = %.lr.ph.i108.epil.preheader, %.lr.ph.i108.epil
  %.0.in16.i.epil = phi i64 [ %.0.i109.epil, %.lr.ph.i108.epil ], [ %4, %.lr.ph.i108.epil.preheader ] ; 3 uses
  %.01415.i.epil = phi i32 [ %i.dc, %.lr.ph.i108.epil ], [ 0, %.lr.ph.i108.epil.preheader ]
  %.0.i109.epil = add nsw i64 %.0.in16.i.epil, -1
  %i.db = getelementptr [4 x i8], ptr %0, i64 %.0.in16.i.epil ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14 ; 2 uses
  %i.dd = tail call i32 @llvm.fshr.i32(i32 %.01415.i.epil, i32 %i.dc, i32 range(i32 1, 32) %1)
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !14
  %5 = icmp samesign ugt i64 %.0.in16.i.epil, 1
  br i1 %5, label %.lr.ph.i108.epil, label %mp_shr.exit, !llvm.loop !35

mp_shr.exit:                                      ; preds = %.lr.ph.i108.epil
  %.pr.i110.pr = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.de = icmp sgt i32 %.pr.i110.pr, 1
  br i1 %i.de, label %.lr.ph.i111, label %mpb_renorm.exit112

.lr.ph.i111:                                      ; preds = %mp_shr.exit, %bb.q
  %i.df = phi i32 [ %i.dk, %bb.q ], [ %.pr.i110.pr, %mp_shr.exit ] ; 4 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %0, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.q, label %mpb_renorm.exit112

bb.q:                                             ; preds = %.lr.ph.i111
  %i.dk = add nsw i32 %i.df, -1                   ; 3 uses
  store i32 %i.dk, ptr %0, align 4, !tbaa !14
  %i.dl = icmp sgt i32 %i.df, 2
  br i1 %i.dl, label %.lr.ph.i111, label %mpb_renorm.exit112, !llvm.loop !19

mpb_renorm.exit112:                               ; preds = %bb.q, %.lr.ph.i111, %bb.p, %mp_shr.exit, %.lr.ph.i108.a
  %6 = phi i32 [ 0, %bb.p ], [ %.pr.i110.pr, %mp_shr.exit ], [ %3, %.lr.ph.i108.a ], [ %i.dk, %bb.q ], [ %i.df, %.lr.ph.i111 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %mpb_renorm.exit112
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dn = sext i32 %6 to i64                      ; 2 uses
  %i.do = icmp eq i32 %6, 0
  br i1 %i.do, label %mp_add_ui.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.r, %.lr.ph.i113
  %.015.i114 = phi i64 [ %i.dt, %.lr.ph.i113 ], [ 0, %bb.r ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.015.i114 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !14
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0                    ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !14
  %i.dt = add nuw i64 %.015.i114, 1               ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dn
  %or.cond.not.i = select i1 %i.du, i1 %i.ds, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i113, label %mp_add_ui.exit, !llvm.loop !36

mp_add_ui.exit:                                   ; preds = %.lr.ph.i113
  br i1 %i.ds, label %mp_add_ui.exit.thread, label %bb.s

mp_add_ui.exit.thread:                            ; preds = %bb.r, %mp_add_ui.exit
  %i.dv = add nsw i32 %6, 1
  store i32 %i.dv, ptr %0, align 4, !tbaa !14
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  store i32 1, ptr %i.dw, align 4, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit112, %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @js_atod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = and i32 %3, 8
  %.not232 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not232, i32 256, i32 95      ; 10 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %thread-pre-split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.0197.ph = phi i64 [ -9223372036854775808, %bb.b ], [ 0, %bb.a ]
  %.0356.ph = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pr = load i8, ptr %.0356.ph, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.d, %bb.a ] ; 2 uses
  %.0356 = phi ptr [ %.0356.ph, %thread-pre-split ], [ %0, %bb.a ] ; 27 uses
  %.0197 = phi i64 [ %.0197.ph, %thread-pre-split ], [ 0, %bb.a ]
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0356, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 6 uses
  switch i8 %i.h, label %bb.h [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = and i32 %2, -17
  %or.cond = icmp eq i32 %i.i, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i8 %i.h, 111
  br i1 %i.k, label %.thread386, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.l = icmp eq i8 %i.h, 79
  %i.m = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.d
  %.old2 = icmp eq i32 %2, 0
  br i1 %.old2, label %bb.j, label %.thread386

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.n = and i32 %3, 2
  %.not235 = icmp eq i32 %i.n, 0
  br i1 %.not235, label %.thread386, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

.thread:                                          ; preds = %bb.g, %bb.h
  %i.p = phi i1 [ %i.m, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.q = icmp eq i8 %i.h, 98
  br i1 %i.q, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.r = icmp eq i8 %i.h, 66
  %or.cond6 = and i1 %i.p, %i.r
  br i1 %or.cond6, label %.thread365, label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.p, label %.thread365, label %.thread386

.thread365:                                       ; preds = %bb.l, %bb.m
  %.old464 = and i32 %3, 2
  %.not236.old = icmp eq i32 %.old464, 0
  br i1 %.not236.old, label %.thread386, label %bb.n

bb.n:                                             ; preds = %.thread365
  %i.s = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

bb.o:                                             ; preds = %bb.l
  %i.t = add i8 %i.h, -48
  %i.u = icmp ult i8 %i.t, 10
  %or.cond548 = and i1 %i.p, %i.u
  br i1 %or.cond548, label %bb.p, label %.thread368

bb.p:                                             ; preds = %bb.o
  %i.v = and i32 %3, 4
  %.not237 = icmp eq i32 %i.v, 0
  br i1 %.not237, label %.thread386, label %.preheader477

.preheader477:                                    ; preds = %bb.p, %.preheader477
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader477 ], [ 1, %bb.p ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0356, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %i.y = and i8 %i.x, -8
  %or.cond248 = icmp eq i8 %i.y, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond248, label %.preheader477, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %.preheader477
  %i.z = and i8 %i.x, -2
  %switch = icmp eq i8 %i.z, 56
  br i1 %switch, label %.thread386, label %.thread370

.thread370:                                       ; preds = %.critedge, %bb.k, %bb.n, %bb.f
  %.2358 = phi ptr [ %i.j, %bb.f ], [ %i.s, %bb.n ], [ %i.o, %bb.k ], [ %i.g, %.critedge ] ; 3 uses
  %.0198 = phi i32 [ %i.c, %bb.f ], [ %i.c, %bb.n ], [ %i.c, %bb.k ], [ 256, %.critedge ]
  %.1173 = phi i32 [ 16, %bb.f ], [ 2, %bb.n ], [ 8, %bb.k ], [ 8, %.critedge ] ; 2 uses
  %i.aa = load i8, ptr %.2358, align 1, !tbaa !8  ; 3 uses
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.ac, 10
  br i1 %or.cond.i, label %to_digit.exit, label %bb.q

bb.q:                                             ; preds = %.thread370
  %i.ad = add i8 %i.aa, -65
  %or.cond3.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = add nsw i32 %i.ab, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.af = add i8 %i.aa, -97
  %or.cond5.i = icmp ult i8 %i.af, 26
  %i.ag = add nsw i32 %i.ab, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.ag, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread370, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ae, %bb.r ], [ %i.ac, %.thread370 ]
  %.not238 = icmp slt i32 %.0.i, %.1173
  br i1 %.not238, label %.thread386, label %.thread415

bb.t:                                             ; preds = %bb.c
  %i.ah = and i32 %3, 1
  %.not233 = icmp eq i32 %i.ah, 0
  br i1 %.not233, label %bb.u, label %.thread368

bb.u:                                             ; preds = %bb.t
  %scevgep.i = getelementptr i8, ptr %.0356, i64 8
  %.not14.i = icmp eq i8 %i.e, 73
  br i1 %.not14.i, label %bb.v, label %.thread368

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %.0356, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %.not14.1.i = icmp eq i8 %i.aj, 110
  br i1 %.not14.1.i, label %bb.w, label %.thread368

bb.w:                                             ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %.not14.2.i = icmp eq i8 %i.al, 102
  br i1 %.not14.2.i, label %bb.x, label %.thread368

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %.0356, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %.not14.3.i = icmp eq i8 %i.an, 105
  br i1 %.not14.3.i, label %bb.y, label %.thread368

bb.y:                                             ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %.0356, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %.not14.4.i = icmp eq i8 %i.ap, 110
  br i1 %.not14.4.i, label %bb.z, label %.thread368

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %.0356, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %.not14.5.i = icmp eq i8 %i.ar, 105
  br i1 %.not14.5.i, label %bb.aa, label %.thread368

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %.0356, i64 6
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not14.6.i = icmp eq i8 %i.at, 116
  br i1 %.not14.6.i, label %bb.ab, label %.thread368

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %.0356, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %.not14.7.i = icmp eq i8 %i.av, 121
  br i1 %.not14.7.i, label %js__strstart.exit, label %.thread368

.thread368:                                       ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.t, %bb.o
  %i.aw = icmp eq i32 %2, 0
  %spec.select466 = select i1 %i.aw, i32 10, i32 %2
  br label %.thread386

.thread386:                                       ; preds = %bb.g, %bb.j, %.thread368, %bb.m, %bb.i, %.thread365, %.critedge, %bb.p, %to_digit.exit
  %.1199384 = phi i32 [ %i.c, %bb.i ], [ %i.c, %.thread368 ], [ %.0198, %to_digit.exit ], [ 256, %.critedge ], [ %i.c, %bb.p ], [ %i.c, %bb.m ], [ %i.c, %.thread365 ], [ %i.c, %bb.j ], [ %i.c, %bb.g ] ; 3 uses
  %.3359382 = phi ptr [ %.0356, %bb.i ], [ %.0356, %.thread368 ], [ %.2358, %to_digit.exit ], [ %.0356, %.critedge ], [ %.0356, %bb.p ], [ %.0356, %bb.m ], [ %.0356, %.thread365 ], [ %.0356, %bb.j ], [ %.0356, %bb.g ]
  %i.ax = phi i32 [ %2, %bb.i ], [ %spec.select466, %.thread368 ], [ %.1173, %to_digit.exit ], [ 10, %.critedge ], [ 10, %bb.p ], [ %2, %bb.m ], [ 10, %.thread365 ], [ 10, %bb.j ], [ %2, %bb.g ] ; 13 uses
  %i.ay = add nsw i32 %i.ax, -2
  %i.az = sext i32 %i.ay to i64                   ; 6 uses
  %i.ba = getelementptr inbounds i8, ptr @atod_max_digits_table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.az
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.ax, i1 true) ; 3 uses
  %i.bj = ashr exact i32 %i.ax, %i.bi             ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 1
  %. = select i1 %i.bk, i32 %i.bi, i32 0          ; 6 uses
  store i32 1, ptr %4, align 4, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 19 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !14
  %i.bm = and i32 %3, 1
  %.not239 = icmp eq i32 %i.bm, 0                 ; 5 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread392, %.thread386
  %.4360 = phi ptr [ %.3359382, %.thread386 ], [ %i.ch, %.thread392 ] ; 8 uses
  %.0179 = phi i32 [ -1, %.thread386 ], [ %.1180, %.thread392 ] ; 5 uses
  %.0175 = phi i32 [ 0, %.thread386 ], [ %i.ci, %.thread392 ] ; 4 uses
  %i.bn = load i8, ptr %.4360, align 1, !tbaa !8  ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.bp = icmp ugt ptr %.4360, %.0356
  br i1 %i.bp, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bq = getelementptr inbounds nuw i8, ptr %.4360, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8   ; 3 uses
  %i.bs = zext i8 %i.br to i32                    ; 3 uses
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %or.cond.i264 = icmp ult i32 %i.bt, 10
  br i1 %or.cond.i264, label %to_digit.exit269, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = add i8 %i.br, -65
  %or.cond3.i265 = icmp ult i8 %i.bu, 26
  br i1 %or.cond3.i265, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bv = add nsw i32 %i.bs, -55
  br label %to_digit.exit269

bb.ah:                                            ; preds = %bb.af
  %i.bw = add i8 %i.br, -97
  %or.cond5.i266 = icmp ult i8 %i.bw, 26
  %i.bx = add nsw i32 %i.bs, -87
  %spec.select.i267 = select i1 %or.cond5.i266, i32 %i.bx, i32 36
  br label %to_digit.exit269

to_digit.exit269:                                 ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i268 = phi i32 [ %spec.select.i267, %bb.ah ], [ %i.bv, %bb.ag ], [ %i.bt, %bb.ae ]
  %i.by = icmp slt i32 %.0.i268, %i.ax
  %or.cond249 = and i1 %.not239, %i.by
  br i1 %or.cond249, label %bb.aj, label %bb.al

bb.ai:                                            ; preds = %bb.ad
  br i1 %.not239, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai, %to_digit.exit269
  %i.bz = icmp sgt i32 %.0179, -1
  br i1 %i.bz, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ca = getelementptr inbounds nuw i8, ptr %.4360, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.ca, align 1, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %to_digit.exit269, %bb.ac
  %.pr391 = phi i8 [ %.pre, %bb.ak ], [ 46, %bb.ai ], [ 46, %to_digit.exit269 ], [ %i.bn, %bb.ac ] ; 3 uses
  %.5361 = phi ptr [ %i.ca, %bb.ak ], [ %.4360, %bb.ai ], [ %.4360, %to_digit.exit269 ], [ %.4360, %bb.ac ] ; 4 uses
  %.1180 = phi i32 [ %.0175, %bb.ak ], [ %.0179, %bb.ai ], [ %.0179, %to_digit.exit269 ], [ %.0179, %bb.ac ] ; 2 uses
  %i.cb = zext i8 %.pr391 to i32
  %i.cc = icmp eq i32 %.1199384, %i.cb
  %i.cd = icmp ugt ptr %.5361, %.0356
  %or.cond251 = and i1 %i.cd, %i.cc
  br i1 %or.cond251, label %bb.am, label %thread-pre-split390

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %.5361, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = icmp eq i8 %i.cf, 48
  br i1 %i.cg, label %.thread392, label %thread-pre-split390

thread-pre-split390:                              ; preds = %bb.am, %bb.al
  %.not240 = icmp eq i8 %.pr391, 48
  br i1 %.not240, label %.thread392, label %bb.an

.thread392:                                       ; preds = %bb.am, %thread-pre-split390
  %.6395 = phi ptr [ %.5361, %thread-pre-split390 ], [ %i.ce, %bb.am ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.6395, i64 1
  %i.ci = add nuw nsw i32 %.0175, 1
  br label %bb.ac

bb.an:                                            ; preds = %thread-pre-split390, %bb.aj
end_hunk_0
begin_hunk_1_@js_atod:bb.a
  %i.hv = icmp eq i32 %i.cn, 1
  br i1 %i.hv, label %.epil.preheader561, label %.lr.ph.i.i294.new

.lr.ph.i.i294.new:                                ; preds = %.lr.ph.i.i294
  %unroll_iter566 = and i64 %wide.trip.count.i.i295, 4294967294
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i.i294.new
  %indvars.iv.i.i296 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %indvars.iv.next.i.i298.1, %bb.cc ] ; 3 uses
  %.013.i.i297 = phi i64 [ %i.hu, %.lr.ph.i.i294.new ], [ %i.ik, %bb.cc ]
  %niter567 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %niter567.next.1, %bb.cc ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !14
  %i.hy = zext i32 %i.hx to i64
  %i.hz = mul nuw i64 %i.ho, %i.hy
  %i.ia = add nuw i64 %i.hz, %.013.i.i297         ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  store i32 %i.ib, ptr %i.hw, align 4, !tbaa !14
  %i.ic = lshr i64 %i.ia, 32
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !14
  %i.ig = zext i32 %i.if to i64
  %i.ih = mul nuw i64 %i.ho, %i.ig
  %i.ii = add nuw i64 %i.ih, %i.ic                ; 2 uses
  %i.ij = trunc i64 %i.ii to i32
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !14
  %i.ik = lshr i64 %i.ii, 32                      ; 3 uses
  %indvars.iv.next.i.i298.1 = add nuw nsw i64 %indvars.iv.i.i296, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.loopexit.i.i300.unr-lcssa, label %bb.cc, !llvm.loop !23

._crit_edge.loopexit.i.i300.unr-lcssa:            ; preds = %bb.cc
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.loopexit.i.i300, label %.epil.preheader561

.epil.preheader561:                               ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.lr.ph.i.i294
  %indvars.iv.i.i296.epil.init = phi i64 [ 0, %.lr.ph.i.i294 ], [ %indvars.iv.next.i.i298.1, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %.013.i.i297.epil.init = phi i64 [ %i.hu, %.lr.ph.i.i294 ], [ %i.ik, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %lcmp.mod565 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296.epil.init ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !14
  %i.in = zext i32 %i.im to i64
  %i.io = mul nuw i64 %i.ho, %i.in
  %i.ip = add nuw i64 %i.io, %.013.i.i297.epil.init ; 2 uses
  %i.iq = trunc i64 %i.ip to i32
  store i32 %i.iq, ptr %i.il, align 4, !tbaa !14
  %i.ir = lshr i64 %i.ip, 32
  br label %._crit_edge.loopexit.i.i300

._crit_edge.loopexit.i.i300:                      ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.epil.preheader561
  %.lcssa = phi i64 [ %i.ik, %._crit_edge.loopexit.i.i300.unr-lcssa ], [ %i.ir, %.epil.preheader561 ]
  %i.is = trunc nuw i64 %.lcssa to i32
  br label %mp_mul1.exit.i301

mp_mul1.exit.i301:                                ; preds = %._crit_edge.loopexit.i.i300, %bb.cb
  %.0.lcssa.i.i302 = phi i32 [ %.0183, %bb.cb ], [ %i.is, %._crit_edge.loopexit.i.i300 ]
  %i.it = sext i32 %i.cn to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.it
  store i32 %.0.lcssa.i.i302, ptr %i.iu, align 4, !tbaa !14
  %.pre.i303 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.cd

bb.cd:                                            ; preds = %mp_mul1.exit.i301, %._crit_edge.i305
  %i.iv = phi i32 [ %.pre.i303, %mp_mul1.exit.i301 ], [ %i.cn, %._crit_edge.i305 ] ; 2 uses
  %i.iw = add nsw i32 %i.iv, 1                    ; 2 uses
  store i32 %i.iw, ptr %4, align 4, !tbaa !14
  %i.ix = icmp sgt i32 %i.iv, 0
  br i1 %i.ix, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308

.lr.ph.i23.i304:                                  ; preds = %bb.cd, %bb.ce
  %i.iy = phi i32 [ %i.jd, %bb.ce ], [ %i.iw, %bb.cd ] ; 3 uses
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr [4 x i8], ptr %4, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !14
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.ce, label %mpb_mul1_base.exit308

bb.ce:                                            ; preds = %.lr.ph.i23.i304
  %i.jd = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.jd, ptr %4, align 4, !tbaa !14
  %i.je = icmp sgt i32 %i.iy, 2
  br i1 %i.je, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308, !llvm.loop !19

mpb_mul1_base.exit308:                            ; preds = %bb.ce, %.lr.ph.i23.i304, %bb.bs, %bb.cd, %bb.bz
  %i.jf = icmp ne i32 %.0200, 0                   ; 2 uses
  %i.jg = icmp slt i32 %.5.ph, 0
  %spec.select = select i1 %i.jg, i32 %.1176, i32 %.5.ph
  %i.jh = add nsw i32 %.0200, %.0175
  %i.ji = sub i32 %i.jh, %spec.select             ; 2 uses
  %i.jj = icmp ne i32 %., 0                       ; 2 uses
  %i.jk = icmp ne i32 %.0194, 0
  %or.cond12 = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond12, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %mpb_mul1_base.exit308
  %i.jl = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.jm = or i32 %i.jl, 1
  store i32 %i.jm, ptr %i.bl, align 4, !tbaa !14
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %mpb_mul1_base.exit308
  br i1 %.not239, label %bb.ch, label %.thread443

bb.ch:                                            ; preds = %bb.cg
  %cond = icmp eq i32 %i.ax, 10
  %i.jn = load i8, ptr %.11.ph, align 1, !tbaa !8 ; 7 uses
  br i1 %cond, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  switch i8 %i.jn, label %.thread443 [
    i8 101, label %bb.cm
    i8 69, label %bb.cm
  ]

bb.cj:                                            ; preds = %bb.ch
  %i.jo = icmp eq i8 %i.jn, 64
  br i1 %i.jo, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jp = add nsw i32 %., -1
  %or.cond15 = icmp ult i32 %i.jp, 4
  br i1 %or.cond15, label %bb.cl, label %.thread443

bb.cl:                                            ; preds = %bb.ck
  switch i8 %i.jn, label %.thread443 [
    i8 112, label %bb.cm
    i8 80, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl, %bb.cl, %bb.ci, %bb.ci, %bb.cj
  %i.jq = phi i8 [ %i.jn, %bb.cl ], [ %i.jn, %bb.cl ], [ %i.jn, %bb.ci ], [ %i.jn, %bb.ci ], [ 64, %bb.cj ]
  %i.jr = icmp ugt ptr %.11.ph, %.0356
  br i1 %i.jr, label %bb.cn, label %.thread443

bb.cn:                                            ; preds = %bb.cm
  %i.js = and i8 %i.jq, -33
  %spec.select257 = icmp eq i8 %i.js, 80
  %i.jt = getelementptr inbounds nuw i8, ptr %.11.ph, i64 1 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !8
  switch i8 %i.ju, label %bb.cq [
    i8 43, label %bb.co
    i8 45, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.jv = getelementptr inbounds nuw i8, ptr %.11.ph, i64 2
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.jw = getelementptr inbounds nuw i8, ptr %.11.ph, i64 2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.cp, %bb.co
  %.12 = phi ptr [ %i.jt, %bb.cn ], [ %i.jv, %bb.co ], [ %i.jw, %bb.cp ] ; 3 uses
  %.0 = phi i1 [ false, %bb.cn ], [ false, %bb.co ], [ true, %bb.cp ] ; 2 uses
  %i.jx = load i8, ptr %.12, align 1, !tbaa !8
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add nsw i32 %i.jy, -48                  ; 2 uses
  %or.cond.i309 = icmp ult i32 %i.jz, 10
  br i1 %or.cond.i309, label %.preheader, label %.thread415

.preheader:                                       ; preds = %bb.cq, %to_digit.exit326.thread433
  %.13 = phi ptr [ %.14, %to_digit.exit326.thread433 ], [ %.12, %bb.cq ] ; 2 uses
  %.0187 = phi i32 [ %.1188, %to_digit.exit326.thread433 ], [ %i.jz, %bb.cq ] ; 5 uses
  %.0167 = phi i1 [ %or.cond473, %to_digit.exit326.thread433 ], [ false, %bb.cq ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.13, i64 1 ; 3 uses
  %i.ka = load i8, ptr %storemerge, align 1, !tbaa !8 ; 2 uses
  %i.kb = zext i8 %i.ka to i32                    ; 2 uses
  %i.kc = icmp eq i32 %.1199384, %i.kb
  br i1 %i.kc, label %bb.cr, label %to_digit.exit320.thread

bb.cr:                                            ; preds = %.preheader
  %i.kd = getelementptr inbounds nuw i8, ptr %.13, i64 2 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !8   ; 2 uses
  %i.kf = add i8 %i.ke, -48
  %or.cond.i315 = icmp ult i8 %i.kf, 10           ; 2 uses
  %spec.select475 = select i1 %or.cond.i315, ptr %i.kd, ptr %storemerge
  %i.kg = select i1 %or.cond.i315, i8 %i.ke, i8 %i.ka
  %.pre511 = zext i8 %i.kg to i32
  br label %to_digit.exit320.thread

to_digit.exit320.thread:                          ; preds = %bb.cr, %.preheader
  %.pre-phi = phi i32 [ %.pre511, %bb.cr ], [ %i.kb, %.preheader ]
  %.14 = phi ptr [ %spec.select475, %bb.cr ], [ %storemerge, %.preheader ] ; 3 uses
  %i.kh = add nsw i32 %.pre-phi, -48              ; 2 uses
  %or.cond.i321 = icmp ult i32 %i.kh, 10
  br i1 %or.cond.i321, label %to_digit.exit326.thread433, label %to_digit.exit326.thread

to_digit.exit326.thread:                          ; preds = %to_digit.exit320.thread
  %i.ki = sub nsw i32 0, %.0187
  %spec.select258 = select i1 %.0, i32 %i.ki, i32 %.0187
  %or.cond18 = select i1 %i.jf, i1 %.0167, i1 false
  %.259 = select i1 %.0, i64 0, i64 9218868437227405312
  br i1 %or.cond18, label %js__strstart.exit, label %.thread443

to_digit.exit326.thread433:                       ; preds = %to_digit.exit320.thread
  %i.kj = icmp sgt i32 %.0187, 214748363
  %or.cond473 = select i1 %.0167, i1 true, i1 %i.kj, !prof !38 ; 2 uses
  %i.kk = mul nsw i32 %.0187, 10
  %i.kl = add nsw i32 %i.kh, %i.kk
  %.1188 = select i1 %or.cond473, i32 %.0187, i32 %i.kl, !prof !38
  br label %.preheader

.thread443:                                       ; preds = %to_digit.exit326.thread, %bb.ci, %bb.cl, %bb.cm, %bb.ck, %bb.cg
  %.16 = phi ptr [ %.11.ph, %bb.cg ], [ %.11.ph, %bb.ci ], [ %.11.ph, %bb.cm ], [ %.11.ph, %bb.cl ], [ %.11.ph, %bb.ck ], [ %.14, %to_digit.exit326.thread ] ; 12 uses
  %.4191 = phi i32 [ 0, %bb.cg ], [ 0, %bb.ci ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ %spec.select258, %to_digit.exit326.thread ] ; 2 uses
  %.0170 = phi i1 [ false, %bb.cg ], [ false, %bb.ci ], [ false, %bb.cm ], [ false, %bb.cl ], [ false, %bb.ck ], [ %spec.select257, %to_digit.exit326.thread ]
  %i.km = icmp eq ptr %.16, %.0356
  br i1 %i.km, label %.thread415, label %bb.cs

bb.cs:                                            ; preds = %.thread443
  br i1 %i.jf, label %bb.ct, label %js__strstart.exit

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.jj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.kn = select i1 %.0170, i32 1, i32 %.
  %spec.select261 = mul nsw i32 %i.kn, %.4191
  %i.ko = mul nsw i32 %i.ji, %.
  %i.kp = sub nsw i32 %spec.select261, %i.ko      ; 2 uses
  %i.kq = mul nsw i32 %.0200, %.
  %i.kr = add nsw i32 %i.kp, %i.kq                ; 2 uses
  %i.ks = or disjoint i32 %., 1024
  %.not246 = icmp slt i32 %i.kr, %i.ks
  br i1 %.not246, label %bb.cv, label %js__strstart.exit

bb.cv:                                            ; preds = %bb.cu
  %i.kt = icmp slt i32 %i.kr, -1074
  br i1 %i.kt, label %js__strstart.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ku = sub nsw i32 0, %i.kp
  %i.kv = call fastcc i64 @round_to_d(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.ku)
  br label %bb.da

bb.cx:                                            ; preds = %bb.ct
  %i.kw = sub nsw i32 %.4191, %i.ji               ; 2 uses
  %i.kx = add nsw i32 %i.kw, %.0200               ; 2 uses
  %i.ky = getelementptr inbounds [2 x i8], ptr @max_exponent, i64 %i.az
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !39
  %i.la = sext i16 %i.kz to i32
  %.not.not = icmp sgt i32 %i.kx, %i.la
  br i1 %.not.not, label %js__strstart.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lb = getelementptr inbounds [2 x i8], ptr @min_exponent, i64 %i.az
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = sext i16 %i.lc to i32
  %.not = icmp sgt i32 %i.kx, %i.ld
  br i1 %.not, label %bb.cz, label %js__strstart.exit

bb.cz:                                            ; preds = %bb.cy
  %i.le = call fastcc i64 @mul_pow_round_to_d(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.bj, i32 noundef %i.bi, i32 noundef %i.kw)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %.0166 = phi i64 [ %i.kv, %bb.cw ], [ %i.le, %bb.cz ] ; 3 uses
  %i.lf = icmp eq i64 %.0166, 0
  br i1 %i.lf, label %js__strstart.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lg = load i32, ptr %i.a, align 4, !tbaa !14  ; 5 uses
  %i.lh = icmp sgt i32 %i.lg, 1024
  br i1 %i.lh, label %js__strstart.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.li = icmp slt i32 %i.lg, -1073
  br i1 %i.li, label %js__strstart.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lj = icmp slt i32 %i.lg, -1021
  br i1 %i.lj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.lk = sub nuw nsw i32 -1021, %i.lg
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = lshr i64 %.0166, %i.ll
  br label %js__strstart.exit

bb.df:                                            ; preds = %bb.dd
  %i.ln = add nsw i32 %i.lg, 1022
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 52
  %i.lq = and i64 %.0166, 4503599627370495
  %i.lr = or disjoint i64 %i.lp, %i.lq
  br label %js__strstart.exit

js__strstart.exit:                                ; preds = %to_digit.exit326.thread, %bb.ab, %bb.dc, %bb.cu, %bb.cx, %bb.db, %bb.cv, %bb.cy, %bb.da, %bb.cs, %bb.de, %bb.df
  %.17 = phi ptr [ %.16, %bb.cv ], [ %.16, %bb.da ], [ %.16, %bb.db ], [ %.16, %bb.dc ], [ %.16, %bb.de ], [ %.16, %bb.df ], [ %.16, %bb.cu ], [ %.16, %bb.cx ], [ %.16, %bb.cy ], [ %.16, %bb.cs ], [ %scevgep.i, %bb.ab ], [ %.14, %to_digit.exit326.thread ]
  %.2165 = phi i64 [ 0, %bb.cv ], [ 0, %bb.da ], [ 9218868437227405312, %bb.db ], [ 0, %bb.dc ], [ %i.lm, %bb.de ], [ %i.lr, %bb.df ], [ 9218868437227405312, %bb.cu ], [ 9218868437227405312, %bb.cx ], [ 0, %bb.cy ], [ 0, %bb.cs ], [ 9218868437227405312, %bb.ab ], [ %.259, %to_digit.exit326.thread ]
  %i.ls = or i64 %.2165, %.0197
  %i.lt = bitcast i64 %i.ls to double
  br label %.thread415

.thread415:                                       ; preds = %bb.cq, %to_digit.exit, %.thread443, %js__strstart.exit
  %.18 = phi ptr [ %.2358, %to_digit.exit ], [ %.16, %.thread443 ], [ %.17, %js__strstart.exit ], [ %.12, %bb.cq ]
  %.0171 = phi double [ +qnan, %to_digit.exit ], [ +qnan, %.thread443 ], [ %i.lt, %js__strstart.exit ], [ +qnan, %bb.cq ]
  %.not247 = icmp eq ptr %1, null
  br i1 %.not247, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.thread415
  store ptr %.18, ptr %1, align 8, !tbaa !41
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.thread415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.0171
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = icmp eq i32 %i.b, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.d = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.d, label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.a
  %i.e = sext i32 %.pre to i64
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = shl nsw i32 %.pre, 5
  %i.j = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = sub i32 %i.i, %i.j
  %.0.i = select i1 %i.h, i32 0, i32 %i.k         ; 2 uses
  %i.l = sub nsw i32 %.0.i, %2                    ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 -1021) ; 2 uses
  %.025.neg = add i32 %.0.i, -1074
  %i.n = sub i32 %.025.neg, %i.m
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.n, i32 noundef 0)
  %i.o = load i32, ptr %1, align 4, !tbaa !14
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit
  %i.q = load i32, ptr %i.a, align 4, !tbaa !14
  %i.r = zext i32 %i.q to i64
  br label %mpb_get_u64.exit

bb.c:                                             ; preds = %mpb_floor_log2.exit
  %i.s = load i64, ptr %i.a, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i29 = phi i64 [ %i.r, %bb.b ], [ %i.s, %bb.c ]
  %i.t = sub nuw nsw i32 -1021, %i.m
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl i64 %.0.i29, %i.u                    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 9007199254740991      ; 2 uses
  %i.x = zext i1 %i.w to i64
  %.023 = lshr i64 %i.v, %i.x
  %i.y = zext i1 %i.w to i32
  %.0 = add nsw i32 %i.l, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %mpb_get_u64.exit
  %.124 = phi i64 [ %.023, %mpb_get_u64.exit ], [ 0, %bb.a ]
  %.1 = phi i32 [ %.0, %mpb_get_u64.exit ], [ 0, %bb.a ]
  store i32 %.1, ptr %0, align 4, !tbaa !14
  ret i64 %.124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mp_div1norm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %mp_shl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %.not18 = icmp eq i32 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = sub nsw i32 32, %5                       ; 3 uses
  %xtraiter = and i64 %i.a, 1
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.a, 4294967294
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.q, %bb.c ] ; 4 uses
  %.01314.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.p, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %i.f = shl i32 %i.e, %5
  %i.g = or i32 %i.f, %.01314.i
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.i
  store i32 %i.g, ptr %i.h, align 4, !tbaa !14
  %i.i = lshr i32 %i.e, %i.b
  %i.j = or disjoint i64 %.015.i, 1               ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  %i.m = shl i32 %i.l, %5
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  store i32 %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = lshr i32 %i.l, %i.b                      ; 3 uses
  %i.q = add nuw nsw i64 %.015.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !26

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %mp_shl.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01314.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %mp_shl.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.i.epil.init
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14   ; 2 uses
  %i.t = shl i32 %i.s, %5
  %i.u = or i32 %i.t, %.01314.i.epil.init
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.i.epil.init
  store i32 %i.u, ptr %i.v, align 4, !tbaa !14
  %i.w = lshr i32 %i.s, %i.b
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.p, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.019 = add i32 %2, -1                          ; 2 uses
  %i.x = icmp sgt i32 %.019, -1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mp_shl.exit
  %i.y = zext i32 %4 to i64
  %i.z = zext i32 %3 to i64
  %i.aa = zext nneg i32 %.019 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.120 = phi i32 [ %.017, %.lr.ph ], [ %i.ba, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.ad = ashr i32 %i.ac, 31                      ; 2 uses
  %i.ae = and i32 %i.ad, %3
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = sub i32 %.120, %i.ad
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.y
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw i64 %i.ai, %i.aj
  %i.al = lshr i64 %i.ak, 32
  %i.am = zext i32 %.120 to i64
  %i.an = trunc nuw i64 %i.al to i32
  %i.ao = add i32 %.120, %i.an                    ; 2 uses
  %i.ap = shl nuw i64 %i.am, 32
  %i.aq = zext i32 %i.ac to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = zext i32 %i.ao to i64
  %.neg.i = xor i64 %i.as, -1
  %.neg24.i = mul i64 %.neg.i, %i.z
  %i.at = add i64 %i.ar, %.neg24.i                ; 2 uses
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = add i32 %i.ao, 1
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = trunc i64 %i.at to i32
  %i.az = and i32 %3, %i.av
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not27 = icmp eq i64 %indvars.iv, 0
  br i1 %.not27, label %._crit_edge, label %bb.d, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.d, %bb.b, %mp_shl.exit
  %.1.lcssa = phi i32 [ %.017, %mp_shl.exit ], [ 0, %bb.b ], [ %i.ba, %bb.d ]
  %i.bc = lshr i32 %.1.lcssa, %5
  ret i32 %i.bc
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !10, !29, !28}
!31 = distinct !{!31, !10, !28, !29}
!32 = distinct !{!32, !10, !29, !28}
!33 = distinct !{!33, !10, !28, !29}
!34 = distinct !{!34, !10, !29, !28}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = !{!"branch_weights", i32 2002, i32 2000}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 omnipotent char", !43, i64 0}
!43 = !{!"any pointer", !6, i64 0}
!44 = distinct !{!44, !10}
end_hunk_1
