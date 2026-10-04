Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/eset?download=true
inline.NumInlined: 51
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@je_eset_fit:bb.a
bb.d:                                             ; preds = %sz_psz2ind.exit44.i
  %i.v = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !36, !range !37, !noundef !38
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i64 @je_sz_psz_quantize_floor(i64 noundef %i.d) #8 ; 4 uses
  %i.y = icmp ugt i64 %i.x, 8070450532247928832
  br i1 %i.y, label %sz_psz2ind.exit42.i, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.ac) ; 2 uses
  %i.ae = icmp samesign ult i64 %i.x, 16385
  %i.af = add nuw nsw i32 %i.ad, 11
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = select i1 %i.ae, i64 12, i64 %i.ag
  %i.ai = lshr i64 %i.aa, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 3
  %i.al = shl nuw nsw i32 %i.ad, 2
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  br label %sz_psz2ind.exit42.i

sz_psz2ind.exit42.i:                              ; preds = %bb.f, %bb.e
  %.0.i41.i = phi i64 [ %i.an, %bb.f ], [ 199, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.0.i41.i ; 4 uses
  %i.aq = tail call zeroext i1 @je_edata_heap_empty(ptr noundef nonnull %i.ap) #8
  br i1 %i.aq, label %eset_first_fit.exit, label %bb.g

bb.g:                                             ; preds = %sz_psz2ind.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @je_edata_heap_enumerate_prepare(ptr noundef nonnull %i.ap, ptr noundef nonnull %7, i16 noundef zeroext 32, i16 noundef zeroext 32) #8
  %i.ar = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.ap, ptr noundef nonnull %7) #8 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ar, null
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.g, %bb.k
  %.sroa.0.3.i = phi i64 [ %.sroa.0.4.i, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %i.as = phi ptr [ %i.bj, %bb.k ], [ %i.ar, %bb.g ] ; 4 uses
  %.025.us.i.i = phi ptr [ %.2.us.i.i, %bb.k ], [ null, %bb.g ] ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %.val.us.i.i = load i64, ptr %i.at, align 8, !tbaa !19
  %i.au = and i64 %.val.us.i.i, -4096
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.critedge.us.i.i
  %i.aw = getelementptr i8, ptr %i.as, i64 8
  %.val22.us.i.i = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.ax = getelementptr i8, ptr %i.as, i64 32
  %.val23.us.i.i = load i64, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.ay = ptrtoint ptr %.val22.us.i.i to i64      ; 2 uses
  %i.az = icmp eq ptr %.025.us.i.i, null
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = zext i64 %.val23.us.i.i to i128
  %i.bb = shl nuw i128 %i.ba, 64
  %i.bc = zext i64 %i.ay to i128
  %i.bd = or disjoint i128 %i.bb, %i.bc
  %i.be = zext i64 %.sroa.0.3.i to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = zext i64 %.sroa.9.3.i to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = icmp ult i128 %i.bd, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.critedge.us.i.i
  %.sroa.0.4.i = phi i64 [ %.val23.us.i.i, %bb.j ], [ %.sroa.0.3.i, %bb.i ], [ %.sroa.0.3.i, %.critedge.us.i.i ]
  %.sroa.9.4.i = phi i64 [ %i.ay, %bb.j ], [ %.sroa.9.3.i, %bb.i ], [ %.sroa.9.3.i, %.critedge.us.i.i ]
  %.2.us.i.i = phi ptr [ %i.as, %bb.j ], [ %.025.us.i.i, %bb.i ], [ %.025.us.i.i, %.critedge.us.i.i ] ; 2 uses
  %i.bj = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.ap, ptr noundef nonnull %7) #8 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.us.i.i, label %._crit_edge.i.i, label %.critedge.us.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.g
  %.0.lcssa.i.i = phi ptr [ null, %bb.g ], [ %.2.us.i.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %eset_first_fit.exit

bb.l:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = zext nneg i32 %.0.i43.i to i64
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = tail call zeroext i1 @je_edata_heap_empty(ptr noundef nonnull %i.bm) #8
  br i1 %i.bn, label %eset_first_fit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call ptr @je_edata_heap_first(ptr noundef nonnull %i.bm) #8
  br label %eset_first_fit.exit

bb.n:                                             ; preds = %sz_psz2ind.exit44.i
  %i.bp = tail call i64 @je_sz_psz_quantize_floor(i64 noundef %i.d) #8 ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, 8070450532247928832
  br i1 %i.bq, label %sz_psz2ind.exit.i, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.br = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nsw i64 %i.bp, -1                   ; 2 uses
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.bu) ; 2 uses
  %i.bw = icmp samesign ult i64 %i.bp, 16385
  %i.bx = add nuw nsw i32 %i.bv, 11
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = select i1 %i.bw, i64 12, i64 %i.by
  %i.ca = lshr i64 %i.bs, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 3
  %i.cd = shl nuw nsw i32 %i.bv, 2
  %i.ce = or disjoint i32 %i.cc, %i.cd
  br label %sz_psz2ind.exit.i

