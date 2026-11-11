Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/interval-tree?download=true
inline.NumInlined: 114
inline.NumDeleted: 25
begin_hunk_0_@interval_tree_insert:bb.a
interval_tree_rotate.exit122.i.i:                 ; preds = %bb.y, %bb.x
  %.1.i.i121.i.i = phi i64 [ %.020.i.i118.i.i, %bb.x ], [ %spec.select27.i.i120.i.i, %bb.y ]
  store i64 %.1.i.i121.i.i, ptr %i.bo, align 8
  br label %rb_insert_augmented_cached.exit

bb.z:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not109.i.i = icmp eq ptr %i.ca, null
  br i1 %.not109.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = load atomic i64, ptr %i.ca monotonic, align 8
  %i.cc = and i64 %i.cb, 1
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.backedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.09923.i.i, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp eq ptr %.022.i.i, %i.ch
  br i1 %i.ci, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  store atomic ptr %i.ck, ptr %i.cg monotonic, align 8
  store atomic ptr %.09923.i.i, ptr %i.cj monotonic, align 8
  %.not110.i.i = icmp eq ptr %i.ck, null
  br i1 %.not110.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = or i64 %.099.in21.i.i, 1
  store atomic i64 %i.cl, ptr %i.ck monotonic, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cm = ptrtoint ptr %.022.i.i to i64
  store atomic i64 %i.cm, ptr %.09923.i.i monotonic, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.09923.i.i, i64 40 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 40
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.09923.i.i, i64 32
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not.i.i123.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i123.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load i64, ptr %i.ct, align 8
  %spec.select.i.i124.i.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cr)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.020.i.i125.i.i = phi i64 [ %i.cr, %bb.ae ], [ %spec.select.i.i124.i.i, %bb.af ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.09923.i.i, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not26.i.i126.i.i = icmp eq ptr %i.cw, null
  br i1 %.not26.i.i126.i.i, label %interval_tree_rotate.exit129.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i64, ptr %i.cx, align 8
  %spec.select27.i.i127.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %.020.i.i125.i.i)
  br label %interval_tree_rotate.exit129.i.i

interval_tree_rotate.exit129.i.i:                 ; preds = %bb.ah, %bb.ag
  %.1.i.i128.i.i = phi i64 [ %.020.i.i125.i.i, %bb.ag ], [ %spec.select27.i.i127.i.i, %bb.ah ]
  store i64 %.1.i.i128.i.i, ptr %i.cn, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %interval_tree_rotate.exit129.i.i, %bb.ab
  %.1101.i.i = phi ptr [ %i.da, %interval_tree_rotate.exit129.i.i ], [ %i.ch, %bb.ab ] ; 3 uses
  %.2.i.i = phi ptr [ %.022.i.i, %interval_tree_rotate.exit129.i.i ], [ %.09923.i.i, %bb.ab ] ; 7 uses
  store atomic ptr %.1101.i.i, ptr %i.ce monotonic, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 16
  store atomic ptr %i.y, ptr %i.db monotonic, align 8
  %.not111.i.i = icmp eq ptr %.1101.i.i, null
  br i1 %.not111.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = or i64 %i.x, 1
  store atomic i64 %i.dc, ptr %.1101.i.i monotonic, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dd = load atomic i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.de = and i64 %i.dd, -2                       ; 2 uses
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  store atomic i64 %i.dd, ptr %.2.i.i monotonic, align 8
  %i.dg = ptrtoint ptr %.2.i.i to i64
  store atomic i64 %i.dg, ptr %i.y monotonic, align 8
  %.not.i.i130.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i130.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store atomic ptr %.2.i.i, ptr %1 monotonic, align 8
  br label %rb_rotate_set_parents.exit131.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.di, %i.y
  br i1 %i.dj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store atomic ptr %.2.i.i, ptr %i.dh monotonic, align 8
  br label %rb_rotate_set_parents.exit131.i.i

bb.ao:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store atomic ptr %.2.i.i, ptr %i.dk monotonic, align 8
  br label %rb_rotate_set_parents.exit131.i.i

