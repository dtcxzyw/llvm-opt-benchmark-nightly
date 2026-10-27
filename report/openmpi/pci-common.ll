Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pci-common?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
begin_hunk_0_@hwloc_pcidisc_tree_insert_by_busid:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.dc = load ptr, ptr %.154.ph.i, align 8, !tbaa !53 ; 2 uses
  %.not62.i = icmp eq ptr %i.dc, null
  br i1 %.not62.i, label %hwloc_pci_add_object.exit, label %.lr.ph122.i, !llvm.loop !77

hwloc_pci_compare_busids.exit71.i:                ; preds = %bb.af, %bb.ad, %bb.ab
  %i.dd = load i8, ptr %i.g, align 1, !tbaa !36
  %.not89.i = icmp ugt i8 %i.ci, %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  br i1 %.not89.i, label %hwloc_pci_add_object.exit, label %.outer.i, !llvm.loop !77

hwloc_pci_compare_busids.exit.i:                  ; preds = %bb.q
  %.b.i = load i1, ptr @hwloc_pci_add_object.reported, align 4
  br i1 %.b.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %hwloc_pci_compare_busids.exit.i
  %i.df = tail call i32 @hwloc_hide_errors() #22, !inline_history !78
  %i.dg = icmp slt i32 %i.df, 2
  br i1 %i.dg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !38
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.119, i64 58, i64 1, ptr %i.dh) #27, !inline_history !78 ; 0 uses
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #24, !inline_history !78 ; 0 uses
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !38
  %fwrite58.i = tail call i64 @fwrite(ptr nonnull @.str.122, i64 2, i64 1, ptr %i.dk) #27, !inline_history !78 ; 0 uses
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !59  ; 4 uses
  %i.dn = load i16, ptr %i.dm, align 8, !tbaa !36
  %i.do = zext i16 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !36
  %i.dr = zext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !36
  %i.du = zext i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !36
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load ptr, ptr %.053111.i, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !59 ; 4 uses
  %i.eb = load i16, ptr %i.ea, align 8, !tbaa !36
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !36
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !36
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !36
  %i.el = zext i8 %i.ek to i32
  %i.em = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.123, i32 noundef %i.do, i32 noundef %i.dr, i32 noundef %i.du, i32 noundef %i.dx, i32 noundef %i.ec, i32 noundef %i.ef, i32 noundef %i.ei, i32 noundef %i.el) #24, !inline_history !78 ; 0 uses
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !38
  %fwrite59.i = tail call i64 @fwrite(ptr nonnull @.str.122, i64 2, i64 1, ptr %i.en) #27, !inline_history !78 ; 0 uses
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !38
  %fwrite60.i = tail call i64 @fwrite(ptr nonnull @.str.124, i64 50, i64 1, ptr %i.eo) #27, !inline_history !78 ; 0 uses
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !38
  %fwrite61.i = tail call i64 @fwrite(ptr nonnull @.str.119, i64 58, i64 1, ptr %i.ep) #27, !inline_history !78 ; 0 uses
  store i1 true, ptr @hwloc_pci_add_object.reported, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %hwloc_pci_compare_busids.exit.i
  tail call void @hwloc_free_unlinked_object(ptr noundef nonnull %1) #22, !inline_history !78
  br label %hwloc_pci_add_object.exit

