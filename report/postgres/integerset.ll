Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/integerset?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intset_add_member:bb.a
  %.04162.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cb, %bb.o ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.o ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -16
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %i.bs = add i64 %i.bn, %i.br
  %i.bt = or i64 %i.bs, %.04162.i.i
  %i.bu = shl i64 %i.bt, %i.bi
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 -16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = xor i64 %i.bx, -1
  %i.bz = add i64 %i.bq, %i.by
  %i.ca = or i64 %i.bz, %i.bu
  %i.cb = shl i64 %i.ca, %i.bi                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.o, !llvm.loop !5

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04162.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cb, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.cc = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i.i.epil.init
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i.i.epil.init
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = xor i64 %i.ch, -1
  %i.cj = add i64 %i.ce, %i.ci
  %i.ck = or i64 %i.cj, %.04162.i.i.epil.init
  %i.cl = shl i64 %i.ck, %i.bi
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa56 = phi i64 [ %i.cb, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.cl, %.epil.preheader ]
  %i.cm = or i64 %.lcssa56, %i.ap
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %bb.n
  %.142.i.i = phi i64 [ 0, %bb.n ], [ %i.ap, %.preheader.i.i ], [ %i.cm, %._crit_edge.loopexit.i.i ]
  %i.cn = zext i32 %.255.i.i to i64
  %i.co = shl i64 %i.cn, 60
  %i.cp = or i64 %.142.i.i, %i.co
  br label %simple8b_encode.exit.i

simple8b_encode.exit.i:                           ; preds = %._crit_edge.i.i, %.loopexit
  %.056.i.i = phi i64 [ %i.cp, %._crit_edge.i.i ], [ 1152921504606846975, %.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.153.i, i64 2
  %i.cr = load i16, ptr %i.cq, align 2            ; 2 uses
  %i.cs = icmp ugt i16 %i.cr, 63
  br i1 %i.cs, label %bb.p, label %bb.v

bb.p:                                             ; preds = %simple8b_encode.exit.i
  %i.ct = load ptr, ptr %0, align 8
  %i.cu = tail call ptr @MemoryContextAlloc(ptr noundef %i.ct, i64 noundef 1040) #11 ; 8 uses
  %i.cv = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.cu) #11
  %i.cw = load i64, ptr %i.ae, align 8
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.ae, align 8
  store i16 0, ptr %i.cu, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 2 ; 2 uses
  store i16 0, ptr %i.cy, align 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  store ptr %i.cu, ptr %i.da, align 8
  store ptr %i.cu, ptr %i.q, align 8
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.u, %bb.p
  %.tr47.i.i = phi i32 [ 1, %bb.p ], [ %i.ei, %bb.u ] ; 6 uses
  %.tr48.i.i = phi ptr [ %i.cu, %bb.p ], [ %i.ea, %bb.u ] ; 2 uses
  %i.db = load i32, ptr %i.af, align 8            ; 3 uses
  %.not.i42.i = icmp slt i32 %.tr47.i.i, %i.db
  br i1 %.not.i42.i, label %tailrecurse._crit_edge.i.i, label %bb.q

tailrecurse._crit_edge.i.i:                       ; preds = %tailrecurse.i.i
  %.phi.trans.insert.i.i = sext i32 %.tr47.i.i to i64 ; 2 uses
  %.phi.trans.insert56.i.i = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.phi.trans.insert.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert56.i.i, align 8
  br label %bb.t

bb.q:                                             ; preds = %tailrecurse.i.i
  %i.dc = icmp eq i32 %i.db, 11
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12, !inline_history !6 ; 0 uses
  %i.de = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #11, !inline_history !6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__func__.intset_update_upper) #11, !inline_history !6
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.df = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.dg = add i32 %i.db, 1
  store i32 %i.dg, ptr %i.af, align 8
  %i.dh = load i16, ptr %i.df, align 2
  %i.di = icmp eq i16 %i.dh, 0
  %.0.in.v.i.i = select i1 %i.di, i64 16, i64 8
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0.in.v.i.i
  %.0.i43.i = load i64, ptr %.0.in.i.i, align 8
  %i.dj = load ptr, ptr %0, align 8
  %i.dk = tail call ptr @MemoryContextAlloc(ptr noundef %i.dj, i64 noundef 1032) #11, !inline_history !6 ; 8 uses
  %i.dl = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.dk) #11, !inline_history !6
  %i.dm = load i64, ptr %i.ae, align 8
  %i.dn = add i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.ae, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dp = trunc i32 %.tr47.i.i to i16
  store i16 %i.dp, ptr %i.dk, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %.0.i43.i, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 520
  store ptr %i.df, ptr %i.dr, align 8
  store i16 1, ptr %i.do, align 2
  store ptr %i.dk, ptr %i.ag, align 8
  %i.ds = sext i32 %.tr47.i.i to i64              ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ds
  store ptr %i.dk, ptr %i.dt, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %tailrecurse._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.phi.trans.insert.i.i, %tailrecurse._crit_edge.i.i ], [ %i.ds, %bb.s ]
  %i.du = phi ptr [ %.pre.i.i, %tailrecurse._crit_edge.i.i ], [ %i.dk, %bb.s ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i16, ptr %i.dv, align 2            ; 3 uses
  %i.dx = icmp ult i16 %i.dw, 64
  br i1 %i.dx, label %intset_update_upper.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.pre-phi.i.i
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = tail call ptr @MemoryContextAlloc(ptr noundef %i.dz, i64 noundef 1032) #11, !inline_history !6 ; 7 uses
  %i.eb = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.ea) #11, !inline_history !6
  %i.ec = load i64, ptr %i.ae, align 8
  %i.ed = add i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.ae, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ef = trunc i32 %.tr47.i.i to i16
  store i16 %i.ef, ptr %i.ea, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.aj, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 520
  store ptr %.tr48.i.i, ptr %i.eh, align 8
  store i16 1, ptr %i.ee, align 2
  store ptr %i.ea, ptr %i.dy, align 8
  %i.ei = add i32 %.tr47.i.i, 1
  br label %tailrecurse.i.i

