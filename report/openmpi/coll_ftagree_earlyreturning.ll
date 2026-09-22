Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_ftagree_earlyreturning?download=true
inline.NumInlined: 266
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@era_decide:bb.a
  %i.av = icmp slt i32 %i.au, %i.aq
  br i1 %i.av, label %bb.g, label %.critedge.loopexit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.critedge.thread, label %bb.f, !llvm.loop !316

.critedge.loopexit:                               ; preds = %bb.f
  %i.aw = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.1.lcssa = phi i32 [ %.0116, %.preheader ], [ %i.aw, %.critedge.loopexit ] ; 4 uses
  %i.ax = icmp eq i32 %.1.lcssa, %i.ak
  br i1 %i.ax, label %.critedge.thread, label %bb.i

.critedge.thread:                                 ; preds = %.critedge, %bb.g
  %i.ay = trunc nuw nsw i64 %indvars.iv135 to i32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bb = sext i32 %i.ak to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv135
  %i.bf = sub nuw nsw i32 %i.ah, %i.ay
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bc, ptr align 4 %i.be, i64 %i.bh, i1 false)
  %i.bi = load i32, ptr %i.q, align 4, !tbaa !171
  %i.bj = sub i32 %i.bi, %i.ay
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !137 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !31
  %i.bn = add nsw i32 %i.bj, %i.bm
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !31
  %i.bo = load i32, ptr @mca_coll_ftagree_era_rebuild, align 4, !tbaa !52
  %.not91 = icmp eq i32 %i.bo, 0
  br i1 %.not91, label %.loopexit102, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !32
  %i.br = or i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !32
  br label %.loopexit102

bb.i:                                             ; preds = %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !52
  %i.bx = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv135
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !52
  %i.ca = icmp sgt i32 %i.bw, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cc = sub nsw i32 %i.ak, %.1.lcssa
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr nonnull align 4 %i.bv, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !137 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !31
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !31
  %i.cj = load i32, ptr @mca_coll_ftagree_era_rebuild, align 4, !tbaa !52
  %.not90 = icmp eq i32 %i.cj, 0
  br i1 %.not90, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !32
  %i.cm = or i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cn = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv135
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !30
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.bu
  store i32 %i.cp, ptr %i.cs, align 4, !tbaa !52
  %.pre = load i32, ptr %i.q, align 4, !tbaa !171
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %i.ct = phi i32 [ %i.ah, %bb.i ], [ %.pre, %bb.l ] ; 2 uses
  %i.cu = phi ptr [ %i.ai, %bb.i ], [ %i.cf, %bb.l ]
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.cv = sext i32 %i.ct to i64
  %i.cw = icmp slt i64 %indvars.iv.next136, %i.cv
  br i1 %i.cw, label %.preheader, label %.loopexit102, !llvm.loop !317

.loopexit102:                                     ; preds = %bb.m, %bb.e, %bb.h, %.critedge.thread, %opal_thread_add_fetch_32.exit
  %i.cx = tail call fastcc i32 @era_next_child(ptr noundef %1, i32 noundef -1) ; 2 uses
  %i.cy = getelementptr i8, ptr %i.p, i64 264     ; 2 uses
  %.val120 = load ptr, ptr %i.cy, align 8, !tbaa !174
  %i.cz = getelementptr i8, ptr %.val120, i64 16
  %.val.val121 = load i32, ptr %i.cz, align 8, !tbaa !145
  %i.da = icmp slt i32 %i.cx, %.val.val121
  br i1 %i.da, label %.lr.ph122, label %._crit_edge