sz_psz2ind.exit.i:                                ; preds = %bb.o, %bb.n
  %.0.i.i = phi i32 [ %i.ce, %bb.o ], [ 199, %bb.n ] ; 2 uses
  %i.cf = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !36, !range !37, !noundef !38
  %i.cg = trunc nuw i8 %i.cf to i1
  %.not.i = icmp ne i32 %.0.i43.i, %.0.i.i
  %or.cond.not.i = select i1 %i.cg, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.p, label %eset_enumerate_search.exit50.i

bb.p:                                             ; preds = %sz_psz2ind.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = zext nneg i32 %.0.i.i to i64
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.ci ; 4 uses
  %i.ck = tail call zeroext i1 @je_edata_heap_empty(ptr noundef nonnull %i.cj) #8
  br i1 %i.ck, label %eset_enumerate_search.exit50.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @je_edata_heap_enumerate_prepare(ptr noundef nonnull %i.cj, ptr noundef nonnull %6, i16 noundef zeroext 32, i16 noundef zeroext 32) #8
  %i.cl = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.cj, ptr noundef nonnull %6) #8 ; 2 uses
  %.not24.i45.i = icmp eq ptr %i.cl, null
  br i1 %.not24.i45.i, label %._crit_edge.i47.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.q, %bb.u
  %.sroa.0.5.i = phi i64 [ %.sroa.0.6.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.sroa.9.5.i = phi i64 [ %.sroa.9.6.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.cm = phi ptr [ %i.dc, %bb.u ], [ %i.cl, %bb.q ] ; 4 uses
  %.025.i.i = phi ptr [ %.2.i.i, %bb.u ], [ null, %bb.q ] ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %.val21.i.i = load i64, ptr %i.cn, align 8, !tbaa !19
  %i.co = and i64 %.val21.i.i, -4096
  %.not20.i.i = icmp ult i64 %i.co, %i.d
  br i1 %.not20.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i.i
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  %.val22.i.i = load ptr, ptr %i.cp, align 8, !tbaa !23
  %i.cq = getelementptr i8, ptr %i.cm, i64 32
  %.val23.i.i = load i64, ptr %i.cq, align 8, !tbaa !24 ; 2 uses
  %i.cr = ptrtoint ptr %.val22.i.i to i64         ; 2 uses
  %i.cs = icmp eq ptr %.025.i.i, null
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = zext i64 %.val23.i.i to i128
  %i.cu = shl nuw i128 %i.ct, 64
  %i.cv = zext i64 %i.cr to i128
  %i.cw = or disjoint i128 %i.cu, %i.cv
  %i.cx = zext i64 %.sroa.0.5.i to i128
  %i.cy = shl nuw i128 %i.cx, 64
  %i.cz = zext i64 %.sroa.9.5.i to i128
  %i.da = or disjoint i128 %i.cy, %i.cz
  %i.db = icmp ult i128 %i.cw, %i.da
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph.split.i.i
  %.sroa.0.6.i = phi i64 [ %.sroa.0.5.i, %.lr.ph.split.i.i ], [ %.val23.i.i, %bb.t ], [ %.sroa.0.5.i, %bb.s ] ; 2 uses
  %.sroa.9.6.i = phi i64 [ %.sroa.9.5.i, %.lr.ph.split.i.i ], [ %i.cr, %bb.t ], [ %.sroa.9.5.i, %bb.s ] ; 2 uses
  %.2.i.i = phi ptr [ %.025.i.i, %.lr.ph.split.i.i ], [ %i.cm, %bb.t ], [ %.025.i.i, %bb.s ] ; 2 uses
  %i.dc = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.cj, ptr noundef nonnull %6) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %._crit_edge.i47.i, label %.lr.ph.split.i.i, !llvm.loop !30

._crit_edge.i47.i:                                ; preds = %bb.u, %bb.q
  %.sroa.0.7.i = phi i64 [ 0, %bb.q ], [ %.sroa.0.6.i, %bb.u ]
  %.sroa.9.7.i = phi i64 [ 0, %bb.q ], [ %.sroa.9.6.i, %bb.u ]
  %.0.lcssa.i48.i = phi ptr [ null, %bb.q ], [ %.2.i.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %eset_enumerate_search.exit50.i

eset_enumerate_search.exit50.i:                   ; preds = %._crit_edge.i47.i, %bb.p, %sz_psz2ind.exit.i
  %.sroa.0.0.i = phi i64 [ 0, %sz_psz2ind.exit.i ], [ 0, %bb.p ], [ %.sroa.0.7.i, %._crit_edge.i47.i ]
  %.sroa.9.0.i = phi i64 [ 0, %sz_psz2ind.exit.i ], [ 0, %bb.p ], [ %.sroa.9.7.i, %._crit_edge.i47.i ]
  %.037.i = phi ptr [ null, %sz_psz2ind.exit.i ], [ null, %bb.p ], [ %.0.lcssa.i48.i, %._crit_edge.i47.i ] ; 6 uses
  %i.dd = zext nneg i32 %.0.i43.i to i64          ; 2 uses
  %i.de = lshr i64 %i.dd, 6                       ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = and i64 %i.dd, 63
  %notmask.i.i.i = shl nsw i64 -1, %i.dh
  %i.di = and i64 %i.dg, %notmask.i.i.i           ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i52.i.preheader, label %fb_ffs.exit.i

.lr.ph.i52.i.preheader:                           ; preds = %eset_enumerate_search.exit50.i
  %8 = add nuw nsw i64 %i.de, 1                   ; 3 uses
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %eset_first_fit.exit, label %.lr.ph

.lr.ph.i52.i.preheader.a:                         ; preds = %.lr.ph
  %i.dk = add nuw nsw i64 %i.de, 2                ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %eset_first_fit.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.i52.i.preheader.a
  %10 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dk
  %11 = load i64, ptr %10, align 8, !tbaa !25     ; 2 uses
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %.lr.ph.i52.i, label %fb_ffs.exit.i, !llvm.loop !31

.lr.ph.i52.i:                                     ; preds = %.lr.ph.1
  %i.dm = add nuw nsw i64 %i.de, 3                ; 3 uses
  %i.dn = icmp eq i64 %i.dm, 4
  br i1 %i.dn, label %eset_first_fit.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.i52.i
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dm
  %14 = load i64, ptr %13, align 8, !tbaa !25     ; 2 uses
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %eset_first_fit.exit, label %fb_ffs.exit.i, !llvm.loop !31

.lr.ph:                                           ; preds = %.lr.ph.i52.i.preheader
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !25 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i52.i.preheader.a, label %fb_ffs.exit.i, !llvm.loop !31

fb_ffs.exit.i:                                    ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %eset_enumerate_search.exit50.i
  %.039.i.lcssa.i.i = phi i64 [ %i.de, %eset_enumerate_search.exit50.i ], [ %8, %.lr.ph ], [ %i.dk, %.lr.ph.1 ], [ %i.dm, %.lr.ph.2 ]
  %.1.i.lcssa.i.i = phi i64 [ %i.di, %eset_enumerate_search.exit50.i ], [ %i.dp, %.lr.ph ], [ %11, %.lr.ph.1 ], [ %14, %.lr.ph.2 ]
  %i.dr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i.i, i1 true)
  %i.ds = shl nuw nsw i64 %.039.i.lcssa.i.i, 6
  %i.dt = or disjoint i64 %i.dr, %i.ds            ; 2 uses
  %i.du = icmp samesign ult i64 %i.dt, 200
  br i1 %i.du, label %.lr.ph.i, label %eset_first_fit.exit

.lr.ph.i:                                         ; preds = %fb_ffs.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.v:                                             ; preds = %fb_ffs.exit61.i, %.lr.ph.i
  %.035.in76.i = phi i64 [ %i.dt, %.lr.ph.i ], [ %i.fm, %fb_ffs.exit61.i ] ; 5 uses
  %.03675.i = phi i32 [ %4, %.lr.ph.i ], [ %spec.store.select.i, %fb_ffs.exit61.i ] ; 2 uses
  %.174.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.2.i, %fb_ffs.exit61.i ] ; 3 uses
  %.sroa.9.173.i = phi i64 [ %.sroa.9.0.i, %.lr.ph.i ], [ %.sroa.9.2.i, %fb_ffs.exit61.i ] ; 2 uses
  %.sroa.0.172.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.2.i, %fb_ffs.exit61.i ] ; 2 uses
  %i.dw = icmp eq i32 %.03675.i, 64
  %spec.store.select.i = select i1 %i.dw, i32 63, i32 %.03675.i ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %.035.in76.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !25
  %i.dz = zext nneg i32 %spec.store.select.i to i64
  %i.ea = lshr i64 %i.dy, %i.dz
  %i.eb = icmp ugt i64 %i.ea, %i.d
  br i1 %i.eb, label %eset_first_fit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp eq ptr %.174.i, null
  br i1 %i.ec, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.035.in76.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = zext i64 %i.ef to i128
  %i.ej = shl nuw i128 %i.ei, 64
  %i.ek = zext i64 %i.eh to i128
  %i.el = or disjoint i128 %i.ej, %i.ek
  %i.em = zext i64 %.sroa.0.172.i to i128
  %i.en = shl nuw i128 %i.em, 64
  %i.eo = zext i64 %.sroa.9.173.i to i128
  %i.ep = or disjoint i128 %i.en, %i.eo
  %i.eq = icmp ult i128 %i.el, %i.ep
  br i1 %i.eq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %.035.in76.i ; 3 uses
  %i.es = call ptr @je_edata_heap_first(ptr noundef nonnull %i.er) #8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.et, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.y ], [ %.sroa.0.172.i, %bb.x ]
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.y ], [ %.sroa.9.173.i, %bb.x ]
  %.2.i = phi ptr [ %i.es, %bb.y ], [ %.174.i, %bb.x ] ; 5 uses
  %i.eu = icmp eq i64 %.035.in76.i, 199
  br i1 %i.eu, label %eset_first_fit.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = add nuw nsw i64 %.035.in76.i, 1         ; 2 uses
  %i.ew = lshr i64 %i.ev, 6                       ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !25
  %i.ez = and i64 %i.ev, 63
  %notmask.i.i54.i = shl nsw i64 -1, %i.ez
  %i.fa = and i64 %i.ey, %notmask.i.i54.i         ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i59.i.preheader, label %fb_ffs.exit61.i

