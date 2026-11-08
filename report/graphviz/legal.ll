Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/legal?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Plegal_arrangement:bb.a
  %or.cond.i.i.i = select i1 %i.lu, i1 %i.lw, i1 false
  br i1 %or.cond.i.i.i, label %bb.ey, label %bb.es

bb.es:                                            ; preds = %bb.er
  br i1 %i.lu, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.lx = fcmp oeq double %i.lt, %i.lm
  %i.ly = fcmp oeq double %i.dr, %i.ln
  %or.cond39.i.i.i = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond39.i.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.lz = fcmp oeq double %.sroa.07.0.copyload.i121.i.i, %i.lm
  %i.ma = fcmp oeq double %.sroa.610.0.copyload.i123.i.i, %i.ln
  %or.cond40.i.i.i = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond40.i.i.i, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  br i1 %i.lw, label %.critedge.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.mb = fcmp oeq double %i.lv, %i.lm
  %i.mc = extractelement <2 x double> %i.ea, i64 1
  %i.md = fcmp oeq double %i.mc, %i.ln
  %or.cond41.i.i.i = select i1 %i.mb, i1 %i.md, i1 false
  br i1 %or.cond41.i.i.i, label %.critedge.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.me = fcmp oeq double %.sroa.0.0.copyload.i.i.i, %i.lm
  %i.mf = fcmp oeq double %.sroa.6.0.copyload.i.i.i, %i.ln
  %or.cond42.i.i.i = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond42.i.i.i, label %.critedge.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu, %bb.er
  %i.mg = load i8, ptr @Verbose, align 1, !tbaa !52
  %i.mh = icmp ugt i8 %i.mg, 1
  br i1 %i.mh, label %bb.ez, label %bb.fl

bb.ez:                                            ; preds = %bb.ey
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.mj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.3, double noundef %i.lm, double noundef %i.ln) #15 ; 0 uses
  call fastcc void @putSeg(i32 noundef 1, ptr noundef nonnull readonly %i.do)
  call fastcc void @putSeg(i32 noundef 2, ptr noundef nonnull readonly %.075121.i)
  br label %bb.fl

.critedge.i:                                      ; preds = %bb.ex, %bb.ew, %bb.ev, %online.exit120.i.i, %online.exit.i.i, %sgnarea.exit33.i.i, %sgnarea.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.mk = add nuw i64 %.073118.i, 1               ; 2 uses
  %.val91.i = load i64, ptr %i.ci, align 8, !tbaa !51
  %.not88.i = icmp ult i64 %i.mk, %.val91.i
  br i1 %.not88.i, label %bb.t, label %.critedge._crit_edge.i, !llvm.loop !31

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %.critedge.preheader.i
  store ptr %.075121.i, ptr %i.cj, align 8, !tbaa !54
  %i.ml = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 8) #18
  %i.mm = load ptr, ptr %i.cj, align 8, !tbaa !54
  %i.mn = load ptr, ptr %2, align 8, !tbaa !52
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.ml
  store ptr %i.mm, ptr %i.mo, align 8, !tbaa !22
  %i.mp = getelementptr inbounds nuw i8, ptr %.075121.i, i64 24
  store ptr %.075121.i, ptr %i.mp, align 8, !tbaa !47
  br label %bb.fg

gt.exit.thread.i:                                 ; preds = %bb.s, %bb.q
  %i.mq = getelementptr inbounds nuw i8, ptr %.075121.i, i64 24 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !47 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %find_ints.exit.thread, label %bb.fa

find_ints.exit.thread:                            ; preds = %gt.exit.thread.i
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %findInside.exit

