Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDsd?download=true
inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@If_CutDsdBalanceEval_rec:bb.a
  br i1 %.not165, label %.critedge4, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not125 = icmp eq ptr %4, null
  %scevgep176 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !55 ; 2 uses
  %.not201 = icmp eq i32 %i.dc, 0
  br i1 %.not201, label %.critedge4.loopexit, label %.lr.ph203

bb.u:                                             ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next179
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !55 ; 2 uses
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %.critedge4.loopexit, label %.lr.ph203, !llvm.loop !319

.lr.ph203:                                        ; preds = %.lr.ph158, %bb.u
  %i.df = phi i32 [ %i.de, %bb.u ], [ %i.dc, %.lr.ph158 ] ; 2 uses
  %indvars.iv178202 = phi i64 [ %indvars.iv.next179, %bb.u ], [ 0, %.lr.ph158 ] ; 2 uses
  %i.dg = ashr i32 %i.df, 1
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv178202 ; 3 uses
  %i.di = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.dg, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.dh, i32 noundef %6, ptr noundef %7, ptr noundef %8) ; 3 uses
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.lr.ph203
  br i1 %.not125, label %.split116, label %.split

.split:                                           ; preds = %bb.v
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !55
  %i.dl = and i32 %i.df, 1
  %i.dm = xor i32 %i.dk, %i.dl                    ; 2 uses
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !55
  %i.dn = call fastcc i32 @If_LogCounterAddAig(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g, i32 noundef %i.di, i32 noundef %i.dm, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %i.cz)
  br label %bb.z

.split116:                                        ; preds = %bb.v
  %i.do = load i32, ptr %i.e, align 4, !tbaa !55  ; 6 uses
  %.pre.i = sext i32 %i.do to i64
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.pre.i
  store i32 %i.di, ptr %i.dq, align 4, !tbaa !55
  %i.dr = icmp sgt i32 %i.do, 0
  br i1 %i.dr, label %.preheader.i.preheader, label %If_LogCounterAddAig.exit