.lr.ph.i59.i.preheader:                           ; preds = %bb.aa
  %i.fc = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4
  br i1 %i.fd, label %eset_first_fit.exit, label %.lr.ph113

.lr.ph.i59.i:                                     ; preds = %.lr.ph113
  %i.fe = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4
  br i1 %i.ff, label %eset_first_fit.exit, label %.lr.ph113, !llvm.loop !31

.lr.ph113:                                        ; preds = %.lr.ph.i59.i.preheader, %.lr.ph.i59.i
  %i.fg = phi i64 [ %i.fe, %.lr.ph.i59.i ], [ %i.fc, %.lr.ph.i59.i.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !25 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i59.i, label %fb_ffs.exit61.i, !llvm.loop !31

fb_ffs.exit61.i:                                  ; preds = %.lr.ph113, %bb.aa
  %.039.i.lcssa.i56.i = phi i64 [ %i.ew, %bb.aa ], [ %i.fg, %.lr.ph113 ]
  %.1.i.lcssa.i57.i = phi i64 [ %i.fa, %bb.aa ], [ %i.fi, %.lr.ph113 ]
  %i.fk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i57.i, i1 true)
  %i.fl = shl nuw nsw i64 %.039.i.lcssa.i56.i, 6
  %i.fm = or disjoint i64 %i.fk, %i.fl            ; 2 uses
  %i.fn = icmp samesign ult i64 %i.fm, 200
  br i1 %i.fn, label %bb.v, label %eset_first_fit.exit, !llvm.loop !32