select.unfold.i:                                  ; preds = %bb.q, %bb.o, %bb.m, %bb.c
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %tailrecurse._crit_edge.i, label %bb.b

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %select.unfold.i, %bb.a
  %.tr.lcssa.i = phi ptr [ %.tr116.i, %select.unfold.i ], [ null, %bb.a ], [ %i.l, %tailrecurse.i ]
  %.053.lcssa.i = phi ptr [ %i.eq, %select.unfold.i ], [ %0, %bb.a ], [ %i.az, %tailrecurse.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %.tr.lcssa.i, ptr %i.es, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.et, align 8, !tbaa !61
  store ptr %1, ptr %.053.lcssa.i, align 8, !tbaa !53
  br label %hwloc_pci_add_object.exit

hwloc_pci_add_object.exit:                        ; preds = %.outer.i, %hwloc_pci_compare_busids.exit71.i, %.lr.ph122.i, %.split.i, %split.i, %bb.r, %bb.ai, %tailrecurse._crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @hwloc_pcidisc_tree_attach(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %.not89 = icmp eq i32 %i.c, 1
  br i1 %.not89, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %.04768.i = phi ptr [ %i.a, %bb.c ], [ %i.an, %bb.l ] ; 2 uses
  %.05667.i = phi ptr [ %1, %bb.c ], [ %i.m, %bb.l ] ; 3 uses
  %i.d = tail call ptr @hwloc_alloc_setup_object(ptr noundef %0, i32 noundef 14, i32 noundef -1) #22 ; 6 uses
  %.not60.not.i = icmp eq ptr %i.d, null
  br i1 %.not60.not.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  store ptr %.05667.i, ptr %.04768.i, align 8, !tbaa !53
  br label %.loopexit118

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %.05667.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 3 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !36    ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.k = phi ptr [ %i.g, %bb.e ], [ %i.w, %bb.k ] ; 2 uses
  %.046.i = phi ptr [ %i.e, %bb.e ], [ %i.l, %bb.k ]
  %.045.i = phi ptr [ %.05667.i, %bb.e ], [ %i.m, %bb.k ] ; 4 uses
  %.044.i = phi i8 [ %i.j, %bb.e ], [ %.1.i, %bb.k ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.045.i, i64 88 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 4 uses
  store ptr %.045.i, ptr %.046.i, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %.045.i, i64 72
  store ptr %i.d, ptr %i.n, align 8, !tbaa !62
  store ptr null, ptr %i.l, align 8, !tbaa !61
  %i.o = load i32, ptr %.045.i, align 8, !tbaa !60
  %i.p = icmp eq i32 %i.o, 14
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 31
  %i.u = load i8, ptr %i.t, align 1, !tbaa !36
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.u, i8 %.044.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.i = phi i8 [ %.044.i, %bb.f ], [ %spec.select.i, %bb.h ], [ %.044.i, %bb.g ] ; 2 uses
  %.not61.i = icmp eq ptr %i.m, null              ; 2 uses
  br i1 %.not61.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59   ; 3 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !36
  %i.y = icmp eq i16 %i.x, %i.h
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !36
  %i.ab = icmp eq i8 %i.aa, %i.j
  br i1 %i.ab, label %bb.f, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 0, ptr %i.ae, align 8, !tbaa !36
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 1, ptr %i.ag, align 8, !tbaa !36
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i16 %i.h, ptr %i.ai, align 4, !tbaa !36
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 30
  store i8 %i.j, ptr %i.ak, align 2, !tbaa !36
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 31
  store i8 %.1.i, ptr %i.am, align 1, !tbaa !36
  store ptr %i.d, ptr %.04768.i, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  br i1 %.not61.i, label %.loopexit118, label %bb.d, !llvm.loop !79

.loopexit118:                                     ; preds = %bb.l, %.thread.i
  %.0..0..0..0..2.i = load ptr, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not9098 = icmp eq ptr %.0..0..0..0..2.i, null
  br i1 %.not9098, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit118
  %.080114 = phi ptr [ %.0..0..0..0..2.i, %.loopexit118 ], [ %1, %bb.b ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ag
  %.199 = phi ptr [ %.080114, %.lr.ph ], [ %i.cy, %bb.ag ] ; 8 uses
  %i.aq = load i32, ptr %.199, align 8, !tbaa !60 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 14                   ; 2 uses
  br i1 %i.ar, label %bb.n, label %thread-pre-split

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %.199, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !36
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %thread-pre-split.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %.199, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 2 uses
  %.pr.pre = load i32, ptr %i.ay, align 8, !tbaa !60
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.o, %bb.m
  %i.az = phi i32 [ %i.aq, %bb.m ], [ %.pr.pre, %bb.o ]
  %.079 = phi ptr [ %.199, %bb.m ], [ %i.ay, %bb.o ] ; 2 uses
  switch i32 %i.az, label %bb.p [
    i32 15, label %bb.q
    i32 14, label %thread-pre-split.thread
  ]

thread-pre-split.thread:                          ; preds = %bb.n, %thread-pre-split
  %.079116 = phi ptr [ %.079, %thread-pre-split ], [ %.199, %bb.n ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.079116, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.q, label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %thread-pre-split.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 571, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_pcidisc_tree_attach) #28
  unreachable

bb.q:                                             ; preds = %thread-pre-split, %thread-pre-split.thread
  %.079117 = phi ptr [ %.079, %thread-pre-split ], [ %.079116, %thread-pre-split.thread ] ; 2 uses
  br i1 %i.ar, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.199, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !36
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !36
  %i.bn = zext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 31
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36
  %i.bq = zext i8 %i.bp to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.079117, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.079117, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !36
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bw = phi ptr [ %.pre, %bb.s ], [ %i.bs, %bb.t ]
  %.077.in.in = phi ptr [ %i.bk, %bb.s ], [ %i.bs, %bb.t ]
  %.076 = phi i32 [ %i.bn, %bb.s ], [ %i.bv, %bb.t ] ; 3 uses
  %.0 = phi i32 [ %i.bq, %bb.s ], [ %i.bv, %bb.t ] ; 2 uses
  %.077.in = load i16, ptr %.077.in.in, align 4, !tbaa !36
  %.077 = zext i16 %.077.in to i32                ; 2 uses
  %i.bx = tail call fastcc ptr @hwloc__pci_find_busid_parent(ptr noundef %0, ptr noundef %i.bw) ; 5 uses
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 4 uses
  %.not91 = icmp eq ptr %i.by, null
  br i1 %.not91, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !63
  %i.cb = icmp eq ptr %i.bx, %i.ca
  br i1 %i.cb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cc = load i32, ptr %i.by, align 8, !tbaa !64
  %i.cd = icmp eq i32 %i.cc, %.077
  br i1 %i.cd, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %i.cg = icmp eq i32 %.076, %i.cf
  %i.ch = add i32 %i.cf, 1
  %i.ci = icmp eq i32 %.076, %i.ch
  %or.cond = or i1 %i.cg, %i.ci
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %.0, ptr %i.ce, align 8, !tbaa !65
  br label %bb.ag

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.cj = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #23 ; 12 uses
  %.not92 = icmp eq ptr %i.cj, null
  br i1 %.not92, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ck = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef 0, i32 noundef 0) #25
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  store i32 %.077, ptr %i.cj, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %.076, ptr %i.cl, align 4, !tbaa !66
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 %.0, ptr %i.cm, align 8, !tbaa !65
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.bx, ptr %i.cn, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 184
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83
  %i.cq = tail call noalias ptr @hwloc_bitmap_dup(ptr noundef %i.cp) #22 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !52
  %.not93 = icmp eq ptr %i.cq, null
  br i1 %.not93, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.cj) #22
  %i.cs = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef 0, i32 noundef 0) #25
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ct = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 3 uses
  %.not94 = icmp eq ptr %i.ct, null
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  br i1 %.not94, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !84
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store ptr null, ptr %i.cv, align 8, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !51
  br label %.sink.split

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store ptr %i.cj, ptr %i.ap, align 8, !tbaa !48
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %bb.af
  store ptr %i.cj, ptr %i.ao, align 8, !tbaa !82
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.ac, %bb.aa, %bb.y
  %.078 = phi ptr [ %i.bx, %bb.y ], [ %i.cs, %bb.ac ], [ %i.ck, %bb.aa ], [ %i.bx, %.sink.split ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.199, i64 88 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !61 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !61
  tail call void @hwloc_insert_object_by_parent(ptr noundef nonnull %0, ptr noundef %.078, ptr noundef nonnull %.199) #22
  %.not90 = icmp eq ptr %i.cy, null
  br i1 %.not90, label %.loopexit, label %bb.m, !llvm.loop !80

.loopexit:                                        ; preds = %bb.ag, %.loopexit118, %bb.a
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hwloc__pci_find_busid_parent(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = tail call noalias ptr @hwloc_bitmap_alloc() #22 ; 6 uses
  %i.c = load i16, ptr %1, align 4, !tbaa !70     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !71    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39   ; 2 uses
  %.not8182.not = icmp eq i32 %i.i, 0
  br i1 %.not8182.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = zext i16 %i.c to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = zext i8 %i.e to i32                      ; 2 uses
  %wide.trip.count = zext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !43
  %i.p = icmp eq i32 %i.o, %i.j
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44
  %.not59 = icmp ugt i32 %i.r, %i.m
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  %.not60 = icmp ult i32 %i.t, %i.m
  br i1 %.not60, label %bb.e, label %.thread72

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !85

.thread72:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = tail call i32 @hwloc_bitmap_copy(ptr noundef %i.b, ptr noundef %i.v) #22 ; 0 uses
  br label %bb.n

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.x = zext i16 %i.c to i32
  %i.y = zext i8 %i.e to i32
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.128, i32 noundef %i.x, i32 noundef %i.y) #22 ; 0 uses
  %i.aa = call ptr @getenv(ptr noundef nonnull %i.a) #22 ; 4 uses
  %.not62 = icmp eq ptr %i.aa, null
  br i1 %.not62, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !35
  %i.ac = icmp ne i32 %i.ab, 0
  %.b = load i1, ptr @hwloc__pci_find_busid_parent.reported, align 4
  %or.cond = select i1 %i.ac, i1 true, i1 %.b
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @hwloc_hide_errors() #22
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.129, ptr noundef nonnull %i.aa) #24 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i1 true, ptr @hwloc__pci_find_busid_parent.reported, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !36
  %.not64 = icmp eq i8 %i.ag, 0
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 @hwloc_bitmap_sscanf(ptr noundef %i.b, ptr noundef nonnull %i.aa) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

bb.l:                                             ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 3 uses
  %.not66 = icmp eq ptr %i.aj, null
  br i1 %.not66, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = tail call i32 %i.al(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, ptr noundef %i.b) #22
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.critedge, label %bb.n

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.ao = tail call ptr @hwloc_topology_get_topology_cpuset(ptr noundef nonnull %0) #25
  %i.ap = tail call i32 @hwloc_bitmap_copy(ptr noundef %i.b, ptr noundef %i.ao) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %.thread72, %bb.m, %.critedge
  %i.aq = tail call ptr @hwloc_find_insert_io_parent_by_complete_cpuset(ptr noundef nonnull %0, ptr noundef %i.b) #22 ; 2 uses
  %.not67 = icmp eq ptr %i.aq, null
  br i1 %.not67, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef 0, i32 noundef 0) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.054 = phi ptr [ %i.ar, %bb.o ], [ %i.aq, %bb.n ]
  tail call void @hwloc_bitmap_free(ptr noundef %i.b) #22
  ret ptr %.054
}

