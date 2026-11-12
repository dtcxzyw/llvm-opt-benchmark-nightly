Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/planner?download=true
inline.NumInlined: 49
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hinsert:bb.a
  %i.p = zext i32 %.036.us.i to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 6 uses
  %i.r = load i32, ptr %i.j, align 8, !tbaa !61
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.j, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 4
  %i.v = trunc i64 %i.u to i32                    ; 4 uses
  %i.w = and i32 %i.v, 2097152
  %.not.us.i = icmp eq i32 %i.w, 0
  br i1 %.not.us.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.x = and i32 %i.v, 4194304
  %.not38.us.i = icmp eq i32 %i.x, 0
  br i1 %.not38.us.i, label %md5eq.exit.thread.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %1, align 4, !tbaa !33
  %i.z = load i32, ptr %i.q, align 4, !tbaa !33
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %md5eq.exit.thread.us.i

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %md5eq.exit.thread.us.i

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %md5eq.exit.us.i, label %md5eq.exit.thread.us.i

md5eq.exit.us.i:                                  ; preds = %bb.e
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %.not58.us.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not58.us.i, label %subsumes.exit.us.i, label %md5eq.exit.thread.us.i

subsumes.exit.us.i:                               ; preds = %md5eq.exit.us.i
  %i.am = load i64, ptr %2, align 4
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = and i32 %i.v, 1048575
  %i.ap = xor i32 %i.ao, 1048575
  %i.aq = and i32 %i.ap, %i.an
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = lshr i32 %i.an, 23
  %i.at = lshr i32 %i.v, 23
  %i.au = icmp samesign ule i32 %i.as, %i.at
  %narrow.i.us.i = select i1 %i.ar, i1 %i.au, i1 false
  br i1 %narrow.i.us.i, label %bb.f, label %md5eq.exit.thread.us.i

bb.f:                                             ; preds = %subsumes.exit.us.i
  %.not41.us.i = icmp eq ptr %.035.us.i, null
  %spec.select.us.i = select i1 %.not41.us.i, ptr %i.q, ptr %.035.us.i
  %i.av = load i32, ptr %i.m, align 4, !tbaa !58
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr %i.m, align 4, !tbaa !58
  %i.ax = load i64, ptr %i.t, align 4
  %i.ay = and i64 %i.ax, -7340033
  %i.az = or disjoint i64 %i.ay, 2097152
  store i64 %i.az, ptr %i.t, align 4
  %.pre61.i = load i32, ptr %i.d, align 8, !tbaa !57
  br label %md5eq.exit.thread.us.i

