Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/eset?download=true
inline.NumInlined: 51
inline.NumDeleted: 28
begin_hunk_0_@je_eset_fit:bb.a
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
  %.037.i = phi ptr [ null, %sz_psz2ind.exit.i ], [ null, %bb.p ], [ %.0.lcssa.i48.i, %._crit_edge.i47.i ] ; 4 uses
  %i.dd = zext nneg i32 %.0.i43.i to i64          ; 2 uses
  %i.de = lshr i64 %i.dd, 6                       ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = and i64 %i.dd, 63
  %notmask.i.i.i = shl nsw i64 -1, %i.dh
  %i.di = and i64 %i.dg, %notmask.i.i.i           ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i52.i.preheader, label %fb_ffs.exit.i

.lr.ph.i52.i.preheader:                           ; preds = %eset_enumerate_search.exit50.i
  %i.dk = add nuw nsw i64 %i.de, 1                ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %eset_first_fit.exit, label %.lr.ph

.lr.ph.i52.i:                                     ; preds = %.lr.ph
  %i.dm = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4
  br i1 %i.dn, label %eset_first_fit.exit, label %.lr.ph, !llvm.loop !31

.lr.ph:                                           ; preds = %.lr.ph.i52.i.preheader, %.lr.ph.i52.i
  %i.do = phi i64 [ %i.dm, %.lr.ph.i52.i ], [ %i.dk, %.lr.ph.i52.i.preheader ] ; 3 uses
  %.039.i4.i.i113 = phi i64 [ %i.do, %.lr.ph.i52.i ], [ %i.de, %.lr.ph.i52.i.preheader ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.039.i4.i.i113
  %8 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dq = load i64, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i52.i, label %fb_ffs.exit.i, !llvm.loop !31

fb_ffs.exit.i:                                    ; preds = %.lr.ph, %eset_enumerate_search.exit50.i
  %.039.i.lcssa.i.i = phi i64 [ %i.de, %eset_enumerate_search.exit50.i ], [ %i.do, %.lr.ph ]
  %.1.i.lcssa.i.i = phi i64 [ %i.di, %eset_enumerate_search.exit50.i ], [ %i.dq, %.lr.ph ]
  %i.ds = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i.i, i1 true)
  %i.dt = shl nuw nsw i64 %.039.i.lcssa.i.i, 6
  %i.du = or disjoint i64 %i.ds, %i.dt            ; 2 uses
  %i.dv = icmp samesign ult i64 %i.du, 200
  br i1 %i.dv, label %.lr.ph.i, label %eset_first_fit.exit

.lr.ph.i:                                         ; preds = %fb_ffs.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.v:                                             ; preds = %fb_ffs.exit61.i, %.lr.ph.i
  %.035.in76.i = phi i64 [ %i.du, %.lr.ph.i ], [ %i.fn, %fb_ffs.exit61.i ] ; 5 uses
  %.03675.i = phi i32 [ %4, %.lr.ph.i ], [ %spec.store.select.i, %fb_ffs.exit61.i ] ; 2 uses
  %.174.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.2.i, %fb_ffs.exit61.i ] ; 3 uses
  %.sroa.9.173.i = phi i64 [ %.sroa.9.0.i, %.lr.ph.i ], [ %.sroa.9.2.i, %fb_ffs.exit61.i ] ; 2 uses
  %.sroa.0.172.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.2.i, %fb_ffs.exit61.i ] ; 2 uses
  %i.dx = icmp eq i32 %.03675.i, 64
  %spec.store.select.i = select i1 %i.dx, i32 63, i32 %.03675.i ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %.035.in76.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !25
  %i.ea = zext nneg i32 %spec.store.select.i to i64
  %i.eb = lshr i64 %i.dz, %i.ea
  %i.ec = icmp ugt i64 %i.eb, %i.d
  br i1 %i.ec, label %eset_first_fit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = icmp eq ptr %.174.i, null
  br i1 %i.ed, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.035.in76.i ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = zext i64 %i.eg to i128
  %i.ek = shl nuw i128 %i.ej, 64
  %i.el = zext i64 %i.ei to i128
  %i.em = or disjoint i128 %i.ek, %i.el
  %i.en = zext i64 %.sroa.0.172.i to i128
  %i.eo = shl nuw i128 %i.en, 64
  %i.ep = zext i64 %.sroa.9.173.i to i128
  %i.eq = or disjoint i128 %i.eo, %i.ep
  %i.er = icmp ult i128 %i.em, %i.eq
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.035.in76.i ; 3 uses
  %i.et = call ptr @je_edata_heap_first(ptr noundef nonnull %i.es) #8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.eu, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.y ], [ %.sroa.0.172.i, %bb.x ]
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.y ], [ %.sroa.9.173.i, %bb.x ]
  %.2.i = phi ptr [ %i.et, %bb.y ], [ %.174.i, %bb.x ] ; 5 uses
  %i.ev = icmp eq i64 %.035.in76.i, 199
  br i1 %i.ev, label %eset_first_fit.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ew = add nuw nsw i64 %.035.in76.i, 1         ; 2 uses
  %i.ex = lshr i64 %i.ew, 6                       ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !25
  %i.fa = and i64 %i.ew, 63
  %notmask.i.i54.i = shl nsw i64 -1, %i.fa
  %i.fb = and i64 %i.ez, %notmask.i.i54.i         ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i59.i.preheader, label %fb_ffs.exit61.i