eset_first_fit.exit:                              ; preds = %.lr.ph.i52.i.preheader.a, %.lr.ph.i52.i, %.lr.ph.2, %bb.v, %bb.z, %fb_ffs.exit61.i, %.lr.ph.i59.i.preheader, %.lr.ph.i59.i, %.lr.ph.i52.i.preheader, %sz_psz2ind.exit42.i, %._crit_edge.i.i, %bb.l, %bb.m, %fb_ffs.exit.i
  %.0.i = phi ptr [ null, %sz_psz2ind.exit42.i ], [ null, %bb.l ], [ %i.bo, %bb.m ], [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.037.i, %fb_ffs.exit.i ], [ %.2.i, %.lr.ph.i59.i ], [ %.2.i, %.lr.ph.i59.i.preheader ], [ %.037.i, %.lr.ph.i52.i.preheader ], [ %.174.i, %bb.v ], [ %.2.i, %bb.z ], [ %.2.i, %fb_ffs.exit61.i ], [ %.037.i, %.lr.ph.2 ], [ %.037.i, %.lr.ph.i52.i ], [ %.037.i, %.lr.ph.i52.i.preheader.a ] ; 2 uses
  %i.fo = icmp ugt i64 %2, 4096
  %i.fp = icmp eq ptr %.0.i, null
  %or.cond = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond, label %bb.ab, label %eset_fit_alignment.exit