md5eq.exit.thread.us.i:                           ; preds = %bb.f, %subsumes.exit.us.i, %md5eq.exit.us.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ba = phi i32 [ %.pre61.i, %bb.f ], [ %i.n, %subsumes.exit.us.i ], [ %i.n, %md5eq.exit.us.i ], [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %i.n, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %.2.us.i = phi ptr [ %spec.select.us.i, %bb.f ], [ %.035.us.i, %subsumes.exit.us.i ], [ %.035.us.i, %md5eq.exit.us.i ], [ %.035.us.i, %bb.b ], [ %.035.us.i, %bb.c ], [ %.035.us.i, %bb.e ], [ %.035.us.i, %bb.d ] ; 2 uses
  %i.bb = add i32 %.036.us.i, %i.i                ; 2 uses
  %.not.i47.us.i = icmp ult i32 %i.bb, %i.ba
  %i.bc = select i1 %.not.i47.us.i, i32 0, i32 %i.ba
  %i.bd = sub i32 %i.bb, %i.bc                    ; 2 uses
  %.not42.us.i = icmp eq i32 %i.bd, %i.e
  br i1 %.not42.us.i, label %.thread.i, label %.split.us.i, !llvm.loop !92

.split.i:                                         ; preds = %bb.a, %md5eq.exit.thread.i
  %i.be = phi i32 [ %i.cw, %md5eq.exit.thread.i ], [ %.val.i, %bb.a ] ; 7 uses
  %.036.i = phi i32 [ %i.cz, %md5eq.exit.thread.i ], [ %i.e, %bb.a ] ; 2 uses
  %.035.i = phi ptr [ %.2.i, %md5eq.exit.thread.i ], [ null, %bb.a ] ; 10 uses
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.bg = zext i32 %.036.i to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bg ; 6 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !61
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.j, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 4            ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 3 uses
  %i.bn = and i32 %i.bm, 2097152
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.split.i
  %i.bo = and i32 %i.bm, 4194304
  %.not38.i = icmp eq i32 %i.bo, 0
  br i1 %.not38.i, label %md5eq.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = load i32, ptr %1, align 4, !tbaa !33
  %i.bq = load i32, ptr %i.bh, align 4, !tbaa !33
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.i, label %md5eq.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %i.f, align 4, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.j, label %md5eq.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.k, align 4, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %md5eq.exit.i, label %md5eq.exit.thread.i

md5eq.exit.i:                                     ; preds = %bb.j
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !33
  %.not58.i = icmp eq i32 %i.ca, %i.cc
  br i1 %.not58.i, label %bb.k, label %md5eq.exit.thread.i

bb.k:                                             ; preds = %md5eq.exit.i
  %i.cd = load i64, ptr %2, align 4               ; 2 uses
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = lshr i64 %i.bl, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 1048575
  %i.cj = xor i32 %i.ci, 1048575
  %i.ck = and i32 %i.cj, %i.cf
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %subsumes.exit.i, label %md5eq.exit.thread.i

subsumes.exit.i:                                  ; preds = %bb.k
  %i.cm = trunc i64 %i.cd to i32
  %i.cn = and i32 %i.cm, 1048575
  %i.co = xor i32 %i.cn, 1048575
  %i.cp = and i32 %i.co, %i.bm
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %md5eq.exit.thread.i

bb.l:                                             ; preds = %subsumes.exit.i
  %.not41.i = icmp eq ptr %.035.i, null
  %spec.select.i = select i1 %.not41.i, ptr %i.bh, ptr %.035.i
  %i.cr = load i32, ptr %i.m, align 4, !tbaa !58
  %i.cs = add i32 %i.cr, -1
  store i32 %i.cs, ptr %i.m, align 4, !tbaa !58
  %i.ct = load i64, ptr %i.bk, align 4
  %i.cu = and i64 %i.ct, -7340033
  %i.cv = or disjoint i64 %i.cu, 2097152
  store i64 %i.cv, ptr %i.bk, align 4
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !57
  br label %md5eq.exit.thread.i

md5eq.exit.thread.i:                              ; preds = %bb.l, %subsumes.exit.i, %bb.k, %md5eq.exit.i, %bb.j, %bb.i, %bb.h, %bb.g
  %i.cw = phi i32 [ %.pre.i, %bb.l ], [ %i.be, %subsumes.exit.i ], [ %i.be, %md5eq.exit.i ], [ %i.be, %bb.g ], [ %i.be, %bb.h ], [ %i.be, %bb.j ], [ %i.be, %bb.i ], [ %i.be, %bb.k ] ; 3 uses
  %.2.i = phi ptr [ %spec.select.i, %bb.l ], [ %.035.i, %subsumes.exit.i ], [ %.035.i, %md5eq.exit.i ], [ %.035.i, %bb.g ], [ %.035.i, %bb.h ], [ %.035.i, %bb.j ], [ %.035.i, %bb.i ], [ %.035.i, %bb.k ] ; 2 uses
  %i.cx = add i32 %.036.i, %i.i                   ; 2 uses
  %.not.i47.i = icmp ult i32 %i.cx, %i.cw
  %i.cy = select i1 %.not.i47.i, i32 0, i32 %i.cw
  %i.cz = sub i32 %i.cx, %i.cy                    ; 2 uses
  %.not42.i = icmp eq i32 %i.cz, %i.e
  br i1 %.not42.i, label %.thread.i, label %.split.i, !llvm.loop !92

.thread.i:                                        ; preds = %md5eq.exit.thread.i, %.split.i, %md5eq.exit.thread.us.i, %.split.us.i
  %.us-phi.i = phi ptr [ %.035.us.i, %.split.us.i ], [ %.2.us.i, %md5eq.exit.thread.us.i ], [ %.035.i, %.split.i ], [ %.2.i, %md5eq.exit.thread.i ] ; 6 uses
  %.not43.i = icmp eq ptr %.us-phi.i, null
  br i1 %.not43.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !62
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !62
  %i.dd = load i32, ptr %i.m, align 4, !tbaa !58
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.m, align 4, !tbaa !58
  %i.df = load i64, ptr %2, align 4
  %i.dg = and i64 %i.df, 4503595332403200         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 4            ; 2 uses
  %i.dj = and i64 %i.di, -4503595332403201
  %i.dk = or disjoint i64 %i.dj, %i.dg            ; 2 uses
  store i64 %i.dk, ptr %i.dh, align 4
  %i.dl = load i64, ptr %2, align 4
  %i.dm = and i64 %i.dl, 1048575                  ; 2 uses
  %i.dn = and i64 %i.dk, -1048576
  %i.do = or disjoint i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.dh, align 4
  %i.dp = load i64, ptr %2, align 4
  %i.dq = and i64 %i.dp, 4286578688
  %i.dr = and i64 %i.di, 1048576
  %i.ds = and i32 %3, 4095
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 %i.dt, 52
  %4 = or disjoint i64 %i.dr, %i.du
  %i.dv = or disjoint i64 %i.dq, %4
  %i.dw = or disjoint i64 %i.dv, %i.dg
  %i.dx = or disjoint i64 %i.dw, %i.dm
  %i.dy = or disjoint i64 %i.dx, 6291456
  store i64 %i.dy, ptr %i.dh, align 4
  %i.dz = icmp ult i32 %3, 4096
  br i1 %i.dz, label %fill_slot.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @fftw_assertion_failed(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.1) #8
  br label %fill_slot.exit.i

fill_slot.exit.i:                                 ; preds = %bb.n, %bb.m
  %i.ea = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.ea, ptr %.us-phi.i, align 4, !tbaa !33
  %i.eb = load i32, ptr %i.f, align 4, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !33
  %i.ed = load i32, ptr %i.k, align 4, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !33
  %i.ef = load i32, ptr %i.l, align 4, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 12
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !33
  br label %htab_insert.exit

bb.o:                                             ; preds = %.thread.i
  tail call fastcc void @hgrow(ptr noundef nonnull %i.c)
  tail call fastcc void @hinsert0(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, i32 noundef %3)
  br label %htab_insert.exit

htab_insert.exit:                                 ; preds = %fill_slot.exit.i, %bb.o
  ret void
}

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #3

