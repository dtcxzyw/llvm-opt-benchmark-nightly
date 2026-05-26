inline.NumInlined: 62
inline.NumDeleted: 13
begin_hunk_0_@je_edata_avail_remove:bb.a
  %i.ly = add i64 %i.lx, 40
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !16 ; 2 uses
  %.not87.i.i52 = icmp eq ptr %i.mb, null
  br i1 %.not87.i.i52, label %ph_merge_children.exit67.thread126, label %.preheader139

.preheader139:                                    ; preds = %._crit_edge148, %bb.bo
  %.278.i.i53 = phi ptr [ %.0.i7.i59, %bb.bo ], [ %.076.i.i39.lcssa, %._crit_edge148 ]
  %.2.i.i54 = phi ptr [ %i.mg, %bb.bo ], [ %.0.i10.i38, %._crit_edge148 ] ; 8 uses
  %.0.i.i55 = phi ptr [ %i.nl, %bb.bo ], [ %i.mb, %._crit_edge148 ] ; 8 uses
  %i.mc = ptrtoint ptr %.0.i.i55 to i64
  %i.md = add i64 %i.mc, 40
  %i.me = inttoptr i64 %i.md to ptr               ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !16 ; 3 uses
  %i.mh = ptrtoint ptr %.2.i.i54 to i64
  %i.mi = add i64 %i.mh, 40
  %i.mj = inttoptr i64 %i.mi to ptr               ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  store ptr null, ptr %i.mk, align 8, !tbaa !16
  store ptr null, ptr %i.mf, align 8, !tbaa !16
  %i.ml = icmp eq ptr %.0.i.i55, null
  br i1 %i.ml, label %phn_merge.exit.i58, label %edata_avail_ph_cmp.exit123

edata_avail_ph_cmp.exit123:                       ; preds = %.preheader139
  %i.mm = getelementptr i8, ptr %.2.i.i54, i64 16
  %.val.i.i118 = load i64, ptr %i.mm, align 8, !tbaa !19
  %i.mn = getelementptr i8, ptr %.0.i.i55, i64 16
  %.val8.i.i119 = load i64, ptr %i.mn, align 8, !tbaa !19
  %i.mo = and i64 %.val.i.i118, 4095              ; 2 uses
  %i.mp = and i64 %.val8.i.i119, 4095             ; 2 uses
  %.not.i.i120 = icmp eq i64 %i.mo, %i.mp
  %i.mq = icmp samesign ult i64 %i.mo, %i.mp
  %i.mr = icmp ult ptr %.2.i.i54, %.0.i.i55
  %spec.select138 = select i1 %.not.i.i120, i1 %i.mr, i1 %i.mq
  br i1 %spec.select138, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %edata_avail_ph_cmp.exit123
  store ptr %.2.i.i54, ptr %i.me, align 8, !tbaa !18
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !20 ; 3 uses
  store ptr %i.mt, ptr %i.mf, align 8, !tbaa !16
  %.not.i19.i63 = icmp eq ptr %i.mt, null
  br i1 %.not.i19.i63, label %phn_merge_ordered.exit20.i64, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = add i64 %i.mu, 40
  %i.mw = inttoptr i64 %i.mv to ptr
  store ptr %.0.i.i55, ptr %i.mw, align 8, !tbaa !18
  br label %phn_merge_ordered.exit20.i64

phn_merge_ordered.exit20.i64:                     ; preds = %bb.bl, %bb.bk
  store ptr %.0.i.i55, ptr %i.ms, align 8, !tbaa !20
  br label %phn_merge.exit.i58

bb.bm:                                            ; preds = %edata_avail_ph_cmp.exit123
  store ptr %.0.i.i55, ptr %i.mj, align 8, !tbaa !18
  %i.mx = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !20 ; 3 uses
  store ptr %i.my, ptr %i.mk, align 8, !tbaa !16
  %.not.i21.i56 = icmp eq ptr %i.my, null
  br i1 %.not.i21.i56, label %phn_merge_ordered.exit22.i57, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = add i64 %i.mz, 40
  %i.nb = inttoptr i64 %i.na to ptr
  store ptr %.2.i.i54, ptr %i.nb, align 8, !tbaa !18
  br label %phn_merge_ordered.exit22.i57

phn_merge_ordered.exit22.i57:                     ; preds = %bb.bn, %bb.bm
  store ptr %.2.i.i54, ptr %i.mx, align 8, !tbaa !20
  br label %phn_merge.exit.i58