bb.ab:                                            ; preds = %eset_first_fit.exit
  %i.fq = call i64 @je_sz_psz_quantize_ceil(i64 noundef %1) #8 ; 4 uses
  %i.fr = icmp ugt i64 %i.fq, 8070450532247928832
  br i1 %i.fr, label %sz_psz2ind.exit56.i, label %bb.ac, !prof !20

bb.ac:                                            ; preds = %bb.ab
  %i.fs = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nsw i64 %i.fq, -1                   ; 2 uses
  %i.fu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ft, i1 false)
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = call i32 @llvm.usub.sat.i32(i32 50, i32 %i.fv) ; 2 uses
  %i.fx = icmp samesign ult i64 %i.fq, 16385
  %i.fy = add nuw nsw i32 %i.fw, 11
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = select i1 %i.fx, i64 12, i64 %i.fz
  %i.gb = lshr i64 %i.ft, %i.ga
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = and i32 %i.gc, 3
  %i.ge = shl nuw nsw i32 %i.fw, 2
  %i.gf = or disjoint i32 %i.gd, %i.ge
  br label %sz_psz2ind.exit56.i

sz_psz2ind.exit56.i:                              ; preds = %bb.ac, %bb.ab
  %.0.i55.i = phi i32 [ %i.gf, %bb.ac ], [ 199, %bb.ab ] ; 2 uses
  %i.gg = call i64 @je_sz_psz_quantize_ceil(i64 noundef %i.d) #8 ; 4 uses
  %i.gh = icmp ugt i64 %i.gg, 8070450532247928832
  br i1 %i.gh, label %sz_psz2ind.exit54.i, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %sz_psz2ind.exit56.i
  %i.gi = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nsw i64 %i.gg, -1                   ; 2 uses
  %i.gk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gj, i1 false)
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = call i32 @llvm.usub.sat.i32(i32 50, i32 %i.gl) ; 2 uses
  %i.gn = icmp samesign ult i64 %i.gg, 16385
  %i.go = add nuw nsw i32 %i.gm, 11
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = select i1 %i.gn, i64 12, i64 %i.gp
  %i.gr = lshr i64 %i.gj, %i.gq
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = and i32 %i.gs, 3
  %i.gu = shl nuw nsw i32 %i.gm, 2
  %i.gv = or disjoint i32 %i.gt, %i.gu
  br label %sz_psz2ind.exit54.i

sz_psz2ind.exit54.i:                              ; preds = %bb.ad, %sz_psz2ind.exit56.i
  %.0.i53.i = phi i32 [ %i.gv, %bb.ad ], [ 199, %sz_psz2ind.exit56.i ] ; 2 uses
  %i.gw = call i64 @je_sz_psz_quantize_floor(i64 noundef %1) #8 ; 4 uses
  %i.gx = icmp ugt i64 %i.gw, 8070450532247928832
  br i1 %i.gx, label %sz_psz2ind.exit.i20, label %bb.ae, !prof !20

bb.ae:                                            ; preds = %sz_psz2ind.exit54.i
  %i.gy = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nsw i64 %i.gw, -1                   ; 2 uses
  %i.ha = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gz, i1 false)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = call i32 @llvm.usub.sat.i32(i32 50, i32 %i.hb) ; 2 uses
  %i.hd = icmp samesign ult i64 %i.gw, 16385
  %i.he = add nuw nsw i32 %i.hc, 11
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = select i1 %i.hd, i64 12, i64 %i.hf
  %i.hh = lshr i64 %i.gz, %i.hg
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 3
  %i.hk = shl nuw nsw i32 %i.hc, 2
  %i.hl = or disjoint i32 %i.hj, %i.hk
  br label %sz_psz2ind.exit.i20

sz_psz2ind.exit.i20:                              ; preds = %bb.ae, %sz_psz2ind.exit54.i
  %.0.i.i21 = phi i32 [ %i.hl, %bb.ae ], [ 199, %sz_psz2ind.exit54.i ] ; 2 uses
  %i.hm = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !36, !range !37, !noundef !38
  %i.hn = trunc nuw i8 %i.hm to i1
  %.not.i22 = icmp ne i32 %.0.i55.i, %.0.i.i21
  %or.cond.not.i23 = select i1 %i.hn, i1 %.not.i22, i1 false
  br i1 %or.cond.not.i23, label %bb.af, label %eset_enumerate_alignment_search.exit.thread.i