.lr.ph.i59.i.preheader:                           ; preds = %bb.aa
  %i.fd = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4
  br i1 %i.fe, label %eset_first_fit.exit, label %.lr.ph113

.lr.ph.i59.i:                                     ; preds = %.lr.ph113
  %i.ff = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4
  br i1 %i.fg, label %eset_first_fit.exit, label %.lr.ph113, !llvm.loop !31

.lr.ph113:                                        ; preds = %.lr.ph.i59.i.preheader, %.lr.ph.i59.i
  %i.fh = phi i64 [ %i.ff, %.lr.ph.i59.i ], [ %i.fd, %.lr.ph.i59.i.preheader ] ; 3 uses
  %.039.i4.i60.i114 = phi i64 [ %i.fh, %.lr.ph.i59.i ], [ %i.ex, %.lr.ph.i59.i.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.039.i4.i60.i114
  %9 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fj = load i64, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i59.i, label %fb_ffs.exit61.i, !llvm.loop !31

fb_ffs.exit61.i:                                  ; preds = %.lr.ph113, %bb.aa
  %.039.i.lcssa.i56.i = phi i64 [ %i.ex, %bb.aa ], [ %i.fh, %.lr.ph113 ]
  %.1.i.lcssa.i57.i = phi i64 [ %i.fb, %bb.aa ], [ %i.fj, %.lr.ph113 ]
  %i.fl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i57.i, i1 true)
  %i.fm = shl nuw nsw i64 %.039.i.lcssa.i56.i, 6
  %i.fn = or disjoint i64 %i.fl, %i.fm            ; 2 uses
  %i.fo = icmp samesign ult i64 %i.fn, 200
  br i1 %i.fo, label %bb.v, label %eset_first_fit.exit, !llvm.loop !32

eset_first_fit.exit:                              ; preds = %.lr.ph.i52.i, %bb.v, %bb.z, %fb_ffs.exit61.i, %.lr.ph.i59.i.preheader, %.lr.ph.i59.i, %.lr.ph.i52.i.preheader, %sz_psz2ind.exit42.i, %._crit_edge.i.i, %bb.l, %bb.m, %fb_ffs.exit.i
  %.0.i = phi ptr [ null, %sz_psz2ind.exit42.i ], [ null, %bb.l ], [ %i.bo, %bb.m ], [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.037.i, %fb_ffs.exit.i ], [ %.2.i, %.lr.ph.i59.i ], [ %.2.i, %.lr.ph.i59.i.preheader ], [ %.037.i, %.lr.ph.i52.i.preheader ], [ %.174.i, %bb.v ], [ %.2.i, %bb.z ], [ %.2.i, %fb_ffs.exit61.i ], [ %.037.i, %.lr.ph.i52.i ] ; 2 uses
  %i.fp = icmp ugt i64 %2, 4096
  %i.fq = icmp eq ptr %.0.i, null
  %or.cond = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond, label %bb.ab, label %eset_fit_alignment.exit

