Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hpdata?download=true
inline.NumInlined: 82
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_hpdata_age_heap_remove_first:bb.a
  br i1 %.not85.i.i, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %phn_merge.exit11.i, %bb.ar
  %.075.i.i40 = phi ptr [ %i.fj, %bb.ar ], [ %i.ej, %phn_merge.exit11.i ] ; 8 uses
  %.076.i.i39 = phi ptr [ %.0.i8.i, %bb.ar ], [ %.0.i10.i, %phn_merge.exit11.i ] ; 2 uses
  %i.fa = ptrtoint ptr %.075.i.i40 to i64
  %i.fb = add i64 %i.fa, 40
  %i.fc = inttoptr i64 %i.fb to ptr               ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !19 ; 7 uses
  %.not88.i.i = icmp eq ptr %i.fe, null
  br i1 %.not88.i.i, label %.thread81, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph41
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = add i64 %i.ff, 40
  %i.fh = inttoptr i64 %i.fg to ptr               ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !19 ; 4 uses
  %.not89.i.i = icmp eq ptr %i.fj, null
  br i1 %.not89.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = add i64 %i.fk, 40
  %i.fm = inttoptr i64 %i.fl to ptr
  store ptr null, ptr %i.fm, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  %i.fn = getelementptr i8, ptr %.075.i.i40, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i8 0, i64 16, i1 false)
  %.075.i.i.val = load i64, ptr %i.fn, align 8, !tbaa !26
  %i.fo = getelementptr i8, ptr %i.fe, i64 8
  %.val = load i64, ptr %i.fo, align 8, !tbaa !26
  %i.fp = icmp ult i64 %.075.i.i.val, %.val
  br i1 %i.fp, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  store ptr %.075.i.i40, ptr %i.fh, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !27 ; 3 uses
  store ptr %i.fr, ptr %i.fi, align 8, !tbaa !19
  %.not.i15.i = icmp eq ptr %i.fr, null
  br i1 %.not.i15.i, label %phn_merge_ordered.exit16.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = add i64 %i.fs, 40
  %i.fu = inttoptr i64 %i.ft to ptr
  store ptr %i.fe, ptr %i.fu, align 8, !tbaa !20
  br label %phn_merge_ordered.exit16.i

phn_merge_ordered.exit16.i:                       ; preds = %bb.ao, %bb.an
  store ptr %i.fe, ptr %i.fq, align 8, !tbaa !27
  br label %bb.ar

bb.ap:                                            ; preds = %bb.am
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !27 ; 3 uses
  store ptr %i.fw, ptr %i.fd, align 8, !tbaa !19
  %.not.i17.i = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i, label %phn_merge_ordered.exit18.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = add i64 %i.fx, 40
  %i.fz = inttoptr i64 %i.fy to ptr
  store ptr %.075.i.i40, ptr %i.fz, align 8, !tbaa !20
  br label %phn_merge_ordered.exit18.i

phn_merge_ordered.exit18.i:                       ; preds = %bb.aq, %bb.ap
  store ptr %.075.i.i40, ptr %i.fv, align 8, !tbaa !27
  br label %bb.ar

.thread81:                                        ; preds = %.lr.ph41
  %i.ga = ptrtoint ptr %.076.i.i39 to i64
  %i.gb = add i64 %i.ga, 40
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %.075.i.i40, ptr %i.gd, align 8, !tbaa !19
  br label %._crit_edge42

bb.ar:                                            ; preds = %phn_merge_ordered.exit16.i, %phn_merge_ordered.exit18.i
  %.0.i8.i = phi ptr [ %i.fe, %phn_merge_ordered.exit18.i ], [ %.075.i.i40, %phn_merge_ordered.exit16.i ] ; 3 uses
  %i.ge = ptrtoint ptr %.076.i.i39 to i64
  %i.gf = add i64 %i.ge, 40
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %.0.i8.i, ptr %i.gh, align 8, !tbaa !19
  %.not86.i.i = icmp eq ptr %i.fj, null
  br i1 %.not86.i.i, label %._crit_edge42, label %.lr.ph41, !llvm.loop !0