bb.af:                                            ; preds = %sz_psz2ind.exit.i20
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hp = zext nneg i32 %.0.i.i21 to i64
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.hp ; 4 uses
  %i.hr = call zeroext i1 @je_edata_heap_empty(ptr noundef nonnull %i.hq) #8
  br i1 %i.hr, label %eset_enumerate_alignment_search.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @je_edata_heap_enumerate_prepare(ptr noundef nonnull %i.hq, ptr noundef nonnull %5, i16 noundef zeroext 32, i16 noundef zeroext 32) #8
  %i.hs = add i64 %i.b, -1
  %i.ht = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.hq, ptr noundef nonnull %5) #8 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.ht, null
  br i1 %.not39.i.i, label %eset_enumerate_alignment_search.exit.thread69.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.hu = sub i64 0, %i.b
  br label %bb.ah

bb.ah:                                            ; preds = %select.unfold.i.i, %.lr.ph.i.i
  %i.hv = phi ptr [ %i.ht, %.lr.ph.i.i ], [ %i.ik, %select.unfold.i.i ] ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  %.val.i.i = load i64, ptr %i.hw, align 8, !tbaa !19
  %i.hx = and i64 %.val.i.i, -4096                ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %1
  br i1 %i.hy, label %select.unfold.i.i, label %bb.ai, !llvm.loop !33

bb.ai:                                            ; preds = %bb.ah
  %i.hz = getelementptr i8, ptr %i.hv, i64 8
  %.val35.i.i = load ptr, ptr %i.hz, align 8, !tbaa !23 ; 2 uses
  %i.ia = ptrtoint ptr %.val35.i.i to i64
  %i.ib = and i64 %i.ia, 4095
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds i8, ptr %.val35.i.i, i64 %i.ic
  %i.ie = ptrtoint ptr %i.id to i64               ; 3 uses
  %i.if = add i64 %i.hs, %i.ie
  %i.ig = and i64 %i.if, %i.hu                    ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %i.ie
  %i.ii = add i64 %i.hx, %i.ie                    ; 2 uses
  %.not33.i.i = icmp ule i64 %i.ii, %i.ig
  %or.cond.not49.i.i = or i1 %i.ih, %.not33.i.i
  %i.ij = sub nuw i64 %i.ii, %i.ig
  %.not34.i.i = icmp ult i64 %i.ij, %1
  %or.cond47.i.i = select i1 %or.cond.not49.i.i, i1 true, i1 %.not34.i.i
  br i1 %or.cond47.i.i, label %select.unfold.i.i, label %eset_enumerate_alignment_search.exit.i, !llvm.loop !33

select.unfold.i.i:                                ; preds = %bb.ai, %bb.ah
  %i.ik = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.hq, ptr noundef nonnull %5) #8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i32, label %eset_enumerate_alignment_search.exit.thread69.i, label %bb.ah

eset_enumerate_alignment_search.exit.thread69.i:  ; preds = %select.unfold.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %eset_enumerate_alignment_search.exit.thread.i

eset_enumerate_alignment_search.exit.i:           ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %eset_fit_alignment.exit

eset_enumerate_alignment_search.exit.thread.i:    ; preds = %eset_enumerate_alignment_search.exit.thread69.i, %bb.af, %sz_psz2ind.exit.i20
  %i.il = zext nneg i32 %.0.i55.i to i64          ; 2 uses
  %i.im = lshr i64 %i.il, 6                       ; 5 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !25
  %i.ip = and i64 %i.il, 63
  %notmask.i.i.i24 = shl nsw i64 -1, %i.ip
  %i.iq = and i64 %i.io, %notmask.i.i.i24         ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %.lr.ph.i58.i.preheader, label %._crit_edge.i.i25

.lr.ph.i58.i.preheader:                           ; preds = %eset_enumerate_alignment_search.exit.thread.i
  %16 = add nuw nsw i64 %i.im, 1                  ; 3 uses
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %fb_ffs.exit.i28, label %.lr.ph115

.lr.ph.i58.i.preheader.a:                         ; preds = %.lr.ph115
  %i.is = add nuw nsw i64 %i.im, 2                ; 3 uses
  %i.it = icmp eq i64 %i.is, 4
  br i1 %i.it, label %fb_ffs.exit.i28, label %.lr.ph115.1

.lr.ph115.1:                                      ; preds = %.lr.ph.i58.i.preheader.a
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.is
  %19 = load i64, ptr %18, align 8, !tbaa !25     ; 2 uses
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %.lr.ph.i58.i, label %._crit_edge.i.i25, !llvm.loop !31