bb.ab:                                            ; preds = %eset_first_fit.exit
  %i.fr = call i64 @je_sz_psz_quantize_ceil(i64 noundef %1) #8 ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, 8070450532247928832
  br i1 %i.fs, label %sz_psz2ind.exit56.i, label %bb.ac, !prof !20

bb.ac:                                            ; preds = %bb.ab
  %i.ft = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %i.ft)
  %i.fu = add nsw i64 %i.fr, -1                   ; 2 uses
  %i.fv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fu, i1 false)
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = call i32 @llvm.usub.sat.i32(i32 50, i32 %i.fw) ; 2 uses
  %i.fy = icmp samesign ult i64 %i.fr, 16385
  %i.fz = add nuw nsw i32 %i.fx, 11
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = select i1 %i.fy, i64 12, i64 %i.ga
  %i.gc = lshr i64 %i.fu, %i.gb
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 3
  %i.gf = shl nuw nsw i32 %i.fx, 2
  %i.gg = or disjoint i32 %i.ge, %i.gf
  br label %sz_psz2ind.exit56.i

sz_psz2ind.exit56.i:                              ; preds = %bb.ac, %bb.ab
  %.0.i55.i = phi i32 [ %i.gg, %bb.ac ], [ 199, %bb.ab ] ; 2 uses
  %i.gh = call i64 @je_sz_psz_quantize_ceil(i64 noundef %i.d) #8 ; 4 uses
  %i.gi = icmp ugt i64 %i.gh, 8070450532247928832
  br i1 %i.gi, label %sz_psz2ind.exit54.i, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %sz_psz2ind.exit56.i
  %i.gj = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nsw i64 %i.gh, -1                   ; 2 uses
  %i.gl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gk, i1 false)
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = call i32 @llvm.usub.sat.i32(i32 50, i32 %i.gm) ; 2 uses
  %i.go = icmp samesign ult i64 %i.gh, 16385
  %i.gp = add nuw nsw i32 %i.gn, 11
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = select i1 %i.go, i64 12, i64 %i.gq
  %i.gs = lshr i64 %i.gk, %i.gr
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = and i32 %i.gt, 3
  %i.gv = shl nuw nsw i32 %i.gn, 2
  %i.gw = or disjoint i32 %i.gu, %i.gv
  br label %sz_psz2ind.exit54.i

sz_psz2ind.exit54.i:                              ; preds = %bb.ad, %sz_psz2ind.exit56.i
  %.0.i53.i = phi i32 [ %i.gw, %bb.ad ], [ 199, %sz_psz2ind.exit56.i ] ; 2 uses
  %i.gx = call i64 @je_sz_psz_quantize_floor(i64 noundef %1) #8 ; 4 uses
  %i.gy = icmp ugt i64 %i.gx, 8070450532247928832
  br i1 %i.gy, label %sz_psz2ind.exit.i20, label %bb.ae, !prof !20

bb.ae:                                            ; preds = %sz_psz2ind.exit54.i
  %i.gz = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add nsw i64 %i.gx, -1                   ; 2 uses
  %i.hb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ha, i1 false)
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = call i32 @llvm.usub.sat.i32(i32 50, i32 %i.hc) ; 2 uses
  %i.he = icmp samesign ult i64 %i.gx, 16385
  %i.hf = add nuw nsw i32 %i.hd, 11
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = select i1 %i.he, i64 12, i64 %i.hg
  %i.hi = lshr i64 %i.ha, %i.hh
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = and i32 %i.hj, 3
  %i.hl = shl nuw nsw i32 %i.hd, 2
  %i.hm = or disjoint i32 %i.hk, %i.hl
  br label %sz_psz2ind.exit.i20