.preheader.i.preheader:                           ; preds = %.split116
  %invariant.op = sub i32 -2, %i.do
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.loopexit.i
  %indvar = phi i32 [ %indvar.next, %.loopexit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.081.i = phi i32 [ %.1.i, %.loopexit.i ], [ %i.dp, %.preheader.i.preheader ] ; 4 uses
  %.07180.i = phi i32 [ %i.dw, %.loopexit.i ], [ %i.do, %.preheader.i.preheader ] ; 3 uses
  %i.ds = zext i32 %.07180.i to i64               ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2                ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.dt
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.dt
  %.reass.reass = add i32 %indvar, %invariant.op
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ds ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !55 ; 3 uses
  %i.dw = add nsw i32 %.07180.i, -1               ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !55 ; 4 uses
  %i.ea = icmp slt i32 %i.dv, %i.dz
  br i1 %i.ea, label %If_LogCounterAddAig.exit, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.eb = icmp sgt i32 %i.dv, %i.dz
  br i1 %i.eb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !55
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !55
  br label %.loopexit.i

bb.y:                                             ; preds = %bb.w
  %i.ec = add nsw i32 %i.dz, 1
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !55
  %i.ed = add nsw i32 %.081.i, -1                 ; 3 uses
  %i.ee = icmp slt i32 %.07180.i, %i.ed
  br i1 %i.ee, label %.lr.ph.split.us.i.preheader, label %.loopexit.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.y
  %i.ef = add i32 %.081.i, %.reass.reass
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep177, i64 %i.ei, i1 false), !tbaa !55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.split.us.i.preheader, %bb.y, %bb.x
  %.1.i = phi i32 [ %i.ed, %bb.y ], [ %.081.i, %bb.x ], [ %i.ed, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %indvar.next = add nuw i32 %indvar, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %i.do
  br i1 %exitcond.not, label %If_LogCounterAddAig.exit, label %.preheader.i, !llvm.loop !11

If_LogCounterAddAig.exit:                         ; preds = %.preheader.i, %.loopexit.i, %.split116
  %.2.i = phi i32 [ %i.dp, %.split116 ], [ %.1.i, %.loopexit.i ], [ %.081.i, %.preheader.i ] ; 2 uses
  store i32 %.2.i, ptr %i.e, align 4, !tbaa !55
  %i.ej = load i32, ptr %i.f, align 16, !tbaa !55
  %i.ek = icmp sgt i32 %.2.i, 1
  %i.el = zext i1 %i.ek to i32
  %i.em = add nsw i32 %i.ej, %i.el
  br label %bb.z

bb.z:                                             ; preds = %If_LogCounterAddAig.exit, %.split
  %phi.call = phi i32 [ %i.dn, %.split ], [ %i.em, %If_LogCounterAddAig.exit ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178202, 1 ; 3 uses
  %.val138 = load i32, ptr %i.l, align 4
  %i.en = lshr i32 %.val138, 27                   ; 3 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = icmp samesign ult i64 %indvars.iv.next179, %i.eo
  br i1 %i.ep, label %bb.u, label %..critedge4.loopexit_crit_edge205, !llvm.loop !319

..critedge4.loopexit_crit_edge205:                ; preds = %bb.z
  br label %.critedge4.loopexit, !llvm.loop !319

.critedge4.loopexit:                              ; preds = %bb.u, %..critedge4.loopexit_crit_edge205, %.lr.ph158
  %.0.lcssa.ph = phi i32 [ %phi.call, %..critedge4.loopexit_crit_edge205 ], [ 0, %.lr.ph158 ], [ %phi.call, %bb.u ]
  %.lcssa.ph = phi i32 [ %i.en, %..critedge4.loopexit_crit_edge205 ], [ %i.da, %.lr.ph158 ], [ %i.en, %bb.u ]
  %i.eq = add nsw i32 %.lcssa.ph, -1
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.t
  %.0.lcssa = phi i32 [ 0, %bb.t ], [ %.0.lcssa.ph, %.critedge4.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ -1, %bb.t ], [ %i.eq, %.critedge4.loopexit ]
  %.not124 = icmp eq ptr %4, null
  br i1 %.not124, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge4
  %i.er = load i32, ptr %i.e, align 4, !tbaa !55  ; 2 uses
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %.lr.ph.i, label %If_LogCreateAndXorMulti.exit

.lr.ph.i:                                         ; preds = %bb.aa
  %i.et = zext nneg i32 %i.er to i64              ; 2 uses
  br i1 %i.cy, label %If_LogCreateAndXor.exit.i, label %If_LogCreateAndXor.exit.us.i

If_LogCreateAndXor.exit.us.i:                     ; preds = %.lr.ph.i, %If_LogCreateAndXor.exit.us.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %If_LogCreateAndXor.exit.us.i ], [ %i.et, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next16.i = add nsw i64 %indvars.iv15.i, -1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next16.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !55
  %i.ew = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv15.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8     ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !55
  %i.ez = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.ev, i32 noundef %i.ey, i32 noundef %6)
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !55
  %i.fa = icmp samesign ugt i64 %indvars.iv15.i, 2
  br i1 %i.fa, label %If_LogCreateAndXor.exit.us.i, label %If_LogCreateAndXorMulti.exit, !llvm.loop !320

If_LogCreateAndXor.exit.i:                        ; preds = %.lr.ph.i, %If_LogCreateAndXor.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %If_LogCreateAndXor.exit.i ], [ %i.et, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !55 ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 -8     ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !55 ; 2 uses
  %i.fg = xor i32 %i.ff, 1
  %i.fh = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.fc, i32 noundef %i.fg, i32 noundef %6)
  %i.fi = xor i32 %i.fc, 1
  %i.fj = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.fi, i32 noundef %i.ff, i32 noundef %6)
  %i.fk = xor i32 %i.fh, 1
  %i.fl = xor i32 %i.fj, 1
  %i.fm = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.fk, i32 noundef %i.fl, i32 noundef %6)
  %i.fn = xor i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fe, align 4, !tbaa !55
  %i.fo = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.fo, label %If_LogCreateAndXor.exit.i, label %If_LogCreateAndXorMulti.exit, !llvm.loop !320

If_LogCreateAndXorMulti.exit:                     ; preds = %If_LogCreateAndXor.exit.us.i, %If_LogCreateAndXor.exit.i, %bb.aa
  %i.fp = load i32, ptr %i.g, align 16, !tbaa !55
  store i32 %i.fp, ptr %5, align 4, !tbaa !55
  br label %.loopexit

bb.ab:                                            ; preds = %.critedge4
  %i.fq = load i32, ptr %7, align 4, !tbaa !55
  %i.fr = add nsw i32 %.lcssa, %i.fq
  store i32 %i.fr, ptr %7, align 4, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph203, %If_LogCreateAndXorMulti.exit, %bb.ab
  %.2 = phi i32 [ %.0.lcssa, %If_LogCreateAndXorMulti.exit ], [ %.0.lcssa, %bb.ab ], [ -1, %.lr.ph203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit145, %.loopexit144, %bb.d
  %.3 = phi i32 [ %i.x, %bb.d ], [ %.0114, %.loopexit144 ], [ %.1115, %.loopexit145 ], [ %.2, %.loopexit ]
  ret i32 %.3
}