declare void @fftw_md5begin(ptr noundef) local_unnamed_addr #3

declare void @fftw_md5unsigned(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fftw_md5int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fftw_md5end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @htab_lookup(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !57  ; 4 uses
  %.val38 = load i32, ptr %1, align 4, !tbaa !33
  %i.b = urem i32 %.val38, %.val                  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val40 = load i32, ptr %i.c, align 4, !tbaa !33
  %i.d = add i32 %.val, -1
  %i.e = urem i32 %.val40, %i.d
  %i.f = add nuw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !94
  %i.j = load ptr, ptr %0, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load i32, ptr %i.k, align 8, !tbaa !95
  br label %bb.b

bb.b:                                             ; preds = %md5eq.exit.thread, %bb.a
  %i.n = phi i32 [ %.pre, %bb.a ], [ %i.q, %md5eq.exit.thread ]
  %.030 = phi i32 [ %i.b, %bb.a ], [ %i.bt, %md5eq.exit.thread ] ; 2 uses
  %.029 = phi ptr [ null, %bb.a ], [ %.1, %md5eq.exit.thread ] ; 12 uses
  %i.o = zext i32 %.030 to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.o ; 6 uses
  %i.q = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.q, ptr %i.k, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i64, ptr %i.r, align 4              ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 5 uses
  %i.u = and i32 %i.t, 2097152
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.t, 4194304
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %md5eq.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %1, align 4, !tbaa !33
  %i.x = load i32, ptr %i.p, align 4, !tbaa !33
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %md5eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.c, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %md5eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %md5eq.exit, label %md5eq.exit.thread

md5eq.exit:                                       ; preds = %bb.f
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %.not52 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not52, label %bb.g, label %md5eq.exit.thread

bb.g:                                             ; preds = %md5eq.exit
  %.not.i = icmp ugt i64 %i.s, -4503599627370497
  br i1 %.not.i, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i64 %i.s, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = load i64, ptr %2, align 4               ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575
  %i.aq = xor i32 %i.ap, 1048575
  %i.ar = and i32 %i.aq, %i.al
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %subsumes.exit, label %md5eq.exit.thread

.split:                                           ; preds = %bb.g
  %i.at = load i64, ptr %2, align 4
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = and i32 %i.au, 1048575
  %i.aw = xor i32 %i.av, 1048575
  %i.ax = and i32 %i.aw, %i.t
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = lshr i32 %i.t, 23
  %i.ba = lshr i32 %i.au, 23
  %i.bb = icmp samesign ule i32 %i.az, %i.ba
  %narrow.i = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %narrow.i, label %bb.i, label %md5eq.exit.thread

subsumes.exit:                                    ; preds = %bb.h
  %i.bc = trunc i64 %i.am to i32
  %i.bd = and i32 %i.t, 1048575
  %i.be = xor i32 %i.bd, 1048575
  %i.bf = and i32 %i.be, %i.bc
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %md5eq.exit.thread

bb.i:                                             ; preds = %.split, %subsumes.exit
  %.not35 = icmp eq ptr %.029, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = lshr i64 %i.s, 32
  %i.bi = trunc nuw i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bk = load i64, ptr %i.bj, align 4
  %i.bl = lshr i64 %i.bk, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1048575
  %i.bo = xor i32 %i.bn, 1048575
  %i.bp = and i32 %i.bo, %i.bi
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %md5eq.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %md5eq.exit.thread

md5eq.exit.thread:                                ; preds = %.split, %bb.h, %bb.d, %bb.e, %bb.f, %bb.j, %bb.k, %subsumes.exit, %md5eq.exit, %bb.c
  %.1 = phi ptr [ %i.p, %bb.k ], [ %.029, %bb.j ], [ %.029, %subsumes.exit ], [ %.029, %md5eq.exit ], [ %.029, %bb.c ], [ %.029, %bb.d ], [ %.029, %bb.f ], [ %.029, %bb.e ], [ %.029, %bb.h ], [ %.029, %.split ] ; 2 uses
  %i.br = add i32 %i.f, %.030                     ; 2 uses
  %.not.i41 = icmp ult i32 %i.br, %.val
  %i.bs = select i1 %.not.i41, i32 0, i32 %.val
  %i.bt = sub i32 %i.br, %i.bs                    ; 2 uses
  %.not36 = icmp eq i32 %i.bt, %i.b
  br i1 %.not36, label %.thread, label %bb.b, !llvm.loop !93

.thread:                                          ; preds = %bb.b, %md5eq.exit.thread
  %.251 = phi ptr [ %.1, %md5eq.exit.thread ], [ %.029, %bb.b ] ; 2 uses
  %.not37 = icmp eq ptr %.251, null
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !96
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  ret ptr %.251
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @search0(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 7 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i64 %i.b, 8589934592
end_hunk_0
begin_hunk_1_@hgrow:bb.a
  %i.p = mul nuw nsw i64 %i.o, 24
  %i.q = tail call ptr @fftw_malloc_plain(i64 noundef %i.p) #8 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !106
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !106
  %.not31.i = icmp eq i32 %i.n, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = add nsw i64 %i.o, -1
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, 4294967288
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 4
  %i.z = and i64 %i.y, -7340033
  store i64 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 4
  %i.ad = and i64 %i.ac, -7340033
  store i64 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = and i64 %i.ag, -7340033
  store i64 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = and i64 %i.ak, -7340033
  store i64 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 4
  %i.ap = and i64 %i.ao, -7340033
  store i64 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 4
  %i.at = and i64 %i.as, -7340033
  store i64 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 160 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4
  %i.ax = and i64 %i.aw, -7340033
  store i64 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 184 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 4
  %i.bb = and i64 %i.ba, -7340033
  store i64 %i.bb, ptr %i.az, align 4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !103

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i.epil
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 4
  %i.bf = and i64 %i.be, -7340033
  store i64 %i.bf, ptr %i.bd, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !104

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 %i.n, ptr %i.f, align 8, !tbaa !57
  store ptr %i.q, ptr %0, align 8, !tbaa !56
  store i32 0, ptr %i.a, align 4, !tbaa !58
  %.not32.i = icmp eq i32 %i.g, 0
  br i1 %.not32.i, label %rehash.exit, label %.lr.ph29.preheader.i

.lr.ph29.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count37.i = zext i32 %i.g to i64
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.d, %.lr.ph29.preheader.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph29.preheader.i ], [ %indvars.iv.next35.i, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv34.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 4            ; 2 uses
  %i.bj = and i64 %i.bi, 4194304
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph29.i
  %i.bk = lshr i64 %i.bi, 52
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  tail call fastcc void @hinsert0(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i32 noundef %i.bl)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph29.i
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %rehash.exit, label %.lr.ph29.i, !llvm.loop !105

rehash.exit:                                      ; preds = %bb.d, %._crit_edge.i
  tail call void @fftw_ifree0(ptr noundef %i.k) #8
  br label %bb.e

bb.e:                                             ; preds = %rehash.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hinsert0(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !57  ; 4 uses
  %.val17 = load i32, ptr %1, align 4, !tbaa !33
  %i.b = urem i32 %.val17, %.val                  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val19 = load i32, ptr %i.c, align 4, !tbaa !33
  %i.d = add i32 %.val, -1
  %i.e = urem i32 %.val19, %i.d
  %i.f = add nuw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !33
  %i.j = add nsw <2 x i32> %i.i, splat (i32 1)    ; 2 uses
  store <2 x i32> %i.j, ptr %i.g, align 8, !tbaa !33
  %i.k = zext i32 %i.b to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 4
  %i.o = and i64 %i.n, 4194304
  %.not22 = icmp eq i64 %i.o, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = extractelement <2 x i32> %i.j, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi i32 [ %i.u, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %.023 = phi i32 [ %i.t, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %i.r = add i32 %i.f, %.023                      ; 2 uses
  %.not.i = icmp ult i32 %i.r, %.val
  %i.s = select i1 %.not.i, i32 0, i32 %.val
  %i.t = sub i32 %i.r, %i.s                       ; 2 uses
  %i.u = add nsw i32 %i.q, 1                      ; 2 uses
  store i32 %i.u, ptr %i.g, align 8, !tbaa !61
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 4
  %i.z = and i64 %i.y, 4194304
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa21 = phi ptr [ %i.l, %bb.a ], [ %i.w, %.lr.ph ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !58
  %i.ah = load i64, ptr %2, align 4
  %i.ai = and i64 %i.ah, 4503595332403200         ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 4            ; 2 uses
  %i.ak = and i64 %i.aj, -4503595332403201
  %i.al = or disjoint i64 %i.ak, %i.ai            ; 2 uses
  store i64 %i.al, ptr %i.aa, align 4
  %i.am = load i64, ptr %2, align 4
  %i.an = and i64 %i.am, 1048575                  ; 2 uses
  %i.ao = and i64 %i.al, -1048576
  %i.ap = or disjoint i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.aa, align 4
  %i.aq = load i64, ptr %2, align 4
  %i.ar = and i64 %i.aq, 4286578688
  %i.as = and i64 %i.aj, 1048576
  %i.at = and i32 %3, 4095
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, 52
  %4 = or disjoint i64 %i.as, %i.av
  %i.aw = or disjoint i64 %i.ar, %4
  %i.ax = or disjoint i64 %i.aw, %i.ai
  %i.ay = or disjoint i64 %i.ax, %i.an
  %i.az = or disjoint i64 %i.ay, 6291456
  store i64 %i.az, ptr %i.aa, align 4
  %i.ba = icmp ult i32 %3, 4096
  br i1 %i.ba, label %fill_slot.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @fftw_assertion_failed(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.1) #8
  br label %fill_slot.exit

fill_slot.exit:                                   ; preds = %._crit_edge, %bb.b
  %i.bb = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.bb, ptr %.lcssa21, align 4, !tbaa !33
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 4
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 8
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !33
  ret void
}

declare void @fftw_assertion_failed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @fftw_next_prime(i64 noundef) local_unnamed_addr #3

declare void @fftw_md5puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !37}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!15 = !{!"plan_s", !13, i64 0, !14, i64 8, !11, i64 40, !8, i64 48, !8, i64 52}
!16 = !{!15, !11, i64 24}
!17 = !{!15, !11, i64 32}
!18 = !{!"p1 _ZTS9slvdesc_s", !13, i64 0}
!19 = !{!"p1 omnipotent char", !13, i64 0}
!20 = !{!"p1 _ZTS10solution_s", !13, i64 0}
!21 = !{!"", !20, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40}
!22 = !{!"", !8, i64 0, !8, i64 2, !8, i64 2, !8, i64 4, !8, i64 6}
!23 = !{!"long", !7, i64 0}
!24 = !{!"timeval", !23, i64 0, !23, i64 8}
!25 = !{!"planner_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !18, i64 48, !8, i64 56, !8, i64 60, !19, i64 64, !8, i64 72, !7, i64 76, !8, i64 108, !21, i64 112, !21, i64 160, !8, i64 208, !22, i64 212, !24, i64 224, !11, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !11, i64 264, !11, i64 272, !8, i64 280}
!26 = !{!25, !13, i64 16}
!27 = !{!25, !13, i64 0}
!28 = !{!25, !8, i64 256}
!29 = !{!25, !8, i64 108}
!30 = !{!25, !8, i64 208}
!31 = !{!25, !8, i64 252}
!32 = !{!25, !11, i64 240}
!33 = !{!8, !8, i64 0}
!34 = !{!25, !8, i64 56}
!35 = !{!25, !18, i64 48}
!36 = !{!"p1 _ZTS8solver_s", !13, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"slvdesc_s", !36, i64 0, !19, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!40 = !{!39, !36, i64 0}
!41 = !{!39, !19, i64 8}
!42 = !{!39, !8, i64 20}
!43 = !{!39, !8, i64 16}
!44 = !{!"solver_s", !13, i64 0, !8, i64 8}
!45 = !{!44, !13, i64 0}
!46 = !{!"", !8, i64 0, !13, i64 8, !13, i64 16}
!47 = !{!46, !8, i64 0}
!48 = !{!25, !8, i64 248}
!49 = !{!"problem_s", !13, i64 0}
!50 = !{!49, !13, i64 0}
!51 = !{!"", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!52 = !{!7, !7, i64 0}
!53 = !{!51, !8, i64 0}
!54 = !{!46, !13, i64 8}
!55 = !{!25, !13, i64 8}
!56 = !{!21, !20, i64 0}
!57 = !{!21, !8, i64 8}
!58 = !{!21, !8, i64 12}
!59 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!60 = !{!59, !13, i64 8}
!61 = !{!21, !8, i64 32}
!62 = !{!21, !8, i64 28}
!63 = distinct !{!63, !37}
!64 = distinct !{!64, !38}
!65 = !{!25, !8, i64 60}
!66 = !{!36, !36, i64 0}
!67 = !{!19, !19, i64 0}
!68 = !{i64 0, i64 8, !66, i64 8, i64 8, !67, i64 16, i64 4, !33, i64 20, i64 4, !33, i64 24, i64 4, !33}
!69 = !{!25, !19, i64 64}
!70 = !{!25, !8, i64 72}
!71 = !{!39, !8, i64 24}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = !{!25, !13, i64 40}
!75 = !{!25, !8, i64 280}
!76 = !{!51, !13, i64 8}
!77 = !{!25, !13, i64 24}
!78 = !{!25, !13, i64 32}
!79 = distinct !{!79, !37}
!80 = !{!"printer_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36}
!81 = !{!80, !13, i64 0}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !37}
!84 = distinct !{!84, !37}
!85 = !{!"scanner_s", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24}
!86 = !{!85, !13, i64 0}
!87 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 4, !33, i64 20, i64 4, !33, i64 24, i64 4, !33, i64 28, i64 4, !33, i64 32, i64 4, !33}
!88 = !{i64 0, i64 16, !52, i64 16, i64 8, !52}
!89 = !{!20, !20, i64 0}
!90 = distinct !{!90, !37}
!91 = !{ptr @fftw_mkplan_d}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = !{!21, !8, i64 16}
!95 = !{!21, !8, i64 24}
!96 = !{!21, !8, i64 20}
!97 = distinct !{null, ptr @fftw_iestimate_cost}
!98 = distinct !{null, null}
!99 = !{!15, !8, i64 52}
!100 = !{!15, !11, i64 40}
!101 = !{!25, !11, i64 272}
!102 = !{!25, !11, i64 264}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !37}
!106 = !{!21, !8, i64 40}
end_hunk_1