.lr.ph122:                                        ; preds = %.loopexit102
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph122, %.loopexit101
  %i.de = phi i32 [ %i.cx, %.lr.ph122 ], [ %i.dx, %.loopexit101 ] ; 3 uses
  %i.df = load volatile i64, ptr %i.db, align 8, !tbaa !61
  %.not96 = icmp eq i64 %i.df, 0
  br i1 %.not96, label %.loopexit101, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = load volatile ptr, ptr %i.dc, align 8, !tbaa !62 ; 2 uses
  %.not97117 = icmp eq ptr %i.dg, %i.dd
  br i1 %.not97117, label %.loopexit101, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.o, %bb.q
  %.083118 = phi ptr [ %i.dl, %bb.q ], [ %i.dg, %bb.o ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.083118, i64 40
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !187
  %i.dj = icmp eq i32 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %.083118, i64 16
  %i.dl = load volatile ptr, ptr %i.dk, align 8, !tbaa !64 ; 3 uses
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph119
  %i.dm = getelementptr inbounds nuw i8, ptr %.083118, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.083118, i64 24 ; 3 uses
  %i.do = load volatile ptr, ptr %i.dn, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store volatile ptr %i.dl, ptr %i.dp, align 8, !tbaa !64
  %i.dq = load volatile ptr, ptr %i.dn, align 8, !tbaa !63
  %i.dr = load volatile ptr, ptr %i.dm, align 8, !tbaa !64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store volatile ptr %i.dq, ptr %i.ds, align 8, !tbaa !63
  %i.dt = load volatile i64, ptr %i.db, align 8, !tbaa !61
  %i.du = add i64 %i.dt, -1
  store volatile i64 %i.du, ptr %i.db, align 8, !tbaa !61
  %i.dv = load volatile ptr, ptr %i.dn, align 8, !tbaa !63 ; 0 uses
  br label %.loopexit101

bb.q:                                             ; preds = %.lr.ph119
  %.not97 = icmp eq ptr %i.dl, %i.dd
  br i1 %.not97, label %.loopexit101, label %.lr.ph119, !llvm.loop !318

.loopexit101:                                     ; preds = %bb.q, %bb.o, %bb.p, %bb.n
  %i.dw = load i64, ptr %i.l, align 8
  tail call fastcc void @send_msg(ptr noundef %i.p, i32 noundef %i.de, ptr noundef null, i64 %i.dw, i32 noundef 2, ptr noundef %0, i32 noundef 0, ptr noundef null)
  %i.dx = tail call fastcc i32 @era_next_child(ptr noundef %1, i32 noundef %i.de) ; 2 uses
  %.val = load ptr, ptr %i.cy, align 8, !tbaa !174
  %i.dy = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.dy, align 8, !tbaa !145
  %i.dz = icmp slt i32 %i.dx, %.val.val
  br i1 %i.dz, label %bb.n, label %._crit_edge, !llvm.loop !319

._crit_edge:                                      ; preds = %.loopexit101, %.loopexit102
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.eb = load volatile i64, ptr %i.ea, align 8, !tbaa !61
  %.not92 = icmp eq i64 %i.eb, 0
  br i1 %.not92, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ed = load volatile ptr, ptr %i.ec, align 8, !tbaa !62 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %.not93123 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not93123, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.r, %.lr.ph126
  %.184124 = phi ptr [ %i.ej, %.lr.ph126 ], [ %i.ed, %bb.r ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.184124, i64 40
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !187
  %i.eh = load i64, ptr %i.l, align 8
  tail call fastcc void @send_msg(ptr noundef nonnull %i.p, i32 noundef %i.eg, ptr noundef null, i64 %i.eh, i32 noundef 2, ptr noundef %0, i32 noundef 0, ptr noundef null)
  %i.ei = getelementptr inbounds nuw i8, ptr %.184124, i64 16
  %i.ej = load volatile ptr, ptr %i.ei, align 8, !tbaa !64 ; 2 uses
  %.not93 = icmp eq ptr %i.ej, %i.ee
  br i1 %.not93, label %.loopexit, label %.lr.ph126, !llvm.loop !320

.loopexit:                                        ; preds = %.lr.ph126, %bb.r, %._crit_edge
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.en = load i16, ptr %i.em, align 2, !tbaa !25 ; 2 uses
  %i.eo = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not.i = icmp ugt i16 %i.el, %i.en
  br i1 %.not.i, label %era_collect_passed_agreements.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %2 = zext i16 %i.en to i64
  %.sroa.5.0.insert.insert.i = and i64 %i.eo, -65536
  %3 = zext i16 %i.el to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %bb.s
  %indvars.iv.i = phi i64 [ %3, %bb.s ], [ %indvars.iv.next.i, %bb.y ] ; 3 uses
  %.sroa.0.0.insert.insert.i = or i64 %indvars.iv.i, %.sroa.5.0.insert.insert.i ; 2 uses
  %i.ep = call i32 @opal_hash_table_get_value_uint64(ptr noundef nonnull @era_passed_agreements, i64 noundef %.sroa.0.0.insert.insert.i, ptr noundef nonnull %i.a) #20
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !59  ; 4 uses
  %i.es = call i32 @opal_hash_table_remove_value_uint64(ptr noundef nonnull @era_passed_agreements, i64 noundef %.sroa.0.0.insert.insert.i) #20 ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.eu = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.v, label %bb.w, !prof !69

bb.v:                                             ; preds = %bb.u
  %i.ew = atomicrmw volatile add ptr %i.et, i32 -1 monotonic, align 4
  %i.ex = add i32 %i.ew, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ey = load volatile i32, ptr %i.et, align 4, !tbaa !52
  %i.ez = add nsw i32 %i.ey, -1
  store volatile i32 %i.ez, ptr %i.et, align 4, !tbaa !52
  %i.fa = load volatile i32, ptr %i.et, align 4, !tbaa !52
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.w, %bb.v
  %.0.i.i = phi i32 [ %i.ex, %bb.v ], [ %i.fa, %bb.w ]
  %i.fb = icmp eq i32 %.0.i.i, 0
  br i1 %i.fb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.fc = load ptr, ptr %i.er, align 8, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !70 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !59 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ff, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.fg = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %i.ff, %bb.x ]
  %.07.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.fe, %bb.x ]
  call void %i.fg(ptr noundef nonnull %i.er) #20, !inline_history !321
  %i.fh = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !3

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.x
  call void @free(ptr noundef nonnull %i.er) #20
  br label %bb.y