rb_rotate_set_parents.exit131.i.i:                ; preds = %bb.ao, %bb.an, %bb.al
  %i.dl = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 40
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not.i.i132.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i132.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %rb_rotate_set_parents.exit131.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load i64, ptr %i.dr, align 8
  %spec.select.i.i133.i.i = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dp)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %rb_rotate_set_parents.exit131.i.i
  %.020.i.i134.i.i = phi i64 [ %i.dp, %rb_rotate_set_parents.exit131.i.i ], [ %spec.select.i.i133.i.i, %bb.ap ] ; 2 uses
  %i.dt = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not26.i.i135.i.i = icmp eq ptr %i.dt, null
  br i1 %.not26.i.i135.i.i, label %interval_tree_rotate.exit138.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load i64, ptr %i.du, align 8
  %spec.select27.i.i136.i.i = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 %.020.i.i134.i.i)
  br label %interval_tree_rotate.exit138.i.i

interval_tree_rotate.exit138.i.i:                 ; preds = %bb.ar, %bb.aq
  %.1.i.i137.i.i = phi i64 [ %.020.i.i134.i.i, %bb.aq ], [ %spec.select27.i.i136.i.i, %bb.ar ]
  store i64 %.1.i.i137.i.i, ptr %i.dl, align 8
  br label %rb_insert_augmented_cached.exit