._crit_edge42:                                    ; preds = %bb.ar, %.thread81, %phn_merge.exit11.i
  %.076.i.i.lcssa = phi ptr [ %.0.i10.i, %phn_merge.exit11.i ], [ %.075.i.i40, %.thread81 ], [ %.0.i8.i, %bb.ar ]
  %i.gi = ptrtoint ptr %.0.i10.i to i64
  %i.gj = add i64 %i.gi, 40
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !19 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.gm, null
  br i1 %.not87.i.i, label %ph_merge_children.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge42, %bb.ax
  %.278.i.i = phi ptr [ %.0.i7.i, %bb.ax ], [ %.076.i.i.lcssa, %._crit_edge42 ]
  %.2.i.i = phi ptr [ %i.gr, %bb.ax ], [ %.0.i10.i, %._crit_edge42 ] ; 7 uses
  %.0.i.i = phi ptr [ %i.ht, %bb.ax ], [ %i.gm, %._crit_edge42 ] ; 7 uses
  %i.gn = ptrtoint ptr %.0.i.i to i64
  %i.go = add i64 %i.gn, 40
  %i.gp = inttoptr i64 %i.go to ptr               ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !19 ; 3 uses
  %i.gs = ptrtoint ptr %.2.i.i to i64
  %i.gt = add i64 %i.gs, 40
  %i.gu = inttoptr i64 %i.gt to ptr               ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  store ptr null, ptr %i.gv, align 8, !tbaa !19
  store ptr null, ptr %i.gq, align 8, !tbaa !19
  %i.gw = icmp eq ptr %.0.i.i, null
  br i1 %i.gw, label %phn_merge.exit.i, label %bb.as

bb.as:                                            ; preds = %.preheader
  %i.gx = getelementptr i8, ptr %.2.i.i, i64 8
  %.2.i.i.val = load i64, ptr %i.gx, align 8, !tbaa !26
  %i.gy = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.i.i.val = load i64, ptr %i.gy, align 8, !tbaa !26
  %i.gz = icmp ult i64 %.2.i.i.val, %.0.i.i.val
  br i1 %i.gz, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store ptr %.2.i.i, ptr %i.gp, align 8, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !27 ; 3 uses
  store ptr %i.hb, ptr %i.gq, align 8, !tbaa !19
  %.not.i19.i = icmp eq ptr %i.hb, null
  br i1 %.not.i19.i, label %phn_merge_ordered.exit20.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = add i64 %i.hc, 40
  %i.he = inttoptr i64 %i.hd to ptr
  store ptr %.0.i.i, ptr %i.he, align 8, !tbaa !20
  br label %phn_merge_ordered.exit20.i

phn_merge_ordered.exit20.i:                       ; preds = %bb.au, %bb.at
  store ptr %.0.i.i, ptr %i.ha, align 8, !tbaa !27
  br label %phn_merge.exit.i

bb.av:                                            ; preds = %bb.as
  store ptr %.0.i.i, ptr %i.gu, align 8, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !27 ; 3 uses
  store ptr %i.hg, ptr %i.gv, align 8, !tbaa !19
  %.not.i21.i = icmp eq ptr %i.hg, null
  br i1 %.not.i21.i, label %phn_merge_ordered.exit22.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = add i64 %i.hh, 40
  %i.hj = inttoptr i64 %i.hi to ptr
  store ptr %.2.i.i, ptr %i.hj, align 8, !tbaa !20
  br label %phn_merge_ordered.exit22.i

phn_merge_ordered.exit22.i:                       ; preds = %bb.aw, %bb.av
  store ptr %.2.i.i, ptr %i.hf, align 8, !tbaa !27
  br label %phn_merge.exit.i