phn_merge.exit.i58:                               ; preds = %phn_merge_ordered.exit22.i57, %phn_merge_ordered.exit20.i64, %.preheader139
  %.0.i7.i59 = phi ptr [ %.0.i.i55, %phn_merge_ordered.exit22.i57 ], [ %.2.i.i54, %.preheader139 ], [ %.2.i.i54, %phn_merge_ordered.exit20.i64 ] ; 3 uses
  %i.nc = icmp eq ptr %i.mg, null
  br i1 %i.nc, label %ph_merge_children.exit67.thread126, label %bb.bo

bb.bo:                                            ; preds = %phn_merge.exit.i58
  %i.nd = ptrtoint ptr %.278.i.i53 to i64
  %i.ne = add i64 %i.nd, 40
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %.0.i7.i59, ptr %i.ng, align 8, !tbaa !16
  %i.nh = ptrtoint ptr %i.mg to i64
  %i.ni = add i64 %i.nh, 40
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !16
  br label %.preheader139

ph_merge_children.exit67.thread126:               ; preds = %phn_merge.exit.i58, %._crit_edge148, %bb.aw
  %.0.i62129 = phi ptr [ %i.ji, %bb.aw ], [ %.0.i10.i38, %._crit_edge148 ], [ %.0.i7.i59, %phn_merge.exit.i58 ] ; 4 uses
  %.not87.i = icmp eq ptr %.0.i230, null
  br i1 %.not87.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %ph_merge_children.exit67.thread126
  %i.nm = ptrtoint ptr %.0.i62129 to i64
  %i.nn = add i64 %i.nm, 40
  %i.no = inttoptr i64 %i.nn to ptr               ; 2 uses
  store ptr %.0.i230, ptr %i.no, align 8, !tbaa !18
  br label %.sink.split

bb.bq:                                            ; preds = %ph_merge_children.exit67.thread126
  %i.np = load ptr, ptr %i.e, align 8, !tbaa !18  ; 3 uses
  %i.nq = ptrtoint ptr %.0.i62129 to i64
  %i.nr = add i64 %i.nq, 40
  %i.ns = inttoptr i64 %i.nr to ptr               ; 3 uses
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !18
  %.not88.i = icmp eq ptr %i.np, null
  br i1 %.not88.i, label %bb.br, label %.sink.split

.sink.split:                                      ; preds = %bb.bq, %bb.bp
  %.sink = phi ptr [ %.0.i230, %bb.bp ], [ %i.np, %bb.bq ]
  %.sink245 = phi i64 [ 16, %bb.bp ], [ 8, %bb.bq ]
  %.pre-phi157.ph = phi ptr [ %i.no, %bb.bp ], [ %i.ns, %bb.bq ]
  %i.nt = ptrtoint ptr %.sink to i64
  %i.nu = add i64 %i.nt, 40
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.sink245
  store ptr %.0.i62129, ptr %i.nw, align 8, !tbaa !25
  br label %bb.br