.lr.ph.i58.i:                                     ; preds = %.lr.ph115.1
  %i.iu = add nuw nsw i64 %i.im, 3                ; 3 uses
  %i.iv = icmp eq i64 %i.iu, 4
  br i1 %i.iv, label %fb_ffs.exit.i28, label %.lr.ph115.2

.lr.ph115.2:                                      ; preds = %.lr.ph.i58.i
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.iu
  %22 = load i64, ptr %21, align 8, !tbaa !25     ; 2 uses
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %fb_ffs.exit.i28, label %._crit_edge.i.i25, !llvm.loop !31

.lr.ph115:                                        ; preds = %.lr.ph.i58.i.preheader
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !25 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %.lr.ph.i58.i.preheader.a, label %._crit_edge.i.i25, !llvm.loop !31

._crit_edge.i.i25:                                ; preds = %.lr.ph115, %.lr.ph115.1, %.lr.ph115.2, %eset_enumerate_alignment_search.exit.thread.i
  %.039.i.lcssa.i.i26 = phi i64 [ %i.im, %eset_enumerate_alignment_search.exit.thread.i ], [ %16, %.lr.ph115 ], [ %i.is, %.lr.ph115.1 ], [ %i.iu, %.lr.ph115.2 ]
  %.1.i.lcssa.i.i27 = phi i64 [ %i.iq, %eset_enumerate_alignment_search.exit.thread.i ], [ %i.ix, %.lr.ph115 ], [ %19, %.lr.ph115.1 ], [ %22, %.lr.ph115.2 ]
  %i.iz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i.i27, i1 true)
  %i.ja = shl nuw nsw i64 %.039.i.lcssa.i.i26, 6
  %i.jb = or disjoint i64 %i.iz, %i.ja
  br label %fb_ffs.exit.i28

fb_ffs.exit.i28:                                  ; preds = %.lr.ph.i58.i.preheader.a, %.lr.ph.i58.i, %.lr.ph115.2, %.lr.ph.i58.i.preheader, %._crit_edge.i.i25
  %.141.i.i.i = phi i64 [ %i.jb, %._crit_edge.i.i25 ], [ 200, %.lr.ph.i58.i.preheader ], [ 200, %.lr.ph115.2 ], [ 200, %.lr.ph.i58.i ], [ 200, %.lr.ph.i58.i.preheader.a ] ; 2 uses
  %i.jc = add i64 %i.b, -1
  %.081.i = trunc nuw nsw i64 %.141.i.i.i to i32
  %.not5082.i = icmp ugt i32 %.0.i53.i, %.081.i
  br i1 %.not5082.i, label %.lr.ph.i29, label %eset_fit_alignment.exit

.lr.ph.i29:                                       ; preds = %fb_ffs.exit.i28
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.je = sub i64 0, %i.b
  br label %bb.aj