declare i32 @If_CutSopBalanceEvalInt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @If_LogCounterAddAig(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, -1) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #26 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !55     ; 5 uses
  %.not = icmp eq ptr %5, null                    ; 3 uses
  %.pre = sext i32 %i.a to i64                    ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre
  store i32 %4, ptr %i.b, align 4, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.c = add nsw i32 %i.a, 1                      ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre
  store i32 %3, ptr %i.d, align 4, !tbaa !55
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.preheader, label %.loopexit78

.preheader:                                       ; preds = %._crit_edge
  %.not.i = icmp eq i32 %7, 0
  %i.f = sub nuw i32 -2, %i.a                     ; 3 uses
  %scevgep3 = getelementptr i8, ptr %0, i64 8
  %scevgep6 = getelementptr i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.loopexit
  %indvar = phi i32 [ 0, %.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %.081 = phi i32 [ %i.c, %.preheader ], [ %.1, %.loopexit ] ; 8 uses
  %.07180 = phi i32 [ %i.a, %.preheader ], [ %i.m, %.loopexit ] ; 6 uses
  %8 = add i32 %i.f, %indvar
  %i.g = zext i32 %.07180 to i64                  ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %0, i64 %i.h
  %i.i = add i32 %i.f, %indvar
  %scevgep5 = getelementptr i8, ptr %2, i64 %i.h
  %9 = add i32 %i.f, %indvar
  %i.j = zext nneg i32 %.07180 to i64             ; 10 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55   ; 3 uses
  %i.m = add nsw i32 %.07180, -1                  ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55   ; 4 uses
  %i.q = icmp slt i32 %i.l, %i.p
  br i1 %i.q, label %.loopexit78, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp sgt i32 %i.l, %i.p
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.k, align 4, !tbaa !55
  store i32 %i.l, ptr %i.o, align 4, !tbaa !55
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !55
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  store i32 %i.v, ptr %i.s, align 4, !tbaa !55
  store i32 %i.t, ptr %i.u, align 4, !tbaa !55
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.p, 1
  store i32 %i.w, ptr %i.o, align 4, !tbaa !55
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.y = load i32, ptr %i.x, align 4, !tbaa !55   ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !55  ; 3 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = xor i32 %i.aa, 1
  %i.ac = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %6)
  %i.ad = xor i32 %i.y, 1
  %i.ae = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.ad, i32 noundef %i.aa, i32 noundef %6)
  %i.af = xor i32 %i.ac, 1
  %i.ag = xor i32 %i.ae, 1
  %i.ah = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %6)
  %i.ai = xor i32 %i.ah, 1
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %6)
  br label %.thread

bb.k:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %.081, -1                   ; 5 uses
  %i.al = icmp slt i32 %.07180, %i.ak
  br i1 %i.al, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %bb.k
  %i.am = add i32 %.081, %9                       ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.am, 7
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.ao, 8589934584              ; 3 uses
  %i.ap = add nuw nsw i64 %n.vec, %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = add nuw i64 %index, %i.j                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !55
  %wide.load2 = load <4 x i32>, ptr %i.at, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !55
  store <4 x i32> %wide.load2, ptr %i.av, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader22