bb.br:                                            ; preds = %.sink.split, %bb.bq
  %.pre-phi157 = phi ptr [ %i.ns, %bb.bq ], [ %.pre-phi157.ph, %.sink.split ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !16 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.pre-phi157, i64 8
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !16
  %.not89.i = icmp eq ptr %i.ny, null
  br i1 %.not89.i, label %ph_remove.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = add i64 %i.oa, 40
  %i.oc = inttoptr i64 %i.ob to ptr
  store ptr %.0.i62129, ptr %i.oc, align 8, !tbaa !18
  br label %ph_remove.exit

ph_merge_children.exit67.thread:                  ; preds = %bb.av
  %.not84.i = icmp eq ptr %spec.select.i, null
  br i1 %.not84.i, label %ph_merge_children.exit67.thread.thread, label %bb.bt

bb.bt:                                            ; preds = %ph_merge_children.exit67.thread
  %i.od = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !16 ; 4 uses
  %i.of = ptrtoint ptr %spec.select.i to i64
  %i.og = add i64 %i.of, 40
  %i.oh = inttoptr i64 %i.og to ptr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store ptr %i.oe, ptr %i.oi, align 8, !tbaa !20
  %.not85.i = icmp eq ptr %i.oe, null
  br i1 %.not85.i, label %ph_remove.exit, label %.thread236

.thread236:                                       ; preds = %bb.bt
  %i.oj = ptrtoint ptr %i.oe to i64
  %i.ok = add i64 %i.oj, 40
  %i.ol = inttoptr i64 %i.ok to ptr
  store ptr %spec.select.i, ptr %i.ol, align 8, !tbaa !18
  br label %bb.bu

ph_merge_children.exit67.thread.thread:           ; preds = %.thread228, %ph_merge_children.exit67.thread
  %i.om = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !16 ; 3 uses
  %i.oo = ptrtoint ptr %i.iw to i64
  %i.op = add i64 %i.oo, 40
  %i.oq = inttoptr i64 %i.op to ptr
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store ptr %i.on, ptr %i.or, align 8, !tbaa !16
  %.not86.i = icmp eq ptr %i.on, null
  br i1 %.not86.i, label %ph_remove.exit, label %bb.bu

bb.bu:                                            ; preds = %.thread236, %ph_merge_children.exit67.thread.thread
  %i.os = phi ptr [ %i.oe, %.thread236 ], [ %i.on, %ph_merge_children.exit67.thread.thread ]
  %i.ot = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = add i64 %i.ou, 40
  %i.ow = inttoptr i64 %i.ov to ptr
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !18
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %bb.bt, %bb.c, %bb.d, %ph_merge_children.exit, %bb.br, %bb.bs, %ph_merge_children.exit67.thread.thread, %bb.bu
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @je_edata_avail_remove_any(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %je_edata_avail_any.exit.thread, label %je_edata_avail_any.exit.thread8

je_edata_avail_any.exit.thread8:                  ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %i.g ; 2 uses
  tail call void @je_edata_avail_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %je_edata_avail_any.exit.thread

je_edata_avail_any.exit.thread:                   ; preds = %bb.a, %je_edata_avail_any.exit.thread8
  %.1.i.i7 = phi ptr [ %spec.select, %je_edata_avail_any.exit.thread8 ], [ null, %bb.a ]
  ret ptr %.1.i.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_edata_heap_new(ptr noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @je_edata_heap_empty(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @je_edata_heap_first(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ph_first.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !15
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = add i64 %i.d, 40
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 9 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ph_first.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.i, 40
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 8 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %phn_merge_siblings.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, 40
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 3 uses
  %.not85.i = icmp eq ptr %i.r, null              ; 2 uses
  br i1 %.not85.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 40
  %i.u = inttoptr i64 %i.t to ptr
  store ptr null, ptr %i.u, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %.val28 = load i64, ptr %i.v, align 8, !tbaa !26 ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 32
  %.val30 = load i64, ptr %i.w, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val28, %.val30
  br i1 %.not.i.i.i, label %edata_heap_ph_cmp.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %.val28, %.val30
  br i1 %i.x, label %bb.h, label %bb.j

edata_heap_ph_cmp.exit:                           ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.m, i64 8
  %.val29 = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.z = getelementptr i8, ptr %i.h, i64 8
  %.val27 = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.aa = icmp ult ptr %.val27, %.val29
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %edata_heap_ph_cmp.exit
  store ptr %i.h, ptr %i.p, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 3 uses
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !16
  %.not.i13 = icmp eq ptr %i.ac, null
  br i1 %.not.i13, label %phn_merge_ordered.exit14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = add i64 %i.ad, 40
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.m, ptr %i.af, align 8, !tbaa !18
  br label %phn_merge_ordered.exit14

phn_merge_ordered.exit14:                         ; preds = %bb.h, %bb.i
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !20
  br label %phn_merge.exit7

bb.j:                                             ; preds = %bb.g, %edata_heap_ph_cmp.exit
  store ptr %i.m, ptr %i.k, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 3 uses
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !16
  %.not.i15 = icmp eq ptr %i.ah, null
  br i1 %.not.i15, label %phn_merge_ordered.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %i.ai, 40
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.h, ptr %i.ak, align 8, !tbaa !18
  br label %phn_merge_ordered.exit16

phn_merge_ordered.exit16:                         ; preds = %bb.j, %bb.k
  store ptr %i.h, ptr %i.ag, align 8, !tbaa !20
  br label %phn_merge.exit7

phn_merge.exit7:                                  ; preds = %phn_merge_ordered.exit14, %phn_merge_ordered.exit16
  %.0.i6 = phi ptr [ %i.m, %phn_merge_ordered.exit16 ], [ %i.h, %phn_merge_ordered.exit14 ] ; 5 uses
  br i1 %.not85.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %phn_merge.exit7, %bb.t
  %.075.i49 = phi ptr [ %i.au, %bb.t ], [ %i.r, %phn_merge.exit7 ] ; 9 uses
  %.076.i48 = phi ptr [ %.0.i4, %bb.t ], [ %.0.i6, %phn_merge.exit7 ] ; 2 uses
  %i.al = ptrtoint ptr %.075.i49 to i64
  %i.am = add i64 %i.al, 40
  %i.an = inttoptr i64 %i.am to ptr               ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16 ; 8 uses
  %.not88.i = icmp eq ptr %i.ap, null
  br i1 %.not88.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 40
  %i.as = inttoptr i64 %i.ar to ptr               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16 ; 4 uses
  %.not89.i = icmp eq ptr %i.au, null
  br i1 %.not89.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = add i64 %i.av, 40
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr null, ptr %i.ax, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ay = getelementptr i8, ptr %.075.i49, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %.075.i.val31 = load i64, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 32
  %.val33 = load i64, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i36 = icmp eq i64 %.075.i.val31, %.val33
  br i1 %.not.i.i.i36, label %edata_heap_ph_cmp.exit38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp ult i64 %.075.i.val31, %.val33
  br i1 %i.ba, label %bb.p, label %bb.r

edata_heap_ph_cmp.exit38:                         ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %i.ap, i64 8
  %.val32 = load ptr, ptr %i.bb, align 8, !tbaa !29
  %i.bc = getelementptr i8, ptr %.075.i49, i64 8
  %.075.i.val = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.bd = icmp ult ptr %.075.i.val, %.val32
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %edata_heap_ph_cmp.exit38
  store ptr %.075.i49, ptr %i.as, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20 ; 3 uses
  store ptr %i.bf, ptr %i.at, align 8, !tbaa !16
  %.not.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i17, label %phn_merge_ordered.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = add i64 %i.bg, 40
  %i.bi = inttoptr i64 %i.bh to ptr
  store ptr %i.ap, ptr %i.bi, align 8, !tbaa !18
  br label %phn_merge_ordered.exit18

phn_merge_ordered.exit18:                         ; preds = %bb.p, %bb.q
  store ptr %i.ap, ptr %i.be, align 8, !tbaa !20
  br label %bb.t

bb.r:                                             ; preds = %bb.o, %edata_heap_ph_cmp.exit38
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 3 uses
  store ptr %i.bk, ptr %i.ao, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@je_edata_heap_remove:bb.a
.preheader130:                                    ; preds = %._crit_edge139, %bb.ci
  %.278.i.i53 = phi ptr [ %.0.i7.i59, %bb.ci ], [ %.076.i.i39.lcssa, %._crit_edge139 ]
  %.2.i.i54 = phi ptr [ %i.mg, %bb.ci ], [ %.0.i10.i38, %._crit_edge139 ] ; 8 uses
  %.0.i.i55 = phi ptr [ %i.nl, %bb.ci ], [ %i.mb, %._crit_edge139 ] ; 8 uses
  %i.mc = ptrtoint ptr %.0.i.i55 to i64
  %i.md = add i64 %i.mc, 40
  %i.me = inttoptr i64 %i.md to ptr               ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !16 ; 3 uses
  %i.mh = ptrtoint ptr %.2.i.i54 to i64
  %i.mi = add i64 %i.mh, 40
  %i.mj = inttoptr i64 %i.mi to ptr               ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  store ptr null, ptr %i.mk, align 8, !tbaa !16
  store ptr null, ptr %i.mf, align 8, !tbaa !16
  %i.ml = icmp eq ptr %.0.i.i55, null
  br i1 %i.ml, label %phn_merge.exit.i58, label %bb.cc

bb.cc:                                            ; preds = %.preheader130
  %i.mm = getelementptr i8, ptr %.2.i.i54, i64 32
  %.2.i.i54.val68 = load i64, ptr %i.mm, align 8, !tbaa !26 ; 2 uses
  %i.mn = getelementptr i8, ptr %.0.i.i55, i64 32
  %.0.i.i55.val69 = load i64, ptr %i.mn, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i121 = icmp eq i64 %.2.i.i54.val68, %.0.i.i55.val69
  br i1 %.not.i.i.i121, label %edata_heap_ph_cmp.exit123, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mo = icmp ult i64 %.2.i.i54.val68, %.0.i.i55.val69
  br i1 %i.mo, label %bb.ce, label %bb.cg

edata_heap_ph_cmp.exit123:                        ; preds = %bb.cc
  %i.mp = getelementptr i8, ptr %.0.i.i55, i64 8
  %.0.i.i55.val = load ptr, ptr %i.mp, align 8, !tbaa !29
  %i.mq = getelementptr i8, ptr %.2.i.i54, i64 8
  %.2.i.i54.val = load ptr, ptr %i.mq, align 8, !tbaa !29
  %i.mr = icmp ult ptr %.2.i.i54.val, %.0.i.i55.val
  br i1 %i.mr, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd, %edata_heap_ph_cmp.exit123
  store ptr %.2.i.i54, ptr %i.me, align 8, !tbaa !18
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !20 ; 3 uses
  store ptr %i.mt, ptr %i.mf, align 8, !tbaa !16
  %.not.i19.i63 = icmp eq ptr %i.mt, null
  br i1 %.not.i19.i63, label %phn_merge_ordered.exit20.i64, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = add i64 %i.mu, 40
  %i.mw = inttoptr i64 %i.mv to ptr
  store ptr %.0.i.i55, ptr %i.mw, align 8, !tbaa !18
  br label %phn_merge_ordered.exit20.i64

phn_merge_ordered.exit20.i64:                     ; preds = %bb.cf, %bb.ce
  store ptr %.0.i.i55, ptr %i.ms, align 8, !tbaa !20
  br label %phn_merge.exit.i58

bb.cg:                                            ; preds = %bb.cd, %edata_heap_ph_cmp.exit123
  store ptr %.0.i.i55, ptr %i.mj, align 8, !tbaa !18
  %i.mx = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !20 ; 3 uses
  store ptr %i.my, ptr %i.mk, align 8, !tbaa !16
  %.not.i21.i56 = icmp eq ptr %i.my, null
  br i1 %.not.i21.i56, label %phn_merge_ordered.exit22.i57, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = add i64 %i.mz, 40
  %i.nb = inttoptr i64 %i.na to ptr
  store ptr %.2.i.i54, ptr %i.nb, align 8, !tbaa !18
  br label %phn_merge_ordered.exit22.i57

phn_merge_ordered.exit22.i57:                     ; preds = %bb.ch, %bb.cg
  store ptr %.2.i.i54, ptr %i.mx, align 8, !tbaa !20
  br label %phn_merge.exit.i58

phn_merge.exit.i58:                               ; preds = %phn_merge_ordered.exit22.i57, %phn_merge_ordered.exit20.i64, %.preheader130
  %.0.i7.i59 = phi ptr [ %.0.i.i55, %phn_merge_ordered.exit22.i57 ], [ %.2.i.i54, %.preheader130 ], [ %.2.i.i54, %phn_merge_ordered.exit20.i64 ] ; 3 uses
  %i.nc = icmp eq ptr %i.mg, null
  br i1 %i.nc, label %ph_merge_children.exit67.thread126, label %bb.ci

bb.ci:                                            ; preds = %phn_merge.exit.i58
  %i.nd = ptrtoint ptr %.278.i.i53 to i64
  %i.ne = add i64 %i.nd, 40
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %.0.i7.i59, ptr %i.ng, align 8, !tbaa !16
  %i.nh = ptrtoint ptr %i.mg to i64
  %i.ni = add i64 %i.nh, 40
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !16
  br label %.preheader130

ph_merge_children.exit67.thread126:               ; preds = %phn_merge.exit.i58, %._crit_edge139, %bb.bk
  %.0.i62129 = phi ptr [ %i.ji, %bb.bk ], [ %.0.i10.i38, %._crit_edge139 ], [ %.0.i7.i59, %phn_merge.exit.i58 ] ; 4 uses
  %.not87.i = icmp eq ptr %.0.i222, null
  br i1 %.not87.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %ph_merge_children.exit67.thread126
  %i.nm = ptrtoint ptr %.0.i62129 to i64
  %i.nn = add i64 %i.nm, 40
  %i.no = inttoptr i64 %i.nn to ptr               ; 2 uses
  store ptr %.0.i222, ptr %i.no, align 8, !tbaa !18
  br label %.sink.split

bb.ck:                                            ; preds = %ph_merge_children.exit67.thread126
  %i.np = load ptr, ptr %i.e, align 8, !tbaa !18  ; 3 uses
  %i.nq = ptrtoint ptr %.0.i62129 to i64
  %i.nr = add i64 %i.nq, 40
  %i.ns = inttoptr i64 %i.nr to ptr               ; 3 uses
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !18
  %.not88.i = icmp eq ptr %i.np, null
  br i1 %.not88.i, label %bb.cl, label %.sink.split

.sink.split:                                      ; preds = %bb.ck, %bb.cj
  %.sink = phi ptr [ %.0.i222, %bb.cj ], [ %i.np, %bb.ck ]
  %.sink237 = phi i64 [ 16, %bb.cj ], [ 8, %bb.ck ]
  %.pre-phi148.ph = phi ptr [ %i.no, %bb.cj ], [ %i.ns, %bb.ck ]
  %i.nt = ptrtoint ptr %.sink to i64
  %i.nu = add i64 %i.nt, 40
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.sink237
  store ptr %.0.i62129, ptr %i.nw, align 8, !tbaa !25
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split, %bb.ck
  %.pre-phi148 = phi ptr [ %i.ns, %bb.ck ], [ %.pre-phi148.ph, %.sink.split ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !16 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.pre-phi148, i64 8
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !16
  %.not89.i = icmp eq ptr %i.ny, null
  br i1 %.not89.i, label %ph_remove.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = add i64 %i.oa, 40
  %i.oc = inttoptr i64 %i.ob to ptr
  store ptr %.0.i62129, ptr %i.oc, align 8, !tbaa !18
  br label %ph_remove.exit

ph_merge_children.exit67.thread:                  ; preds = %bb.bj
  %.not84.i = icmp eq ptr %spec.select.i, null
  br i1 %.not84.i, label %ph_merge_children.exit67.thread.thread, label %bb.cn

bb.cn:                                            ; preds = %ph_merge_children.exit67.thread
  %i.od = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !16 ; 4 uses
  %i.of = ptrtoint ptr %spec.select.i to i64
  %i.og = add i64 %i.of, 40
  %i.oh = inttoptr i64 %i.og to ptr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store ptr %i.oe, ptr %i.oi, align 8, !tbaa !20
  %.not85.i = icmp eq ptr %i.oe, null
  br i1 %.not85.i, label %ph_remove.exit, label %.thread228

.thread228:                                       ; preds = %bb.cn
  %i.oj = ptrtoint ptr %i.oe to i64
  %i.ok = add i64 %i.oj, 40
  %i.ol = inttoptr i64 %i.ok to ptr
  store ptr %spec.select.i, ptr %i.ol, align 8, !tbaa !18
  br label %bb.co

ph_merge_children.exit67.thread.thread:           ; preds = %.thread220, %ph_merge_children.exit67.thread
  %i.om = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !16 ; 3 uses
  %i.oo = ptrtoint ptr %i.iw to i64
  %i.op = add i64 %i.oo, 40
  %i.oq = inttoptr i64 %i.op to ptr
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store ptr %i.on, ptr %i.or, align 8, !tbaa !16
  %.not86.i = icmp eq ptr %i.on, null
  br i1 %.not86.i, label %ph_remove.exit, label %bb.co

bb.co:                                            ; preds = %.thread228, %ph_merge_children.exit67.thread.thread
  %i.os = phi ptr [ %i.oe, %.thread228 ], [ %i.on, %ph_merge_children.exit67.thread.thread ]
  %i.ot = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = add i64 %i.ou, 40
  %i.ow = inttoptr i64 %i.ov to ptr
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !18
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %bb.cn, %bb.c, %bb.d, %ph_merge_children.exit, %bb.cl, %bb.cm, %ph_merge_children.exit67.thread.thread, %bb.co
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @je_edata_heap_remove_any(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %je_edata_heap_any.exit.thread, label %je_edata_heap_any.exit.thread8

je_edata_heap_any.exit.thread8:                   ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %i.g ; 2 uses
  tail call void @je_edata_heap_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %je_edata_heap_any.exit.thread

je_edata_heap_any.exit.thread:                    ; preds = %bb.a, %je_edata_heap_any.exit.thread8
  %.1.i.i7 = phi ptr [ %spec.select, %je_edata_heap_any.exit.thread8 ], [ null, %bb.a ]
  ret ptr %.1.i.i7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"ph_s", !13, i64 0, !14, i64 8}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!12, !14, i64 8}
!16 = !{!17, !13, i64 8}
!17 = !{!"phn_link_s", !13, i64 0, !13, i64 8, !13, i64 16}
!18 = !{!17, !13, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!17, !13, i64 16}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
!25 = !{!13, !13, i64 0}
!26 = !{!27, !14, i64 32}
!27 = !{!"edata_s", !14, i64 0, !13, i64 8, !9, i64 16, !28, i64 24, !14, i64 32, !9, i64 40, !9, i64 64}
!28 = !{!"p1 _ZTS8hpdata_s", !13, i64 0}
!29 = !{!27, !13, i64 8}
!30 = distinct !{!30, !22, !24}
end_hunk_1
