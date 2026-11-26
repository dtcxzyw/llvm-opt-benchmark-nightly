Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/edata?download=true
inline.NumInlined: 62
inline.NumDeleted: 13
begin_hunk_0_@je_edata_avail_remove_first:bb.a
  %.not88.i.i = icmp eq ptr %i.ft, null
  br i1 %.not88.i.i, label %.thread119, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph79
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = add i64 %i.fu, 40
  %i.fw = inttoptr i64 %i.fv to ptr               ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18 ; 4 uses
  %.not89.i.i = icmp eq ptr %i.fy, null
  br i1 %.not89.i.i, label %edata_avail_ph_cmp.exit57, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = add i64 %i.fz, 40
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr null, ptr %i.gb, align 8, !tbaa !19
  br label %edata_avail_ph_cmp.exit57

edata_avail_ph_cmp.exit57:                        ; preds = %bb.ah, %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  %i.gc = getelementptr i8, ptr %.075.i.i78, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  %.val.i.i52 = load i64, ptr %i.gc, align 8, !tbaa !20
  %i.gd = getelementptr i8, ptr %i.ft, i64 16
  %.val8.i.i53 = load i64, ptr %i.gd, align 8, !tbaa !20
  %i.ge = and i64 %.val.i.i52, 4095               ; 2 uses
  %i.gf = and i64 %.val8.i.i53, 4095              ; 2 uses
  %.not.i.i54 = icmp eq i64 %i.ge, %i.gf
  %i.gg = icmp samesign ult i64 %i.ge, %i.gf
  %i.gh = icmp ult ptr %.075.i.i78, %i.ft
  %spec.select70 = select i1 %.not.i.i54, i1 %i.gh, i1 %i.gg
  br i1 %spec.select70, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %edata_avail_ph_cmp.exit57
  store ptr %.075.i.i78, ptr %i.fw, align 8, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !21 ; 3 uses
  store ptr %i.gj, ptr %i.fx, align 8, !tbaa !18
  %.not.i15.i = icmp eq ptr %i.gj, null
  br i1 %.not.i15.i, label %phn_merge_ordered.exit16.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = add i64 %i.gk, 40
  %i.gm = inttoptr i64 %i.gl to ptr
  store ptr %i.ft, ptr %i.gm, align 8, !tbaa !19
  br label %phn_merge_ordered.exit16.i

phn_merge_ordered.exit16.i:                       ; preds = %bb.aj, %bb.ai
  store ptr %i.ft, ptr %i.gi, align 8, !tbaa !21
  br label %bb.am

bb.ak:                                            ; preds = %edata_avail_ph_cmp.exit57
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !21 ; 3 uses
  store ptr %i.go, ptr %i.fs, align 8, !tbaa !18
  %.not.i17.i = icmp eq ptr %i.go, null
  br i1 %.not.i17.i, label %phn_merge_ordered.exit18.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = add i64 %i.gp, 40
  %i.gr = inttoptr i64 %i.gq to ptr
  store ptr %.075.i.i78, ptr %i.gr, align 8, !tbaa !19
  br label %phn_merge_ordered.exit18.i

phn_merge_ordered.exit18.i:                       ; preds = %bb.al, %bb.ak
  store ptr %.075.i.i78, ptr %i.gn, align 8, !tbaa !21
  br label %bb.am

.thread119:                                       ; preds = %.lr.ph79
  %i.gs = ptrtoint ptr %.076.i.i77 to i64
  %i.gt = add i64 %i.gs, 40
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %.075.i.i78, ptr %i.gv, align 8, !tbaa !18
  br label %._crit_edge80

bb.am:                                            ; preds = %phn_merge_ordered.exit16.i, %phn_merge_ordered.exit18.i
  %.0.i8.i = phi ptr [ %i.ft, %phn_merge_ordered.exit18.i ], [ %.075.i.i78, %phn_merge_ordered.exit16.i ] ; 3 uses
  %i.gw = ptrtoint ptr %.076.i.i77 to i64
  %i.gx = add i64 %i.gw, 40
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %.0.i8.i, ptr %i.gz, align 8, !tbaa !18
  %.not86.i.i = icmp eq ptr %i.fy, null
  br i1 %.not86.i.i, label %._crit_edge80, label %.lr.ph79, !llvm.loop !0

._crit_edge80:                                    ; preds = %bb.am, %.thread119, %phn_merge.exit11.i
  %.076.i.i.lcssa = phi ptr [ %.0.i10.i, %phn_merge.exit11.i ], [ %.075.i.i78, %.thread119 ], [ %.0.i8.i, %bb.am ]
  %i.ha = ptrtoint ptr %.0.i10.i to i64
  %i.hb = add i64 %i.ha, 40
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !18 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.he, null
  br i1 %.not87.i.i, label %ph_merge_children.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge80, %bb.ar
  %.278.i.i = phi ptr [ %.0.i7.i, %bb.ar ], [ %.076.i.i.lcssa, %._crit_edge80 ]
  %.2.i.i = phi ptr [ %i.hj, %bb.ar ], [ %.0.i10.i, %._crit_edge80 ] ; 8 uses
  %.0.i.i = phi ptr [ %i.io, %bb.ar ], [ %i.he, %._crit_edge80 ] ; 8 uses
  %i.hf = ptrtoint ptr %.0.i.i to i64
  %i.hg = add i64 %i.hf, 40
  %i.hh = inttoptr i64 %i.hg to ptr               ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !18 ; 3 uses
  %i.hk = ptrtoint ptr %.2.i.i to i64
  %i.hl = add i64 %i.hk, 40
  %i.hm = inttoptr i64 %i.hl to ptr               ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  store ptr null, ptr %i.hn, align 8, !tbaa !18
  store ptr null, ptr %i.hi, align 8, !tbaa !18
  %i.ho = icmp eq ptr %.0.i.i, null
  br i1 %i.ho, label %phn_merge.exit.i, label %edata_avail_ph_cmp.exit63

edata_avail_ph_cmp.exit63:                        ; preds = %.preheader
  %i.hp = getelementptr i8, ptr %.2.i.i, i64 16
  %.val.i.i58 = load i64, ptr %i.hp, align 8, !tbaa !20
  %i.hq = getelementptr i8, ptr %.0.i.i, i64 16
  %.val8.i.i59 = load i64, ptr %i.hq, align 8, !tbaa !20
  %i.hr = and i64 %.val.i.i58, 4095               ; 2 uses
  %i.hs = and i64 %.val8.i.i59, 4095              ; 2 uses
  %.not.i.i60 = icmp eq i64 %i.hr, %i.hs
  %i.ht = icmp samesign ult i64 %i.hr, %i.hs
  %i.hu = icmp ult ptr %.2.i.i, %.0.i.i
  %spec.select71 = select i1 %.not.i.i60, i1 %i.hu, i1 %i.ht
  br i1 %spec.select71, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %edata_avail_ph_cmp.exit63
  store ptr %.2.i.i, ptr %i.hh, align 8, !tbaa !19
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !21 ; 3 uses
  store ptr %i.hw, ptr %i.hi, align 8, !tbaa !18
  %.not.i19.i = icmp eq ptr %i.hw, null
  br i1 %.not.i19.i, label %phn_merge_ordered.exit20.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = add i64 %i.hx, 40
  %i.hz = inttoptr i64 %i.hy to ptr
  store ptr %.0.i.i, ptr %i.hz, align 8, !tbaa !19
  br label %phn_merge_ordered.exit20.i

phn_merge_ordered.exit20.i:                       ; preds = %bb.ao, %bb.an
  store ptr %.0.i.i, ptr %i.hv, align 8, !tbaa !21
  br label %phn_merge.exit.i

bb.ap:                                            ; preds = %edata_avail_ph_cmp.exit63
  store ptr %.0.i.i, ptr %i.hm, align 8, !tbaa !19
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ib, ptr %i.hn, align 8, !tbaa !18
  %.not.i21.i = icmp eq ptr %i.ib, null
  br i1 %.not.i21.i, label %phn_merge_ordered.exit22.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = add i64 %i.ic, 40
  %i.ie = inttoptr i64 %i.id to ptr
  store ptr %.2.i.i, ptr %i.ie, align 8, !tbaa !19
  br label %phn_merge_ordered.exit22.i

phn_merge_ordered.exit22.i:                       ; preds = %bb.aq, %bb.ap
  store ptr %.2.i.i, ptr %i.ia, align 8, !tbaa !21
  br label %phn_merge.exit.i