intset_update_upper.exit.i:                       ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.el = zext nneg i16 %i.dw to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  store i64 %i.aj, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 520
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %.tr48.i.i, ptr %i.eo, align 8
  %i.ep = add nuw nsw i16 %i.dw, 1
  store i16 %i.ep, ptr %i.ej, align 2
  %.pre.i = load i16, ptr %i.cy, align 2
  br label %bb.v

bb.v:                                             ; preds = %intset_update_upper.exit.i, %simple8b_encode.exit.i
  %i.eq = phi i16 [ %.pre.i, %intset_update_upper.exit.i ], [ %i.cr, %simple8b_encode.exit.i ] ; 2 uses
  %.2.i = phi ptr [ %i.cu, %intset_update_upper.exit.i ], [ %.153.i, %simple8b_encode.exit.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %i.et = add i16 %i.eq, 1
  store i16 %i.et, ptr %i.es, align 2
  %i.eu = zext i16 %i.eq to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eu ; 2 uses
  store i64 %i.aj, ptr %i.ev, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.056.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.ew = add i32 %.252.i.i, %i.ak                ; 5 uses
  %i.ex = sext i32 %i.ew to i64                   ; 3 uses
  %i.ey = sub nsw i64 %i.p, %i.ex
  %i.ez = icmp ugt i64 %i.ey, 240
  br i1 %i.ez, label %bb.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.v
  %i.fa = load i32, ptr %i.l, align 8             ; 3 uses
  %i.fb = icmp slt i32 %i.ew, %i.fa
  br i1 %i.fb, label %bb.w, label %intset_flush_buffered_values.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ex
  %i.fd = sub nuw nsw i32 %i.fa, %i.ew
  %2 = zext nneg i32 %i.fd to i64
  %i.fe = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.fc, i64 %i.fe, i1 false)
  %.pre60.i = load i32, ptr %i.l, align 8
  br label %intset_flush_buffered_values.exit

intset_flush_buffered_values.exit:                ; preds = %._crit_edge.i, %bb.w
  %i.ff = phi i32 [ %.pre60.i, %bb.w ], [ %i.fa, %._crit_edge.i ]
  %i.fg = sub i32 %i.ff, %i.ew                    ; 2 uses
  store i32 %i.fg, ptr %i.l, align 8
  br label %bb.x