bb.fa:                                            ; preds = %gt.exit.thread.i
  store ptr %i.mr, ptr %i.cj, align 8, !tbaa !54
  %i.mt = call i64 @gv_list_find_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, ptr noundef nonnull %i.cj, i64 noundef 8) #18 ; 4 uses
  %i.mu = icmp eq i64 %i.mt, -1
  br i1 %i.mu, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.mv = load ptr, ptr %i.ck, align 8, !tbaa !55 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.mv to i64
  switch i64 %magicptr.i, label %bb.fd [
    i64 1, label %bb.fc
    i64 0, label %bb.fe
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.mw = load ptr, ptr %2, align 8, !tbaa !52
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mt
  %.0.copyload8.i = load ptr, ptr %i.mx, align 8
  call void @free(ptr noundef %.0.copyload8.i) #18
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.my = load ptr, ptr %2, align 8, !tbaa !52
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mt
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !22
  call void %i.mv(ptr noundef %i.na) #18, !inline_history !32
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb
  call void @gv_list_remove_(ptr noundef nonnull %2, i64 noundef %i.mt, i64 noundef 8) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fa
  store ptr null, ptr %i.mq, align 8, !tbaa !47
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.critedge._crit_edge.i, %gt.exit.i
  %i.nb = load ptr, ptr %i.co, align 8, !tbaa !22 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !21 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !17
  %i.ng = icmp eq ptr %i.nb, %i.nf
  br i1 %i.ng, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.nh = load ptr, ptr %i.nd, align 8, !tbaa !16
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.nj = phi ptr [ %i.nh, %bb.fh ], [ %i.ni, %bb.fi ]
  br i1 %i.cz, label %bb.q, label %bb.fk, !llvm.loop !33

bb.fk:                                            ; preds = %bb.fj
  %i.nk = add nuw nsw i64 %.079123.i, 1           ; 2 uses
  %exitcond137.not.i = icmp eq i64 %i.nk, %.060.lcssa183192
  br i1 %exitcond137.not.i, label %.thread104.i, label %bb.m, !llvm.loop !34

bb.fl:                                            ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread104.i

.thread104.i:                                     ; preds = %bb.fk, %bb.fl, %._crit_edge.thread.i
  %i.nl = phi ptr [ %i.f, %bb.fl ], [ %i.bx, %._crit_edge.thread.i ], [ %i.f, %bb.fk ] ; 6 uses
  %.not215 = phi i1 [ true, %bb.fl ], [ %.not.i, %._crit_edge.thread.i ], [ false, %bb.fk ]
  %i.nm = phi ptr [ %i.ax, %bb.fl ], [ %i.by, %._crit_edge.thread.i ], [ %i.ax, %bb.fk ] ; 4 uses
  %i.nn = phi ptr [ %i.ca, %bb.fl ], [ %i.bz, %._crit_edge.thread.i ], [ %i.ca, %bb.fk ]
  %not..not.not = phi i32 [ 0, %bb.fl ], [ 1, %._crit_edge.thread.i ], [ 1, %bb.fk ]
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val126.i = load i64, ptr %i.no, align 8, !tbaa !51
  %.not.i74 = icmp eq i64 %.val126.i, 0
  br i1 %.not.i74, label %find_ints.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.thread104.i
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fp, %.lr.ph128.i
  %.068127.i = phi i64 [ 0, %.lr.ph128.i ], [ %i.nx, %bb.fp ] ; 2 uses
  %i.nq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.068127.i) #18 ; 2 uses
  %i.nr = load ptr, ptr %i.np, align 8, !tbaa !55 ; 2 uses
  %magicptr90.i = ptrtoint ptr %i.nr to i64
  switch i64 %magicptr90.i, label %bb.fo [
    i64 1, label %bb.fn
    i64 0, label %bb.fp
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.ns = load ptr, ptr %2, align 8, !tbaa !52
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nq
  %.0.copyload.i = load ptr, ptr %i.nt, align 8
  call void @free(ptr noundef %.0.copyload.i) #18
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.nu = load ptr, ptr %2, align 8, !tbaa !52
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.nq
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !22
  call void %i.nr(ptr noundef %i.nw) #18, !inline_history !32
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.nx = add nuw i64 %.068127.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.no, align 8, !tbaa !51
  %i.ny = icmp ult i64 %i.nx, %.val.i
  br i1 %i.ny, label %bb.fm, label %find_ints.exit, !llvm.loop !35

find_ints.exit:                                   ; preds = %bb.fp, %.thread104.i
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 8) #18
  call void @gv_list_free_(ptr noundef nonnull %2) #18
  call void @free(ptr noundef %i.nn) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.not215, label %findInside.exit, label %.lr.ph107.preheader.i

.lr.ph107.preheader.i:                            ; preds = %find_ints.exit
  %i.nz = zext nneg i32 %1 to i64                 ; 3 uses
  br label %.lr.ph107.i

.loopexit.i:                                      ; preds = %bb.gb, %.lr.ph107.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next113.i, %i.nz
  br i1 %exitcond116.not.i, label %findInside.exit, label %.lr.ph107.i, !llvm.loop !36