phn_merge.exit.i:                                 ; preds = %phn_merge_ordered.exit22.i, %phn_merge_ordered.exit20.i, %.preheader
  %.0.i7.i = phi ptr [ %.0.i.i, %phn_merge_ordered.exit22.i ], [ %.2.i.i, %.preheader ], [ %.2.i.i, %phn_merge_ordered.exit20.i ] ; 3 uses
  %i.if = icmp eq ptr %i.hj, null
  br i1 %i.if, label %ph_merge_children.exit, label %bb.ar

bb.ar:                                            ; preds = %phn_merge.exit.i
  %i.ig = ptrtoint ptr %.278.i.i to i64
  %i.ih = add i64 %i.ig, 40
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %.0.i7.i, ptr %i.ij, align 8, !tbaa !18
  %i.ik = ptrtoint ptr %i.hj to i64
  %i.il = add i64 %i.ik, 40
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !18
  br label %.preheader

ph_merge_children.exit:                           ; preds = %phn_merge.exit.i, %bb.z, %._crit_edge80, %ph_merge_aux.exit
  %.0.i25 = phi ptr [ null, %ph_merge_aux.exit ], [ %i.ek, %bb.z ], [ %.0.i10.i, %._crit_edge80 ], [ %.0.i7.i, %phn_merge.exit.i ]
  store ptr %.0.i25, ptr %0, align 8, !tbaa !15
  br label %ph_remove_first.exit