bb.y:                                             ; preds = %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit.i, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %2
  br i1 %exitcond.not.i, label %era_collect_passed_agreements.exit, label %bb.t, !llvm.loop !322

era_collect_passed_agreements.exit:               ; preds = %bb.y, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  fence release
  store i32 4, ptr %i.b, align 8, !tbaa !45
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51 ; 5 uses
  %.not94 = icmp eq ptr %i.fk, null
  br i1 %.not94, label %ompi_request_complete.exit, label %bb.z

bb.z:                                             ; preds = %era_collect_passed_agreements.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 136 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !182 ; 2 uses
  %.not.i99 = icmp eq ptr %i.fm, null
  br i1 %.not.i99, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.fl, align 8, !tbaa !182
  %i.fn = call i32 %i.fm(ptr noundef nonnull %i.fk) #20, !inline_history !5
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.critedge.i, label %ompi_request_complete.exit

.critedge.i:                                      ; preds = %bb.aa, %bb.z
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 88 ; 3 uses
  %i.fq = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.fr = trunc nuw i8 %i.fq to i1                ; 2 uses
  br i1 %i.fr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge.i
  %i.fs = atomicrmw volatile xchg ptr %i.fp, i64 1 monotonic, align 8
  br label %opal_thread_swap_ptr.exit.i

bb.ac:                                            ; preds = %.critedge.i
  %i.ft = load i64, ptr %i.fp, align 8, !tbaa !90
  store i64 1, ptr %i.fp, align 8, !tbaa !90
  br label %opal_thread_swap_ptr.exit.i

opal_thread_swap_ptr.exit.i:                      ; preds = %bb.ac, %bb.ab
  %.0.i.i100 = phi i64 [ %i.fs, %bb.ab ], [ %i.ft, %bb.ac ] ; 2 uses
  %.not13.i = icmp eq i64 %.0.i.i100, 0
  br i1 %.not13.i, label %ompi_request_complete.exit, label %bb.ad

bb.ad:                                            ; preds = %opal_thread_swap_ptr.exit.i
  %i.fu = inttoptr i64 %.0.i.i100 to ptr          ; 9 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !158 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ae, label %bb.ah, !prof !146

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fr, label %bb.af, label %bb.ag, !prof !69

bb.af:                                            ; preds = %bb.ae
  %i.fy = atomicrmw volatile add ptr %i.fu, i32 -1 monotonic, align 4
  %i.fz = add i32 %i.fy, -1
  br label %opal_thread_add_fetch_32.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ga = load volatile i32, ptr %i.fu, align 4, !tbaa !52
  %i.gb = add nsw i32 %i.ga, -1
  store volatile i32 %i.gb, ptr %i.fu, align 4, !tbaa !52
  %i.gc = load volatile i32, ptr %i.fu, align 4, !tbaa !52
  br label %opal_thread_add_fetch_32.exit.i.i

opal_thread_add_fetch_32.exit.i.i:                ; preds = %bb.ag, %bb.af
  %.0.i.i.i = phi i32 [ %i.fz, %bb.af ], [ %i.gc, %bb.ag ]
  %i.gd = icmp eq i32 %.0.i.i.i, 0
  %i.ge = load i8, ptr @opal_uses_threads, align 1, !range !67
  %i.gf = trunc nuw i8 %i.ge to i1
  %or.cond.i.i = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %or.cond.i.i, label %bb.ai, label %ompi_request_complete.exit

