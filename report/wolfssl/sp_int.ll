Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_sp_submod:bb.a
  br i1 %i.ah, label %.loopexit116, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ai, label %_sp_cmp.exit71.thread99, label %bb.j, !llvm.loop !1

.loopexit116:                                     ; preds = %bb.j, %bb.k, %.preheader.i.i67, %.critedge66.thread
  %i.aj = icmp ult i16 %i.y, 129
  br i1 %i.aj, label %_sp_cmp.exit71, label %sp_sub.exit

_sp_cmp.exit71:                                   ; preds = %.loopexit116
  %i.ak = call i32 @sp_div(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.g) ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_sp_cmp.exit71._sp_cmp.exit71.thread99_crit_edge, label %sp_sub.exit

_sp_cmp.exit71._sp_cmp.exit71.thread99_crit_edge: ; preds = %_sp_cmp.exit71
  %.pre121 = load i16, ptr %i.g, align 16, !tbaa !40
  br label %_sp_cmp.exit71.thread99

_sp_cmp.exit71.thread99:                          ; preds = %bb.l, %_sp_cmp.exit71._sp_cmp.exit71.thread99_crit_edge, %bb.i
  %i.am = phi i16 [ %.pre121, %_sp_cmp.exit71._sp_cmp.exit71.thread99_crit_edge ], [ %i.y, %bb.i ], [ %i.y, %bb.l ] ; 4 uses
  %.054104 = phi ptr [ %i.g, %_sp_cmp.exit71._sp_cmp.exit71.thread99_crit_edge ], [ %1, %bb.i ], [ %1, %bb.l ] ; 2 uses
  %i.an = load i16, ptr %.086, align 8, !tbaa !40 ; 4 uses
  %i.ao = icmp ugt i16 %i.an, %i.am
  br i1 %i.ao, label %.thread109, label %bb.m

bb.m:                                             ; preds = %_sp_cmp.exit71.thread99
  %i.ap = icmp ult i16 %i.an, %i.am
  br i1 %i.ap, label %.loopexit, label %.preheader.i.i75

.preheader.i.i75:                                 ; preds = %bb.m
  %.not163 = icmp eq i16 %i.an, 0
  br i1 %.not163, label %.thread109, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader.i.i75
  %i.aq = zext i16 %i.an to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next.i.i77156 = add nsw i64 %indvars.iv.i.i76155, -1
  %i.ar = icmp sgt i64 %indvars.iv.i.i76155, 1
  br i1 %i.ar, label %bb.o, label %.thread109, !llvm.loop !1

bb.o:                                             ; preds = %.lr.ph157, %bb.n
  %indvars.iv.i.i76155 = phi i64 [ %i.aq, %.lr.ph157 ], [ %indvars.iv.next.i.i77156, %bb.n ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %.086, i64 %indvars.iv.i.i76155
  %i.at = load i64, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054104, i64 %indvars.iv.i.i76155
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %.thread109, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp ult i64 %i.at, %i.av
  br i1 %i.ax, label %.loopexit, label %bb.n, !llvm.loop !1

.loopexit:                                        ; preds = %bb.p, %bb.m
  %i.ay = call i32 @sp_add(ptr noundef nonnull %.086, ptr noundef nonnull %2, ptr noundef nonnull %i.f) ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.thread109, label %sp_sub.exit

.thread109:                                       ; preds = %bb.o, %bb.n, %.preheader.i.i75, %_sp_cmp.exit71.thread99, %.loopexit
  %.1114 = phi ptr [ %i.f, %.loopexit ], [ %.086, %_sp_cmp.exit71.thread99 ], [ %.086, %.preheader.i.i75 ], [ %.086, %bb.n ], [ %.086, %bb.o ] ; 2 uses
  %.not115 = icmp eq ptr %3, null
  br i1 %.not115, label %sp_sub.exit, label %bb.q

bb.q:                                             ; preds = %.thread109
  %i.ba = load i16, ptr %.1114, align 8, !tbaa !40 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !39 ; 2 uses
  %i.bd = icmp ugt i16 %i.ba, %i.bc
  %i.be = icmp ugt i16 %i.am, %i.bc
  %or.cond = or i1 %i.bd, %i.be
  br i1 %or.cond, label %sp_sub.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.q
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %_sp_sub_off.exit.sink.split.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %.thread.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.1114, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.054104, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %wide.trip.count87.i.i = zext i16 %i.am to i64  ; 2 uses
  %zext.i = zext i16 %i.ba to i64                 ; 7 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph64.i.i
  %indvars.iv82.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %indvars.iv.next83.i.i, %bb.s ] ; 5 uses
  %.04963.i.i = phi i128 [ 0, %.lr.ph64.i.i ], [ %i.bs, %bb.s ] ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %indvars.iv82.i.i, %wide.trip.count87.i.i
  br i1 %exitcond88.not.i.i, label %.critedge2.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv82.i.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = zext i64 %i.bj to i128
  %i.bl = add nsw i128 %.04963.i.i, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv82.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.bo = zext i64 %i.bn to i128
  %i.bp = sub nsw i128 %i.bl, %i.bo               ; 2 uses
  %i.bq = trunc i128 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv82.i.i
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %i.bs = ashr i128 %i.bp, 64                     ; 2 uses
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %i.bt = icmp eq i64 %indvars.iv.next83.i.i, %zext.i
  br i1 %i.bt, label %.critedge2.i.i, label %bb.r, !llvm.loop !17