ph_remove_first.exit:                             ; preds = %bb.a, %ph_merge_children.exit
  %.0.i = phi ptr [ %i.ei, %ph_merge_children.exit ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_edata_avail_remove(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 !guid !36 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.b = icmp eq ptr %i.a, %1
  %i.c = ptrtoint ptr %1 to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr                 ; 13 uses
  br i1 %i.b, label %bb.b, label %._crit_edge158

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %.not90.i = icmp eq ptr %i.j, null
  br i1 %.not90.i, label %ph_remove.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 40
  %i.m = inttoptr i64 %i.l to ptr
  store ptr null, ptr %i.m, align 8, !tbaa !19
  br label %ph_remove.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 9 uses
  %.not.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i2, label %ph_merge_aux.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 40
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 8 uses
  %.not.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i3, label %phn_merge_siblings.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 40
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 3 uses
  %.not85.i4 = icmp eq ptr %i.z, null             ; 2 uses
  br i1 %.not85.i4, label %edata_avail_ph_cmp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 40
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr null, ptr %i.ac, align 8, !tbaa !19
  br label %edata_avail_ph_cmp.exit

edata_avail_ph_cmp.exit:                          ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ad = getelementptr i8, ptr %i.p, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %.val.i.i = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr i8, ptr %i.u, i64 16
  %.val8.i.i = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.af = and i64 %.val.i.i, 4095                 ; 2 uses
  %i.ag = and i64 %.val8.i.i, 4095                ; 2 uses
  %.not.i.i68 = icmp eq i64 %i.af, %i.ag
  %i.ah = icmp samesign ult i64 %i.af, %i.ag
  %i.ai = icmp ult ptr %i.p, %i.u
  %spec.select = select i1 %.not.i.i68, i1 %i.ai, i1 %i.ah
  br i1 %spec.select, label %bb.i, label %bb.k

bb.i:                                             ; preds = %edata_avail_ph_cmp.exit
  store ptr %i.p, ptr %i.x, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !18
  %.not.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i20, label %phn_merge_ordered.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 40
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.u, ptr %i.an, align 8, !tbaa !19
  br label %phn_merge_ordered.exit21

phn_merge_ordered.exit21:                         ; preds = %bb.i, %bb.j
  store ptr %i.u, ptr %i.aj, align 8, !tbaa !21
  br label %phn_merge.exit14

bb.k:                                             ; preds = %edata_avail_ph_cmp.exit
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ap, ptr %i.t, align 8, !tbaa !18
  %.not.i22 = icmp eq ptr %i.ap, null
  br i1 %.not.i22, label %phn_merge_ordered.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 40
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.p, ptr %i.as, align 8, !tbaa !19
  br label %phn_merge_ordered.exit23

phn_merge_ordered.exit23:                         ; preds = %bb.k, %bb.l
  store ptr %i.p, ptr %i.ao, align 8, !tbaa !21
  br label %phn_merge.exit14

phn_merge.exit14:                                 ; preds = %phn_merge_ordered.exit21, %phn_merge_ordered.exit23
  %.0.i13 = phi ptr [ %i.u, %phn_merge_ordered.exit23 ], [ %i.p, %phn_merge_ordered.exit21 ] ; 5 uses
  br i1 %.not85.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %phn_merge.exit14, %bb.s
  %.075.i143 = phi ptr [ %i.bc, %bb.s ], [ %i.z, %phn_merge.exit14 ] ; 9 uses
  %.076.i142 = phi ptr [ %.0.i11, %bb.s ], [ %.0.i13, %phn_merge.exit14 ] ; 2 uses
  %i.at = ptrtoint ptr %.075.i143 to i64
  %i.au = add i64 %i.at, 40
  %i.av = inttoptr i64 %i.au to ptr               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 8 uses
  %.not88.i6 = icmp eq ptr %i.ax, null
  br i1 %.not88.i6, label %.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = add i64 %i.ay, 40
  %i.ba = inttoptr i64 %i.az to ptr               ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18 ; 4 uses
  %.not89.i7 = icmp eq ptr %i.bc, null
  br i1 %.not89.i7, label %edata_avail_ph_cmp.exit75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, 40
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr null, ptr %i.bf, align 8, !tbaa !19
  br label %edata_avail_ph_cmp.exit75

edata_avail_ph_cmp.exit75:                        ; preds = %bb.n, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.bg = getelementptr i8, ptr %.075.i143, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %.val.i.i70 = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bh = getelementptr i8, ptr %i.ax, i64 16
  %.val8.i.i71 = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bi = and i64 %.val.i.i70, 4095               ; 2 uses
  %i.bj = and i64 %.val8.i.i71, 4095              ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.bi, %i.bj
  %i.bk = icmp samesign ult i64 %i.bi, %i.bj
  %i.bl = icmp ult ptr %.075.i143, %i.ax
  %spec.select130 = select i1 %.not.i.i72, i1 %i.bl, i1 %i.bk
  br i1 %spec.select130, label %bb.o, label %bb.q

bb.o:                                             ; preds = %edata_avail_ph_cmp.exit75
  store ptr %.075.i143, ptr %i.ba, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 3 uses
  store ptr %i.bn, ptr %i.bb, align 8, !tbaa !18
  %.not.i24 = icmp eq ptr %i.bn, null
  br i1 %.not.i24, label %phn_merge_ordered.exit25, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 40
  %i.bq = inttoptr i64 %i.bp to ptr
  store ptr %i.ax, ptr %i.bq, align 8, !tbaa !19
  br label %phn_merge_ordered.exit25

phn_merge_ordered.exit25:                         ; preds = %bb.o, %bb.p
  store ptr %i.ax, ptr %i.bm, align 8, !tbaa !21
  br label %bb.s

bb.q:                                             ; preds = %edata_avail_ph_cmp.exit75
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21 ; 3 uses
  store ptr %i.bs, ptr %i.aw, align 8, !tbaa !18
  %.not.i26 = icmp eq ptr %i.bs, null
  br i1 %.not.i26, label %phn_merge_ordered.exit27, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 40
  %i.bv = inttoptr i64 %i.bu to ptr
  store ptr %.075.i143, ptr %i.bv, align 8, !tbaa !19
  br label %phn_merge_ordered.exit27

phn_merge_ordered.exit27:                         ; preds = %bb.q, %bb.r
  store ptr %.075.i143, ptr %i.br, align 8, !tbaa !21
  br label %bb.s

.thread:                                          ; preds = %.lr.ph
  %i.bw = ptrtoint ptr %.076.i142 to i64
  %i.bx = add i64 %i.bw, 40
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.075.i143, ptr %i.bz, align 8, !tbaa !18
  br label %._crit_edge

bb.s:                                             ; preds = %phn_merge_ordered.exit27, %phn_merge_ordered.exit25
  %.0.i11 = phi ptr [ %i.ax, %phn_merge_ordered.exit27 ], [ %.075.i143, %phn_merge_ordered.exit25 ] ; 3 uses
  %i.ca = ptrtoint ptr %.076.i142 to i64
  %i.cb = add i64 %i.ca, 40
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.0.i11, ptr %i.cd, align 8, !tbaa !18
  %.not86.i5 = icmp eq ptr %i.bc, null
  br i1 %.not86.i5, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.s, %.thread, %phn_merge.exit14
  %.076.i.lcssa = phi ptr [ %.0.i13, %phn_merge.exit14 ], [ %.075.i143, %.thread ], [ %.0.i11, %bb.s ]
  %i.ce = ptrtoint ptr %.0.i13 to i64
  %i.cf = add i64 %i.ce, 40
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 2 uses
  %.not87.i8 = icmp eq ptr %i.ci, null
  br i1 %.not87.i8, label %phn_merge_siblings.exit, label %.preheader140

.preheader140:                                    ; preds = %._crit_edge, %bb.x
  %.278.i = phi ptr [ %.0.i10, %bb.x ], [ %.076.i.lcssa, %._crit_edge ]
  %.2.i = phi ptr [ %i.cn, %bb.x ], [ %.0.i13, %._crit_edge ] ; 8 uses
  %.0.i9 = phi ptr [ %i.ds, %bb.x ], [ %i.ci, %._crit_edge ] ; 8 uses
  %i.cj = ptrtoint ptr %.0.i9 to i64
  %i.ck = add i64 %i.cj, 40
  %i.cl = inttoptr i64 %i.ck to ptr               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !18 ; 3 uses
  %i.co = ptrtoint ptr %.2.i to i64
  %i.cp = add i64 %i.co, 40
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !18
  store ptr null, ptr %i.cm, align 8, !tbaa !18
  %i.cs = icmp eq ptr %.0.i9, null
  br i1 %i.cs, label %phn_merge.exit, label %edata_avail_ph_cmp.exit81

edata_avail_ph_cmp.exit81:                        ; preds = %.preheader140
  %i.ct = getelementptr i8, ptr %.2.i, i64 16
  %.val.i.i76 = load i64, ptr %i.ct, align 8, !tbaa !20
  %i.cu = getelementptr i8, ptr %.0.i9, i64 16
  %.val8.i.i77 = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.cv = and i64 %.val.i.i76, 4095               ; 2 uses
  %i.cw = and i64 %.val8.i.i77, 4095              ; 2 uses
  %.not.i.i78 = icmp eq i64 %i.cv, %i.cw
  %i.cx = icmp samesign ult i64 %i.cv, %i.cw
  %i.cy = icmp ult ptr %.2.i, %.0.i9
  %spec.select131 = select i1 %.not.i.i78, i1 %i.cy, i1 %i.cx
  br i1 %spec.select131, label %bb.t, label %bb.v

bb.t:                                             ; preds = %edata_avail_ph_cmp.exit81
  store ptr %.2.i, ptr %i.cl, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 3 uses
  store ptr %i.da, ptr %i.cm, align 8, !tbaa !18
  %.not.i28 = icmp eq ptr %i.da, null
  br i1 %.not.i28, label %phn_merge_ordered.exit29, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = add i64 %i.db, 40
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %.0.i9, ptr %i.dd, align 8, !tbaa !19
  br label %phn_merge_ordered.exit29

phn_merge_ordered.exit29:                         ; preds = %bb.t, %bb.u
  store ptr %.0.i9, ptr %i.cz, align 8, !tbaa !21
  br label %phn_merge.exit

bb.v:                                             ; preds = %edata_avail_ph_cmp.exit81
  store ptr %.0.i9, ptr %i.cq, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21 ; 3 uses
  store ptr %i.df, ptr %i.cr, align 8, !tbaa !18
  %.not.i30 = icmp eq ptr %i.df, null
  br i1 %.not.i30, label %phn_merge_ordered.exit31, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = add i64 %i.dg, 40
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %.2.i, ptr %i.di, align 8, !tbaa !19
  br label %phn_merge_ordered.exit31

phn_merge_ordered.exit31:                         ; preds = %bb.v, %bb.w
  store ptr %.2.i, ptr %i.de, align 8, !tbaa !21
  br label %phn_merge.exit

phn_merge.exit:                                   ; preds = %.preheader140, %phn_merge_ordered.exit29, %phn_merge_ordered.exit31
  %.0.i10 = phi ptr [ %.0.i9, %phn_merge_ordered.exit31 ], [ %.2.i, %.preheader140 ], [ %.2.i, %phn_merge_ordered.exit29 ] ; 3 uses
  %i.dj = icmp eq ptr %i.cn, null
  br i1 %i.dj, label %phn_merge_siblings.exit, label %bb.x

bb.x:                                             ; preds = %phn_merge.exit
  %i.dk = ptrtoint ptr %.278.i to i64
  %i.dl = add i64 %i.dk, 40
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.0.i10, ptr %i.dn, align 8, !tbaa !18
  %i.do = ptrtoint ptr %i.cn to i64
  %i.dp = add i64 %i.do, 40
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !18
  br label %.preheader140

phn_merge_siblings.exit:                          ; preds = %phn_merge.exit, %bb.f, %._crit_edge
  %.4.i = phi ptr [ %i.p, %bb.f ], [ %.0.i13, %._crit_edge ], [ %.0.i10, %phn_merge.exit ] ; 9 uses
  %i.dt = icmp eq ptr %1, null
  br i1 %i.dt, label %ph_merge_aux.exit, label %edata_avail_ph_cmp.exit87

edata_avail_ph_cmp.exit87:                        ; preds = %phn_merge_siblings.exit
  %i.du = getelementptr i8, ptr %i.a, i64 16
  %.val.i.i82 = load i64, ptr %i.du, align 8, !tbaa !20
  %i.dv = getelementptr i8, ptr %.4.i, i64 16
  %.val8.i.i83 = load i64, ptr %i.dv, align 8, !tbaa !20
  %i.dw = and i64 %.val.i.i82, 4095               ; 2 uses
  %i.dx = and i64 %.val8.i.i83, 4095              ; 2 uses
  %.not.i.i84 = icmp eq i64 %i.dw, %i.dx
  %i.dy = icmp samesign ult i64 %i.dw, %i.dx
  %i.dz = icmp ult ptr %1, %.4.i
  %spec.select132 = select i1 %.not.i.i84, i1 %i.dz, i1 %i.dy
  br i1 %spec.select132, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %edata_avail_ph_cmp.exit87
  %i.ea = ptrtoint ptr %.4.i to i64
  %i.eb = add i64 %i.ea, 40
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  store ptr %i.a, ptr %i.ec, align 8, !tbaa !19
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !18
  %.not.i17 = icmp eq ptr %i.ed, null
  br i1 %.not.i17, label %phn_merge_ordered.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = add i64 %i.ef, 40
  %i.eh = inttoptr i64 %i.eg to ptr
  store ptr %.4.i, ptr %i.eh, align 8, !tbaa !19
  br label %phn_merge_ordered.exit

phn_merge_ordered.exit:                           ; preds = %bb.y, %bb.z
  store ptr %.4.i, ptr %i.f, align 8, !tbaa !21
  br label %ph_merge_aux.exit

bb.aa:                                            ; preds = %edata_avail_ph_cmp.exit87
  store ptr %.4.i, ptr %i.e, align 8, !tbaa !19
  %i.ei = ptrtoint ptr %.4.i to i64
  %i.ej = add i64 %i.ei, 40
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21 ; 3 uses
  store ptr %i.em, ptr %i.o, align 8, !tbaa !18
  %.not.i18 = icmp eq ptr %i.em, null
  br i1 %.not.i18, label %phn_merge_ordered.exit19.a, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = add i64 %i.en, 40
  %i.ep = inttoptr i64 %i.eo to ptr
  store ptr %i.a, ptr %i.ep, align 8, !tbaa !19
  br label %phn_merge_ordered.exit19.a

phn_merge_ordered.exit19.a:                       ; preds = %bb.aa, %bb.ab
  store ptr %i.a, ptr %i.el, align 8, !tbaa !21
  br label %ph_merge_aux.exit

ph_merge_aux.exit:                                ; preds = %phn_merge_ordered.exit19.a, %phn_merge_ordered.exit, %phn_merge_siblings.exit
  %.0.i15 = phi ptr [ %.4.i, %phn_merge_ordered.exit19.a ], [ %.4.i, %phn_merge_siblings.exit ], [ %i.a, %phn_merge_ordered.exit ] ; 2 uses
  store ptr %.0.i15, ptr %0, align 8, !tbaa !15
  %i.eq = icmp eq ptr %.0.i15, %1
  br i1 %i.eq, label %ph_merge_aux.exit.thread, label %._crit_edge158

ph_merge_aux.exit.thread:                         ; preds = %bb.e, %ph_merge_aux.exit
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !21  ; 9 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %ph_merge_children.exit, label %bb.ac

bb.ac:                                            ; preds = %ph_merge_aux.exit.thread
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = add i64 %i.et, 40
  %i.ev = inttoptr i64 %i.eu to ptr               ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i, label %ph_merge_children.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = add i64 %i.ey, 40
  %i.fa = inttoptr i64 %i.ez to ptr               ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !18 ; 3 uses
  %.not85.i.i = icmp eq ptr %i.fc, null           ; 2 uses
  br i1 %.not85.i.i, label %edata_avail_ph_cmp.exit93, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = add i64 %i.fd, 40
  %i.ff = inttoptr i64 %i.fe to ptr
  store ptr null, ptr %i.ff, align 8, !tbaa !19
  br label %edata_avail_ph_cmp.exit93

edata_avail_ph_cmp.exit93:                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  %i.fg = getelementptr i8, ptr %i.er, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  %.val.i.i88 = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.fh = getelementptr i8, ptr %i.ex, i64 16
  %.val8.i.i89 = load i64, ptr %i.fh, align 8, !tbaa !20
  %i.fi = and i64 %.val.i.i88, 4095               ; 2 uses
  %i.fj = and i64 %.val8.i.i89, 4095              ; 2 uses
  %.not.i.i90 = icmp eq i64 %i.fi, %i.fj
  %i.fk = icmp samesign ult i64 %i.fi, %i.fj
  %i.fl = icmp ult ptr %i.er, %i.ex
  %spec.select133 = select i1 %.not.i.i90, i1 %i.fl, i1 %i.fk
  br i1 %spec.select133, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %edata_avail_ph_cmp.exit93
  store ptr %i.er, ptr %i.fa, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fn, ptr %i.fb, align 8, !tbaa !18
  %.not.i12.i = icmp eq ptr %i.fn, null
  br i1 %.not.i12.i, label %phn_merge_ordered.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = add i64 %i.fo, 40
  %i.fq = inttoptr i64 %i.fp to ptr
  store ptr %i.ex, ptr %i.fq, align 8, !tbaa !19
  br label %phn_merge_ordered.exit.i

phn_merge_ordered.exit.i:                         ; preds = %bb.ag, %bb.af
  store ptr %i.ex, ptr %i.fm, align 8, !tbaa !21
  br label %phn_merge.exit11.i

bb.ah:                                            ; preds = %edata_avail_ph_cmp.exit93
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !19
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fs, ptr %i.ew, align 8, !tbaa !18
  %.not.i13.i = icmp eq ptr %i.fs, null
  br i1 %.not.i13.i, label %phn_merge_ordered.exit14.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = add i64 %i.ft, 40
  %i.fv = inttoptr i64 %i.fu to ptr
  store ptr %i.er, ptr %i.fv, align 8, !tbaa !19
  br label %phn_merge_ordered.exit14.i

phn_merge_ordered.exit14.i:                       ; preds = %bb.ai, %bb.ah
  store ptr %i.er, ptr %i.fr, align 8, !tbaa !21
  br label %phn_merge.exit11.i

phn_merge.exit11.i:                               ; preds = %phn_merge_ordered.exit14.i, %phn_merge_ordered.exit.i
  %.0.i10.i = phi ptr [ %i.ex, %phn_merge_ordered.exit14.i ], [ %i.er, %phn_merge_ordered.exit.i ] ; 5 uses
  br i1 %.not85.i.i, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %phn_merge.exit11.i, %bb.ap
  %.075.i.i152 = phi ptr [ %i.gf, %bb.ap ], [ %i.fc, %phn_merge.exit11.i ] ; 9 uses
  %.076.i.i151 = phi ptr [ %.0.i8.i, %bb.ap ], [ %.0.i10.i, %phn_merge.exit11.i ] ; 2 uses
  %i.fw = ptrtoint ptr %.075.i.i152 to i64
  %i.fx = add i64 %i.fw, 40
  %i.fy = inttoptr i64 %i.fx to ptr               ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !18 ; 8 uses
  %.not88.i.i = icmp eq ptr %i.ga, null
  br i1 %.not88.i.i, label %.thread218, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph153
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = add i64 %i.gb, 40
  %i.gd = inttoptr i64 %i.gc to ptr               ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !18 ; 4 uses
  %.not89.i.i = icmp eq ptr %i.gf, null
  br i1 %.not89.i.i, label %edata_avail_ph_cmp.exit99, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = add i64 %i.gg, 40
  %i.gi = inttoptr i64 %i.gh to ptr
  store ptr null, ptr %i.gi, align 8, !tbaa !19
  br label %edata_avail_ph_cmp.exit99

edata_avail_ph_cmp.exit99:                        ; preds = %bb.ak, %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  %i.gj = getelementptr i8, ptr %.075.i.i152, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  %.val.i.i94 = load i64, ptr %i.gj, align 8, !tbaa !20
  %i.gk = getelementptr i8, ptr %i.ga, i64 16
  %.val8.i.i95 = load i64, ptr %i.gk, align 8, !tbaa !20
  %i.gl = and i64 %.val.i.i94, 4095               ; 2 uses
  %i.gm = and i64 %.val8.i.i95, 4095              ; 2 uses
  %.not.i.i96 = icmp eq i64 %i.gl, %i.gm
  %i.gn = icmp samesign ult i64 %i.gl, %i.gm
  %i.go = icmp ult ptr %.075.i.i152, %i.ga
  %spec.select134 = select i1 %.not.i.i96, i1 %i.go, i1 %i.gn
  br i1 %spec.select134, label %bb.al, label %bb.an

bb.al:                                            ; preds = %edata_avail_ph_cmp.exit99
  store ptr %.075.i.i152, ptr %i.gd, align 8, !tbaa !19
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !21 ; 3 uses
  store ptr %i.gq, ptr %i.ge, align 8, !tbaa !18
  %.not.i15.i = icmp eq ptr %i.gq, null
  br i1 %.not.i15.i, label %phn_merge_ordered.exit16.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = add i64 %i.gr, 40
  %i.gt = inttoptr i64 %i.gs to ptr
  store ptr %i.ga, ptr %i.gt, align 8, !tbaa !19
  br label %phn_merge_ordered.exit16.i

phn_merge_ordered.exit16.i:                       ; preds = %bb.am, %bb.al
  store ptr %i.ga, ptr %i.gp, align 8, !tbaa !21
  br label %bb.ap

bb.an:                                            ; preds = %edata_avail_ph_cmp.exit99
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !19
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !21 ; 3 uses
  store ptr %i.gv, ptr %i.fz, align 8, !tbaa !18
  %.not.i17.i = icmp eq ptr %i.gv, null
  br i1 %.not.i17.i, label %phn_merge_ordered.exit18.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = add i64 %i.gw, 40
  %i.gy = inttoptr i64 %i.gx to ptr
  store ptr %.075.i.i152, ptr %i.gy, align 8, !tbaa !19
  br label %phn_merge_ordered.exit18.i

phn_merge_ordered.exit18.i:                       ; preds = %bb.ao, %bb.an
  store ptr %.075.i.i152, ptr %i.gu, align 8, !tbaa !21
  br label %bb.ap

.thread218:                                       ; preds = %.lr.ph153
  %i.gz = ptrtoint ptr %.076.i.i151 to i64
  %i.ha = add i64 %i.gz, 40
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %.075.i.i152, ptr %i.hc, align 8, !tbaa !18
  br label %._crit_edge154

bb.ap:                                            ; preds = %phn_merge_ordered.exit16.i, %phn_merge_ordered.exit18.i
  %.0.i8.i = phi ptr [ %i.ga, %phn_merge_ordered.exit18.i ], [ %.075.i.i152, %phn_merge_ordered.exit16.i ] ; 3 uses
  %i.hd = ptrtoint ptr %.076.i.i151 to i64
  %i.he = add i64 %i.hd, 40
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %.0.i8.i, ptr %i.hg, align 8, !tbaa !18
  %.not86.i.i = icmp eq ptr %i.gf, null
  br i1 %.not86.i.i, label %._crit_edge154, label %.lr.ph153, !llvm.loop !0

._crit_edge154:                                   ; preds = %bb.ap, %.thread218, %phn_merge.exit11.i
  %.076.i.i.lcssa = phi ptr [ %.0.i10.i, %phn_merge.exit11.i ], [ %.075.i.i152, %.thread218 ], [ %.0.i8.i, %bb.ap ]
  %i.hh = ptrtoint ptr %.0.i10.i to i64
  %i.hi = add i64 %i.hh, 40
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !18 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.hl, null
  br i1 %.not87.i.i, label %ph_merge_children.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge154, %bb.au
  %.278.i.i = phi ptr [ %.0.i7.i, %bb.au ], [ %.076.i.i.lcssa, %._crit_edge154 ]
  %.2.i.i = phi ptr [ %i.hq, %bb.au ], [ %.0.i10.i, %._crit_edge154 ] ; 8 uses
  %.0.i.i = phi ptr [ %i.iv, %bb.au ], [ %i.hl, %._crit_edge154 ] ; 8 uses
  %i.hm = ptrtoint ptr %.0.i.i to i64
  %i.hn = add i64 %i.hm, 40
  %i.ho = inttoptr i64 %i.hn to ptr               ; 3 uses
end_hunk_0
begin_hunk_1_@je_edata_heap_remove_first:bb.a
  %i.ga = add i64 %i.fz, 40
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr null, ptr %i.gb, align 8, !tbaa !19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  %i.gc = getelementptr i8, ptr %.075.i.i72, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  %.075.i.i.val28 = load i64, ptr %i.gc, align 8, !tbaa !27 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ft, i64 32
  %.val29 = load i64, ptr %i.gd, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i58 = icmp eq i64 %.075.i.i.val28, %.val29
  br i1 %.not.i.i.i58, label %edata_heap_ph_cmp.exit60, label %.split117

.split117:                                        ; preds = %bb.am
  %i.ge = icmp ult i64 %.075.i.i.val28, %.val29
  br i1 %i.ge, label %bb.an, label %bb.ap

edata_heap_ph_cmp.exit60:                         ; preds = %bb.am
  %i.gf = getelementptr i8, ptr %i.ft, i64 8
  %.val = load ptr, ptr %i.gf, align 8, !tbaa !28
  %i.gg = getelementptr i8, ptr %.075.i.i72, i64 8
  %.075.i.i.val = load ptr, ptr %i.gg, align 8, !tbaa !28
  %i.gh = icmp ult ptr %.075.i.i.val, %.val
  br i1 %i.gh, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.split117, %edata_heap_ph_cmp.exit60
  store ptr %.075.i.i72, ptr %i.fw, align 8, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !21 ; 3 uses
  store ptr %i.gj, ptr %i.fx, align 8, !tbaa !18
  %.not.i15.i = icmp eq ptr %i.gj, null
  br i1 %.not.i15.i, label %phn_merge_ordered.exit16.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = add i64 %i.gk, 40
  %i.gm = inttoptr i64 %i.gl to ptr
  store ptr %i.ft, ptr %i.gm, align 8, !tbaa !19
  br label %phn_merge_ordered.exit16.i

phn_merge_ordered.exit16.i:                       ; preds = %bb.ao, %bb.an
  store ptr %i.ft, ptr %i.gi, align 8, !tbaa !21
  br label %bb.ar

bb.ap:                                            ; preds = %.split117, %edata_heap_ph_cmp.exit60
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !21 ; 3 uses
  store ptr %i.go, ptr %i.fs, align 8, !tbaa !18
  %.not.i17.i = icmp eq ptr %i.go, null
  br i1 %.not.i17.i, label %phn_merge_ordered.exit18.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = add i64 %i.gp, 40
  %i.gr = inttoptr i64 %i.gq to ptr
  store ptr %.075.i.i72, ptr %i.gr, align 8, !tbaa !19
  br label %phn_merge_ordered.exit18.i

phn_merge_ordered.exit18.i:                       ; preds = %bb.aq, %bb.ap
  store ptr %.075.i.i72, ptr %i.gn, align 8, !tbaa !21
  br label %bb.ar

.thread118:                                       ; preds = %.lr.ph73
  %i.gs = ptrtoint ptr %.076.i.i71 to i64
  %i.gt = add i64 %i.gs, 40
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %.075.i.i72, ptr %i.gv, align 8, !tbaa !18
  br label %._crit_edge74

bb.ar:                                            ; preds = %phn_merge_ordered.exit16.i, %phn_merge_ordered.exit18.i
  %.0.i8.i = phi ptr [ %i.ft, %phn_merge_ordered.exit18.i ], [ %.075.i.i72, %phn_merge_ordered.exit16.i ] ; 3 uses
  %i.gw = ptrtoint ptr %.076.i.i71 to i64
  %i.gx = add i64 %i.gw, 40
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %.0.i8.i, ptr %i.gz, align 8, !tbaa !18
  %.not86.i.i = icmp eq ptr %i.fy, null
  br i1 %.not86.i.i, label %._crit_edge74, label %.lr.ph73, !llvm.loop !0

._crit_edge74:                                    ; preds = %bb.ar, %.thread118, %phn_merge.exit11.i
  %.076.i.i.lcssa = phi ptr [ %.0.i10.i, %phn_merge.exit11.i ], [ %.075.i.i72, %.thread118 ], [ %.0.i8.i, %bb.ar ]
  %i.ha = ptrtoint ptr %.0.i10.i to i64
  %i.hb = add i64 %i.ha, 40
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !18 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.he, null
  br i1 %.not87.i.i, label %ph_merge_children.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge74, %bb.ax
  %.278.i.i = phi ptr [ %.0.i7.i, %bb.ax ], [ %.076.i.i.lcssa, %._crit_edge74 ]
  %.2.i.i = phi ptr [ %i.hj, %bb.ax ], [ %.0.i10.i, %._crit_edge74 ] ; 8 uses
  %.0.i.i = phi ptr [ %i.io, %bb.ax ], [ %i.he, %._crit_edge74 ] ; 8 uses
  %i.hf = ptrtoint ptr %.0.i.i to i64
  %i.hg = add i64 %i.hf, 40
  %i.hh = inttoptr i64 %i.hg to ptr               ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !18 ; 3 uses
  %i.hk = ptrtoint ptr %.2.i.i to i64
  %i.hl = add i64 %i.hk, 40
  %i.hm = inttoptr i64 %i.hl to ptr               ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  store ptr null, ptr %i.hn, align 8, !tbaa !18
  store ptr null, ptr %i.hi, align 8, !tbaa !18
  %i.ho = icmp eq ptr %.0.i.i, null
  br i1 %i.ho, label %phn_merge.exit.i, label %bb.as

bb.as:                                            ; preds = %.preheader
  %i.hp = getelementptr i8, ptr %.2.i.i, i64 32
  %.2.i.i.val26 = load i64, ptr %i.hp, align 8, !tbaa !27 ; 2 uses
  %i.hq = getelementptr i8, ptr %.0.i.i, i64 32
  %.0.i.i.val27 = load i64, ptr %i.hq, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i61 = icmp eq i64 %.2.i.i.val26, %.0.i.i.val27
  br i1 %.not.i.i.i61, label %edata_heap_ph_cmp.exit63, label %.split123

.split123:                                        ; preds = %bb.as
  %i.hr = icmp ult i64 %.2.i.i.val26, %.0.i.i.val27
  br i1 %i.hr, label %bb.at, label %bb.av

edata_heap_ph_cmp.exit63:                         ; preds = %bb.as
  %i.hs = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.i.i.val = load ptr, ptr %i.hs, align 8, !tbaa !28
  %i.ht = getelementptr i8, ptr %.2.i.i, i64 8
  %.2.i.i.val = load ptr, ptr %i.ht, align 8, !tbaa !28
  %i.hu = icmp ult ptr %.2.i.i.val, %.0.i.i.val
  br i1 %i.hu, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.split123, %edata_heap_ph_cmp.exit63
  store ptr %.2.i.i, ptr %i.hh, align 8, !tbaa !19
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !21 ; 3 uses
  store ptr %i.hw, ptr %i.hi, align 8, !tbaa !18
  %.not.i19.i = icmp eq ptr %i.hw, null
  br i1 %.not.i19.i, label %phn_merge_ordered.exit20.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = add i64 %i.hx, 40
  %i.hz = inttoptr i64 %i.hy to ptr
  store ptr %.0.i.i, ptr %i.hz, align 8, !tbaa !19
  br label %phn_merge_ordered.exit20.i

phn_merge_ordered.exit20.i:                       ; preds = %bb.au, %bb.at
  store ptr %.0.i.i, ptr %i.hv, align 8, !tbaa !21
  br label %phn_merge.exit.i

bb.av:                                            ; preds = %.split123, %edata_heap_ph_cmp.exit63
  store ptr %.0.i.i, ptr %i.hm, align 8, !tbaa !19
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ib, ptr %i.hn, align 8, !tbaa !18
  %.not.i21.i = icmp eq ptr %i.ib, null
  br i1 %.not.i21.i, label %phn_merge_ordered.exit22.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = add i64 %i.ic, 40
  %i.ie = inttoptr i64 %i.id to ptr
  store ptr %.2.i.i, ptr %i.ie, align 8, !tbaa !19
  br label %phn_merge_ordered.exit22.i

phn_merge_ordered.exit22.i:                       ; preds = %bb.aw, %bb.av
  store ptr %.2.i.i, ptr %i.ia, align 8, !tbaa !21
  br label %phn_merge.exit.i

phn_merge.exit.i:                                 ; preds = %phn_merge_ordered.exit22.i, %phn_merge_ordered.exit20.i, %.preheader
  %.0.i7.i = phi ptr [ %.0.i.i, %phn_merge_ordered.exit22.i ], [ %.2.i.i, %.preheader ], [ %.2.i.i, %phn_merge_ordered.exit20.i ] ; 3 uses
  %i.if = icmp eq ptr %i.hj, null
  br i1 %i.if, label %ph_merge_children.exit, label %bb.ax

bb.ax:                                            ; preds = %phn_merge.exit.i
  %i.ig = ptrtoint ptr %.278.i.i to i64
  %i.ih = add i64 %i.ig, 40
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %.0.i7.i, ptr %i.ij, align 8, !tbaa !18
  %i.ik = ptrtoint ptr %i.hj to i64
  %i.il = add i64 %i.ik, 40
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !18
  br label %.preheader

ph_merge_children.exit:                           ; preds = %phn_merge.exit.i, %bb.ac, %._crit_edge74, %ph_merge_aux.exit
  %.0.i25 = phi ptr [ null, %ph_merge_aux.exit ], [ %i.ek, %bb.ac ], [ %.0.i10.i, %._crit_edge74 ], [ %.0.i7.i, %phn_merge.exit.i ]
  store ptr %.0.i25, ptr %0, align 8, !tbaa !15
  br label %ph_remove_first.exit

ph_remove_first.exit:                             ; preds = %bb.a, %ph_merge_children.exit
  %.0.i = phi ptr [ %i.ei, %ph_merge_children.exit ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_edata_heap_remove(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 !guid !45 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 7 uses
  %i.b = icmp eq ptr %i.a, %1
  %i.c = ptrtoint ptr %1 to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr                 ; 13 uses
  br i1 %i.b, label %bb.b, label %._crit_edge149

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %.not90.i = icmp eq ptr %i.j, null
  br i1 %.not90.i, label %ph_remove.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 40
  %i.m = inttoptr i64 %i.l to ptr
  store ptr null, ptr %i.m, align 8, !tbaa !19
  br label %ph_remove.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 9 uses
  %.not.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i2, label %ph_merge_aux.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 40
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 8 uses
  %.not.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i3, label %phn_merge_siblings.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 40
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 3 uses
  %.not85.i4 = icmp eq ptr %i.z, null             ; 2 uses
  br i1 %.not85.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 40
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr null, ptr %i.ac, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ad = getelementptr i8, ptr %i.p, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %.val89 = load i64, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 32
  %.val91 = load i64, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val89, %.val91
  br i1 %.not.i.i.i, label %edata_heap_ph_cmp.exit, label %.split

.split:                                           ; preds = %bb.i
  %i.af = icmp ult i64 %.val89, %.val91
  br i1 %i.af, label %bb.j, label %bb.l

edata_heap_ph_cmp.exit:                           ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.u, i64 8
  %.val90 = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr i8, ptr %i.p, i64 8
  %.val88 = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.ai = icmp ult ptr %.val88, %.val90
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split, %edata_heap_ph_cmp.exit
  store ptr %i.p, ptr %i.x, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !18
  %.not.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i20, label %phn_merge_ordered.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 40
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.u, ptr %i.an, align 8, !tbaa !19
  br label %phn_merge_ordered.exit21

phn_merge_ordered.exit21:                         ; preds = %bb.j, %bb.k
  store ptr %i.u, ptr %i.aj, align 8, !tbaa !21
  br label %phn_merge.exit14

bb.l:                                             ; preds = %.split, %edata_heap_ph_cmp.exit
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ap, ptr %i.t, align 8, !tbaa !18
  %.not.i22 = icmp eq ptr %i.ap, null
  br i1 %.not.i22, label %phn_merge_ordered.exit23, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 40
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.p, ptr %i.as, align 8, !tbaa !19
  br label %phn_merge_ordered.exit23

phn_merge_ordered.exit23:                         ; preds = %bb.l, %bb.m
  store ptr %i.p, ptr %i.ao, align 8, !tbaa !21
  br label %phn_merge.exit14

phn_merge.exit14:                                 ; preds = %phn_merge_ordered.exit21, %phn_merge_ordered.exit23
  %.0.i13 = phi ptr [ %i.u, %phn_merge_ordered.exit23 ], [ %i.p, %phn_merge_ordered.exit21 ] ; 5 uses
  br i1 %.not85.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %phn_merge.exit14, %bb.u
  %.075.i134 = phi ptr [ %i.bc, %bb.u ], [ %i.z, %phn_merge.exit14 ] ; 9 uses
  %.076.i133 = phi ptr [ %.0.i11, %bb.u ], [ %.0.i13, %phn_merge.exit14 ] ; 2 uses
  %i.at = ptrtoint ptr %.075.i134 to i64
  %i.au = add i64 %i.at, 40
  %i.av = inttoptr i64 %i.au to ptr               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 8 uses
  %.not88.i6 = icmp eq ptr %i.ax, null
  br i1 %.not88.i6, label %.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = add i64 %i.ay, 40
  %i.ba = inttoptr i64 %i.az to ptr               ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18 ; 4 uses
  %.not89.i7 = icmp eq ptr %i.bc, null
  br i1 %.not89.i7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, 40
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr null, ptr %i.bf, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.bg = getelementptr i8, ptr %.075.i134, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %.075.i.val92 = load i64, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ax, i64 32
  %.val94 = load i64, ptr %i.bh, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i97 = icmp eq i64 %.075.i.val92, %.val94
  br i1 %.not.i.i.i97, label %edata_heap_ph_cmp.exit99, label %.split206

.split206:                                        ; preds = %bb.p
  %i.bi = icmp ult i64 %.075.i.val92, %.val94
  br i1 %i.bi, label %bb.q, label %bb.s

edata_heap_ph_cmp.exit99:                         ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %i.ax, i64 8
  %.val93 = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.bk = getelementptr i8, ptr %.075.i134, i64 8
  %.075.i.val = load ptr, ptr %i.bk, align 8, !tbaa !28
  %i.bl = icmp ult ptr %.075.i.val, %.val93
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.split206, %edata_heap_ph_cmp.exit99
  store ptr %.075.i134, ptr %i.ba, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 3 uses
  store ptr %i.bn, ptr %i.bb, align 8, !tbaa !18
  %.not.i24 = icmp eq ptr %i.bn, null
  br i1 %.not.i24, label %phn_merge_ordered.exit25, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 40
  %i.bq = inttoptr i64 %i.bp to ptr
  store ptr %i.ax, ptr %i.bq, align 8, !tbaa !19
  br label %phn_merge_ordered.exit25

phn_merge_ordered.exit25:                         ; preds = %bb.q, %bb.r
  store ptr %i.ax, ptr %i.bm, align 8, !tbaa !21
  br label %bb.u

bb.s:                                             ; preds = %.split206, %edata_heap_ph_cmp.exit99
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21 ; 3 uses
  store ptr %i.bs, ptr %i.aw, align 8, !tbaa !18
  %.not.i26 = icmp eq ptr %i.bs, null
  br i1 %.not.i26, label %phn_merge_ordered.exit27, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 40
  %i.bv = inttoptr i64 %i.bu to ptr
  store ptr %.075.i134, ptr %i.bv, align 8, !tbaa !19
  br label %phn_merge_ordered.exit27

phn_merge_ordered.exit27:                         ; preds = %bb.s, %bb.t
  store ptr %.075.i134, ptr %i.br, align 8, !tbaa !21
  br label %bb.u

.thread:                                          ; preds = %.lr.ph
  %i.bw = ptrtoint ptr %.076.i133 to i64
  %i.bx = add i64 %i.bw, 40
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.075.i134, ptr %i.bz, align 8, !tbaa !18
  br label %._crit_edge

bb.u:                                             ; preds = %phn_merge_ordered.exit27, %phn_merge_ordered.exit25
  %.0.i11 = phi ptr [ %i.ax, %phn_merge_ordered.exit27 ], [ %.075.i134, %phn_merge_ordered.exit25 ] ; 3 uses
  %i.ca = ptrtoint ptr %.076.i133 to i64
  %i.cb = add i64 %i.ca, 40
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.0.i11, ptr %i.cd, align 8, !tbaa !18
  %.not86.i5 = icmp eq ptr %i.bc, null
  br i1 %.not86.i5, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.u, %.thread, %phn_merge.exit14
  %.076.i.lcssa = phi ptr [ %.0.i13, %phn_merge.exit14 ], [ %.075.i134, %.thread ], [ %.0.i11, %bb.u ]
  %i.ce = ptrtoint ptr %.0.i13 to i64
  %i.cf = add i64 %i.ce, 40
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 2 uses
  %.not87.i8 = icmp eq ptr %i.ci, null
  br i1 %.not87.i8, label %phn_merge_siblings.exit, label %.preheader131

.preheader131:                                    ; preds = %._crit_edge, %bb.aa
  %.278.i = phi ptr [ %.0.i10, %bb.aa ], [ %.076.i.lcssa, %._crit_edge ]
  %.2.i = phi ptr [ %i.cn, %bb.aa ], [ %.0.i13, %._crit_edge ] ; 8 uses
  %.0.i9 = phi ptr [ %i.ds, %bb.aa ], [ %i.ci, %._crit_edge ] ; 8 uses
  %i.cj = ptrtoint ptr %.0.i9 to i64
  %i.ck = add i64 %i.cj, 40
  %i.cl = inttoptr i64 %i.ck to ptr               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !18 ; 3 uses
  %i.co = ptrtoint ptr %.2.i to i64
  %i.cp = add i64 %i.co, 40
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !18
  store ptr null, ptr %i.cm, align 8, !tbaa !18
  %i.cs = icmp eq ptr %.0.i9, null
  br i1 %i.cs, label %phn_merge.exit, label %bb.v

bb.v:                                             ; preds = %.preheader131
  %i.ct = getelementptr i8, ptr %.2.i, i64 32
  %.2.i.val95 = load i64, ptr %i.ct, align 8, !tbaa !27 ; 2 uses
  %i.cu = getelementptr i8, ptr %.0.i9, i64 32
  %.0.i9.val96 = load i64, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i100 = icmp eq i64 %.2.i.val95, %.0.i9.val96
  br i1 %.not.i.i.i100, label %edata_heap_ph_cmp.exit102, label %.split211

.split211:                                        ; preds = %bb.v
  %i.cv = icmp ult i64 %.2.i.val95, %.0.i9.val96
  br i1 %i.cv, label %bb.w, label %bb.y

edata_heap_ph_cmp.exit102:                        ; preds = %bb.v
  %i.cw = getelementptr i8, ptr %.0.i9, i64 8
  %.0.i9.val = load ptr, ptr %i.cw, align 8, !tbaa !28
  %i.cx = getelementptr i8, ptr %.2.i, i64 8
  %.2.i.val = load ptr, ptr %i.cx, align 8, !tbaa !28
  %i.cy = icmp ult ptr %.2.i.val, %.0.i9.val
  br i1 %i.cy, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.split211, %edata_heap_ph_cmp.exit102
  store ptr %.2.i, ptr %i.cl, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 3 uses
  store ptr %i.da, ptr %i.cm, align 8, !tbaa !18
  %.not.i28 = icmp eq ptr %i.da, null
  br i1 %.not.i28, label %phn_merge_ordered.exit29, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = add i64 %i.db, 40
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %.0.i9, ptr %i.dd, align 8, !tbaa !19
  br label %phn_merge_ordered.exit29

phn_merge_ordered.exit29:                         ; preds = %bb.w, %bb.x
  store ptr %.0.i9, ptr %i.cz, align 8, !tbaa !21
  br label %phn_merge.exit

bb.y:                                             ; preds = %.split211, %edata_heap_ph_cmp.exit102
  store ptr %.0.i9, ptr %i.cq, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21 ; 3 uses
  store ptr %i.df, ptr %i.cr, align 8, !tbaa !18
  %.not.i30 = icmp eq ptr %i.df, null
  br i1 %.not.i30, label %phn_merge_ordered.exit31, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = add i64 %i.dg, 40
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %.2.i, ptr %i.di, align 8, !tbaa !19
  br label %phn_merge_ordered.exit31

phn_merge_ordered.exit31:                         ; preds = %bb.y, %bb.z
  store ptr %.2.i, ptr %i.de, align 8, !tbaa !21
  br label %phn_merge.exit

phn_merge.exit:                                   ; preds = %.preheader131, %phn_merge_ordered.exit29, %phn_merge_ordered.exit31
  %.0.i10 = phi ptr [ %.0.i9, %phn_merge_ordered.exit31 ], [ %.2.i, %.preheader131 ], [ %.2.i, %phn_merge_ordered.exit29 ] ; 3 uses
  %i.dj = icmp eq ptr %i.cn, null
  br i1 %i.dj, label %phn_merge_siblings.exit, label %bb.aa

bb.aa:                                            ; preds = %phn_merge.exit
  %i.dk = ptrtoint ptr %.278.i to i64
  %i.dl = add i64 %i.dk, 40
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.0.i10, ptr %i.dn, align 8, !tbaa !18
  %i.do = ptrtoint ptr %i.cn to i64
  %i.dp = add i64 %i.do, 40
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !18
  br label %.preheader131

phn_merge_siblings.exit:                          ; preds = %phn_merge.exit, %bb.f, %._crit_edge
  %.4.i = phi ptr [ %i.p, %bb.f ], [ %.0.i13, %._crit_edge ], [ %.0.i10, %phn_merge.exit ] ; 9 uses
  %i.dt = icmp eq ptr %1, null
  br i1 %i.dt, label %ph_merge_aux.exit, label %bb.ab

bb.ab:                                            ; preds = %phn_merge_siblings.exit
  %i.du = getelementptr i8, ptr %i.a, i64 32
  %.val86 = load i64, ptr %i.du, align 8, !tbaa !27 ; 2 uses
  %i.dv = getelementptr i8, ptr %.4.i, i64 32
  %.4.i.val87 = load i64, ptr %i.dv, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i103 = icmp eq i64 %.val86, %.4.i.val87
  br i1 %.not.i.i.i103, label %edata_heap_ph_cmp.exit105, label %.split212

.split212:                                        ; preds = %bb.ab
  %i.dw = icmp ult i64 %.val86, %.4.i.val87
  br i1 %i.dw, label %bb.ac, label %bb.ae

edata_heap_ph_cmp.exit105:                        ; preds = %bb.ab
  %i.dx = getelementptr i8, ptr %.4.i, i64 8
  %.4.i.val = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dy = getelementptr i8, ptr %i.a, i64 8
  %.val85 = load ptr, ptr %i.dy, align 8, !tbaa !28
  %i.dz = icmp ult ptr %.val85, %.4.i.val
  br i1 %i.dz, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.split212, %edata_heap_ph_cmp.exit105
  %i.ea = ptrtoint ptr %.4.i to i64
  %i.eb = add i64 %i.ea, 40
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  store ptr %i.a, ptr %i.ec, align 8, !tbaa !19
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !18
  %.not.i17 = icmp eq ptr %i.ed, null
  br i1 %.not.i17, label %phn_merge_ordered.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = add i64 %i.ef, 40
  %i.eh = inttoptr i64 %i.eg to ptr
  store ptr %.4.i, ptr %i.eh, align 8, !tbaa !19
  br label %phn_merge_ordered.exit

phn_merge_ordered.exit:                           ; preds = %bb.ac, %bb.ad
  store ptr %.4.i, ptr %i.f, align 8, !tbaa !21
  br label %ph_merge_aux.exit

bb.ae:                                            ; preds = %.split212, %edata_heap_ph_cmp.exit105
  store ptr %.4.i, ptr %i.e, align 8, !tbaa !19
  %i.ei = ptrtoint ptr %.4.i to i64
  %i.ej = add i64 %i.ei, 40
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21 ; 3 uses
  store ptr %i.em, ptr %i.o, align 8, !tbaa !18
  %.not.i18 = icmp eq ptr %i.em, null
  br i1 %.not.i18, label %phn_merge_ordered.exit19.a, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = add i64 %i.en, 40
  %i.ep = inttoptr i64 %i.eo to ptr
  store ptr %i.a, ptr %i.ep, align 8, !tbaa !19
  br label %phn_merge_ordered.exit19.a

phn_merge_ordered.exit19.a:                       ; preds = %bb.ae, %bb.af
  store ptr %i.a, ptr %i.el, align 8, !tbaa !21
  br label %ph_merge_aux.exit

ph_merge_aux.exit:                                ; preds = %phn_merge_ordered.exit19.a, %phn_merge_ordered.exit, %phn_merge_siblings.exit
  %.0.i15 = phi ptr [ %.4.i, %phn_merge_ordered.exit19.a ], [ %.4.i, %phn_merge_siblings.exit ], [ %i.a, %phn_merge_ordered.exit ] ; 2 uses
  store ptr %.0.i15, ptr %0, align 8, !tbaa !15
  %i.eq = icmp eq ptr %.0.i15, %1
  br i1 %i.eq, label %ph_merge_aux.exit.thread, label %._crit_edge149

ph_merge_aux.exit.thread:                         ; preds = %bb.e, %ph_merge_aux.exit
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !21  ; 9 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %ph_merge_children.exit, label %bb.ag

bb.ag:                                            ; preds = %ph_merge_aux.exit.thread
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = add i64 %i.et, 40
  %i.ev = inttoptr i64 %i.eu to ptr               ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i, label %ph_merge_children.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = add i64 %i.ey, 40
  %i.fa = inttoptr i64 %i.ez to ptr               ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !18 ; 3 uses
  %.not85.i.i = icmp eq ptr %i.fc, null           ; 2 uses
  br i1 %.not85.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = add i64 %i.fd, 40
  %i.ff = inttoptr i64 %i.fe to ptr
  store ptr null, ptr %i.ff, align 8, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  %i.fg = getelementptr i8, ptr %i.er, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  %.val82 = load i64, ptr %i.fg, align 8, !tbaa !27 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 32
  %.val84 = load i64, ptr %i.fh, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i106 = icmp eq i64 %.val82, %.val84
  br i1 %.not.i.i.i106, label %edata_heap_ph_cmp.exit108, label %.split213

.split213:                                        ; preds = %bb.aj
  %i.fi = icmp ult i64 %.val82, %.val84
  br i1 %i.fi, label %bb.ak, label %bb.am

edata_heap_ph_cmp.exit108:                        ; preds = %bb.aj
  %i.fj = getelementptr i8, ptr %i.ex, i64 8
  %.val83 = load ptr, ptr %i.fj, align 8, !tbaa !28
  %i.fk = getelementptr i8, ptr %i.er, i64 8
  %.val81 = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.fl = icmp ult ptr %.val81, %.val83
  br i1 %i.fl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.split213, %edata_heap_ph_cmp.exit108
  store ptr %i.er, ptr %i.fa, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fn, ptr %i.fb, align 8, !tbaa !18
  %.not.i12.i = icmp eq ptr %i.fn, null
  br i1 %.not.i12.i, label %phn_merge_ordered.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = add i64 %i.fo, 40
  %i.fq = inttoptr i64 %i.fp to ptr
  store ptr %i.ex, ptr %i.fq, align 8, !tbaa !19
  br label %phn_merge_ordered.exit.i

phn_merge_ordered.exit.i:                         ; preds = %bb.al, %bb.ak
  store ptr %i.ex, ptr %i.fm, align 8, !tbaa !21
  br label %phn_merge.exit11.i

bb.am:                                            ; preds = %.split213, %edata_heap_ph_cmp.exit108
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !19
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fs, ptr %i.ew, align 8, !tbaa !18
  %.not.i13.i = icmp eq ptr %i.fs, null
  br i1 %.not.i13.i, label %phn_merge_ordered.exit14.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = add i64 %i.ft, 40
  %i.fv = inttoptr i64 %i.fu to ptr
  store ptr %i.er, ptr %i.fv, align 8, !tbaa !19
  br label %phn_merge_ordered.exit14.i

phn_merge_ordered.exit14.i:                       ; preds = %bb.an, %bb.am
  store ptr %i.er, ptr %i.fr, align 8, !tbaa !21
  br label %phn_merge.exit11.i

phn_merge.exit11.i:                               ; preds = %phn_merge_ordered.exit14.i, %phn_merge_ordered.exit.i
  %.0.i10.i = phi ptr [ %i.ex, %phn_merge_ordered.exit14.i ], [ %i.er, %phn_merge_ordered.exit.i ] ; 5 uses
  br i1 %.not85.i.i, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %phn_merge.exit11.i, %bb.av
  %.075.i.i143 = phi ptr [ %i.gf, %bb.av ], [ %i.fc, %phn_merge.exit11.i ] ; 9 uses
  %.076.i.i142 = phi ptr [ %.0.i8.i, %bb.av ], [ %.0.i10.i, %phn_merge.exit11.i ] ; 2 uses
  %i.fw = ptrtoint ptr %.075.i.i143 to i64
  %i.fx = add i64 %i.fw, 40
  %i.fy = inttoptr i64 %i.fx to ptr               ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !18 ; 8 uses
  %.not88.i.i = icmp eq ptr %i.ga, null
  br i1 %.not88.i.i, label %.thread215, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph144
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = add i64 %i.gb, 40
  %i.gd = inttoptr i64 %i.gc to ptr               ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !18 ; 4 uses
  %.not89.i.i = icmp eq ptr %i.gf, null
  br i1 %.not89.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = add i64 %i.gg, 40
  %i.gi = inttoptr i64 %i.gh to ptr
  store ptr null, ptr %i.gi, align 8, !tbaa !19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  %i.gj = getelementptr i8, ptr %.075.i.i143, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  %.075.i.i.val78 = load i64, ptr %i.gj, align 8, !tbaa !27 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.ga, i64 32
  %.val80 = load i64, ptr %i.gk, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i109 = icmp eq i64 %.075.i.i.val78, %.val80
  br i1 %.not.i.i.i109, label %edata_heap_ph_cmp.exit111, label %.split214

.split214:                                        ; preds = %bb.aq
  %i.gl = icmp ult i64 %.075.i.i.val78, %.val80
  br i1 %i.gl, label %bb.ar, label %bb.at

edata_heap_ph_cmp.exit111:                        ; preds = %bb.aq
  %i.gm = getelementptr i8, ptr %i.ga, i64 8
  %.val79 = load ptr, ptr %i.gm, align 8, !tbaa !28
  %i.gn = getelementptr i8, ptr %.075.i.i143, i64 8
  %.075.i.i.val = load ptr, ptr %i.gn, align 8, !tbaa !28
  %i.go = icmp ult ptr %.075.i.i.val, %.val79
  br i1 %i.go, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.split214, %edata_heap_ph_cmp.exit111
  store ptr %.075.i.i143, ptr %i.gd, align 8, !tbaa !19
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !21 ; 3 uses
  store ptr %i.gq, ptr %i.ge, align 8, !tbaa !18
  %.not.i15.i = icmp eq ptr %i.gq, null
  br i1 %.not.i15.i, label %phn_merge_ordered.exit16.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = add i64 %i.gr, 40
  %i.gt = inttoptr i64 %i.gs to ptr
  store ptr %i.ga, ptr %i.gt, align 8, !tbaa !19
  br label %phn_merge_ordered.exit16.i

phn_merge_ordered.exit16.i:                       ; preds = %bb.as, %bb.ar
  store ptr %i.ga, ptr %i.gp, align 8, !tbaa !21
  br label %bb.av

bb.at:                                            ; preds = %.split214, %edata_heap_ph_cmp.exit111
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !19
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !21 ; 3 uses
  store ptr %i.gv, ptr %i.fz, align 8, !tbaa !18
  %.not.i17.i = icmp eq ptr %i.gv, null
  br i1 %.not.i17.i, label %phn_merge_ordered.exit18.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = add i64 %i.gw, 40
  %i.gy = inttoptr i64 %i.gx to ptr
  store ptr %.075.i.i143, ptr %i.gy, align 8, !tbaa !19
  br label %phn_merge_ordered.exit18.i

phn_merge_ordered.exit18.i:                       ; preds = %bb.au, %bb.at
  store ptr %.075.i.i143, ptr %i.gu, align 8, !tbaa !21
  br label %bb.av

.thread215:                                       ; preds = %.lr.ph144
  %i.gz = ptrtoint ptr %.076.i.i142 to i64
  %i.ha = add i64 %i.gz, 40
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %.075.i.i143, ptr %i.hc, align 8, !tbaa !18
  br label %._crit_edge145

bb.av:                                            ; preds = %phn_merge_ordered.exit16.i, %phn_merge_ordered.exit18.i
  %.0.i8.i = phi ptr [ %i.ga, %phn_merge_ordered.exit18.i ], [ %.075.i.i143, %phn_merge_ordered.exit16.i ] ; 3 uses
  %i.hd = ptrtoint ptr %.076.i.i142 to i64
  %i.he = add i64 %i.hd, 40
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %.0.i8.i, ptr %i.hg, align 8, !tbaa !18
  %.not86.i.i = icmp eq ptr %i.gf, null
  br i1 %.not86.i.i, label %._crit_edge145, label %.lr.ph144, !llvm.loop !0

._crit_edge145:                                   ; preds = %bb.av, %.thread215, %phn_merge.exit11.i
  %.076.i.i.lcssa = phi ptr [ %.0.i10.i, %phn_merge.exit11.i ], [ %.075.i.i143, %.thread215 ], [ %.0.i8.i, %bb.av ]
  %i.hh = ptrtoint ptr %.0.i10.i to i64
end_hunk_1