phn_merge.exit.i:                                 ; preds = %phn_merge_ordered.exit22.i, %phn_merge_ordered.exit20.i, %.preheader
  %.0.i7.i = phi ptr [ %.0.i.i, %phn_merge_ordered.exit22.i ], [ %.2.i.i, %.preheader ], [ %.2.i.i, %phn_merge_ordered.exit20.i ] ; 3 uses
  %i.hk = icmp eq ptr %i.gr, null
  br i1 %i.hk, label %ph_merge_children.exit, label %bb.ax

bb.ax:                                            ; preds = %phn_merge.exit.i
  %i.hl = ptrtoint ptr %.278.i.i to i64
  %i.hm = add i64 %i.hl, 40
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %.0.i7.i, ptr %i.ho, align 8, !tbaa !19
  %i.hp = ptrtoint ptr %i.gr to i64
  %i.hq = add i64 %i.hp, 40
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !19
  br label %.preheader

ph_merge_children.exit:                           ; preds = %phn_merge.exit.i, %bb.ac, %._crit_edge42, %ph_merge_aux.exit
  %.0.i25 = phi ptr [ null, %ph_merge_aux.exit ], [ %i.dy, %bb.ac ], [ %.0.i10.i, %._crit_edge42 ], [ %.0.i7.i, %phn_merge.exit.i ]
  store ptr %.0.i25, ptr %0, align 8, !tbaa !16
  br label %ph_remove_first.exit

