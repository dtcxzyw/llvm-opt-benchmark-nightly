inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@initialize_LA:bb.a
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph63, %.loopexit
  %indvars.iv74 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next75, %.loopexit ] ; 3 uses
  %.03361 = phi ptr [ %i.bl, %.lr.ph63 ], [ %.2, %.loopexit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv74
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !42
  %.not = icmp eq i8 %i.bp, 0
  br i1 %.not, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv74
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !33 ; 3 uses
  %.not44 = icmp eq ptr %i.br, null
  br i1 %.not44, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !41
  %i.bu = icmp sgt i16 %i.bt, 0
  br i1 %i.bu, label %.lr.ph58, label %.loopexit

.lr.ph58:                                         ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph58, %bb.m
  %indvars.iv71 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next72, %bb.m ] ; 2 uses
  %.157 = phi ptr [ %.03361, %.lr.ph58 ], [ %i.by, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv71
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %.157, i64 2 ; 2 uses
  store i16 %i.bx, ptr %.157, align 2, !tbaa !22
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bz = load i16, ptr %i.bs, align 2, !tbaa !41
  %i.ca = sext i16 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next72, %i.ca
  br i1 %i.cb, label %bb.m, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.k, %bb.l
  %.2 = phi ptr [ %.03361, %bb.k ], [ %.03361, %bb.l ], [ %.03361, %.preheader ], [ %i.by, %bb.m ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge64, label %bb.k, !llvm.loop !51

._crit_edge64:                                    ; preds = %.loopexit, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_goto_map() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nvars, align 4, !tbaa !4
  %i.b = shl i32 %i.a, 1
  %i.c = add i32 %i.b, 2
  %i.d = tail call ptr (i32, ...) @mallocate(i32 noundef %i.c) #9
  %i.e = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  store ptr %i.h, ptr @goto_map, align 8, !tbaa !19
  %i.i = load i32, ptr @nvars, align 4, !tbaa !4
  %i.j = shl i32 %i.i, 1
  %i.k = add i32 %i.j, 2
  %i.l = tail call ptr (i32, ...) @mallocate(i32 noundef %i.k) #9 ; 3 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = load i32, ptr @ntokens, align 4, !tbaa !4 ; 3 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.p ; 15 uses
  store i32 0, ptr @ngotos, align 4, !tbaa !4
  %.051 = load ptr, ptr @first_shift, align 8, !tbaa !26 ; 2 uses
  %.not52 = icmp eq ptr %.051, null
  br i1 %.not52, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a, %._crit_edge
  %i.r = phi i32 [ %i.at, %._crit_edge ], [ %i.n, %bb.a ]
  %i.s = phi i32 [ %i.au, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.053 = phi ptr [ %.0, %._crit_edge ], [ %.051, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.053, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !43   ; 2 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph55
  %i.w = getelementptr inbounds nuw i8, ptr %.053, i64 12
  %i.x = zext nneg i16 %i.u to i64
  %.pre88 = load ptr, ptr @accessing_symbol, align 8, !tbaa !19
  %.pre90 = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.y = phi i32 [ %i.s, %.lr.ph ], [ %i.am, %bb.e ] ; 3 uses
  %i.z = phi i32 [ %.pre90, %.lr.ph ], [ %i.ak, %bb.e ] ; 3 uses
  %i.aa = phi ptr [ %.pre88, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !22
  %i.ad = sext i16 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !22 ; 2 uses
  %i.ag = sext i16 %i.af to i32
  %i.ah = icmp sgt i32 %i.z, %i.ag
  br i1 %i.ah, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp eq i32 %i.y, 32767
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @toomany(ptr noundef nonnull @.str) #9
  %.pre = load ptr, ptr @accessing_symbol, align 8, !tbaa !19
  %.pre89 = load i32, ptr @ntokens, align 4, !tbaa !4
  %.pre91 = load i32, ptr @ngotos, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = phi i32 [ %.pre91, %bb.d ], [ %i.y, %bb.c ]
  %i.ak = phi i32 [ %.pre89, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %.pre, %bb.d ], [ %i.aa, %bb.c ]
  %i.am = add nsw i32 %i.aj, 1                    ; 3 uses
  store i32 %i.am, ptr @ngotos, align 4, !tbaa !4
  %i.an = load ptr, ptr @goto_map, align 8, !tbaa !19
  %i.ao = sext i16 %i.af to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !22
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.ap, align 2, !tbaa !22
  %i.as = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.as, label %bb.b, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.b, %bb.e, %.lr.ph55
  %i.at = phi i32 [ %i.r, %.lr.ph55 ], [ %i.z, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.au = phi i32 [ %i.s, %.lr.ph55 ], [ %i.y, %bb.b ], [ %i.am, %bb.e ] ; 2 uses
  %.0 = load ptr, ptr %.053, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !53

._crit_edge56:                                    ; preds = %._crit_edge, %bb.a
  %i.av = phi i32 [ 0, %bb.a ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.aw = phi i32 [ %i.n, %bb.a ], [ %i.at, %._crit_edge ] ; 3 uses
  %i.ax = load i32, ptr @nsyms, align 4, !tbaa !4 ; 4 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  %.pre92.pre = load ptr, ptr @goto_map, align 8, !tbaa !19 ; 14 uses
  %.pre92.pre108 = ptrtoaddr ptr %.pre92.pre to i64
  br i1 %i.ay, label %.lr.ph60, label %.preheader.._crit_edge63_crit_edge

.lr.ph60:                                         ; preds = %._crit_edge56
  %i.az = sext i32 %i.aw to i64                   ; 5 uses
  %wide.trip.count = sext i32 %i.ax to i64        ; 5 uses
  %i.ba = sub nsw i64 %wide.trip.count, %i.az     ; 2 uses
  %xtraiter = and i64 %i.ba, 3                    ; 3 uses
  %i.bb = sub nsw i64 %i.az, %wide.trip.count
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.ba, -4
  br label %bb.g

.preheader.._crit_edge63_crit_edge:               ; preds = %._crit_edge56
  %.pre93 = sext i32 %i.ax to i64
  br label %._crit_edge63

iter.check.unr-lcssa:                             ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %.lr.ph60
  %indvars.iv77.epil.init = phi i64 [ %i.az, %.lr.ph60 ], [ %indvars.iv.next78.3, %iter.check.unr-lcssa ]
  %.04157.epil.init = phi i16 [ 0, %.lr.ph60 ], [ %i.ct, %iter.check.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv77.epil = phi i64 [ %indvars.iv77.epil.init, %.epil.preheader ], [ %indvars.iv.next78.epil, %bb.f ] ; 3 uses
  %.04157.epil = phi i16 [ %.04157.epil.init, %.epil.preheader ], [ %i.bg, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv77.epil
  store i16 %.04157.epil, ptr %i.bd, align 2, !tbaa !22
  %i.be = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv77.epil
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !22
  %i.bg = add i16 %i.bf, %.04157.epil
  %indvars.iv.next78.epil = add nsw i64 %indvars.iv77.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check, label %bb.f, !llvm.loop !54

iter.check:                                       ; preds = %bb.f, %iter.check.unr-lcssa
  %i.bh = sext i32 %i.aw to i64                   ; 6 uses
  %wide.trip.count83 = sext i32 %i.ax to i64      ; 5 uses
  %i.bi = sub nsw i64 %wide.trip.count, %i.az     ; 7 uses
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bj = shl nsw i64 %i.o, 1
  %i.bk = add i64 %i.bj, %.pre92.pre108
  %i.bl = sub i64 %i.m, %i.bk
  %diff.check = icmp ugt i64 %i.bl, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check109 = icmp ult i64 %i.bi, 16
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bi, 12
  %n.vec = and i64 %i.bi, -16                     ; 4 uses
  %i.bm = add nsw i64 %n.vec, %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = add i64 %index, %i.bh                   ; 2 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <8 x i16>, ptr %i.bo, align 2, !tbaa !22
  %wide.load110 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !22
  %i.bq = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %i.bn ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <8 x i16> %wide.load, ptr %i.bq, align 2, !tbaa !22
  store <8 x i16> %wide.load110, ptr %i.br, align 2, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge63, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec112 = and i64 %i.bi, -4                   ; 3 uses
  %i.bt = add nsw i64 %n.vec112, %i.bh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = add i64 %index113, %i.bh                ; 2 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bu
  %wide.load114 = load <4 x i16>, ptr %i.bv, align 2, !tbaa !22
  %i.bw = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %i.bu
  store <4 x i16> %wide.load114, ptr %i.bw, align 2, !tbaa !22
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next115, %n.vec112
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bi, %n.vec112
  br i1 %cmp.n116, label %._crit_edge63, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv80.ph = phi i64 [ %i.bh, %iter.check ], [ %i.bh, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 4 uses
  %i.by = sub nsw i64 %wide.trip.count, %indvars.iv80.ph
  %xtraiter121 = and i64 %i.by, 3                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv80.prol = phi i64 [ %indvars.iv.next81.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv80.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv80.prol
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !22
  %i.cb = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv80.prol
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !22
  %indvars.iv.next81.prol = add nsw i64 %indvars.iv80.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter121
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !61

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv80.unr = phi i64 [ %indvars.iv80.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next81.prol, %vec.epilog.scalar.ph.prol ]
  %i.cc = sub nsw i64 %indvars.iv80.ph, %wide.trip.count
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %._crit_edge63, label %vec.epilog.scalar.ph

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %indvars.iv77 = phi i64 [ %i.az, %.lr.ph60.new ], [ %indvars.iv.next78.3, %bb.g ] ; 6 uses
  %.04157 = phi i16 [ 0, %.lr.ph60.new ], [ %i.ct, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv77
  store i16 %.04157, ptr %i.ce, align 2, !tbaa !22
  %i.cf = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv77
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !22
  %i.ch = add i16 %i.cg, %.04157                  ; 2 uses
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv.next78
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !22
  %i.cj = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv.next78
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !22
  %i.cl = add i16 %i.ck, %i.ch                    ; 2 uses
  %indvars.iv.next78.1 = add nsw i64 %indvars.iv77, 2 ; 2 uses
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv.next78.1
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !22
  %i.cn = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv.next78.1
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !22
  %i.cp = add i16 %i.co, %i.cl                    ; 2 uses
  %indvars.iv.next78.2 = add nsw i64 %indvars.iv77, 3 ; 2 uses
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv.next78.2
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !22
  %i.cr = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv.next78.2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !22
  %i.ct = add i16 %i.cs, %i.cp                    ; 2 uses
  %indvars.iv.next78.3 = add nsw i64 %indvars.iv77, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iter.check.unr-lcssa, label %bb.g, !llvm.loop !62

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %vec.epilog.scalar.ph ], [ %indvars.iv80.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv80
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !22
  %i.cw = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv80
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !22
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv.next81
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !22
  %i.cz = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv.next81
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !22
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.da = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv.next81.1
  %i.db = load i16, ptr %i.da, align 2, !tbaa !22
  %i.dc = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv.next81.1
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !22
  %indvars.iv.next81.2 = add nsw i64 %indvars.iv80, 3 ; 2 uses
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv.next81.2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !22
  %i.df = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %indvars.iv.next81.2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !22
  %indvars.iv.next81.3 = add nsw i64 %indvars.iv80, 4 ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %indvars.iv.next81.3, %wide.trip.count83
  br i1 %exitcond84.not.3, label %._crit_edge63, label %vec.epilog.scalar.ph, !llvm.loop !63

._crit_edge63:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge63_crit_edge
  %.pre-phi = phi i64 [ %.pre93, %.preheader.._crit_edge63_crit_edge ], [ %wide.trip.count83, %middle.block ], [ %wide.trip.count83, %vec.epilog.middle.block ], [ %wide.trip.count83, %vec.epilog.scalar.ph ], [ %wide.trip.count83, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %i.dg = trunc i32 %i.av to i16                  ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %.pre92.pre, i64 %.pre-phi
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !22
  %i.di = getelementptr inbounds [2 x i8], ptr %i.q, i64 %.pre-phi
  store i16 %i.dg, ptr %i.di, align 2, !tbaa !22
  %i.dj = shl i32 %i.av, 1
  %i.dk = tail call ptr (i32, ...) @mallocate(i32 noundef %i.dj) #9
  store ptr %i.dk, ptr @from_state, align 8, !tbaa !19
  %i.dl = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.dm = shl i32 %i.dl, 1
  %i.dn = tail call ptr (i32, ...) @mallocate(i32 noundef %i.dm) #9 ; 2 uses
  store ptr %i.dn, ptr @to_state, align 8, !tbaa !19
  %.170 = load ptr, ptr @first_shift, align 8, !tbaa !26 ; 2 uses
  %.not4671 = icmp eq ptr %.170, null
  br i1 %.not4671, label %._crit_edge75.thread, label %.lr.ph74

.lr.ph74:                                         ; preds = %._crit_edge63
  %i.do = load ptr, ptr @accessing_symbol, align 8
  %i.dp = load i32, ptr @ntokens, align 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph74, %._crit_edge68
  %.172 = phi ptr [ %.170, %.lr.ph74 ], [ %.1, %._crit_edge68 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.172, i64 8
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %.172, i64 10
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !43 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.172, i64 12
  %i.dv = icmp sgt i16 %i.dt, 0
  br i1 %i.dv, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.h
  %i.dw = load ptr, ptr @from_state, align 8
  %i.dx = zext nneg i16 %i.dt to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph67, %bb.j
  %indvars.iv85 = phi i64 [ %i.dx, %.lr.ph67 ], [ %indvars.iv.next86, %bb.j ] ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.next86
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !22 ; 2 uses
  %i.ea = sext i16 %i.dz to i64
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !22 ; 2 uses
  %i.ed = sext i16 %i.ec to i32
  %i.ee = icmp sgt i32 %i.dp, %i.ed
  br i1 %i.ee, label %._crit_edge68, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ef = sext i16 %i.ec to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.ef ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !22 ; 2 uses
  %i.ei = add i16 %i.eh, 1
  store i16 %i.ei, ptr %i.eg, align 2, !tbaa !22
  %i.ej = sext i16 %i.eh to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.ej
  store i16 %i.dr, ptr %i.ek, align 2, !tbaa !22
  %i.el = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %i.ej
  store i16 %i.dz, ptr %i.el, align 2, !tbaa !22
  %i.em = icmp samesign ugt i64 %indvars.iv85, 1
end_hunk_0
begin_hunk_1_@set_goto_map:bb.a
._crit_edge75.thread:                             ; preds = %._crit_edge63, %._crit_edge75
  %i.en = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.eo
  tail call void @free(ptr noundef %i.ep) #9
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge75.thread, %._crit_edge75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_F() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.b = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.c = shl i32 %i.a, 2
  %i.d = mul i32 %i.c, %i.b
  %i.e = tail call ptr (i32, ...) @mallocate(i32 noundef %i.d) #9
  store ptr %i.e, ptr @F, align 8, !tbaa !46
  %i.f = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.g = shl i32 %i.f, 3
  %i.h = tail call ptr (i32, ...) @mallocate(i32 noundef %i.g) #9 ; 6 uses
  %i.i = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.j = shl i32 %i.i, 1
  %i.k = add i32 %i.j, 2
  %i.l = tail call ptr (i32, ...) @mallocate(i32 noundef %i.k) #9 ; 11 uses
  %i.m = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.a
  %i.o = ptrtoaddr ptr %i.l to i64
  %i.p = load ptr, ptr @F, align 8, !tbaa !46
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %._crit_edge80.thread
  %indvars.iv107 = phi i64 [ 0, %.lr.ph90.preheader ], [ %indvars.iv.next108, %._crit_edge80.thread ] ; 3 uses
  %.05786 = phi ptr [ %i.p, %.lr.ph90.preheader ], [ %i.dq, %._crit_edge80.thread ] ; 2 uses
  %i.q = load ptr, ptr @to_state, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv107
  %i.s = load i16, ptr %i.r, align 2, !tbaa !22   ; 3 uses
  %i.t = load ptr, ptr @shift_table, align 8, !tbaa !24
  %i.u = sext i16 %i.s to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26   ; 4 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge80.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph90
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !43   ; 2 uses
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = icmp sgt i16 %i.y, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ab = load ptr, ptr @accessing_symbol, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !22
  %i.af = sext i16 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !22
  %i.ai = sext i16 %i.ah to i32                   ; 3 uses
  %i.aj = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not66 = icmp sgt i32 %i.aj, %i.ai
  br i1 %.not66, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ak = and i32 %i.ai, 31
  %i.al = shl nuw i32 1, %i.ak
  %i.am = ashr i32 %i.ai, 5
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.05786, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = or i32 %i.ap, %i.al
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge80.thread, label %bb.c, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.052.lcssa = phi i32 [ 0, %bb.b ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  %i.as = icmp slt i32 %.052.lcssa, %i.z
  br i1 %i.as, label %.lr.ph79, label %._crit_edge80.thread

.lr.ph79:                                         ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.au = zext i32 %.052.lcssa to i64
  %.pre115 = load ptr, ptr @accessing_symbol, align 8, !tbaa !19
  %.pre117 = load ptr, ptr @nullable, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph79, %bb.i
  %i.av = phi ptr [ %.pre117, %.lr.ph79 ], [ %i.cc, %bb.i ] ; 3 uses
  %i.aw = phi ptr [ %.pre115, %.lr.ph79 ], [ %i.cd, %bb.i ] ; 3 uses
  %indvars.iv99 = phi i64 [ %i.au, %.lr.ph79 ], [ %indvars.iv.next100, %bb.i ] ; 2 uses
  %.15576 = phi i32 [ 0, %.lr.ph79 ], [ %.256, %bb.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv99
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !22
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !22
  %i.bc = sext i16 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.av, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !42
  %.not68 = icmp eq i8 %i.be, 0
  br i1 %.not68, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr @goto_map, align 8, !tbaa !19
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !22 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !22 ; 2 uses
  %.not20.i = icmp sgt i16 %i.bh, %i.bj
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sext i16 %i.bh to i32
  %i.bm = load ptr, ptr @from_state, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %.01522.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01621.i = phi i32 [ %i.bl, %.lr.ph.i ], [ %.117.i, %bb.h ] ; 2 uses
  %i.bn = add nsw i32 %.01621.i, %.01522.i
  %i.bo = sdiv i32 %i.bn, 2                       ; 4 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !22 ; 2 uses
  %i.bs = icmp eq i16 %i.s, %i.br
  br i1 %i.bs, label %map_goto.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = icmp sgt i16 %i.s, %i.br                ; 2 uses
  %i.bu = add nsw i32 %i.bo, 1
  %i.bv = add nsw i32 %i.bo, -1
  %.117.i = select i1 %i.bt, i32 %i.bu, i32 %.01621.i ; 2 uses
  %.1.i = select i1 %i.bt, i32 %.01522.i, i32 %i.bv ; 2 uses
  %.not.i = icmp sgt i32 %.117.i, %.1.i
  br i1 %.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !67

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  tail call void @berror(ptr noundef nonnull @.str.1) #9
  %.pre = load ptr, ptr @accessing_symbol, align 8, !tbaa !19
  %.pre116 = load ptr, ptr @nullable, align 8, !tbaa !39
  br label %map_goto.exit

map_goto.exit.loopexit:                           ; preds = %bb.g
  %i.bw = trunc i32 %i.bo to i16
  br label %map_goto.exit

map_goto.exit:                                    ; preds = %map_goto.exit.loopexit, %._crit_edge.i
  %i.bx = phi ptr [ %.pre116, %._crit_edge.i ], [ %i.av, %map_goto.exit.loopexit ]
  %i.by = phi ptr [ %.pre, %._crit_edge.i ], [ %i.aw, %map_goto.exit.loopexit ]
  %.0.i = phi i16 [ undef, %._crit_edge.i ], [ %i.bw, %map_goto.exit.loopexit ]
  %i.bz = add nsw i32 %.15576, 1
  %i.ca = sext i32 %.15576 to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.ca
  store i16 %.0.i, ptr %i.cb, align 2, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %map_goto.exit
  %i.cc = phi ptr [ %i.bx, %map_goto.exit ], [ %i.av, %bb.e ]
  %i.cd = phi ptr [ %i.by, %map_goto.exit ], [ %i.aw, %bb.e ]
  %.256 = phi i32 [ %i.bz, %map_goto.exit ], [ %.15576, %bb.e ] ; 8 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next100 to i32
  %i.cf = icmp slt i32 %i.ce, %i.z
  br i1 %i.cf, label %bb.e, label %._crit_edge80, !llvm.loop !68

._crit_edge80:                                    ; preds = %bb.i
  %.not67 = icmp eq i32 %.256, 0
  br i1 %.not67, label %._crit_edge80.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge80
  %i.cg = shl i32 %.256, 1
  %i.ch = add i32 %i.cg, 2
  %i.ci = tail call ptr (i32, ...) @mallocate(i32 noundef %i.ch) #9 ; 10 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !19
  %i.ck = icmp sgt i32 %.256, 0
  br i1 %i.ck, label %iter.check, label %._crit_edge85

iter.check:                                       ; preds = %bb.j
  %i.cl = ptrtoaddr ptr %i.ci to i64
  %wide.trip.count105 = zext nneg i32 %.256 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.256, 4
  %i.cm = sub i64 %i.o, %i.cl
  %diff.check = icmp ugt i64 %i.cm, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph84.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check141 = icmp ult i32 %.256, 16
  br i1 %min.iters.check141, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count105, 12
  %n.vec = and i64 %wide.trip.count105, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <8 x i16>, ptr %i.cn, align 2, !tbaa !22
  %wide.load142 = load <8 x i16>, ptr %i.co, align 2, !tbaa !22
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <8 x i16> %wide.load, ptr %i.cp, align 2, !tbaa !22
  store <8 x i16> %wide.load142, ptr %i.cq, align 2, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count105
  br i1 %cmp.n, label %._crit_edge85, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec144 = and i64 %wide.trip.count105, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index145
  %wide.load146 = load <4 x i16>, ptr %i.cs, align 2, !tbaa !22
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %index145
  store <4 x i16> %wide.load146, ptr %i.ct, align 2, !tbaa !22
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next147, %n.vec144
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %n.vec144, %wide.trip.count105
  br i1 %cmp.n148, label %._crit_edge85, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv102.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec144, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count105, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol

.lr.ph84.prol:                                    ; preds = %.lr.ph84.preheader, %.lr.ph84.prol
  %indvars.iv102.prol = phi i64 [ %indvars.iv.next103.prol, %.lr.ph84.prol ], [ %indvars.iv102.ph, %.lr.ph84.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph84.prol ], [ 0, %.lr.ph84.preheader ]
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv102.prol
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !22
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv102.prol
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !22
  %indvars.iv.next103.prol = add nuw nsw i64 %indvars.iv102.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol, !llvm.loop !71

.lr.ph84.prol.loopexit:                           ; preds = %.lr.ph84.prol, %.lr.ph84.preheader
  %indvars.iv102.unr = phi i64 [ %indvars.iv102.ph, %.lr.ph84.preheader ], [ %indvars.iv.next103.prol, %.lr.ph84.prol ]
  %i.cy = sub nsw i64 %indvars.iv102.ph, %wide.trip.count105
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.3, %.lr.ph84 ], [ %indvars.iv102.unr, %.lr.ph84.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv102
  %i.db = load i16, ptr %i.da, align 2, !tbaa !22
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv102
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !22
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next103
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !22
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next103
  store i16 %i.de, ptr %i.df, align 2, !tbaa !22
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next103.1
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !22
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next103.1
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !22
  %indvars.iv.next103.2 = add nuw nsw i64 %indvars.iv102, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next103.2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !22
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next103.2
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !22
  %indvars.iv.next103.3 = add nuw nsw i64 %indvars.iv102, 4 ; 2 uses
  %exitcond106.not.3 = icmp eq i64 %indvars.iv.next103.3, %wide.trip.count105
  br i1 %exitcond106.not.3, label %._crit_edge85, label %.lr.ph84, !llvm.loop !72

._crit_edge85:                                    ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84, %middle.block, %vec.epilog.middle.block, %bb.j
  %i.dm = sext i32 %.256 to i64
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.dm
  store i16 -1, ptr %i.dn, align 2, !tbaa !22
  br label %._crit_edge80.thread

._crit_edge80.thread:                             ; preds = %bb.d, %._crit_edge, %._crit_edge80, %._crit_edge85, %.lr.ph90
  %i.do = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.05786, i64 %i.dp
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.dr = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next108, %i.ds
  br i1 %i.dt, label %.lr.ph90, label %._crit_edge91, !llvm.loop !73

._crit_edge91:                                    ; preds = %._crit_edge80.thread, %bb.a
  %.lcssa72 = phi i32 [ %i.m, %bb.a ], [ %i.dr, %._crit_edge80.thread ] ; 2 uses
  %i.du = add nsw i32 %.lcssa72, 2
  store i32 %i.du, ptr @infinity, align 4, !tbaa !4
  %i.dv = shl i32 %.lcssa72, 1
  %i.dw = add i32 %i.dv, 2
  %i.dx = tail call ptr (i32, ...) @mallocate(i32 noundef %i.dw) #9
  store ptr %i.dx, ptr @INDEX, align 8, !tbaa !19
  %i.dy = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.dz = shl i32 %i.dy, 1
  %i.ea = add i32 %i.dz, 2
  %i.eb = tail call ptr (i32, ...) @mallocate(i32 noundef %i.ea) #9 ; 3 uses
  store ptr %i.eb, ptr @VERTICES, align 8, !tbaa !19
  store i32 0, ptr @top, align 4, !tbaa !4
  store ptr %i.h, ptr @R, align 8, !tbaa !74
  %i.ec = load i32, ptr @ngotos, align 4, !tbaa !4 ; 4 uses
  %i.ed = icmp sgt i32 %i.ec, 0                   ; 2 uses
  %.pre.pre.i = load ptr, ptr @INDEX, align 8, !tbaa !19 ; 4 uses
  br i1 %i.ed, label %.lr.ph14.i, label %._crit_edge.i69

.lr.ph14.i:                                       ; preds = %._crit_edge91
  %i.ee = shl nuw i32 %i.ec, 1
  %i.ef = zext i32 %i.ee to i64
  tail call void @llvm.memset.p0.i64(ptr align 2 %.pre.pre.i, i8 0, i64 %i.ef, i1 false), !tbaa !22
  %wide.trip.count.i = zext nneg i32 %i.ec to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !22
  %i.ei = icmp eq i16 %i.eh, 0
  br i1 %i.ei, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !19
  %.not11.i = icmp eq ptr %i.ek, null
  br i1 %.not11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @traverse(i32 noundef %i.el)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.k, !llvm.loop !76

._crit_edge.i69:                                  ; preds = %._crit_edge91
  %.not.i70 = icmp eq ptr %.pre.pre.i, null
  br i1 %.not.i70, label %bb.o, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.n, %._crit_edge.i69
  tail call void @free(ptr noundef nonnull %.pre.pre.i) #9
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i69
  %.not10.i = icmp eq ptr %i.eb, null
  br i1 %.not10.i, label %digraph.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.eb) #9
  br label %digraph.exit

digraph.exit:                                     ; preds = %bb.o, %bb.p
  br i1 %i.ed, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %digraph.exit
  %wide.trip.count113 = zext nneg i32 %i.ec to i64
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %bb.r
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next111, %bb.r ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv110
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !19 ; 2 uses
  %.not64 = icmp eq ptr %i.en, null
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph94
  tail call void @free(ptr noundef nonnull %i.en) #9
end_hunk_1
begin_hunk_2_@build_relations:bb.a
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !22
  %i.bg = icmp ne i16 %i.bf, %i.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.ba
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bi = sext i16 %i.bc to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.275 = phi i32 [ %.073104, %bb.c ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bj = trunc nsw i32 %.275 to i16
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv141
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %.066106, i64 2 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !22 ; 2 uses
  %i.bn = icmp sgt i16 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %._crit_edge109.loopexit, !llvm.loop !79

._crit_edge109.loopexit:                          ; preds = %._crit_edge
  %i.bo = trunc nuw nsw i64 %indvars.iv141 to i32
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.b
  %.073.lcssa = phi i32 [ %i.r, %bb.b ], [ %.275, %._crit_edge109.loopexit ]
  %.068.lcssa = phi i32 [ 0, %bb.b ], [ %i.bo, %._crit_edge109.loopexit ]
  %.066.lcssa = phi ptr [ %i.an, %bb.b ], [ %i.bl, %._crit_edge109.loopexit ]
  %i.bp = load ptr, ptr @consistent, align 8, !tbaa !39
  %i.bq = sext i32 %.073.lcssa to i64             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !42
  %.not90 = icmp eq i8 %i.bs, 0
  br i1 %.not90, label %bb.d, label %.preheader

bb.d:                                             ; preds = %._crit_edge109
  %i.bt = load i16, ptr %.065117, align 2, !tbaa !22
  %i.bu = load ptr, ptr @lookaheads, align 8, !tbaa !19
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.bq ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !22 ; 2 uses
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !22 ; 2 uses
  %i.ca = sext i16 %i.bz to i32
  %i.cb = icmp slt i16 %i.bw, %i.bz
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.cc = load ptr, ptr @LAruleno, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.017.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %i.cd = sext i32 %.017.i to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !22
  %i.cg = icmp ne i16 %i.bt, %i.cf                ; 3 uses
  %i.ch = zext i1 %i.cg to i32
  %.1.i = add nsw i32 %.017.i, %i.ch              ; 4 uses
  %i.ci = icmp slt i32 %.1.i, %i.ca
  %i.cj = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %i.cj, label %bb.e, label %._crit_edge.i, !llvm.loop !80

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.cg, label %._crit_edge.thread.i, label %add_lookback_edge.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.0.lcssa23.i = phi i32 [ %.1.i, %._crit_edge.i ], [ %i.bx, %bb.d ]
  tail call void @berror(ptr noundef nonnull @.str.2) #9
  br label %add_lookback_edge.exit

add_lookback_edge.exit:                           ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0.lcssa22.i = phi i32 [ %.0.lcssa23.i, %._crit_edge.thread.i ], [ %.1.i, %._crit_edge.i ]
  %i.ck = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #9 ; 3 uses
  %i.cl = load ptr, ptr @lookback, align 8, !tbaa !48
  %i.cm = sext i32 %.0.lcssa22.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !81
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i16 %i.af, ptr %i.cp, align 8, !tbaa !85
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !81
  %.pre154.pre = load ptr, ptr @ritem, align 8, !tbaa !19
  br label %.preheader

.preheader:                                       ; preds = %add_lookback_edge.exit, %._crit_edge109
  %.ph = phi ptr [ %.pre154158, %._crit_edge109 ], [ %.pre154.pre, %add_lookback_edge.exit ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.k
  %.pre154160 = phi ptr [ %.pre154157, %bb.k ], [ %.ph, %.preheader ] ; 3 uses
  %i.cq = phi ptr [ %i.ds, %bb.k ], [ %.ph, %.preheader ] ; 4 uses
  %.167115 = phi ptr [ %i.cr, %bb.k ], [ %.066.lcssa, %.preheader ]
  %.169114 = phi i32 [ %i.cv, %bb.k ], [ %.068.lcssa, %.preheader ]
  %.171113 = phi i32 [ %i.dt, %bb.k ], [ %.070116, %.preheader ] ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %.167115, i64 -2 ; 4 uses
  %.not92 = icmp ult ptr %i.cr, %i.cq
  br i1 %.not92, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !22 ; 2 uses
  %i.ct = sext i16 %i.cs to i32
  %i.cu = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not93 = icmp sgt i32 %i.cu, %i.ct
  br i1 %.not93, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = add nsw i32 %.169114, -1                ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !22 ; 2 uses
  %i.cz = load ptr, ptr @goto_map, align 8, !tbaa !19
  %i.da = sext i16 %i.cs to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !22 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !22 ; 2 uses
  %.not20.i = icmp sgt i16 %i.dc, %i.de
  br i1 %.not20.i, label %._crit_edge.i97, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.h
  %i.df = sext i16 %i.de to i32
  %i.dg = sext i16 %i.dc to i32
  %i.dh = load ptr, ptr @from_state, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i95
  %.01522.i = phi i32 [ %i.df, %.lr.ph.i95 ], [ %.1.i96, %bb.j ] ; 2 uses
  %.01621.i = phi i32 [ %i.dg, %.lr.ph.i95 ], [ %.117.i, %bb.j ] ; 2 uses
  %i.di = add nsw i32 %.01621.i, %.01522.i
  %i.dj = sdiv i32 %i.di, 2                       ; 4 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !22 ; 2 uses
  %i.dn = icmp eq i16 %i.cy, %i.dm
  br i1 %i.dn, label %map_goto.exit.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = icmp sgt i16 %i.cy, %i.dm               ; 2 uses
  %i.dp = add nsw i32 %i.dj, 1
  %i.dq = add nsw i32 %i.dj, -1
  %.117.i = select i1 %i.do, i32 %i.dp, i32 %.01621.i ; 2 uses
  %.1.i96 = select i1 %i.do, i32 %.01522.i, i32 %i.dq ; 2 uses
  %.not.i = icmp sgt i32 %.117.i, %.1.i96
  br i1 %.not.i, label %._crit_edge.i97, label %bb.i, !llvm.loop !67

._crit_edge.i97:                                  ; preds = %bb.j, %bb.h
  tail call void @berror(ptr noundef nonnull @.str.1) #9
  %.pre = load ptr, ptr @ritem, align 8, !tbaa !19 ; 2 uses
  br label %bb.k

map_goto.exit.loopexit:                           ; preds = %bb.i
  %i.dr = trunc i32 %i.dj to i16
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i97, %map_goto.exit.loopexit
  %.pre154157 = phi ptr [ %.pre, %._crit_edge.i97 ], [ %.pre154160, %map_goto.exit.loopexit ] ; 2 uses
  %i.ds = phi ptr [ %.pre, %._crit_edge.i97 ], [ %i.cq, %map_goto.exit.loopexit ] ; 2 uses
  %.0.i = phi i16 [ undef, %._crit_edge.i97 ], [ %i.dr, %map_goto.exit.loopexit ]
  %i.dt = add nsw i32 %.171113, 1                 ; 2 uses
  %i.du = sext i32 %.171113 to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.du
  store i16 %.0.i, ptr %i.dv, align 2, !tbaa !22
  %i.dw = load ptr, ptr @nullable, align 8, !tbaa !39
  %i.dx = load i16, ptr %i.cr, align 2, !tbaa !22
  %i.dy = sext i16 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !42
  %.not94.not = icmp eq i8 %i.ea, 0
  br i1 %.not94.not, label %.thread, label %bb.f, !llvm.loop !86

.thread:                                          ; preds = %bb.g, %bb.f, %bb.k
  %.272179 = phi i32 [ %i.dt, %bb.k ], [ %.171113, %bb.f ], [ %.171113, %bb.g ] ; 8 uses
  %i.eb = phi ptr [ %i.ds, %bb.k ], [ %i.cq, %bb.f ], [ %i.cq, %bb.g ]
  %.pre154159178 = phi ptr [ %.pre154157, %bb.k ], [ %.pre154160, %bb.f ], [ %.pre154160, %bb.g ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.065117, i64 2 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !22
  %i.ee = icmp sgt i16 %i.ed, 0
  br i1 %i.ee, label %bb.b, label %._crit_edge120, !llvm.loop !87

._crit_edge120:                                   ; preds = %.thread
  %.not89 = icmp eq i32 %.272179, 0
  br i1 %.not89, label %._crit_edge120.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge120
  %i.ef = shl i32 %.272179, 1
  %i.eg = add i32 %i.ef, 2
  %i.eh = tail call ptr (i32, ...) @mallocate(i32 noundef %i.eg) #9 ; 10 uses
  %i.ei = load ptr, ptr @includes, align 8, !tbaa !74
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv146
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !19
  %i.ek = icmp sgt i32 %.272179, 0
  br i1 %i.ek, label %iter.check, label %._crit_edge125

iter.check:                                       ; preds = %bb.l
  %i.el = ptrtoaddr ptr %i.eh to i64
  %wide.trip.count = zext nneg i32 %.272179 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.272179, 4
  %i.em = sub i64 %i.n, %i.el
  %diff.check = icmp ugt i64 %i.em, -32
  %or.cond201 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond201, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check193 = icmp ult i32 %.272179, 16
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <8 x i16>, ptr %i.en, align 2, !tbaa !22
  %wide.load194 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !22
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <8 x i16> %wide.load, ptr %i.ep, align 2, !tbaa !22
  store <8 x i16> %wide.load194, ptr %i.eq, align 2, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge125, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec196 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ] ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index197
  %wide.load198 = load <4 x i16>, ptr %i.es, align 2, !tbaa !22
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %index197
  store <4 x i16> %wide.load198, ptr %i.et, align 2, !tbaa !22
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next199, %n.vec196
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n200 = icmp eq i64 %n.vec196, %wide.trip.count
  br i1 %cmp.n200, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv143.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec196, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader, %.lr.ph124.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph124.prol ], [ %indvars.iv143.ph, %.lr.ph124.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv143.prol
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !22
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv143.prol
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !22
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !90

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %.lr.ph124.preheader ], [ %indvars.iv.next144.prol, %.lr.ph124.prol ]
  %i.ey = sub nsw i64 %indvars.iv143.ph, %wide.trip.count
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph124 ], [ %indvars.iv143.unr, %.lr.ph124.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv143
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !22
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv143
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !22
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next144
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !22
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv.next144
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !22
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next144.1
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !22
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv.next144.1
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !22
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next144.2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !22
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv.next144.2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !22
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge125, label %.lr.ph124, !llvm.loop !91

._crit_edge125:                                   ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block, %vec.epilog.middle.block, %bb.l
  %i.fm = sext i32 %.272179 to i64
  %i.fn = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.fm
  store i16 -1, ptr %i.fn, align 2, !tbaa !22
  br label %._crit_edge120.thread

._crit_edge120.thread:                            ; preds = %.lr.ph128, %._crit_edge120, %._crit_edge125
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.fo = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next147, %i.fp
  br i1 %i.fq, label %.lr.ph128, label %._crit_edge129, !llvm.loop !92

._crit_edge129:                                   ; preds = %._crit_edge120.thread, %bb.a
  %.lcssa100 = phi i32 [ %i.l, %bb.a ], [ %i.fo, %._crit_edge120.thread ]
  %i.fr = load ptr, ptr @includes, align 8, !tbaa !74
  %i.fs = tail call ptr @transpose(ptr noundef %i.fr, i32 noundef %.lcssa100)
  %i.ft = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  %.pre155 = load ptr, ptr @includes, align 8, !tbaa !74 ; 3 uses
  br i1 %i.fu, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %._crit_edge129
  %wide.trip.count152 = zext nneg i32 %i.ft to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph133, %bb.o
  %indvars.iv149 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next150, %bb.o ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.pre155, i64 %indvars.iv149
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !19 ; 2 uses
  %.not88 = icmp eq ptr %i.fw, null
  br i1 %.not88, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.fw) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %._crit_edge134.thread, label %bb.m, !llvm.loop !93

._crit_edge134:                                   ; preds = %._crit_edge129
  %.not = icmp eq ptr %.pre155, null
  br i1 %.not, label %bb.p, label %._crit_edge134.thread

._crit_edge134.thread:                            ; preds = %bb.o, %._crit_edge134
  tail call void @free(ptr noundef nonnull %.pre155) #9
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge134.thread, %._crit_edge134
  store ptr %i.fs, ptr @includes, align 8, !tbaa !74
  %.not86 = icmp eq ptr %i.g, null
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not87 = icmp eq ptr %i.k, null
  br i1 %.not87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.k) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @compute_FOLLOWS() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @includes, align 8, !tbaa !74 ; 2 uses
  %i.b = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.c = add nsw i32 %i.b, 2
  store i32 %i.c, ptr @infinity, align 4, !tbaa !4
  %i.d = shl i32 %i.b, 1
  %i.e = add i32 %i.d, 2
  %i.f = tail call ptr (i32, ...) @mallocate(i32 noundef %i.e) #9
  store ptr %i.f, ptr @INDEX, align 8, !tbaa !19
  %i.g = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.h = shl i32 %i.g, 1
  %i.i = add i32 %i.h, 2
  %i.j = tail call ptr (i32, ...) @mallocate(i32 noundef %i.i) #9 ; 3 uses
  store ptr %i.j, ptr @VERTICES, align 8, !tbaa !19
  store i32 0, ptr @top, align 4, !tbaa !4
  store ptr %i.a, ptr @R, align 8, !tbaa !74
  %i.k = load i32, ptr @ngotos, align 4, !tbaa !4 ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  %.pre.pre.i = load ptr, ptr @INDEX, align 8, !tbaa !19 ; 4 uses
  br i1 %i.l, label %.lr.ph14.i, label %._crit_edge.i

.lr.ph14.i:                                       ; preds = %bb.a
  %i.m = shl nuw i32 %i.k, 1
  %i.n = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 2 %.pre.pre.i, i8 0, i64 %i.n, i1 false), !tbaa !22
end_hunk_2
begin_hunk_3_@traverse:bb.a
  %i.am = add i64 %.idx, %i.l
  %i.an = shl nsw i64 %i.o, 2                     ; 3 uses
  %i.ao = add i64 %i.am, %i.an
  %i.ap = add i64 %i.an, %i.l
  %i.aq = add i64 %i.ap, 4
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.aq)
  %i.ar = xor i64 %i.l, -1
  %i.as = add i64 %umax76, %i.ar
  %i.at = sub i64 %i.as, %i.an                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.p, i64 %i.aw
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %..loopexit36_crit_edge.us
  %i.ay = phi i16 [ %i.bi, %..loopexit36_crit_edge.us ], [ %i.g, %.lr.ph41.split.us.preheader ]
  %i.az = phi i32 [ %i.cd, %..loopexit36_crit_edge.us ], [ %i.x, %.lr.ph41.split.us.preheader ] ; 3 uses
  %i.ba = phi ptr [ %i.cb, %..loopexit36_crit_edge.us ], [ %i.y, %.lr.ph41.split.us.preheader ] ; 2 uses
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bb ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !22 ; 2 uses
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41.split.us
  tail call void @traverse(i32 noundef %i.az)
  %.pre56 = load i16, ptr %i.j, align 2, !tbaa !22
  %.pre57 = load i16, ptr %i.bc, align 2, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph41.split.us
  %i.bf = phi i16 [ %.pre57, %bb.b ], [ %i.bd, %.lr.ph41.split.us ] ; 3 uses
  %i.bg = phi i16 [ %.pre56, %bb.b ], [ %i.ay, %.lr.ph41.split.us ] ; 2 uses
  %i.bh = icmp sgt i16 %i.bg, %i.bf
  br i1 %i.bh, label %bb.d, label %.lr.ph.us

bb.d:                                             ; preds = %bb.c
  store i16 %i.bf, ptr %i.j, align 2, !tbaa !22
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %bb.c
  %i.bi = phi i16 [ %i.bf, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bj = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, %i.az
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.k, i64 %i.bl ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.bn = shl nsw i64 %i.bl, 2
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.bn
  %bound0 = icmp ult ptr %i.p, %scevgep75
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.bp ; 3 uses
  %next.gep77 = getelementptr i8, ptr %i.bm, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep77, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep77, align 4, !tbaa !4, !alias.scope !111
  %wide.load78 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !4, !alias.scope !111
  %i.br = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load79 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %wide.load80 = load <4 x i32>, ptr %i.br, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %i.bs = or <4 x i32> %wide.load79, %wide.load
  %i.bt = or <4 x i32> %wide.load80, %wide.load78
  store <4 x i32> %i.bs, ptr %next.gep, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit36_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %.040.us.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.us ], [ %i.ax, %middle.block ]
  %.02939.us.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.us ], [ %i.bo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.040.us = phi ptr [ %i.bx, %scalar.ph ], [ %.040.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.02939.us = phi ptr [ %i.bv, %scalar.ph ], [ %.02939.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02939.us, i64 4
  %i.bw = load i32, ptr %.02939.us, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.040.us, i64 4 ; 2 uses
  %i.by = load i32, ptr %.040.us, align 4, !tbaa !4
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %.040.us, align 4, !tbaa !4
  %i.ca = icmp ult ptr %i.bx, %i.r
  br i1 %i.ca, label %scalar.ph, label %..loopexit36_crit_edge.us, !llvm.loop !117

..loopexit36_crit_edge.us:                        ; preds = %scalar.ph, %middle.block
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.cc = load i16, ptr %i.ba, align 2, !tbaa !22 ; 2 uses
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = icmp sgt i16 %i.cc, -1
  br i1 %i.ce, label %.lr.ph41.split.us, label %.loopexit38, !llvm.loop !118

.lr.ph41.split:                                   ; preds = %.lr.ph41, %.loopexit36
  %i.cf = phi i16 [ %i.cp, %.loopexit36 ], [ %i.g, %.lr.ph41 ]
  %i.cg = phi i32 [ %i.cs, %.loopexit36 ], [ %i.x, %.lr.ph41 ] ; 2 uses
  %i.ch = phi ptr [ %i.cq, %.loopexit36 ], [ %i.y, %.lr.ph41 ] ; 2 uses
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !22 ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph41.split
  tail call void @traverse(i32 noundef %i.cg)
  %.pre = load i16, ptr %i.j, align 2, !tbaa !22
  %.pre55 = load i16, ptr %i.cj, align 2, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph41.split
  %i.cm = phi i16 [ %.pre55, %bb.e ], [ %i.ck, %.lr.ph41.split ] ; 3 uses
  %i.cn = phi i16 [ %.pre, %bb.e ], [ %i.cf, %.lr.ph41.split ] ; 2 uses
  %i.co = icmp sgt i16 %i.cn, %i.cm
  br i1 %i.co, label %bb.g, label %.loopexit36

bb.g:                                             ; preds = %bb.f
  store i16 %i.cm, ptr %i.j, align 2, !tbaa !22
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.g, %bb.f
  %i.cp = phi i16 [ %i.cm, %bb.g ], [ %i.cn, %bb.f ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cr = load i16, ptr %i.ch, align 2, !tbaa !22 ; 2 uses
  %i.cs = zext nneg i16 %i.cr to i32
  %i.ct = icmp sgt i16 %i.cr, -1
  br i1 %i.ct, label %.lr.ph41.split, label %.loopexit38, !llvm.loop !118

.loopexit38:                                      ; preds = %.loopexit36, %..loopexit36_crit_edge.us, %.preheader37, %bb.a
  %i.cu = phi i16 [ %i.bi, %..loopexit36_crit_edge.us ], [ %i.g, %bb.a ], [ %i.g, %.preheader37 ], [ %i.cp, %.loopexit36 ]
  %i.cv = sext i16 %i.cu to i32
  %i.cw = icmp eq i32 %i.d, %i.cv
  br i1 %i.cw, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.loopexit38
  %i.cx = load i32, ptr @infinity, align 4, !tbaa !4
  %i.cy = trunc i32 %i.cx to i16                  ; 3 uses
  %top.promoted = load i32, ptr @top, align 4, !tbaa !4 ; 2 uses
  %i.cz = add i32 %top.promoted, -1               ; 2 uses
  %i.da = sext i32 %top.promoted to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !22 ; 2 uses
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %i.de = sext i16 %i.dc to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.de
  store i16 %i.cy, ptr %i.df, align 2, !tbaa !22
  %i.dg = icmp eq i32 %0, %i.dd
  br i1 %i.dg, label %.loopexit35, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader
  %i.dh = icmp sgt i32 %.fr46, 0
  %i.di = sext i32 %i.cz to i64                   ; 2 uses
  br i1 %i.dh, label %.lr.ph.us45.preheader, label %.loopexit

.lr.ph.us45.preheader:                            ; preds = %.lr.ph44
  %i.dj = add i64 %.idx, %i.l
  %i.dk = shl nsw i64 %i.o, 2                     ; 3 uses
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = add i64 %i.dk, %i.l
  %i.dn = add i64 %i.dm, 4
  %umax83 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dn)
  %i.do = xor i64 %i.l, -1
  %i.dp = add i64 %umax83, %i.do
  %i.dq = sub i64 %i.dp, %i.dk                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.dq, 28
  %n.vec88 = and i64 %i.ds, 9223372036854775800   ; 3 uses
  %i.dt = shl i64 %n.vec88, 2                     ; 2 uses
  %i.du = getelementptr i8, ptr %i.p, i64 %i.dt
  %cmp.n97 = icmp eq i64 %i.ds, %n.vec88
  br label %.lr.ph.us45

.lr.ph.us45:                                      ; preds = %.lr.ph.us45.preheader, %..loopexit_crit_edge.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %..loopexit_crit_edge.us ], [ %i.di, %.lr.ph.us45.preheader ] ; 2 uses
  %i.dv = phi i32 [ %i.em, %..loopexit_crit_edge.us ], [ %i.dd, %.lr.ph.us45.preheader ]
  %i.dw = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.dx = mul i32 %i.dw, %i.dv
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.dy ; 4 uses
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph.us45
  %i.ea = sub nsw i64 %i.dy, %i.o
  %1 = shl nsw i64 %i.ea, 2
  %2 = add nsw i64 %1, -1
  %diff.check = icmp ult i64 %2, 31
  br i1 %diff.check, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck82
  %i.eb = getelementptr i8, ptr %i.dz, i64 %i.dt
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph86
  %index90 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.ec = shl i64 %index90, 2                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.p, i64 %i.ec ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.dz, i64 %i.ec ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load93 = load <4 x i32>, ptr %next.gep91, align 4, !tbaa !4
  %wide.load94 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !4
  %i.ee = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load93, ptr %next.gep92, align 4, !tbaa !4
  store <4 x i32> %wide.load94, ptr %i.ee, align 4, !tbaa !4
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.ef = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.ef, label %middle.block96, label %vector.body89, !llvm.loop !119

middle.block96:                                   ; preds = %vector.body89
  br i1 %cmp.n97, label %..loopexit_crit_edge.us, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck82, %.lr.ph.us45, %middle.block96
  %.143.us.ph = phi ptr [ %i.p, %vector.memcheck82 ], [ %i.p, %.lr.ph.us45 ], [ %i.du, %middle.block96 ]
  %.13042.us.ph = phi ptr [ %i.dz, %vector.memcheck82 ], [ %i.dz, %.lr.ph.us45 ], [ %i.eb, %middle.block96 ]
  br label %scalar.ph84

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %scalar.ph84
  %.143.us = phi ptr [ %i.eg, %scalar.ph84 ], [ %.143.us.ph, %scalar.ph84.preheader ] ; 2 uses
  %.13042.us = phi ptr [ %i.ei, %scalar.ph84 ], [ %.13042.us.ph, %scalar.ph84.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.143.us, i64 4 ; 2 uses
  %i.eh = load i32, ptr %.143.us, align 4, !tbaa !4
  %i.ei = getelementptr inbounds nuw i8, ptr %.13042.us, i64 4
  store i32 %i.eh, ptr %.13042.us, align 4, !tbaa !4
  %i.ej = icmp ult ptr %i.eg, %i.r
  br i1 %i.ej, label %scalar.ph84, label %..loopexit_crit_edge.us, !llvm.loop !120

..loopexit_crit_edge.us:                          ; preds = %scalar.ph84, %middle.block96
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 2 uses
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv52
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !22 ; 2 uses
  %i.em = sext i16 %i.el to i32                   ; 2 uses
  %i.en = sext i16 %i.el to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.en
  store i16 %i.cy, ptr %i.eo, align 2, !tbaa !22
  %i.ep = icmp eq i32 %0, %i.em
  br i1 %i.ep, label %.loopexit35.loopexit, label %.lr.ph.us45

.loopexit:                                        ; preds = %.lr.ph44, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.di, %.lr.ph44 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !22 ; 2 uses
  %i.es = sext i16 %i.er to i32
  %i.et = sext i16 %i.er to i64
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.et
  store i16 %i.cy, ptr %i.eu, align 2, !tbaa !22
  %i.ev = icmp eq i32 %0, %i.es
  br i1 %i.ev, label %.loopexit35.loopexit47, label %.loopexit

.loopexit35.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.ew = trunc nsw i64 %indvars.iv.next53 to i32
  br label %.loopexit35

.loopexit35.loopexit47:                           ; preds = %.loopexit
  %i.ex = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit35

.loopexit35:                                      ; preds = %.loopexit35.loopexit47, %.loopexit35.loopexit, %.preheader
  %.lcssa = phi i32 [ %i.cz, %.preheader ], [ %i.ew, %.loopexit35.loopexit ], [ %i.ex, %.loopexit35.loopexit47 ]
  store i32 %.lcssa, ptr @top, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %.loopexit35, %.loopexit38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p2 _ZTS4core", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS4core", !11, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"core", !13, i64 0, !13, i64 8, !16, i64 16, !16, i64 18, !16, i64 20, !6, i64 22}
!16 = !{!"short", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 short", !11, i64 0}
!21 = !{!15, !16, i64 18}
!22 = !{!16, !16, i64 0}
!23 = distinct !{!23, !18}
!24 = !{!25, !25, i64 0}
!25 = !{!"p2 _ZTS6shifts", !10, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS6shifts", !11, i64 0}
!28 = !{!29, !16, i64 8}
!29 = !{!"shifts", !27, i64 0, !16, i64 8, !16, i64 10, !6, i64 12}
!30 = distinct !{!30, !18}
!31 = !{!32, !32, i64 0}
!32 = !{!"p2 _ZTS10reductions", !10, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS10reductions", !11, i64 0}
!35 = !{!36, !16, i64 8}
!36 = !{!"reductions", !34, i64 0, !16, i64 8, !16, i64 10, !6, i64 12}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!36, !16, i64 10}
!42 = !{!6, !6, i64 0}
!43 = !{!29, !16, i64 10}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 int", !11, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"p2 _ZTS6shorts", !10, i64 0}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !18, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = distinct !{!60, !18, !57, !58}
!61 = distinct !{!61, !55}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18, !57}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18, !57, !58}
!70 = distinct !{!70, !18, !57, !58}
!71 = distinct !{!71, !55}
!72 = distinct !{!72, !18, !57}
!73 = distinct !{!73, !18}
!74 = !{!75, !75, i64 0}
!75 = !{!"p2 short", !10, i64 0}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 _ZTS6shorts", !11, i64 0}
!83 = !{!84, !82, i64 0}
!84 = !{!"shorts", !82, i64 0, !16, i64 8}
!85 = !{!84, !16, i64 8}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18, !57, !58}
!89 = distinct !{!89, !18, !57, !58}
!90 = distinct !{!90, !55}
!91 = distinct !{!91, !18, !57}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
end_hunk_3