sz_psz2ind.exit.i20:                              ; preds = %bb.ae, %sz_psz2ind.exit54.i
  %.0.i.i21 = phi i32 [ %i.hm, %bb.ae ], [ 199, %sz_psz2ind.exit54.i ] ; 2 uses
  %i.hn = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !36, !range !37, !noundef !38
  %i.ho = trunc nuw i8 %i.hn to i1
  %.not.i22 = icmp ne i32 %.0.i55.i, %.0.i.i21
  %or.cond.not.i23 = select i1 %i.ho, i1 %.not.i22, i1 false
  br i1 %or.cond.not.i23, label %bb.af, label %eset_enumerate_alignment_search.exit.thread.i

bb.af:                                            ; preds = %sz_psz2ind.exit.i20
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hq = zext nneg i32 %.0.i.i21 to i64
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hq ; 4 uses
  %i.hs = call zeroext i1 @je_edata_heap_empty(ptr noundef nonnull %i.hr) #8
  br i1 %i.hs, label %eset_enumerate_alignment_search.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @je_edata_heap_enumerate_prepare(ptr noundef nonnull %i.hr, ptr noundef nonnull %5, i16 noundef zeroext 32, i16 noundef zeroext 32) #8
  %i.ht = add i64 %i.b, -1
  %i.hu = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.hr, ptr noundef nonnull %5) #8 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.hu, null
  br i1 %.not39.i.i, label %eset_enumerate_alignment_search.exit.thread69.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.hv = sub i64 0, %i.b
  br label %bb.ah

bb.ah:                                            ; preds = %select.unfold.i.i, %.lr.ph.i.i
  %i.hw = phi ptr [ %i.hu, %.lr.ph.i.i ], [ %i.il, %select.unfold.i.i ] ; 3 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  %.val.i.i = load i64, ptr %i.hx, align 8, !tbaa !19
  %i.hy = and i64 %.val.i.i, -4096                ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %1
  br i1 %i.hz, label %select.unfold.i.i, label %bb.ai, !llvm.loop !33

bb.ai:                                            ; preds = %bb.ah
  %i.ia = getelementptr i8, ptr %i.hw, i64 8
  %.val35.i.i = load ptr, ptr %i.ia, align 8, !tbaa !23 ; 2 uses
  %i.ib = ptrtoint ptr %.val35.i.i to i64
  %i.ic = and i64 %i.ib, 4095
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.val35.i.i, i64 %i.id
  %i.if = ptrtoint ptr %i.ie to i64               ; 3 uses
  %i.ig = add i64 %i.ht, %i.if
  %i.ih = and i64 %i.ig, %i.hv                    ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.if
  %i.ij = add i64 %i.hy, %i.if                    ; 2 uses
  %.not33.i.i = icmp ule i64 %i.ij, %i.ih
  %or.cond.not49.i.i = or i1 %i.ii, %.not33.i.i
  %i.ik = sub nuw i64 %i.ij, %i.ih
  %.not34.i.i = icmp ult i64 %i.ik, %1
  %or.cond47.i.i = select i1 %or.cond.not49.i.i, i1 true, i1 %.not34.i.i
  br i1 %or.cond47.i.i, label %select.unfold.i.i, label %eset_enumerate_alignment_search.exit.i, !llvm.loop !33

select.unfold.i.i:                                ; preds = %bb.ai, %bb.ah
  %i.il = call ptr @je_edata_heap_enumerate_next(ptr noundef nonnull %i.hr, ptr noundef nonnull %5) #8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.il, null
  br i1 %.not.i.i32, label %eset_enumerate_alignment_search.exit.thread69.i, label %bb.ah

eset_enumerate_alignment_search.exit.thread69.i:  ; preds = %select.unfold.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %eset_enumerate_alignment_search.exit.thread.i

eset_enumerate_alignment_search.exit.i:           ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %eset_fit_alignment.exit