rb_insert_augmented_cached.exit:                  ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %interval_tree_rotate.exit122.i.i, %interval_tree_rotate.exit138.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @interval_tree_remove(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader17.i.i

.preheader17.i.i:                                 ; preds = %bb.b, %.preheader17.i.i
  %.0.i.i = phi ptr [ %i.g, %.preheader17.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.g, null
  br i1 %.not16.i.i, label %rb_next.exit.i, label %.preheader17.i.i, !llvm.loop !11

.preheader.i.i:                                   ; preds = %bb.b, %bb.c
  %.1.i.i = phi ptr [ %i.j, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %i.h = load atomic i64, ptr %.1.i.i monotonic, align 8
  %i.i = and i64 %i.h, -2                         ; 2 uses
  %.not15.i.i = icmp eq i64 %i.i, 0
  br i1 %.not15.i.i, label %rb_next.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %.1.i.i, %i.l
  br i1 %i.m, label %.preheader.i.i, label %rb_next.exit.i, !llvm.loop !12

rb_next.exit.i:                                   ; preds = %.preheader17.i.i, %bb.c, %.preheader.i.i
  %.011.i.i = phi ptr [ null, %.preheader.i.i ], [ %i.j, %bb.c ], [ %.0.i.i, %.preheader17.i.i ]
  store ptr %.011.i.i, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %rb_next.exit.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %.not.i7.i = icmp eq ptr %i.q, null
  br i1 %.not.i7.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.r = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.s = and i64 %i.r, -2                         ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.s, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store atomic ptr %i.o, ptr %1 monotonic, align 8
  br label %rb_change_child.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store atomic ptr %i.o, ptr %i.u monotonic, align 8
  br label %rb_change_child.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic ptr %i.o, ptr %i.x monotonic, align 8
  br label %rb_change_child.exit.i.i

rb_change_child.exit.i.i:                         ; preds = %bb.i, %bb.h, %bb.f
  %.not87.i.i = icmp eq ptr %i.o, null
  br i1 %.not87.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_change_child.exit.i.i
  store atomic i64 %i.r, ptr %i.o monotonic, align 8
  br label %rb_change_child.exit94.i.i

bb.k:                                             ; preds = %rb_change_child.exit.i.i
  %i.y = trunc i64 %i.r to i1
  %i.z = select i1 %i.y, ptr %i.t, ptr null
  br label %rb_change_child.exit94.i.i

bb.l:                                             ; preds = %bb.d
  %.not88.i.i = icmp eq ptr %i.o, null
  br i1 %.not88.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aa = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.ab = and i64 %i.aa, -2                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
  store atomic i64 %i.aa, ptr %i.q monotonic, align 8
  %.not.i93.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i93.i.i, label %interval_tree_propagate.exit108.thread.i.i, label %bb.n

interval_tree_propagate.exit108.thread.i.i:       ; preds = %bb.m
  store atomic ptr %i.q, ptr %1 monotonic, align 8
  br label %rb_erase_augmented_cached.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store atomic ptr %i.q, ptr %i.ad monotonic, align 8
  br label %.lr.ph.i99.preheader.i.i

bb.p:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store atomic ptr %i.q, ptr %i.ag monotonic, align 8
  br label %.lr.ph.i99.preheader.i.i

bb.q:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not89.i.i = icmp eq ptr %i.ai, null
  br i1 %.not89.i.i, label %bb.r, label %.preheader7.i.i

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.am, ptr %i.an, align 8
  %.pre.i.i = ptrtoint ptr %i.o to i64
  br label %interval_tree_propagate.exit.i.i

.preheader7.i.i:                                  ; preds = %bb.q, %.preheader7.i.i
  %.079.i.i = phi ptr [ %.0.i8.i, %.preheader7.i.i ], [ %i.o, %bb.q ] ; 6 uses
  %.0.i8.i = phi ptr [ %i.ap, %.preheader7.i.i ], [ %i.ai, %bb.q ] ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i8.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not90.i.i = icmp eq ptr %i.ap, null
  br i1 %.not90.i.i, label %bb.s, label %.preheader7.i.i, !llvm.loop !13

bb.s:                                             ; preds = %.preheader7.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i8.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  store atomic ptr %i.ar, ptr %i.as monotonic, align 8
  store atomic ptr %i.o, ptr %i.aq monotonic, align 8
  %i.at = load atomic i64, ptr %i.o monotonic, align 8
  %i.au = and i64 %i.at, 1
  %i.av = ptrtoint ptr %.0.i8.i to i64            ; 4 uses
  %i.aw = or i64 %i.au, %i.av
  store atomic i64 %i.aw, ptr %i.o monotonic, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i8.i, i64 40
  store i64 %i.ay, ptr %i.az, align 8
  %.not11.i.i.i = icmp eq ptr %.079.i.i, %.0.i8.i
  br i1 %.not11.i.i.i, label %interval_tree_propagate.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %bb.x
  %.0712.i.i.i = phi ptr [ %i.bp, %bb.x ], [ %.079.i.i, %bb.s ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0712.i.i.i, i64 32
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0712.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bb)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i, %bb.t ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0712.i.i.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not26.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8
  %spec.select27.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %.020.i.i.i.i)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i.i.i.i = phi i64 [ %.020.i.i.i.i, %bb.u ], [ %spec.select27.i.i.i.i, %bb.v ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0712.i.i.i, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp eq i64 %i.bl, %.1.i.i.i.i
  br i1 %i.bm, label %interval_tree_propagate.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.1.i.i.i.i, ptr %i.bk, align 8
  %i.bn = load atomic i64, ptr %.0712.i.i.i monotonic, align 8
  %i.bo = and i64 %i.bn, -2
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %.not.i95.i.i = icmp eq ptr %.0.i8.i, %i.bp
  br i1 %.not.i95.i.i, label %interval_tree_propagate.exit.i.i, label %.lr.ph.i.i.i

interval_tree_propagate.exit.i.i:                 ; preds = %bb.x, %bb.w, %bb.s, %bb.r
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.r ], [ %i.av, %bb.s ], [ %i.av, %bb.w ], [ %i.av, %bb.x ]
  %.180.i.i = phi ptr [ %i.o, %bb.r ], [ %.0.i8.i, %bb.s ], [ %.0.i8.i, %bb.w ], [ %.0.i8.i, %bb.x ] ; 7 uses
  %.078.i.i = phi ptr [ %i.ak, %bb.r ], [ %i.ar, %bb.s ], [ %i.ar, %bb.w ], [ %i.ar, %bb.x ] ; 2 uses
  %.077.i.i = phi ptr [ %i.o, %bb.r ], [ %.079.i.i, %bb.s ], [ %.079.i.i, %bb.w ], [ %.079.i.i, %bb.x ] ; 2 uses
  %i.bq = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.180.i.i, i64 16
  store atomic ptr %i.bq, ptr %i.br monotonic, align 8
  %i.bs = load atomic i64, ptr %i.bq monotonic, align 8
  %i.bt = and i64 %i.bs, 1
  %i.bu = or i64 %i.bt, %.pre-phi.i.i
  store atomic i64 %i.bu, ptr %i.bq monotonic, align 8
  %i.bv = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.bw = and i64 %i.bv, -2                       ; 2 uses
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %.not.i96.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i96.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %interval_tree_propagate.exit.i.i
  store atomic ptr %.180.i.i, ptr %1 monotonic, align 8
  br label %rb_change_child.exit97.i.i

bb.z:                                             ; preds = %interval_tree_propagate.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, %0
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store atomic ptr %.180.i.i, ptr %i.by monotonic, align 8
  br label %rb_change_child.exit97.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store atomic ptr %.180.i.i, ptr %i.cb monotonic, align 8
  br label %rb_change_child.exit97.i.i

rb_change_child.exit97.i.i:                       ; preds = %bb.ab, %bb.aa, %bb.y
  %.not91.i.i = icmp eq ptr %.078.i.i, null
  br i1 %.not91.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %rb_change_child.exit97.i.i
  %i.cc = ptrtoint ptr %.077.i.i to i64
  %i.cd = or i64 %i.cc, 1
  store atomic i64 %i.cd, ptr %.078.i.i monotonic, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %rb_change_child.exit97.i.i
  %i.ce = load atomic i64, ptr %.180.i.i monotonic, align 8
  %i.cf = trunc i64 %i.ce to i1
  %i.cg = select i1 %i.cf, ptr %.077.i.i, ptr null
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.182.i.i = phi ptr [ null, %bb.ac ], [ %i.cg, %bb.ad ]
  store atomic i64 %i.bv, ptr %.180.i.i monotonic, align 8
  br label %.lr.ph.i99.preheader.i.i

rb_change_child.exit94.i.i:                       ; preds = %bb.k, %bb.j
  %.2.i.i = phi ptr [ null, %bb.j ], [ %i.z, %bb.k ] ; 2 uses
  br i1 %.not.i.i.i, label %interval_tree_propagate.exit108.i.i, label %.lr.ph.i99.preheader.i.i

.lr.ph.i99.preheader.i.i:                         ; preds = %rb_change_child.exit94.i.i, %bb.ae, %bb.p, %bb.o
  %.1121.i.i = phi ptr [ %i.t, %rb_change_child.exit94.i.i ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ], [ %.180.i.i, %bb.ae ]
  %.2119.i.i = phi ptr [ %.2.i.i, %rb_change_child.exit94.i.i ], [ null, %bb.o ], [ null, %bb.p ], [ %.182.i.i, %bb.ae ] ; 2 uses
  br label %.lr.ph.i99.i.i

.lr.ph.i99.i.i:                                   ; preds = %bb.aj, %.lr.ph.i99.preheader.i.i
  %.0712.i100.i.i = phi ptr [ %i.cw, %bb.aj ], [ %.1121.i.i, %.lr.ph.i99.preheader.i.i ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0712.i100.i.i, i64 32
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0712.i100.i.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i.i101.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i101.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i99.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i64, ptr %i.cl, align 8
  %spec.select.i.i102.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.ci)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i99.i.i
  %.020.i.i103.i.i = phi i64 [ %i.ci, %.lr.ph.i99.i.i ], [ %spec.select.i.i102.i.i, %bb.af ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0712.i100.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not26.i.i104.i.i = icmp eq ptr %i.co, null
  br i1 %.not26.i.i104.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8
  %spec.select27.i.i105.i.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %.020.i.i103.i.i)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1.i.i106.i.i = phi i64 [ %.020.i.i103.i.i, %bb.ag ], [ %spec.select27.i.i105.i.i, %bb.ah ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0712.i100.i.i, i64 40 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = icmp eq i64 %i.cs, %.1.i.i106.i.i
  br i1 %i.ct, label %interval_tree_propagate.exit108.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i64 %.1.i.i106.i.i, ptr %i.cr, align 8
  %i.cu = load atomic i64, ptr %.0712.i100.i.i monotonic, align 8
  %i.cv = and i64 %i.cu, -2                       ; 2 uses
  %i.cw = inttoptr i64 %i.cv to ptr
  %.not.i107.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i107.i.i, label %interval_tree_propagate.exit108.i.i, label %.lr.ph.i99.i.i

interval_tree_propagate.exit108.i.i:              ; preds = %bb.aj, %bb.ai, %rb_change_child.exit94.i.i
  %.2120.i.i = phi ptr [ %.2.i.i, %rb_change_child.exit94.i.i ], [ %.2119.i.i, %bb.ai ], [ %.2119.i.i, %bb.aj ] ; 2 uses
  %.not92.i.i = icmp eq ptr %.2120.i.i, null
  br i1 %.not92.i.i, label %rb_erase_augmented_cached.exit, label %.preheader.i9.i

.preheader.i9.i:                                  ; preds = %interval_tree_propagate.exit108.i.i, %.backedge.i.i.i
  %.0136.i.i.i = phi ptr [ %.0.i.i.i, %.backedge.i.i.i ], [ null, %interval_tree_propagate.exit108.i.i ]
  %.0.i.i.i = phi ptr [ %.0.be.i.i.i, %.backedge.i.i.i ], [ %.2120.i.i, %interval_tree_propagate.exit108.i.i ] ; 41 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 8 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 10 uses
  %.not.i109.i.i = icmp eq ptr %.0136.i.i.i, %i.cy
  br i1 %.not.i109.i.i, label %bb.bp, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i9.i
  %i.cz = load atomic i64, ptr %i.cy monotonic, align 8
  %i.da = and i64 %i.cz, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  store atomic ptr %i.dd, ptr %i.cx monotonic, align 8
  store atomic ptr %.0.i.i.i, ptr %i.dc monotonic, align 8
  %i.de = ptrtoint ptr %.0.i.i.i to i64
  %i.df = or i64 %i.de, 1
  store atomic i64 %i.df, ptr %i.dd monotonic, align 8
  %i.dg = load atomic i64, ptr %.0.i.i.i monotonic, align 8 ; 2 uses
  %i.dh = and i64 %i.dg, -2                       ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  store atomic i64 %i.dg, ptr %i.cy monotonic, align 8
  %i.dj = ptrtoint ptr %i.cy to i64
  store atomic i64 %i.dj, ptr %.0.i.i.i monotonic, align 8
  %.not.i.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store atomic ptr %i.cy, ptr %1 monotonic, align 8
  br label %rb_rotate_set_parents.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = icmp eq ptr %i.dl, %.0.i.i.i
  br i1 %i.dm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store atomic ptr %i.cy, ptr %i.dk monotonic, align 8
  br label %rb_rotate_set_parents.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store atomic ptr %i.cy, ptr %i.dn monotonic, align 8
  br label %rb_rotate_set_parents.exit.i.i.i

rb_rotate_set_parents.exit.i.i.i:                 ; preds = %bb.ap, %bb.ao, %bb.am
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not.i.i161.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i161.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %rb_rotate_set_parents.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load i64, ptr %i.dv, align 8
  %spec.select.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.ds)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %rb_rotate_set_parents.exit.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ds, %rb_rotate_set_parents.exit.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.dx = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not26.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not26.i.i.i.i.i, label %interval_tree_rotate.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i64, ptr %i.dy, align 8
  %spec.select27.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %.020.i.i.i.i.i)
  br label %interval_tree_rotate.exit.i.i.i

interval_tree_rotate.exit.i.i.i:                  ; preds = %bb.as, %bb.ar
  %.1.i.i.i.i.i = phi i64 [ %.020.i.i.i.i.i, %bb.ar ], [ %spec.select27.i.i.i.i.i, %bb.as ]
  store i64 %.1.i.i.i.i.i, ptr %i.do, align 8
  br label %bb.at

bb.at:                                            ; preds = %interval_tree_rotate.exit.i.i.i, %bb.ak
  %.0137.i.i.i = phi ptr [ %i.dd, %interval_tree_rotate.exit.i.i.i ], [ %i.cy, %bb.ak ] ; 11 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0137.i.i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %.not156.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not156.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ec = load atomic i64, ptr %i.eb monotonic, align 8
  %i.ed = trunc i64 %i.ec to i1
  br i1 %i.ed, label %bb.av, label %.loopexit.i.i.i
end_hunk_0