.lr.ph.split.us.preheader22:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv85.ph = phi i64 [ %i.j, %.lr.ph.split.us.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.split.us

.thread:                                          ; preds = %bb.j, %bb.i
  %i.ax = phi i32 [ %i.ai, %bb.i ], [ %i.aj, %bb.j ]
  store i32 %i.ax, ptr %i.z, align 4, !tbaa !55
  %i.ay = add nsw i32 %.081, -1                   ; 5 uses
  %i.az = icmp slt i32 %.07180, %i.ay
  br i1 %i.az, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.ba = add i32 %.081, %8                       ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check9 = icmp ult i32 %i.ba, 7
  br i1 %min.iters.check9, label %.lr.ph.split.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.bd = add i32 %.081, %i.i
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.g, %i.be
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %scevgep4 = getelementptr i8, ptr %scevgep3, i64 %i.bg
  %scevgep7 = getelementptr i8, ptr %scevgep6, i64 %i.bg
  %bound0 = icmp ult ptr %scevgep, %scevgep7
  %bound1 = icmp ult ptr %scevgep5, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader23, label %vector.ph10

vector.ph10:                                      ; preds = %vector.memcheck
  %n.vec11 = and i64 %i.bc, 8589934584            ; 3 uses
  %i.bh = add nuw nsw i64 %n.vec11, %i.j
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph10
  %index13 = phi i64 [ 0, %vector.ph10 ], [ %index.next18, %vector.body12 ] ; 2 uses
  %i.bi = add nuw i64 %index13, %i.j              ; 3 uses
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !55, !alias.scope !328, !noalias !329
  %wide.load15 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !55, !alias.scope !328, !noalias !329
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load14, ptr %i.bm, align 4, !tbaa !55, !alias.scope !328, !noalias !329
  store <4 x i32> %wide.load15, ptr %i.bn, align 4, !tbaa !55, !alias.scope !328, !noalias !329
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load16 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !55, !alias.scope !329
  %wide.load17 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !55, !alias.scope !329
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <4 x i32> %wide.load16, ptr %i.bq, align 4, !tbaa !55, !alias.scope !329
  store <4 x i32> %wide.load17, ptr %i.br, align 4, !tbaa !55, !alias.scope !329
  %index.next18 = add nuw i64 %index13, 8         ; 2 uses
  %i.bs = icmp eq i64 %index.next18, %n.vec11
  br i1 %i.bs, label %middle.block19, label %vector.body12, !llvm.loop !325

middle.block19:                                   ; preds = %vector.body12
  %cmp.n20 = icmp eq i64 %i.bc, %n.vec11
  br i1 %cmp.n20, label %.loopexit, label %.lr.ph.split.preheader23

.lr.ph.split.preheader23:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block19
  %indvars.iv.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.split.preheader ], [ %i.bh, %middle.block19 ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader22, %.lr.ph.split.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph.split.us ], [ %indvars.iv85.ph, %.lr.ph.split.us.preheader22 ] ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next86
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !55
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv85
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !55
  %i.bw = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bx = icmp sgt i32 %i.ak, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !326

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader23, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader23 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !55
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !55
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !55
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !55
  %i.ce = trunc nuw i64 %indvars.iv.next to i32
  %i.cf = icmp sgt i32 %i.ay, %i.ce
  br i1 %i.cf, label %.lr.ph.split, label %.loopexit, !llvm.loop !327

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block19, %middle.block, %.thread, %bb.k, %bb.e, %bb.f
  %.1 = phi i32 [ %.081, %bb.f ], [ %.081, %bb.e ], [ %i.ak, %bb.k ], [ %i.ay, %.thread ], [ %i.ak, %middle.block ], [ %i.ay, %middle.block19 ], [ %i.ak, %.lr.ph.split.us ], [ %i.ay, %.lr.ph.split ] ; 2 uses
  %i.cg = icmp samesign ugt i32 %.07180, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cg, label %bb.c, label %.loopexit78, !llvm.loop !11

.loopexit78:                                      ; preds = %.loopexit, %bb.c, %._crit_edge
  %.2 = phi i32 [ %i.c, %._crit_edge ], [ %.081, %bb.c ], [ %.1, %.loopexit ] ; 2 uses
  store i32 %.2, ptr %1, align 4, !tbaa !55
  %i.ch = load i32, ptr %0, align 4, !tbaa !55
  %i.ci = icmp sgt i32 %.2, 1
  %i.cj = zext i1 %i.ci to i32
  %i.ck = add nsw i32 %i.ch, %i.cj
  ret i32 %i.ck
}

; Function Attrs: nounwind uwtable
define i32 @If_CutDsdBalanceEvalInt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.d = ashr i32 %1, 1                           ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 31
  %i.l = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.b, i32 noundef %i.k, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  %.not = icmp eq ptr %3, null
  %or.cond = or i1 %.not, %i.m
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.b, align 4, !tbaa !55
  %i.o = xor i32 %i.n, %1
  %i.p = and i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 7 uses
  %i.s = load i32, ptr %3, align 8, !tbaa !53
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.r, 16
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.w, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #42
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  store ptr %i.z, ptr %i.v, align 8, !tbaa !54
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i32 %i.r, 1073741823
  %i.ab = shl nuw nsw i32 %i.r, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.r, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ad, null
  %i.ae = zext nneg i32 %spec.select.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #41
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ah = call noalias ptr @malloc(i64 noundef %i.af) #42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %bb.j ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !54
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !53
  %.pre = load i32, ptr %i.q, align 4, !tbaa !52
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.aj = phi i32 [ %i.r, %bb.b ], [ %i.r, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.q, align 4, !tbaa !52
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.p, ptr %i.ao, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit, %bb.a
end_hunk_0