.critedge2.i.i:                                   ; preds = %bb.s, %bb.r
  %.2.lcssa.ph.in.i.i = phi i64 [ %wide.trip.count87.i.i, %bb.r ], [ %zext.i, %bb.s ] ; 8 uses
  %.049.lcssa.ph.i.i = phi i128 [ %.04963.i.i, %bb.r ], [ %i.bs, %bb.s ] ; 2 uses
  %.2.lcssa.ph.i.i = trunc nuw i64 %.2.lcssa.ph.in.i.i to i16
  %i.bu = icmp ugt i16 %i.ba, %.2.lcssa.ph.i.i
  br i1 %i.bu, label %.lr.ph74.i.i.preheader, label %.preheader.i.i80

.lr.ph74.i.i.preheader:                           ; preds = %.critedge2.i.i
  %i.bv = sub nsw i64 %zext.i, %.2.lcssa.ph.in.i.i
  %xtraiter = and i64 %i.bv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.i.i.prol.loopexit, label %.lr.ph74.i.i.prol

.lr.ph74.i.i.prol:                                ; preds = %.lr.ph74.i.i.preheader
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.2.lcssa.ph.in.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !36
  %i.by = zext i64 %i.bx to i128
  %i.bz = add nsw i128 %.049.lcssa.ph.i.i, %i.by  ; 2 uses
  %i.ca = trunc i128 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.2.lcssa.ph.in.i.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !36
  %i.cc = ashr i128 %i.bz, 64
  %indvars.iv.next91.i.i.prol = add nuw nsw i64 %.2.lcssa.ph.in.i.i, 1
  br label %.lr.ph74.i.i.prol.loopexit