ph_remove_first.exit:                             ; preds = %bb.a, %ph_merge_children.exit
  %.0.i = phi ptr [ %i.dw, %ph_merge_children.exit ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_hpdata_age_heap_remove(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 !guid !48 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.b = icmp eq ptr %i.a, %1
  %i.c = ptrtoint ptr %1 to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr                 ; 13 uses
  br i1 %i.b, label %bb.b, label %._crit_edge102

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !16
  %.not90.i = icmp eq ptr %i.j, null
  br i1 %.not90.i, label %ph_remove.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 40
  %i.m = inttoptr i64 %i.l to ptr
  store ptr null, ptr %i.m, align 8, !tbaa !20
  br label %ph_remove.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 8 uses
  %.not.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i2, label %ph_merge_aux.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 40
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 7 uses
  %.not.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i3, label %phn_merge_siblings.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 40
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %.not85.i4 = icmp eq ptr %i.z, null             ; 2 uses
  br i1 %.not85.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 40
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr null, ptr %i.ac, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ad = getelementptr i8, ptr %i.p, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %.val74 = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr i8, ptr %i.u, i64 8
  %.val75 = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.af = icmp ult i64 %.val74, %.val75
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store ptr %i.p, ptr %i.x, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 3 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !19
  %.not.i20 = icmp eq ptr %i.ah, null
  br i1 %.not.i20, label %phn_merge_ordered.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %i.ai, 40
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.u, ptr %i.ak, align 8, !tbaa !20
  br label %phn_merge_ordered.exit21

phn_merge_ordered.exit21:                         ; preds = %bb.j, %bb.k
  store ptr %i.u, ptr %i.ag, align 8, !tbaa !27
  br label %phn_merge.exit14

bb.l:                                             ; preds = %bb.i
  store ptr %i.u, ptr %i.s, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 3 uses
  store ptr %i.am, ptr %i.t, align 8, !tbaa !19
  %.not.i22 = icmp eq ptr %i.am, null
  br i1 %.not.i22, label %phn_merge_ordered.exit23, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 40
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.p, ptr %i.ap, align 8, !tbaa !20
  br label %phn_merge_ordered.exit23

phn_merge_ordered.exit23:                         ; preds = %bb.l, %bb.m
  store ptr %i.p, ptr %i.al, align 8, !tbaa !27
  br label %phn_merge.exit14

phn_merge.exit14:                                 ; preds = %phn_merge_ordered.exit21, %phn_merge_ordered.exit23
  %.0.i13 = phi ptr [ %i.u, %phn_merge_ordered.exit23 ], [ %i.p, %phn_merge_ordered.exit21 ] ; 5 uses
  br i1 %.not85.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %phn_merge.exit14, %bb.u
  %.075.i87 = phi ptr [ %i.az, %bb.u ], [ %i.z, %phn_merge.exit14 ] ; 8 uses
  %.076.i86 = phi ptr [ %.0.i11, %bb.u ], [ %.0.i13, %phn_merge.exit14 ] ; 2 uses
  %i.aq = ptrtoint ptr %.075.i87 to i64
  %i.ar = add i64 %i.aq, 40
  %i.as = inttoptr i64 %i.ar to ptr               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19 ; 7 uses
  %.not88.i6 = icmp eq ptr %i.au, null
  br i1 %.not88.i6, label %.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = add i64 %i.av, 40
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !19 ; 4 uses
  %.not89.i7 = icmp eq ptr %i.az, null
  br i1 %.not89.i7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = add i64 %i.ba, 40
  %i.bc = inttoptr i64 %i.bb to ptr
  store ptr null, ptr %i.bc, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bd = getelementptr i8, ptr %.075.i87, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %.075.i.val = load i64, ptr %i.bd, align 8, !tbaa !26
  %i.be = getelementptr i8, ptr %i.au, i64 8
  %.val76 = load i64, ptr %i.be, align 8, !tbaa !26
  %i.bf = icmp ult i64 %.075.i.val, %.val76
  br i1 %i.bf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %.075.i87, ptr %i.ax, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27 ; 3 uses
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !19
  %.not.i24 = icmp eq ptr %i.bh, null
  br i1 %.not.i24, label %phn_merge_ordered.exit25, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = add i64 %i.bi, 40
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !20
  br label %phn_merge_ordered.exit25

phn_merge_ordered.exit25:                         ; preds = %bb.q, %bb.r
  store ptr %i.au, ptr %i.bg, align 8, !tbaa !27
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  store ptr %i.au, ptr %i.as, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27 ; 3 uses
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !19
  %.not.i26 = icmp eq ptr %i.bm, null
  br i1 %.not.i26, label %phn_merge_ordered.exit27, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = add i64 %i.bn, 40
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %.075.i87, ptr %i.bp, align 8, !tbaa !20
  br label %phn_merge_ordered.exit27

phn_merge_ordered.exit27:                         ; preds = %bb.s, %bb.t
  store ptr %.075.i87, ptr %i.bl, align 8, !tbaa !27
  br label %bb.u

.thread:                                          ; preds = %.lr.ph
  %i.bq = ptrtoint ptr %.076.i86 to i64
  %i.br = add i64 %i.bq, 40
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.075.i87, ptr %i.bt, align 8, !tbaa !19
  br label %._crit_edge

bb.u:                                             ; preds = %phn_merge_ordered.exit27, %phn_merge_ordered.exit25
  %.0.i11 = phi ptr [ %i.au, %phn_merge_ordered.exit27 ], [ %.075.i87, %phn_merge_ordered.exit25 ] ; 3 uses
  %i.bu = ptrtoint ptr %.076.i86 to i64
  %i.bv = add i64 %i.bu, 40
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.0.i11, ptr %i.bx, align 8, !tbaa !19
  %.not86.i5 = icmp eq ptr %i.az, null
  br i1 %.not86.i5, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.u, %.thread, %phn_merge.exit14
  %.076.i.lcssa = phi ptr [ %.0.i13, %phn_merge.exit14 ], [ %.075.i87, %.thread ], [ %.0.i11, %bb.u ]
  %i.by = ptrtoint ptr %.0.i13 to i64
  %i.bz = add i64 %i.by, 40
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19 ; 2 uses
  %.not87.i8 = icmp eq ptr %i.cc, null
  br i1 %.not87.i8, label %phn_merge_siblings.exit, label %.preheader84

.preheader84:                                     ; preds = %._crit_edge, %bb.aa
  %.278.i = phi ptr [ %.0.i10, %bb.aa ], [ %.076.i.lcssa, %._crit_edge ]
  %.2.i = phi ptr [ %i.ch, %bb.aa ], [ %.0.i13, %._crit_edge ] ; 7 uses
  %.0.i9 = phi ptr [ %i.dj, %bb.aa ], [ %i.cc, %._crit_edge ] ; 7 uses
  %i.cd = ptrtoint ptr %.0.i9 to i64
  %i.ce = add i64 %i.cd, 40
  %i.cf = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 3 uses
  %i.ci = ptrtoint ptr %.2.i to i64
  %i.cj = add i64 %i.ci, 40
  %i.ck = inttoptr i64 %i.cj to ptr               ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !19
  store ptr null, ptr %i.cg, align 8, !tbaa !19
  %i.cm = icmp eq ptr %.0.i9, null
  br i1 %i.cm, label %phn_merge.exit, label %bb.v

bb.v:                                             ; preds = %.preheader84
  %i.cn = getelementptr i8, ptr %.2.i, i64 8
  %.2.i.val = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.co = getelementptr i8, ptr %.0.i9, i64 8
  %.0.i9.val = load i64, ptr %i.co, align 8, !tbaa !26
  %i.cp = icmp ult i64 %.2.i.val, %.0.i9.val
  br i1 %i.cp, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store ptr %.2.i, ptr %i.cf, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !27 ; 3 uses
  store ptr %i.cr, ptr %i.cg, align 8, !tbaa !19
  %.not.i28 = icmp eq ptr %i.cr, null
  br i1 %.not.i28, label %phn_merge_ordered.exit29, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = add i64 %i.cs, 40
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr %.0.i9, ptr %i.cu, align 8, !tbaa !20
  br label %phn_merge_ordered.exit29

phn_merge_ordered.exit29:                         ; preds = %bb.w, %bb.x
  store ptr %.0.i9, ptr %i.cq, align 8, !tbaa !27
  br label %phn_merge.exit

bb.y:                                             ; preds = %bb.v
  store ptr %.0.i9, ptr %i.ck, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !27 ; 3 uses
  store ptr %i.cw, ptr %i.cl, align 8, !tbaa !19
  %.not.i30 = icmp eq ptr %i.cw, null
  br i1 %.not.i30, label %phn_merge_ordered.exit31, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = add i64 %i.cx, 40
  %i.cz = inttoptr i64 %i.cy to ptr
  store ptr %.2.i, ptr %i.cz, align 8, !tbaa !20
  br label %phn_merge_ordered.exit31

phn_merge_ordered.exit31:                         ; preds = %bb.y, %bb.z
  store ptr %.2.i, ptr %i.cv, align 8, !tbaa !27
  br label %phn_merge.exit

phn_merge.exit:                                   ; preds = %.preheader84, %phn_merge_ordered.exit29, %phn_merge_ordered.exit31
  %.0.i10 = phi ptr [ %.0.i9, %phn_merge_ordered.exit31 ], [ %.2.i, %.preheader84 ], [ %.2.i, %phn_merge_ordered.exit29 ] ; 3 uses
  %i.da = icmp eq ptr %i.ch, null
  br i1 %i.da, label %phn_merge_siblings.exit, label %bb.aa

bb.aa:                                            ; preds = %phn_merge.exit
  %i.db = ptrtoint ptr %.278.i to i64
  %i.dc = add i64 %i.db, 40
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %.0.i10, ptr %i.de, align 8, !tbaa !19
  %i.df = ptrtoint ptr %i.ch to i64
  %i.dg = add i64 %i.df, 40
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  br label %.preheader84

phn_merge_siblings.exit:                          ; preds = %phn_merge.exit, %bb.f, %._crit_edge
  %.4.i = phi ptr [ %i.p, %bb.f ], [ %.0.i13, %._crit_edge ], [ %.0.i10, %phn_merge.exit ] ; 8 uses
  %i.dk = icmp eq ptr %1, null
  br i1 %i.dk, label %ph_merge_aux.exit, label %bb.ab

bb.ab:                                            ; preds = %phn_merge_siblings.exit
  %i.dl = getelementptr i8, ptr %i.a, i64 8
  %.val73 = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.dm = getelementptr i8, ptr %.4.i, i64 8
  %.4.i.val = load i64, ptr %i.dm, align 8, !tbaa !26
  %i.dn = icmp ult i64 %.val73, %.4.i.val
  br i1 %i.dn, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.do = ptrtoint ptr %.4.i to i64
  %i.dp = add i64 %i.do, 40
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  store ptr %i.a, ptr %i.dq, align 8, !tbaa !20
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !27  ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !19
  %.not.i17 = icmp eq ptr %i.dr, null
  br i1 %.not.i17, label %phn_merge_ordered.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = add i64 %i.dt, 40
  %i.dv = inttoptr i64 %i.du to ptr
  store ptr %.4.i, ptr %i.dv, align 8, !tbaa !20
  br label %phn_merge_ordered.exit

phn_merge_ordered.exit:                           ; preds = %bb.ac, %bb.ad
  store ptr %.4.i, ptr %i.f, align 8, !tbaa !27
  br label %ph_merge_aux.exit

bb.ae:                                            ; preds = %bb.ab
  store ptr %.4.i, ptr %i.e, align 8, !tbaa !20
  %i.dw = ptrtoint ptr %.4.i to i64
  %i.dx = add i64 %i.dw, 40
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27 ; 3 uses
  store ptr %i.ea, ptr %i.o, align 8, !tbaa !19
  %.not.i18 = icmp eq ptr %i.ea, null
  br i1 %.not.i18, label %phn_merge_ordered.exit19.a, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = add i64 %i.eb, 40
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr %i.a, ptr %i.ed, align 8, !tbaa !20
  br label %phn_merge_ordered.exit19.a

phn_merge_ordered.exit19.a:                       ; preds = %bb.ae, %bb.af
  store ptr %i.a, ptr %i.dz, align 8, !tbaa !27
  br label %ph_merge_aux.exit

ph_merge_aux.exit:                                ; preds = %phn_merge_ordered.exit19.a, %phn_merge_ordered.exit, %phn_merge_siblings.exit
  %.0.i15 = phi ptr [ %.4.i, %phn_merge_ordered.exit19.a ], [ %.4.i, %phn_merge_siblings.exit ], [ %i.a, %phn_merge_ordered.exit ] ; 2 uses
  store ptr %.0.i15, ptr %0, align 8, !tbaa !16
  %i.ee = icmp eq ptr %.0.i15, %1
  br i1 %i.ee, label %ph_merge_aux.exit.thread, label %._crit_edge102

ph_merge_aux.exit.thread:                         ; preds = %bb.e, %ph_merge_aux.exit
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !27  ; 8 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %ph_merge_children.exit, label %bb.ag

bb.ag:                                            ; preds = %ph_merge_aux.exit.thread
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = add i64 %i.eh, 40
  %i.ej = inttoptr i64 %i.ei to ptr               ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !19 ; 7 uses
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %ph_merge_children.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = add i64 %i.em, 40
  %i.eo = inttoptr i64 %i.en to ptr               ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !19 ; 3 uses
  %.not85.i.i = icmp eq ptr %i.eq, null           ; 2 uses
  br i1 %.not85.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = add i64 %i.er, 40
  %i.et = inttoptr i64 %i.es to ptr
  store ptr null, ptr %i.et, align 8, !tbaa !20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  %i.eu = getelementptr i8, ptr %i.ef, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false)
  %.val71 = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ev = getelementptr i8, ptr %i.el, i64 8
  %.val72 = load i64, ptr %i.ev, align 8, !tbaa !26
  %i.ew = icmp ult i64 %.val71, %.val72
  br i1 %i.ew, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ef, ptr %i.eo, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !27 ; 3 uses
  store ptr %i.ey, ptr %i.ep, align 8, !tbaa !19
  %.not.i12.i = icmp eq ptr %i.ey, null
  br i1 %.not.i12.i, label %phn_merge_ordered.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = add i64 %i.ez, 40
  %i.fb = inttoptr i64 %i.fa to ptr
  store ptr %i.el, ptr %i.fb, align 8, !tbaa !20
  br label %phn_merge_ordered.exit.i

phn_merge_ordered.exit.i:                         ; preds = %bb.al, %bb.ak
  store ptr %i.el, ptr %i.ex, align 8, !tbaa !27
  br label %phn_merge.exit11.i

bb.am:                                            ; preds = %bb.aj
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !27 ; 3 uses
  store ptr %i.fd, ptr %i.ek, align 8, !tbaa !19
  %.not.i13.i = icmp eq ptr %i.fd, null
  br i1 %.not.i13.i, label %phn_merge_ordered.exit14.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = add i64 %i.fe, 40
  %i.fg = inttoptr i64 %i.ff to ptr
  store ptr %i.ef, ptr %i.fg, align 8, !tbaa !20
  br label %phn_merge_ordered.exit14.i

phn_merge_ordered.exit14.i:                       ; preds = %bb.an, %bb.am
  store ptr %i.ef, ptr %i.fc, align 8, !tbaa !27
  br label %phn_merge.exit11.i

phn_merge.exit11.i:                               ; preds = %phn_merge_ordered.exit14.i, %phn_merge_ordered.exit.i
  %.0.i10.i = phi ptr [ %i.el, %phn_merge_ordered.exit14.i ], [ %i.ef, %phn_merge_ordered.exit.i ] ; 5 uses
  br i1 %.not85.i.i, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %phn_merge.exit11.i, %bb.av
  %.075.i.i96 = phi ptr [ %i.fq, %bb.av ], [ %i.eq, %phn_merge.exit11.i ] ; 8 uses
  %.076.i.i95 = phi ptr [ %.0.i8.i, %bb.av ], [ %.0.i10.i, %phn_merge.exit11.i ] ; 2 uses
  %i.fh = ptrtoint ptr %.075.i.i96 to i64
  %i.fi = add i64 %i.fh, 40
  %i.fj = inttoptr i64 %i.fi to ptr               ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !19 ; 7 uses
  %.not88.i.i = icmp eq ptr %i.fl, null
  br i1 %.not88.i.i, label %.thread163, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph97
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = add i64 %i.fm, 40
  %i.fo = inttoptr i64 %i.fn to ptr               ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !19 ; 4 uses
  %.not89.i.i = icmp eq ptr %i.fq, null
  br i1 %.not89.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = add i64 %i.fr, 40
  %i.ft = inttoptr i64 %i.fs to ptr
  store ptr null, ptr %i.ft, align 8, !tbaa !20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  %i.fu = getelementptr i8, ptr %.075.i.i96, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i8 0, i64 16, i1 false)
  %.075.i.i.val = load i64, ptr %i.fu, align 8, !tbaa !26
  %i.fv = getelementptr i8, ptr %i.fl, i64 8
  %.val70 = load i64, ptr %i.fv, align 8, !tbaa !26
  %i.fw = icmp ult i64 %.075.i.i.val, %.val70
  br i1 %i.fw, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  store ptr %.075.i.i96, ptr %i.fo, align 8, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !27 ; 3 uses
  store ptr %i.fy, ptr %i.fp, align 8, !tbaa !19
  %.not.i15.i = icmp eq ptr %i.fy, null
  br i1 %.not.i15.i, label %phn_merge_ordered.exit16.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = add i64 %i.fz, 40
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.fl, ptr %i.gb, align 8, !tbaa !20
  br label %phn_merge_ordered.exit16.i