.lr.ph107.i:                                      ; preds = %.loopexit.i, %.lr.ph107.preheader.i
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph107.preheader.i ], [ %indvars.iv.next113.i, %.loopexit.i ] ; 3 uses
  %indvars.iv.i.a = phi i64 [ 1, %.lr.ph107.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv112.i
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !39 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !46 ; 2 uses
  %.sroa.0.0.copyload.i = load double, ptr %i.oc, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !18
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 3 uses
  %i.od = icmp samesign ult i64 %indvars.iv.next113.i, %i.nz
  br i1 %i.od, label %.lr.ph.i75, label %.loopexit.i

.lr.ph.i75:                                       ; preds = %.lr.ph107.i
  %i.oe = getelementptr inbounds nuw [48 x i8], ptr %i.nl, i64 %indvars.iv112.i ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 32 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 40 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.gb, %.lr.ph.i75
  %indvars.iv109.i = phi i64 [ %indvars.iv.i.a, %.lr.ph.i75 ], [ %indvars.iv.next110.i, %bb.gb ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv109.i
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !39 ; 3 uses
  %i.om = load double, ptr %i.of, align 8, !tbaa !56 ; 3 uses
  %i.on = getelementptr inbounds nuw [48 x i8], ptr %i.nl, i64 %indvars.iv109.i ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.oq = load double, ptr %i.op, align 8, !tbaa !57 ; 3 uses
  %i.or = fcmp ugt double %i.om, %i.oq            ; 2 uses
  %.pre.i = load double, ptr %i.oo, align 8, !tbaa !56 ; 4 uses
  %i.os = fcmp ult double %i.om, %.pre.i
  %or.cond127.i = select i1 %i.or, i1 true, i1 %i.os
  br i1 %or.cond127.i, label %bb.fw, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ot = load double, ptr %i.og, align 8, !tbaa !58 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !59 ; 2 uses
  %i.ow = fcmp ugt double %i.ot, %i.ov
  br i1 %i.ow, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !58 ; 2 uses
  %i.oz = fcmp ult double %i.ot, %i.oy
  br i1 %i.oz, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.pa = load double, ptr %i.oh, align 8, !tbaa !57 ; 2 uses
  %i.pb = fcmp ugt double %i.pa, %i.oq
  %i.pc = fcmp ult double %i.pa, %.pre.i
  %or.cond.i = or i1 %i.pb, %i.pc
  br i1 %or.cond.i, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pd = load double, ptr %i.oi, align 8, !tbaa !59 ; 2 uses
  %i.pe = fcmp ugt double %i.pd, %i.ov
  %i.pf = fcmp ult double %i.pd, %i.oy
  %or.cond98.i = or i1 %i.pe, %i.pf
  br i1 %or.cond98.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pg = load ptr, ptr %i.ol, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.pi = load i64, ptr %i.ph, align 8
  %i.pj = call zeroext i1 @in_poly(ptr %i.pg, i64 %i.pi, double %.sroa.0.0.copyload.i, double %.sroa.4.0.copyload.i) #18
  br i1 %i.pj, label %findInside.exit, label %bb.gb

bb.fw:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %i.pk = load double, ptr %i.oh, align 8, !tbaa !57 ; 2 uses
  %i.pl = fcmp ugt double %.pre.i, %i.pk
  %i.pm = fcmp ult double %.pre.i, %i.om
  %or.cond101.i = or i1 %i.pm, %i.pl
  br i1 %or.cond101.i, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pn = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.po = load double, ptr %i.pn, align 8, !tbaa !58 ; 2 uses
  %i.pp = load double, ptr %i.oi, align 8, !tbaa !59 ; 2 uses
  %i.pq = fcmp ugt double %i.po, %i.pp
  br i1 %i.pq, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.pr = load double, ptr %i.og, align 8, !tbaa !58 ; 2 uses
  %i.ps = fcmp ult double %i.po, %i.pr
  %i.pt = fcmp ugt double %i.oq, %i.pk
  %i.pu = or i1 %i.pt, %i.ps
  %or.cond102.i = or i1 %i.or, %i.pu
  br i1 %or.cond102.i, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.pv = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !59 ; 2 uses
  %i.px = fcmp ugt double %i.pw, %i.pp
  %i.py = fcmp ult double %i.pw, %i.pr
  %or.cond100.i = or i1 %i.px, %i.py
  br i1 %or.cond100.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.pz = load ptr, ptr %i.ol, align 8, !tbaa !46 ; 2 uses
  %i.qa = load ptr, ptr %i.ob, align 8
  %i.qb = load i64, ptr %i.oj, align 8
  %i.qc = load double, ptr %i.pz, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qe = load double, ptr %i.qd, align 8
  %i.qf = call zeroext i1 @in_poly(ptr %i.qa, i64 %i.qb, double %i.qc, double %i.qe) #18
  br i1 %i.qf, label %findInside.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next110.i, %i.nz
  br i1 %exitcond.not.i76, label %.loopexit.i, label %bb.fq, !llvm.loop !37

findInside.exit:                                  ; preds = %.loopexit.i, %bb.fv, %bb.ga, %find_ints.exit, %find_ints.exit.thread
  %.sink216 = phi ptr [ %i.f, %find_ints.exit.thread ], [ %i.nl, %bb.fv ], [ %i.nl, %find_ints.exit ], [ %i.nl, %bb.ga ], [ %i.nl, %.loopexit.i ]
  %.sink = phi ptr [ %i.ax, %find_ints.exit.thread ], [ %i.nm, %bb.fv ], [ %i.nm, %find_ints.exit ], [ %i.nm, %bb.ga ], [ %i.nm, %.loopexit.i ]
  %.065 = phi i32 [ 0, %find_ints.exit.thread ], [ 0, %bb.fv ], [ %not..not.not, %find_ints.exit ], [ 0, %bb.ga ], [ 1, %.loopexit.i ]
  call void @free(ptr noundef %.sink216) #18
  call void @free(ptr noundef %.sink) #18
  ret i32 %.065
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @gt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.e = fcmp ogt double %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp olt double %i.b, %i.d
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.k = fcmp ogt double %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %i.h, %i.j
  %. = sext i1 %i.l to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #10

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #10

declare hidden i64 @gv_list_find_(ptr noundef byval(%struct.list_t_) align 8, ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @gv_list_remove_(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @intpoint(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %4, 1
  br i1 %i.a, label %online.exit204.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !18 ; 7 uses
  %i.c = extractelement <2 x double> %i.b, i64 0  ; 24 uses
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !18 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq ptr %0, %i.g                     ; 5 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.e

end_hunk_0