bb.aj:                                            ; preds = %fb_ffs.exit66.i, %.lr.ph.i29
  %.0.in83.i = phi i64 [ %.141.i.i.i, %.lr.ph.i29 ], [ %.141.i.i63.i, %fb_ffs.exit66.i ]
  %i.jf = and i64 %.0.in83.i, 4294967295          ; 2 uses
  %i.jg = getelementptr inbounds nuw [32 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = call ptr @je_edata_heap_first(ptr noundef nonnull %i.jg) #8 ; 3 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %.val57.i = load ptr, ptr %i.ji, align 8, !tbaa !23 ; 2 uses
  %i.jj = ptrtoint ptr %.val57.i to i64
  %i.jk = and i64 %i.jj, 4095
  %i.jl = sub nsw i64 0, %i.jk
  %i.jm = getelementptr inbounds i8, ptr %.val57.i, i64 %i.jl
  %i.jn = ptrtoint ptr %i.jm to i64               ; 3 uses
  %i.jo = getelementptr i8, ptr %i.jh, i64 16
  %.val.i = load i64, ptr %i.jo, align 8, !tbaa !19
  %i.jp = and i64 %.val.i, -4096
  %i.jq = add i64 %i.jc, %i.jn
  %i.jr = and i64 %i.jq, %i.je                    ; 3 uses
  %i.js = icmp ult i64 %i.jr, %i.jn
  %i.jt = add i64 %i.jp, %i.jn                    ; 2 uses
  %.not48.i = icmp ule i64 %i.jt, %i.jr
  %or.cond52.not112.i = select i1 %i.js, i1 true, i1 %.not48.i
  %i.ju = sub nuw i64 %i.jt, %i.jr
  %.not49.i = icmp ult i64 %i.ju, %1
  %or.cond.i = select i1 %or.cond52.not112.i, i1 true, i1 %.not49.i
  br i1 %or.cond.i, label %select.unfold.i, label %eset_fit_alignment.exit

select.unfold.i:                                  ; preds = %bb.aj
  %i.jv = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %i.jw = lshr i64 %i.jv, 6                       ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !25
  %i.jz = and i64 %i.jv, 63
  %notmask.i.i59.i = shl nsw i64 -1, %i.jz
  %i.ka = and i64 %i.jy, %notmask.i.i59.i         ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.i64.i.preheader, label %._crit_edge.i60.i

.lr.ph.i64.i.preheader:                           ; preds = %select.unfold.i
  %i.kc = add nuw nsw i64 %i.jw, 1                ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 4
  br i1 %i.kd, label %fb_ffs.exit66.i, label %.lr.ph116

.lr.ph.i64.i:                                     ; preds = %.lr.ph116
  %i.ke = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 4
  br i1 %i.kf, label %fb_ffs.exit66.i, label %.lr.ph116, !llvm.loop !31

.lr.ph116:                                        ; preds = %.lr.ph.i64.i.preheader, %.lr.ph.i64.i
  %i.kg = phi i64 [ %i.ke, %.lr.ph.i64.i ], [ %i.kc, %.lr.ph.i64.i.preheader ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !25 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %.lr.ph.i64.i, label %._crit_edge.i60.i, !llvm.loop !31

._crit_edge.i60.i:                                ; preds = %.lr.ph116, %select.unfold.i
  %.039.i.lcssa.i61.i = phi i64 [ %i.jw, %select.unfold.i ], [ %i.kg, %.lr.ph116 ]
  %.1.i.lcssa.i62.i = phi i64 [ %i.ka, %select.unfold.i ], [ %i.ki, %.lr.ph116 ]
  %i.kk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i62.i, i1 true)
  %i.kl = shl i64 %.039.i.lcssa.i61.i, 6
  %i.km = or disjoint i64 %i.kk, %i.kl
  br label %fb_ffs.exit66.i

fb_ffs.exit66.i:                                  ; preds = %.lr.ph.i64.i, %.lr.ph.i64.i.preheader, %._crit_edge.i60.i
  %.141.i.i63.i = phi i64 [ %i.km, %._crit_edge.i60.i ], [ 200, %.lr.ph.i64.i.preheader ], [ 200, %.lr.ph.i64.i ] ; 2 uses
  %.0.i30 = trunc i64 %.141.i.i63.i to i32
  %.not50.i = icmp ugt i32 %.0.i53.i, %.0.i30
  br i1 %.not50.i, label %bb.aj, label %eset_fit_alignment.exit, !llvm.loop !34

eset_fit_alignment.exit:                          ; preds = %fb_ffs.exit66.i, %bb.aj, %fb_ffs.exit.i28, %eset_enumerate_alignment_search.exit.i, %eset_first_fit.exit, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ %.0.i, %eset_first_fit.exit ], [ %i.hv, %eset_enumerate_alignment_search.exit.i ], [ null, %fb_ffs.exit.i28 ], [ null, %fb_ffs.exit66.i ], [ %i.jh, %bb.aj ]
  ret ptr %.016
}

declare void @je_edata_heap_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare i64 @je_sz_psz_quantize_ceil(i64 noundef) local_unnamed_addr #3

declare void @je_edata_heap_enumerate_prepare(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare ptr @je_edata_heap_enumerate_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS7edata_s", !12, i64 0}
!14 = !{!"", !13, i64 0}
!15 = !{!"", !14, i64 0}
!16 = !{!15, !13, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!8, !8, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"p1 _ZTS8hpdata_s", !12, i64 0}
!22 = !{!"edata_s", !17, i64 0, !12, i64 8, !8, i64 16, !21, i64 24, !17, i64 32, !8, i64 40, !8, i64 64}
!23 = !{!22, !12, i64 8}
!24 = !{!22, !17, i64 32}
!25 = !{!17, !17, i64 0}
!26 = distinct !{!26, !18}
!27 = !{!"", !17, i64 0}
!28 = !{!"eset_s", !8, i64 0, !8, i64 32, !8, i64 6432, !15, i64 9632, !27, i64 9640, !9, i64 9648}
!29 = !{!28, !9, i64 9648}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = !{!"_Bool", !8, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
end_hunk_0