eset_enumerate_alignment_search.exit.thread.i:    ; preds = %eset_enumerate_alignment_search.exit.thread69.i, %bb.af, %sz_psz2ind.exit.i20
  %i.im = zext nneg i32 %.0.i55.i to i64          ; 2 uses
  %i.in = lshr i64 %i.im, 6                       ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !25
  %i.iq = and i64 %i.im, 63
  %notmask.i.i.i24 = shl nsw i64 -1, %i.iq
  %i.ir = and i64 %i.ip, %notmask.i.i.i24         ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i58.i.preheader, label %._crit_edge.i.i25

.lr.ph.i58.i.preheader:                           ; preds = %eset_enumerate_alignment_search.exit.thread.i
  %i.it = add nuw nsw i64 %i.in, 1                ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4
  br i1 %i.iu, label %fb_ffs.exit.i28, label %.lr.ph115

.lr.ph.i58.i:                                     ; preds = %.lr.ph115
  %i.iv = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 4
  br i1 %i.iw, label %fb_ffs.exit.i28, label %.lr.ph115, !llvm.loop !31

.lr.ph115:                                        ; preds = %.lr.ph.i58.i.preheader, %.lr.ph.i58.i
  %i.ix = phi i64 [ %i.iv, %.lr.ph.i58.i ], [ %i.it, %.lr.ph.i58.i.preheader ] ; 3 uses
  %.039.i4.i.i31117 = phi i64 [ %i.ix, %.lr.ph.i58.i ], [ %i.in, %.lr.ph.i58.i.preheader ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.039.i4.i.i31117
  %10 = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.iz = load i64, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %.lr.ph.i58.i, label %._crit_edge.i.i25, !llvm.loop !31

._crit_edge.i.i25:                                ; preds = %.lr.ph115, %eset_enumerate_alignment_search.exit.thread.i
  %.039.i.lcssa.i.i26 = phi i64 [ %i.in, %eset_enumerate_alignment_search.exit.thread.i ], [ %i.ix, %.lr.ph115 ]
  %.1.i.lcssa.i.i27 = phi i64 [ %i.ir, %eset_enumerate_alignment_search.exit.thread.i ], [ %i.iz, %.lr.ph115 ]
  %i.jb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i.i27, i1 true)
  %i.jc = shl nuw nsw i64 %.039.i.lcssa.i.i26, 6
  %i.jd = or disjoint i64 %i.jb, %i.jc
  br label %fb_ffs.exit.i28

fb_ffs.exit.i28:                                  ; preds = %.lr.ph.i58.i, %.lr.ph.i58.i.preheader, %._crit_edge.i.i25
  %.141.i.i.i = phi i64 [ %i.jd, %._crit_edge.i.i25 ], [ 200, %.lr.ph.i58.i.preheader ], [ 200, %.lr.ph.i58.i ] ; 2 uses
  %i.je = add i64 %i.b, -1
  %.081.i = trunc nuw nsw i64 %.141.i.i.i to i32
  %.not5082.i = icmp ugt i32 %.0.i53.i, %.081.i
  br i1 %.not5082.i, label %.lr.ph.i29, label %eset_fit_alignment.exit

.lr.ph.i29:                                       ; preds = %fb_ffs.exit.i28
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jg = sub i64 0, %i.b
  br label %bb.aj

bb.aj:                                            ; preds = %fb_ffs.exit66.i, %.lr.ph.i29
  %.0.in83.i = phi i64 [ %.141.i.i.i, %.lr.ph.i29 ], [ %.141.i.i63.i, %fb_ffs.exit66.i ]
  %i.jh = and i64 %.0.in83.i, 4294967295          ; 2 uses
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.jf, i64 %i.jh
  %i.jj = call ptr @je_edata_heap_first(ptr noundef nonnull %i.ji) #8 ; 3 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  %.val57.i = load ptr, ptr %i.jk, align 8, !tbaa !23 ; 2 uses
  %i.jl = ptrtoint ptr %.val57.i to i64
  %i.jm = and i64 %i.jl, 4095
  %i.jn = sub nsw i64 0, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %.val57.i, i64 %i.jn
  %i.jp = ptrtoint ptr %i.jo to i64               ; 3 uses
  %i.jq = getelementptr i8, ptr %i.jj, i64 16
  %.val.i = load i64, ptr %i.jq, align 8, !tbaa !19
  %i.jr = and i64 %.val.i, -4096
  %i.js = add i64 %i.je, %i.jp
  %i.jt = and i64 %i.js, %i.jg                    ; 3 uses
  %i.ju = icmp ult i64 %i.jt, %i.jp
  %i.jv = add i64 %i.jr, %i.jp                    ; 2 uses
  %.not48.i = icmp ule i64 %i.jv, %i.jt
  %or.cond52.not112.i = select i1 %i.ju, i1 true, i1 %.not48.i
  %i.jw = sub nuw i64 %i.jv, %i.jt
  %.not49.i = icmp ult i64 %i.jw, %1
  %or.cond.i = select i1 %or.cond52.not112.i, i1 true, i1 %.not49.i
  br i1 %or.cond.i, label %select.unfold.i, label %eset_fit_alignment.exit