bb.x:                                             ; preds = %intset_flush_buffered_values.exit, %bb.f
  %i.fh = phi i32 [ %i.fg, %intset_flush_buffered_values.exit ], [ %i.m, %bb.f ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj
  store i64 %1, ptr %i.fk, align 8
  %i.fl = load i32, ptr %i.l, align 8
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.l, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fn, align 8
  store i64 %1, ptr %i.f, align 8
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @intset_is_member(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp ult i64 %1, %i.e
  br i1 %.not, label %bb.d, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.b, %.lr.ph.split.i
  %.023.i = phi i32 [ %spec.select21.i, %.lr.ph.split.i ], [ %i.b, %bb.b ] ; 2 uses
  %.01722.i = phi i32 [ %spec.select20.i, %.lr.ph.split.i ], [ 0, %bb.b ] ; 3 uses
  %i.f = sub i32 %.023.i, %.01722.i
  %i.g = sdiv i32 %i.f, 2
  %i.h = add i32 %i.g, %.01722.i                  ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %1, %i.k                    ; 2 uses
  %i.m = add i32 %i.h, 1
  %spec.select20.i = select i1 %i.l, i32 %i.m, i32 %.01722.i ; 4 uses
  %spec.select21.i = select i1 %i.l, i32 %.023.i, i32 %i.h ; 2 uses
  %i.n = icmp sgt i32 %spec.select21.i, %spec.select20.i
  br i1 %i.n, label %.lr.ph.split.i, label %intset_binsrch_uint64.exit, !llvm.loop !10

intset_binsrch_uint64.exit:                       ; preds = %.lr.ph.split.i
  %.not50 = icmp slt i32 %spec.select20.i, %i.b
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %intset_binsrch_uint64.exit
  %i.o = sext i32 %spec.select20.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, %1
  br label %.critedge

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not48 = icmp eq ptr %i.t, null
  br i1 %.not48, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %.03666 = add i32 %i.v, -1                      ; 2 uses
  %i.w = icmp sgt i32 %.03666, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.03668 = phi i32 [ %.036, %bb.f ], [ %.03666, %bb.e ] ; 2 uses
  %.03767 = phi ptr [ %i.an, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03767, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.03767, i64 2
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %.not.i51 = icmp eq i16 %i.z, 0
  br i1 %.not.i51, label %.critedge, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph
  %i.aa = zext i16 %i.z to i32
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.023.us.i = phi i32 [ %spec.select19.us.i, %.lr.ph.split.us.i ], [ %i.aa, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01722.us.i = phi i32 [ %spec.select.us.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.ab = sub i32 %.023.us.i, %.01722.us.i
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add i32 %i.ac, %.01722.us.i             ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %.not.us.i = icmp ult i64 %1, %i.ag             ; 2 uses
  %i.ah = add i32 %i.ad, 1
  %spec.select.us.i = select i1 %.not.us.i, i32 %.01722.us.i, i32 %i.ah ; 4 uses
  %spec.select19.us.i = select i1 %.not.us.i, i32 %i.ad, i32 %.023.us.i ; 2 uses
  %i.ai = icmp sgt i32 %spec.select19.us.i, %spec.select.us.i
  br i1 %i.ai, label %.lr.ph.split.us.i, label %intset_binsrch_uint64.exit54, !llvm.loop !10

intset_binsrch_uint64.exit54:                     ; preds = %.lr.ph.split.us.i
  %.not49 = icmp eq i32 %spec.select.us.i, 0
  br i1 %.not49, label %.critedge, label %bb.f

bb.f:                                             ; preds = %intset_binsrch_uint64.exit54
  %i.aj = getelementptr inbounds nuw i8, ptr %.03767, i64 520
  %i.ak = add i32 %spec.select.us.i, -1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.036 = add nsw i32 %.03668, -1
  %i.ao = icmp sgt i32 %.03668, 1
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.037.lcssa = phi ptr [ %i.t, %bb.e ], [ %i.an, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 2
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %.not21.i = icmp eq i16 %i.ar, 0
  br i1 %.not21.i, label %.critedge, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %._crit_edge
  %i.as = zext i16 %i.ar to i32
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %.020.i = phi i32 [ %.1.i, %.lr.ph.i55 ], [ %i.as, %.lr.ph.i55.preheader ] ; 2 uses
  %.01719.i = phi i32 [ %.118.i, %.lr.ph.i55 ], [ 0, %.lr.ph.i55.preheader ] ; 3 uses
  %i.at = sub i32 %.020.i, %.01719.i
  %i.au = sdiv i32 %i.at, 2
  %i.av = add i32 %i.au, %.01719.i                ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8
  %.not.i56 = icmp ult i64 %1, %i.ay              ; 2 uses
  %i.az = add i32 %i.av, 1
  %.118.i = select i1 %.not.i56, i32 %.01719.i, i32 %i.az ; 4 uses
  %.1.i = select i1 %.not.i56, i32 %i.av, i32 %.020.i ; 2 uses
  %i.ba = icmp sgt i32 %.1.i, %.118.i
  br i1 %i.ba, label %.lr.ph.i55, label %intset_binsrch_leaf.exit, !llvm.loop !12

intset_binsrch_leaf.exit:                         ; preds = %.lr.ph.i55
  %i.bb = icmp eq i32 %.118.i, 0
  br i1 %i.bb, label %.critedge, label %bb.g

bb.g:                                             ; preds = %intset_binsrch_leaf.exit
  %i.bc = add i32 %.118.i, -1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp eq i64 %i.bf, %1
  br i1 %i.bg, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8            ; 4 uses
  %i.bj = lshr i64 %i.bi, 60
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @simple8b_modes, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = load i8, ptr %i.bk, align 2
  %i.bo = icmp eq i64 %i.bi, 1152921504606846975
  br i1 %i.bo, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp ult i64 %i.bi, 2305843009213693952
  br i1 %i.bp, label %bb.j, label %.lr.ph.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.bq = sub i64 %1, %i.bf
  %i.br = zext i8 %i.bm to i64
  %i.bs = icmp ule i64 %i.bq, %i.br
  br label %.critedge

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bt = zext i8 %i.bn to i64                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i, -1
  %i.bv = tail call i8 @llvm.umax.i8(i8 %i.bm, i8 1)
  %umax.i = zext i8 %i.bv to i32
  br label %.lr.ph.i58

end_hunk_0