phn_merge_ordered.exit16.i:                       ; preds = %bb.as, %bb.ar
  store ptr %i.fl, ptr %i.fx, align 8, !tbaa !27
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !27 ; 3 uses
  store ptr %i.gd, ptr %i.fk, align 8, !tbaa !19
  %.not.i17.i = icmp eq ptr %i.gd, null
  br i1 %.not.i17.i, label %phn_merge_ordered.exit18.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = add i64 %i.ge, 40
  %i.gg = inttoptr i64 %i.gf to ptr
  store ptr %.075.i.i96, ptr %i.gg, align 8, !tbaa !20
  br label %phn_merge_ordered.exit18.i

phn_merge_ordered.exit18.i:                       ; preds = %bb.au, %bb.at
  store ptr %.075.i.i96, ptr %i.gc, align 8, !tbaa !27
  br label %bb.av

.thread163:                                       ; preds = %.lr.ph97
  %i.gh = ptrtoint ptr %.076.i.i95 to i64
  %i.gi = add i64 %i.gh, 40
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %.075.i.i96, ptr %i.gk, align 8, !tbaa !19
  br label %._crit_edge98

bb.av:                                            ; preds = %phn_merge_ordered.exit16.i, %phn_merge_ordered.exit18.i
  %.0.i8.i = phi ptr [ %i.fl, %phn_merge_ordered.exit18.i ], [ %.075.i.i96, %phn_merge_ordered.exit16.i ] ; 3 uses
  %i.gl = ptrtoint ptr %.076.i.i95 to i64
  %i.gm = add i64 %i.gl, 40
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %.0.i8.i, ptr %i.go, align 8, !tbaa !19
  %.not86.i.i = icmp eq ptr %i.fq, null
  br i1 %.not86.i.i, label %._crit_edge98, label %.lr.ph97, !llvm.loop !0