declare noalias ptr @hwloc_bitmap_dup(ptr noundef) local_unnamed_addr #8

declare void @hwloc_insert_object_by_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @hwloc_pci_find_parent_by_busid(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.hwloc_pcidev_attr_s, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = tail call ptr @hwloc_pci_find_by_busid(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %1 to i16
  store i16 %i.b, ptr %5, align 4, !tbaa !70
  %i.c = trunc i32 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.c, ptr %i.d, align 2, !tbaa !71
  %i.e = trunc i32 %3 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.e, ptr %i.f, align 1, !tbaa !91
  %i.g = trunc i32 %4 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %i.g, ptr %i.h, align 4, !tbaa !92
  %i.i = call fastcc ptr @hwloc__pci_find_busid_parent(ptr noundef %0, ptr noundef nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @hwloc_pci_find_by_busid(ptr nofree noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %0, i32 noundef 0, i32 noundef 0) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.04461 = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %.not62 = icmp eq ptr %.04461, null
  br i1 %.not62, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.04463 = phi ptr [ %.044, %bb.f ], [ %.04461, %bb.a ] ; 5 uses
  %i.c = load i32, ptr %.04463, align 8, !tbaa !64
  %i.d = icmp eq i32 %i.c, %1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.04463, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %.not53 = icmp ugt i32 %i.f, %2
  br i1 %.not53, label %bb.f, label %bb.c

end_hunk_0