bb.ah:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %i.fw, ptr %i.gg, align 4, !tbaa !156
  fence release
  %i.gh = atomicrmw volatile xchg ptr %i.fu, i32 0 monotonic, align 4 ; 0 uses
  %.old.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %.old1.i.i = trunc nuw i8 %.old.i.i to i1
  br i1 %.old1.i.i, label %bb.ai, label %ompi_request_complete.exit

bb.ai:                                            ; preds = %bb.ah, %opal_thread_add_fetch_32.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 56 ; 2 uses
  %i.gj = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gi) #20 ; 0 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gl = call i32 @pthread_cond_signal(ptr noundef nonnull %i.gk) #20 ; 0 uses
  %i.gm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gi) #20 ; 0 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 112
  store volatile i8 0, ptr %i.gn, align 8, !tbaa !157
  br label %ompi_request_complete.exit

ompi_request_complete.exit:                       ; preds = %bb.ai, %bb.ah, %opal_thread_add_fetch_32.exit.i.i, %opal_thread_swap_ptr.exit.i, %bb.aa, %era_collect_passed_agreements.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @era_merge_new_dead_list(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !171  ; 8 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21 ; 5 uses
  %i.l = icmp sgt i32 %1, 0
  %i.m = icmp sgt i32 %i.f, 0
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %.lr.ph.preheader, label %.preheader64

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = zext nneg i32 %i.f to i64
  %i.p = zext nneg i32 %1 to i64
  br label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.outer.backedge, %.lr.ph.preheader
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next130, %.outer.backedge ] ; 3 uses
  %.0.ph94 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0.ph.be, %.outer.backedge ]
  %.056.ph93 = phi i32 [ 0, %.lr.ph.preheader ], [ %.056.ph.be, %.outer.backedge ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv129
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 4 uses
  %i.s = sext i32 %.0.ph94 to i64
  %i.t = sext i32 %.056.ph93 to i64
  br label %.lr.ph.split

.preheader64.loopexit:                            ; preds = %bb.d
  %i.u = trunc nuw nsw i64 %indvars.iv129 to i32
  %i.v = trunc nsw i64 %indvars.iv.next125 to i32
  %i.w = trunc nsw i64 %indvars.iv.next to i32
  br label %.preheader64

.preheader64.loopexit106:                         ; preds = %.outer.backedge
  %i.x = trunc nuw nsw i64 %indvars.iv.next130 to i32
  br label %.preheader64

.preheader64:                                     ; preds = %.preheader64.loopexit106, %.preheader64.loopexit, %bb.b
  %.058.ph.lcssa = phi i32 [ %i.u, %.preheader64.loopexit ], [ 0, %bb.b ], [ %i.x, %.preheader64.loopexit106 ] ; 3 uses
  %.056.lcssa = phi i32 [ %i.v, %.preheader64.loopexit ], [ 0, %bb.b ], [ %.056.ph.be, %.preheader64.loopexit106 ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.w, %.preheader64.loopexit ], [ 0, %bb.b ], [ %.0.ph.be, %.preheader64.loopexit106 ] ; 2 uses
  %i.y = icmp slt i32 %.056.lcssa, %i.f
  br i1 %i.y, label %.lr.ph100.preheader, label %.preheader

.lr.ph100.preheader:                              ; preds = %.preheader64
  %i.z = sext i32 %.0.lcssa to i64                ; 3 uses
  %i.aa = shl nsw i64 %i.z, 2
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.aa
  %i.ab = sext i32 %.056.lcssa to i64             ; 4 uses
  %i.ac = shl nsw i64 %i.ab, 2
  %scevgep131 = getelementptr i8, ptr %i.d, i64 %i.ac
  %i.ad = xor i32 %.056.lcssa, -1
  %i.ae = add i32 %i.f, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep131, i64 %i.ah, i1 false), !tbaa !52
  %wide.trip.count = sext i32 %i.f to i64         ; 2 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ab     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph100.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph100.preheader
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.aj = add nsw i64 %n.vec, %i.ab
  %i.ak = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.z, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.ak, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.al = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.am = add <2 x i64> %vec.phi169, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.am, %i.al
  %i.ao = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.preheader.loopexit, label %.lr.ph100.preheader187

.lr.ph100.preheader187:                           ; preds = %.lr.ph100.preheader, %middle.block
  %indvars.iv134.ph = phi i64 [ %i.ab, %.lr.ph100.preheader ], [ %i.aj, %middle.block ]
  %indvars.iv132.ph = phi i64 [ %i.z, %.lr.ph100.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph100
end_hunk_0