._crit_edge98:                                    ; preds = %bb.av, %.thread163, %phn_merge.exit11.i
  %.076.i.i.lcssa = phi ptr [ %.0.i10.i, %phn_merge.exit11.i ], [ %.075.i.i96, %.thread163 ], [ %.0.i8.i, %bb.av ]
  %i.gp = ptrtoint ptr %.0.i10.i to i64
  %i.gq = add i64 %i.gp, 40
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !19 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.gt, null
  br i1 %.not87.i.i, label %ph_merge_children.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge98, %bb.bb
  %.278.i.i = phi ptr [ %.0.i7.i, %bb.bb ], [ %.076.i.i.lcssa, %._crit_edge98 ]
  %.2.i.i = phi ptr [ %i.gy, %bb.bb ], [ %.0.i10.i, %._crit_edge98 ] ; 7 uses
  %.0.i.i = phi ptr [ %i.ia, %bb.bb ], [ %i.gt, %._crit_edge98 ] ; 7 uses
  %i.gu = ptrtoint ptr %.0.i.i to i64
  %i.gv = add i64 %i.gu, 40
  %i.gw = inttoptr i64 %i.gv to ptr               ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !19 ; 3 uses
  %i.gz = ptrtoint ptr %.2.i.i to i64
  %i.ha = add i64 %i.gz, 40
  %i.hb = inttoptr i64 %i.ha to ptr               ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  store ptr null, ptr %i.hc, align 8, !tbaa !19
  store ptr null, ptr %i.gx, align 8, !tbaa !19
  %i.hd = icmp eq ptr %.0.i.i, null
  br i1 %i.hd, label %phn_merge.exit.i, label %bb.aw
end_hunk_0