select.unfold.i:                                  ; preds = %bb.aj
  %i.jx = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %i.jy = lshr i64 %i.jx, 6                       ; 4 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !25
  %i.kb = and i64 %i.jx, 63
  %notmask.i.i59.i = shl nsw i64 -1, %i.kb
  %i.kc = and i64 %i.ka, %notmask.i.i59.i         ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.i64.i.preheader, label %._crit_edge.i60.i

.lr.ph.i64.i.preheader:                           ; preds = %select.unfold.i
  %i.ke = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 4
  br i1 %i.kf, label %fb_ffs.exit66.i, label %.lr.ph116

.lr.ph.i64.i:                                     ; preds = %.lr.ph116
  %i.kg = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 4
  br i1 %i.kh, label %fb_ffs.exit66.i, label %.lr.ph116, !llvm.loop !31

.lr.ph116:                                        ; preds = %.lr.ph.i64.i.preheader, %.lr.ph.i64.i
  %i.ki = phi i64 [ %i.kg, %.lr.ph.i64.i ], [ %i.ke, %.lr.ph.i64.i.preheader ] ; 3 uses
  %.039.i4.i65.i119 = phi i64 [ %i.ki, %.lr.ph.i64.i ], [ %i.jy, %.lr.ph.i64.i.preheader ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.039.i4.i65.i119
  %11 = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kk = load i64, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.i64.i, label %._crit_edge.i60.i, !llvm.loop !31

._crit_edge.i60.i:                                ; preds = %.lr.ph116, %select.unfold.i
  %.039.i.lcssa.i61.i = phi i64 [ %i.jy, %select.unfold.i ], [ %i.ki, %.lr.ph116 ]
  %.1.i.lcssa.i62.i = phi i64 [ %i.kc, %select.unfold.i ], [ %i.kk, %.lr.ph116 ]
  %i.km = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i62.i, i1 true)
  %i.kn = shl i64 %.039.i.lcssa.i61.i, 6
  %i.ko = or disjoint i64 %i.km, %i.kn
  br label %fb_ffs.exit66.i

fb_ffs.exit66.i:                                  ; preds = %.lr.ph.i64.i, %.lr.ph.i64.i.preheader, %._crit_edge.i60.i
  %.141.i.i63.i = phi i64 [ %i.ko, %._crit_edge.i60.i ], [ 200, %.lr.ph.i64.i.preheader ], [ 200, %.lr.ph.i64.i ] ; 2 uses
  %.0.i30 = trunc i64 %.141.i.i63.i to i32
  %.not50.i = icmp ugt i32 %.0.i53.i, %.0.i30
  br i1 %.not50.i, label %bb.aj, label %eset_fit_alignment.exit, !llvm.loop !34

eset_fit_alignment.exit:                          ; preds = %fb_ffs.exit66.i, %bb.aj, %fb_ffs.exit.i28, %eset_enumerate_alignment_search.exit.i, %eset_first_fit.exit, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ %.0.i, %eset_first_fit.exit ], [ %i.hw, %eset_enumerate_alignment_search.exit.i ], [ null, %fb_ffs.exit.i28 ], [ null, %fb_ffs.exit66.i ], [ %i.jj, %bb.aj ]
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