.lr.ph74.i.i.prol.loopexit:                       ; preds = %.lr.ph74.i.i.prol, %.lr.ph74.i.i.preheader
  %indvars.iv90.i.i.unr = phi i64 [ %.2.lcssa.ph.in.i.i, %.lr.ph74.i.i.preheader ], [ %indvars.iv.next91.i.i.prol, %.lr.ph74.i.i.prol ]
  %.173.i.i.unr = phi i128 [ %.049.lcssa.ph.i.i, %.lr.ph74.i.i.preheader ], [ %i.cc, %.lr.ph74.i.i.prol ]
  %i.cd = add nsw i64 %zext.i, -1
  %i.ce = icmp eq i64 %.2.lcssa.ph.in.i.i, %i.cd
  br i1 %i.ce, label %.preheader.i.i80, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.prol.loopexit, %.lr.ph74.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i.1, %.lr.ph74.i.i ], [ %indvars.iv90.i.i.unr, %.lr.ph74.i.i.prol.loopexit ] ; 4 uses
  %.173.i.i = phi i128 [ %i.cs, %.lr.ph74.i.i ], [ %.173.i.i.unr, %.lr.ph74.i.i.prol.loopexit ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv90.i.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !36
  %i.ch = zext i64 %i.cg to i128
  %i.ci = add nsw i128 %.173.i.i, %i.ch           ; 2 uses
  %i.cj = trunc i128 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv90.i.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !36
  %i.cl = ashr i128 %i.ci, 64
  %indvars.iv.next91.i.i = add nuw nsw i64 %indvars.iv90.i.i, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next91.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !36
  %i.co = zext i64 %i.cn to i128
  %i.cp = add nsw i128 %i.cl, %i.co               ; 2 uses
  %i.cq = trunc i128 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next91.i.i
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !36
  %i.cs = ashr i128 %i.cp, 64
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond94.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, %zext.i
  br i1 %exitcond94.not.i.i.1, label %.preheader.i.i80, label %.lr.ph74.i.i, !llvm.loop !18

.preheader.i.i80:                                 ; preds = %.lr.ph74.i.i.prol.loopexit, %.lr.ph74.i.i, %.critedge2.i.i
  %.pre-phi.i = phi i64 [ %.2.lcssa.ph.in.i.i, %.critedge2.i.i ], [ %zext.i, %.lr.ph74.i.i ], [ %zext.i, %.lr.ph74.i.i.prol.loopexit ] ; 2 uses
  %i.ct = icmp sgt i64 %.pre-phi.i, 0
  br i1 %i.ct, label %.lr.ph160, label %_sp_sub_off.exit.sink.split.i

bb.t:                                             ; preds = %.lr.ph160
  %indvars.iv.next96.i.i = add nsw i64 %indvars.iv95.i.i159, -1
  %i.cu = icmp sgt i64 %indvars.iv95.i.i159, 1
  br i1 %i.cu, label %.lr.ph160, label %_sp_sub_off.exit.sink.split.i, !llvm.loop !19

.lr.ph160:                                        ; preds = %.preheader.i.i80, %bb.t
  %indvars.iv95.i.i159 = phi i64 [ %indvars.iv.next96.i.i, %bb.t ], [ %.pre-phi.i, %.preheader.i.i80 ] ; 4 uses
  %i.cv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv95.i.i159
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !36
  %.not56.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not56.i.i, label %bb.t, label %.split.loop.exit.i.i, !llvm.loop !19

.split.loop.exit.i.i:                             ; preds = %.lr.ph160
  %i.cx = trunc i64 %indvars.iv95.i.i159 to i16
  br label %_sp_sub_off.exit.sink.split.i

_sp_sub_off.exit.sink.split.i:                    ; preds = %bb.t, %.preheader.i.i80, %.split.loop.exit.i.i, %.thread.i
  %.0.in.lcssa.i.sink.i = phi i16 [ 0, %.thread.i ], [ %i.cx, %.split.loop.exit.i.i ], [ 0, %.preheader.i.i80 ], [ 0, %bb.t ]
  store i16 %.0.in.lcssa.i.sink.i, ptr %3, align 8, !tbaa !40
  br label %sp_sub.exit

sp_sub.exit:                                      ; preds = %bb.d, %.loopexit117, %.loopexit116, %.critedge66, %_sp_cmp.exit71, %_sp_sub_off.exit.sink.split.i, %bb.q, %.thread109, %.loopexit
  %.3 = phi i32 [ 0, %_sp_sub_off.exit.sink.split.i ], [ %i.ay, %.loopexit ], [ -98, %.thread109 ], [ -98, %bb.d ], [ -98, %bb.q ], [ %i.ak, %_sp_cmp.exit71 ], [ -98, %.loopexit116 ], [ %i.v, %.critedge66 ], [ -98, %.loopexit117 ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_addmod_ct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 -1, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i64 -1, ptr %i.d, align 8, !tbaa !36
  %i.e = load i16, ptr %2, align 8, !tbaa !40
  %.fr = freeze i16 %i.e                          ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %.not = icmp ule i16 %.fr, %i.g
  %i.h = icmp ne ptr %3, %2
  %.not61 = and i1 %i.h, %.not
  br i1 %.not61, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not74 = icmp eq i16 %.fr, 0
  br i1 %.not74, label %._crit_edge72.thread, label %.lr.ph

._crit_edge72.thread:                             ; preds = %.preheader
  store volatile i64 -1, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  br label %sp_clamp_ct.exit

.lr.ph:                                           ; preds = %.preheader
  %i.i = load i16, ptr %0, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = zext i16 %i.i to i64
  %wide.trip.count = zext i16 %.fr to i64         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %.05365 = phi i128 [ 0, %.lr.ph ], [ %i.ao, %bb.b ]
  %.05464 = phi i128 [ 0, %.lr.ph ], [ %i.ap, %bb.b ]
  %i.o = icmp eq i64 %indvars.iv, %i.n
  %i.p = zext i1 %i.o to i64
  %.0..0..0..0.15 = load volatile i64, ptr %i.c, align 8, !tbaa !36
  %i.q = add i64 %.0..0..0..0.15, %i.p
  store volatile i64 %i.q, ptr %i.c, align 8, !tbaa !36
  %i.r = load i16, ptr %1, align 8, !tbaa !40
  %i.s = zext i16 %i.r to i64
  %i.t = icmp eq i64 %indvars.iv, %i.s
  %i.u = zext i1 %i.t to i64
  %.0..0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !36
  %i.v = add i64 %.0..0..0..0., %i.u
  store volatile i64 %i.v, ptr %i.d, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %.0..0..0..0.16 = load volatile i64, ptr %i.c, align 8, !tbaa !36
  %i.y = and i64 %.0..0..0..0.16, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = add nuw nsw i128 %.05464, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36
  %.0..0..0..0.14 = load volatile i64, ptr %i.d, align 8, !tbaa !36
  %i.ad = and i64 %.0..0..0..0.14, %i.ac
  %i.ae = zext i64 %i.ad to i128
  %i.af = add nuw nsw i128 %i.aa, %i.ae           ; 3 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = and i128 %i.af, 18446744073709551615
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.al = zext i64 %i.ak to i128
  %i.am = sub nsw i128 %.05365, %i.al
  %i.an = add nsw i128 %i.am, %i.ai
  %i.ao = ashr i128 %i.an, 64                     ; 2 uses
  %i.ap = lshr i128 %i.af, 64                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph71, label %bb.b, !llvm.loop !94

.lr.ph71:                                         ; preds = %bb.b
  %i.aq = add nsw i128 %i.ao, %i.ap
  %i.ar = icmp sgt i128 %i.aq, -1
  %i.as = sext i1 %i.ar to i64
  store volatile i64 %i.as, ptr %i.b, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i16 %.fr, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph71.new

.lr.ph71.new:                                     ; preds = %.lr.ph71
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph71.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph71.new ], [ %indvars.iv.next81.1, %bb.c ] ; 4 uses
  %.15568 = phi i128 [ 0, %.lr.ph71.new ], [ %i.br, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph71.new ], [ %niter.next.1, %bb.c ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv80 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = zext i64 %i.ax to i128
  %i.az = add nsw i128 %.15568, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !36
  %.0..0..0..0.17 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.bc = and i64 %.0..0..0..0.17, %i.bb
  %i.bd = zext i64 %i.bc to i128
  %i.be = sub nsw i128 %i.az, %i.bd               ; 2 uses
  %i.bf = trunc i128 %i.be to i64
  store i64 %i.bf, ptr %i.aw, align 8, !tbaa !36
  %i.bg = ashr i128 %i.be, 64
  %indvars.iv.next81 = or disjoint i64 %indvars.iv80, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next81 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %i.bj = zext i64 %i.bi to i128
  %i.bk = add nsw i128 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next81
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !36
  %.0..0..0..0.17.1 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.bn = and i64 %.0..0..0..0.17.1, %i.bm
  %i.bo = zext i64 %i.bn to i128
  %i.bp = sub nsw i128 %i.bk, %i.bo               ; 2 uses
  %i.bq = trunc i128 %i.bp to i64
  store i64 %i.bq, ptr %i.bh, align 8, !tbaa !36
  %i.br = ashr i128 %i.bp, 64                     ; 2 uses
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %bb.c, !llvm.loop !95

.lr.ph.i.unr-lcssa:                               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %extract.t = trunc nsw i128 %i.br to i64
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph71
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next81.1, %.lr.ph.i.unr-lcssa ] ; 2 uses
  %.15568.epil.init.off0 = phi i64 [ 0, %.lr.ph71 ], [ %extract.t, %.lr.ph.i.unr-lcssa ]
  %lcmp.mod96 = trunc i16 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv80.epil.init ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv80.epil.init
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !36
  %.0..0..0..0.17.epil = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.bw = and i64 %.0..0..0..0.17.epil, %i.bv
  %i.bx = add i64 %.15568.epil.init.off0, %i.bt
  %i.by = sub i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !36
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  %i.bz = zext i16 %.fr to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01112.i = phi i16 [ %.fr, %.lr.ph.i ], [ %i.ch, %bb.d ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ca = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !36
  %i.cc = zext i64 %i.cb to i128
  %i.cd = add nuw nsw i128 %i.cc, 1208925819614629174706175
  %i.ce = lshr i128 %i.cd, 64
  %i.cf = trunc i128 %i.ce to i16
  %.0..0..0..0..0..0..i.a = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.cg = and i16 %.0..0..0..0..0..0..i.a, %i.cf
  store volatile i16 %i.cg, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i.a = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.ch = add i16 %.0..0..0..0..0..0.1.i.a, %.01112.i ; 2 uses
  %4 = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %4, label %bb.d, label %sp_clamp_ct.exit, !llvm.loop !20

sp_clamp_ct.exit:                                 ; preds = %bb.d, %._crit_edge72.thread
  %.011.lcssa.i = phi i16 [ 0, %._crit_edge72.thread ], [ %i.ch, %bb.d ]
  store i16 %.011.lcssa.i, ptr %3, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %sp_clamp_ct.exit, %bb.a
  %.157 = phi i32 [ 0, %sp_clamp_ct.exit ], [ -98, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.157
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_submod_ct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !39
  %.not = icmp ule i16 %i.a, %i.c
  %i.d = icmp ne ptr %3, %2
  %.not13 = and i1 %i.d, %.not
  br i1 %.not13, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.a to i32
  tail call fastcc void @_sp_submod_ct(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_sp_submod_ct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 65537) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 -1, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i64 -1, ptr %i.d, align 8, !tbaa !36
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = zext i16 %i.e to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %.03841 = phi i128 [ 0, %.lr.ph ], [ %i.ad, %bb.b ]
  %i.j = icmp eq i64 %indvars.iv, %i.i
  %i.k = zext i1 %i.j to i64
  %.0..0..0..0.14 = load volatile i64, ptr %i.c, align 8, !tbaa !36
  %i.l = add i64 %.0..0..0..0.14, %i.k
  store volatile i64 %i.l, ptr %i.c, align 8, !tbaa !36
  %i.m = load i16, ptr %1, align 8, !tbaa !40
  %i.n = zext i16 %i.m to i64
  %i.o = icmp eq i64 %indvars.iv, %i.n
  %i.p = zext i1 %i.o to i64
  %.0..0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !36
  %i.q = add i64 %.0..0..0..0., %i.p
  store volatile i64 %i.q, ptr %i.d, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36
  %.0..0..0..0.15 = load volatile i64, ptr %i.c, align 8, !tbaa !36
  %i.t = and i64 %.0..0..0..0.15, %i.s
  %i.u = zext i64 %i.t to i128
  %i.v = add nsw i128 %.03841, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %.0..0..0..0.13 = load volatile i64, ptr %i.d, align 8, !tbaa !36
  %i.y = and i64 %.0..0..0..0.13, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = sub nsw i128 %i.v, %i.z                 ; 3 uses
  %i.ab = trunc i128 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !36
  %i.ad = ashr i128 %i.aa, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ae = ashr i128 %i.aa, 127
  %extract.t = trunc nsw i128 %i.ae to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.038.lcssa.off0 = phi i64 [ 0, %bb.a ], [ %extract.t, %._crit_edge.loopexit ]
  store volatile i64 %.038.lcssa.off0, ptr %i.b, align 8, !tbaa !36
  %i.af = load i16, ptr %2, align 8, !tbaa !40
  %.fr = freeze i16 %i.af                         ; 6 uses
  %.not49 = icmp eq i16 %.fr, 0
  br i1 %.not49, label %._crit_edge47.thread, label %.lr.ph46

._crit_edge47.thread:                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  br label %sp_clamp_ct.exit

.lr.ph46:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %wide.trip.count56 = zext i16 %.fr to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count56, 1
  %i.ai = icmp eq i16 %.fr, 1
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph46.new

.lr.ph46.new:                                     ; preds = %.lr.ph46
  %unroll_iter = and i64 %wide.trip.count56, 65534
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph46.new
  %indvars.iv53 = phi i64 [ 0, %.lr.ph46.new ], [ %indvars.iv.next54.1, %bb.c ] ; 4 uses
  %.13943 = phi i128 [ 0, %.lr.ph46.new ], [ %i.be, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph46.new ], [ %niter.next.1, %bb.c ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv53 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.al = zext i64 %i.ak to i128
  %i.am = add nuw nsw i128 %.13943, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv53
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
  %.0..0..0..0.16 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.ap = and i64 %.0..0..0..0.16, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = add nuw nsw i128 %i.am, %i.aq           ; 2 uses
  %i.as = trunc i128 %i.ar to i64
  store i64 %i.as, ptr %i.aj, align 8, !tbaa !36
  %i.at = lshr i128 %i.ar, 64
  %indvars.iv.next54 = or disjoint i64 %indvars.iv53, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next54 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36
  %i.aw = zext i64 %i.av to i128
  %i.ax = add nuw nsw i128 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next54
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36
  %.0..0..0..0.16.1 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.ba = and i64 %.0..0..0..0.16.1, %i.az
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add nuw nsw i128 %i.ax, %i.bb           ; 2 uses
  %i.bd = trunc i128 %i.bc to i64
  store i64 %i.bd, ptr %i.au, align 8, !tbaa !36
  %i.be = lshr i128 %i.bc, 64                     ; 2 uses
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %bb.c, !llvm.loop !97

.lr.ph.i.unr-lcssa:                               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %extract.t64 = trunc nuw nsw i128 %i.be to i64
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph46
  %indvars.iv53.epil.init = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next54.1, %.lr.ph.i.unr-lcssa ] ; 2 uses
  %.13943.epil.init.off0 = phi i64 [ 0, %.lr.ph46 ], [ %extract.t64, %.lr.ph.i.unr-lcssa ]
  %lcmp.mod63 = trunc i16 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv53.epil.init ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv53.epil.init
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %.0..0..0..0.16.epil = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.bj = and i64 %.0..0..0..0.16.epil, %i.bi
  %i.bk = add i64 %.13943.epil.init.off0, %i.bg
  %i.bl = add i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !36
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  %i.bm = zext i16 %.fr to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01112.i = phi i16 [ %.fr, %.lr.ph.i ], [ %i.bu, %bb.d ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = zext i64 %i.bo to i128
  %i.bq = add nuw nsw i128 %i.bp, 1208925819614629174706175
  %i.br = lshr i128 %i.bq, 64
  %i.bs = trunc i128 %i.br to i16
  %.0..0..0..0..0..0..i.a = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bt = and i16 %.0..0..0..0..0..0..i.a, %i.bs
  store volatile i16 %i.bt, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i.a = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bu = add i16 %.0..0..0..0..0..0.1.i.a, %.01112.i ; 2 uses
  %5 = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %5, label %bb.d, label %sp_clamp_ct.exit, !llvm.loop !20

sp_clamp_ct.exit:                                 ; preds = %bb.d, %._crit_edge47.thread
  %.011.lcssa.i = phi i16 [ 0, %._crit_edge47.thread ], [ %i.bu, %bb.d ]
  store i16 %.011.lcssa.i, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_lshd(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread32

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.d = zext i16 %i.c to i32
  %i.e = add nuw i32 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = icmp ugt i32 %i.e, %i.h
  br i1 %i.i, label %.thread32, label %.thread

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = zext i16 %i.c to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %i.n, i1 false)
  %i.o = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.o, i1 false)
  %i.p = trunc i32 %1 to i16
  %i.q = add i16 %i.c, %i.p                       ; 3 uses
  store i16 %i.q, ptr %0, align 8, !tbaa !40
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %.thread32, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.r = zext i16 %i.q to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv40, -1
  %i.s = icmp sgt i64 %indvars.iv40, 1
  br i1 %i.s, label %bb.e, label %.split.loop.exit37, !llvm.loop !98

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv40 = phi i64 [ %i.r, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %0, i64 %indvars.iv40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not28 = icmp eq i64 %i.u, 0
  br i1 %.not28, label %bb.d, label %.split.loop.exit, !llvm.loop !98

.split.loop.exit:                                 ; preds = %bb.e
  %i.v = trunc i64 %indvars.iv40 to i16
  br label %.split.loop.exit37

.split.loop.exit37:                               ; preds = %bb.d, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.v, %.split.loop.exit ], [ 0, %bb.d ]
  store i16 %.0.in.lcssa, ptr %0, align 8, !tbaa !40
  br label %.thread32

.thread32:                                        ; preds = %bb.a, %bb.b, %.thread, %.split.loop.exit37
  %.02530 = phi i32 [ 0, %.thread ], [ 0, %.split.loop.exit37 ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.02530
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @sp_rshd(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.d = zext i16 %i.c to i32
  %.not = icmp samesign ult i32 %1, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store volatile i64 0, ptr %i.e, align 8, !tbaa !36
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc nuw i32 %1 to i16                  ; 2 uses
  %i.g = sub i16 %i.c, %i.f                       ; 3 uses
  store i16 %i.g, ptr %0, align 8, !tbaa !40
  %.not22 = icmp eq i16 %i.c, %i.f
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count = zext i16 %i.g to i64         ; 3 uses
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 65532        ; 4 uses
  %i.j = add nuw nsw i64 %n.vec, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !36
  %wide.load27 = load <2 x i64>, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %wide.load, ptr %i.l, align 8, !tbaa !36
  store <2 x i64> %wide.load27, ptr %i.m, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv23.ph = phi i64 [ %i.i, %.lr.ph ], [ %i.j, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %scalar.ph ], [ %indvars.iv23.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv23
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store i64 %i.p, ptr %i.q, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !100

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_rshb(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = lshr i32 %i.b, 6                         ; 7 uses
  %i.d = icmp eq ptr %0, null
  %or.cond = or i1 %i.d, %i.a
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %.not = icmp samesign ult i32 %i.c, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store volatile i16 0, ptr %2, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store volatile i64 0, ptr %i.g, align 8, !tbaa !36
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = sub nuw nsw i32 %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !39
  %i.k = zext i16 %i.j to i32
  %i.l = icmp samesign ugt i32 %i.h, %i.k
  br i1 %i.l, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %1, 63                           ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = trunc nuw i32 %i.c to i16                ; 2 uses
  br i1 %i.n, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.p = xor i16 %i.o, -1
  %i.q = add i16 %i.e, %i.p                       ; 5 uses
  %.not66 = icmp eq i16 %i.q, 0
  br i1 %.not66, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = zext nneg i32 %i.m to i64
end_hunk_0
