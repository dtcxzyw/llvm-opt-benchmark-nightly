Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-ac?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_ac_buildtrie:bb.a
  %.01271.i = phi ptr [ null, %link_lists.exit ], [ %.214.i, %bfs_enqueue.exit.thread.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !60 ; 3 uses
  %.not124.i = icmp eq ptr %i.cy, null
  br i1 %.not124.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.val, ptr %i.cx, align 8, !tbaa !60
  br label %bfs_enqueue.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %.val, ptr %i.cz, align 8, !tbaa !66
  %i.da = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %.not.i.i9 = icmp eq ptr %i.da, null
  br i1 %.not.i.i9, label %bfs_dequeue.exit139.thread.sink.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr null, ptr %i.db, align 8, !tbaa !137
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !138
  %.not14.i.i = icmp eq ptr %.0872.i, null
  br i1 %.not14.i.i, label %bfs_enqueue.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.0872.i, i64 8
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !137
  br label %bfs_enqueue.exit.thread.i

bfs_enqueue.exit.thread.i:                        ; preds = %bb.u, %bb.t, %bb.r
  %.214.i = phi ptr [ %.01271.i, %bb.r ], [ %i.da, %bb.t ], [ %.01271.i, %bb.u ] ; 3 uses
  %.210.i = phi ptr [ %.0872.i, %bb.r ], [ %i.da, %bb.t ], [ %i.da, %bb.u ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader58.i, label %bb.q

bfs_dequeue.exit.i:                               ; preds = %.preheader58.i, %.backedge59.i
  %.31182.i = phi ptr [ %.311.be.i, %.backedge59.i ], [ %.210.i, %.preheader58.i ] ; 2 uses
  %.31581.i = phi ptr [ %.315.be.i, %.backedge59.i ], [ %.214.i, %.preheader58.i ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.31581.i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !137 ; 4 uses
  %i.df = load ptr, ptr %.31581.i, align 8, !tbaa !138 ; 4 uses
  %i.dg = icmp eq ptr %.31581.i, %.31182.i
  %spec.select.i = select i1 %i.dg, ptr null, ptr %.31182.i ; 4 uses
  tail call void @free(ptr noundef nonnull %.31581.i) #20
  %.not.i10 = icmp eq ptr %i.df, null
  br i1 %.not.i10, label %bfs_dequeue.exit.thread.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bfs_dequeue.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !51 ; 2 uses
  %.not115.i = icmp eq ptr %i.di, null
  br i1 %.not115.i, label %bb.w, label %.preheader56.i

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %.08477.i = load ptr, ptr %i.dj, align 8, !tbaa !66 ; 2 uses
  %.not11678.i = icmp eq ptr %.08477.i, null
  br i1 %.not11678.i, label %.backedge59.i, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.w, %.critedge2.i
  %.08479.i = phi ptr [ %.084.i, %.critedge2.i ], [ %.08477.i, %bb.w ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.08479.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !51
  %.not117.i = icmp eq ptr %i.dl, null
  br i1 %.not117.i, label %.critedge2.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i12
  %i.dm = load ptr, ptr %.08479.i, align 8, !tbaa !64
  %.not118.i = icmp eq ptr %i.dm, null
  br i1 %.not118.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.x, %.lr.ph.i12
  %i.dn = getelementptr inbounds nuw i8, ptr %.08479.i, i64 16
  %.084.i = load ptr, ptr %i.dn, align 8, !tbaa !66 ; 2 uses
  %.not116.i = icmp eq ptr %.084.i, null
  br i1 %.not116.i, label %.backedge59.i, label %.lr.ph.i12

.critedge.i:                                      ; preds = %bb.x
  store ptr %.08479.i, ptr %i.dj, align 8, !tbaa !66
  br label %.backedge59.i

.backedge59.i:                                    ; preds = %bfs_enqueue.exit132.thread.i, %.critedge2.i, %.critedge.i, %bb.w
  %.315.be.i = phi ptr [ %i.de, %.critedge2.i ], [ %i.de, %bb.w ], [ %i.de, %.critedge.i ], [ %.719.i, %bfs_enqueue.exit132.thread.i ] ; 2 uses
  %.311.be.i = phi ptr [ %spec.select.i, %.critedge2.i ], [ %spec.select.i, %bb.w ], [ %spec.select.i, %.critedge.i ], [ %.8.i, %bfs_enqueue.exit132.thread.i ]
  %.not.i127.i = icmp eq ptr %.315.be.i, null
  br i1 %.not.i127.i, label %bfs_dequeue.exit.thread.loopexit.i, label %bfs_dequeue.exit.i

.preheader56.i:                                   ; preds = %bb.v, %bfs_enqueue.exit132.thread.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %bfs_enqueue.exit132.thread.i ], [ 0, %bb.v ] ; 3 uses
  %.675.i = phi ptr [ %.8.i, %bfs_enqueue.exit132.thread.i ], [ %spec.select.i, %bb.v ] ; 3 uses
  %.51774.i = phi ptr [ %.719.i, %bfs_enqueue.exit132.thread.i ], [ %i.de, %bb.v ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv96.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !60 ; 3 uses
  %.not119.i = icmp eq ptr %i.dp, null
  br i1 %.not119.i, label %bfs_enqueue.exit132.thread.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %.preheader56.i, %.preheader55.i.backedge
  %.pn123.i = phi ptr [ %.086.i, %.preheader55.i.backedge ], [ %i.df, %.preheader56.i ]
  %.086.in.i = getelementptr inbounds nuw i8, ptr %.pn123.i, i64 16
  %.086.i = load ptr, ptr %.086.in.i, align 8, !tbaa !66 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.086.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !51 ; 2 uses
  %.not120.i = icmp eq ptr %i.dr, null
  br i1 %.not120.i, label %.preheader55.i.backedge, label %bb.y

bb.y:                                             ; preds = %.preheader55.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv96.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !60 ; 2 uses
  %.not121.i = icmp eq ptr %i.dt, null
  br i1 %.not121.i, label %.preheader55.i.backedge, label %bb.z

.preheader55.i.backedge:                          ; preds = %bb.y, %.preheader55.i
  br label %.preheader55.i

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !66
  %i.dv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %.not.i129.i = icmp eq ptr %i.dv, null
  br i1 %.not.i129.i, label %bfs_dequeue.exit139.thread.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !137
  store ptr %i.dp, ptr %i.dv, align 8, !tbaa !138
  %.not14.i130.i = icmp eq ptr %.675.i, null
  br i1 %.not14.i130.i, label %bfs_enqueue.exit132.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.675.i, i64 8
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !137
  br label %bfs_enqueue.exit132.thread.i

bfs_enqueue.exit132.thread.i:                     ; preds = %bb.ab, %bb.aa, %.preheader56.i
  %.719.i = phi ptr [ %.51774.i, %.preheader56.i ], [ %i.dv, %bb.aa ], [ %.51774.i, %bb.ab ] ; 2 uses
  %.8.i = phi ptr [ %.675.i, %.preheader56.i ], [ %i.dv, %bb.aa ], [ %i.dv, %bb.ab ] ; 2 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next97.i, 256
  br i1 %exitcond99.not.i, label %.backedge59.i, label %.preheader56.i

bfs_dequeue.exit.thread.loopexit.i:               ; preds = %.backedge59.i, %bfs_dequeue.exit.i
  %.pre.i11 = load ptr, ptr %i.cv, align 8, !tbaa !51
  br label %bfs_dequeue.exit.thread.i

bfs_dequeue.exit.thread.i:                        ; preds = %bfs_dequeue.exit.thread.loopexit.i, %.preheader58.i
  %i.dy = phi ptr [ %.pre.i11, %bfs_dequeue.exit.thread.loopexit.i ], [ %i.cw, %.preheader58.i ]
  br label %bb.ac

.preheader54.i:                                   ; preds = %bfs_enqueue.exit136.thread.i
  %.not.i13789.i = icmp eq ptr %.1022.i, null
  br i1 %.not.i13789.i, label %ac_maketrans.exit, label %bfs_dequeue.exit139.i

bb.ac:                                            ; preds = %bfs_enqueue.exit136.thread.i, %bfs_dequeue.exit.thread.i
  %indvars.iv100.i = phi i64 [ 0, %bfs_dequeue.exit.thread.i ], [ %indvars.iv.next101.i, %bfs_enqueue.exit136.thread.i ] ; 2 uses
  %.984.i = phi ptr [ null, %bfs_dequeue.exit.thread.i ], [ %.11.i, %bfs_enqueue.exit136.thread.i ] ; 3 uses
  %.82083.i = phi ptr [ null, %bfs_dequeue.exit.thread.i ], [ %.1022.i, %bfs_enqueue.exit136.thread.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv100.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !60 ; 2 uses
  %.not113.i = icmp eq ptr %i.ea, %.val
  br i1 %.not113.i, label %bfs_enqueue.exit136.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %.not.i133.i = icmp eq ptr %i.eb, null
  br i1 %.not.i133.i, label %bfs_dequeue.exit139.thread.sink.split.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr null, ptr %i.ec, align 8, !tbaa !137
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !138
  %.not14.i134.i = icmp eq ptr %.984.i, null
  br i1 %.not14.i134.i, label %bfs_enqueue.exit136.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw i8, ptr %.984.i, i64 8
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !137
  br label %bfs_enqueue.exit136.thread.i

bfs_enqueue.exit136.thread.i:                     ; preds = %bb.af, %bb.ae, %bb.ac
  %.1022.i = phi ptr [ %.82083.i, %bb.ac ], [ %i.eb, %bb.ae ], [ %.82083.i, %bb.af ] ; 3 uses
  %.11.i = phi ptr [ %.984.i, %bb.ac ], [ %i.eb, %bb.ae ], [ %i.eb, %bb.af ] ; 2 uses
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next101.i, 256
  br i1 %exitcond103.not.i, label %.preheader54.i, label %bb.ac

bfs_dequeue.exit139.i:                            ; preds = %.preheader54.i, %.backedge.i
  %.1291.i = phi ptr [ %.12.be.i, %.backedge.i ], [ %.11.i, %.preheader54.i ] ; 2 uses
  %.112390.i = phi ptr [ %.1123.be.i, %.backedge.i ], [ %.1022.i, %.preheader54.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.112390.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !137 ; 2 uses
  %i.eg = load ptr, ptr %.112390.i, align 8, !tbaa !138 ; 3 uses
  tail call void @free(ptr noundef nonnull %.112390.i) #20
  %.not102.i = icmp eq ptr %i.eg, null
  br i1 %.not102.i, label %ac_maketrans.exit, label %bb.ag

bb.ag:                                            ; preds = %bfs_dequeue.exit139.i
  %i.eh = icmp eq ptr %.112390.i, %.1291.i
  %spec.select52.i = select i1 %i.eh, ptr null, ptr %.1291.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51
  %.not103.i = icmp eq ptr %i.ej, null
  br i1 %.not103.i, label %.backedge.i, label %.preheader53.i

.backedge.i:                                      ; preds = %bfs_enqueue.exit143.thread.i, %bb.ag
  %.1123.be.i = phi ptr [ %i.ef, %bb.ag ], [ %.1527.i, %bfs_enqueue.exit143.thread.i ] ; 2 uses
  %.12.be.i = phi ptr [ %spec.select52.i, %bb.ag ], [ %.17.i, %bfs_enqueue.exit143.thread.i ]
  %.not.i137.i = icmp eq ptr %.1123.be.i, null
  br i1 %.not.i137.i, label %ac_maketrans.exit, label %bfs_dequeue.exit139.i

.preheader53.i:                                   ; preds = %bb.ag, %bfs_enqueue.exit143.thread.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %bfs_enqueue.exit143.thread.i ], [ 0, %bb.ag ] ; 3 uses
  %.1587.i = phi ptr [ %.17.i, %bfs_enqueue.exit143.thread.i ], [ %spec.select52.i, %bb.ag ] ; 4 uses
  %.132586.i.a = phi ptr [ %.1527.i, %bfs_enqueue.exit143.thread.i ], [ %i.ef, %bb.ag ] ; 3 uses
  %1 = load ptr, ptr %i.ei, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104.i ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !60 ; 5 uses
  %.not104.i = icmp eq ptr %i.el, null
  br i1 %.not104.i, label %.critedge6.i.preheader, label %bb.ah

bb.ah:                                            ; preds = %.preheader53.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !64 ; 2 uses
  %.not105.i = icmp eq ptr %i.em, null
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !51
  %.not106.i = icmp eq ptr %i.eo, null            ; 2 uses
  br i1 %.not105.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not106.i, label %.critedge6.i.preheader, label %.thread.i

.critedge6.i.preheader:                           ; preds = %bb.ai, %.preheader53.i
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.i.backedge, %.critedge6.i.preheader
  %.pn.i = phi ptr [ %i.eg, %.critedge6.i.preheader ], [ %.083.i, %.critedge6.i.backedge ]
  %.083.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.083.i = load ptr, ptr %.083.in.i, align 8, !tbaa !66 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.083.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !51 ; 2 uses
  %.not107.i = icmp eq ptr %i.eq, null
  br i1 %.not107.i, label %.critedge6.i.backedge, label %bb.aj

bb.aj:                                            ; preds = %.critedge6.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv104.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !60 ; 2 uses
  %.not108.i = icmp eq ptr %i.es, null
  br i1 %.not108.i, label %.critedge6.i.backedge, label %bb.ak

.critedge6.i.backedge:                            ; preds = %bb.aj, %.critedge6.i
  br label %.critedge6.i

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !60
  br label %bfs_enqueue.exit143.thread.i

bb.al:                                            ; preds = %bb.ah
  br i1 %.not106.i, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.al, %.preheader.i
  %.0.i = phi ptr [ %i.eu, %.preheader.i ], [ %i.em, %bb.al ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !46 ; 2 uses
  %.not111.i = icmp eq ptr %i.eu, null
  br i1 %.not111.i, label %bb.am, label %.preheader.i

bb.am:                                            ; preds = %.preheader.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !66
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !64
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !46
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !66
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !51
  store ptr %i.fb, ptr %i.en, align 8, !tbaa !51
  br label %bfs_enqueue.exit143.thread.i

.thread.i:                                        ; preds = %bb.al, %bb.ai
  %i.fc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %.not.i140.i = icmp eq ptr %i.fc, null
  br i1 %.not.i140.i, label %bfs_dequeue.exit139.thread.sink.split.i, label %bb.an

bb.an:                                            ; preds = %.thread.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr null, ptr %i.fd, align 8, !tbaa !137
  store ptr %i.el, ptr %i.fc, align 8, !tbaa !138
  %.not14.i141.i = icmp eq ptr %.1587.i, null
  br i1 %.not14.i141.i, label %bfs_enqueue.exit143.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = getelementptr inbounds nuw i8, ptr %.1587.i, i64 8
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !137
  br label %bfs_enqueue.exit143.thread.i

bfs_enqueue.exit143.thread.i:                     ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.1527.i = phi ptr [ %.132586.i.a, %bb.ak ], [ %.132586.i.a, %bb.am ], [ %i.fc, %bb.an ], [ %.132586.i.a, %bb.ao ] ; 2 uses
  %.17.i = phi ptr [ %.1587.i, %bb.ak ], [ %.1587.i, %bb.am ], [ %i.fc, %bb.an ], [ %i.fc, %bb.ao ] ; 2 uses
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond107.not.i = icmp eq i64 %indvars.iv.next105.i, 256
  br i1 %exitcond107.not.i, label %.backedge.i, label %.preheader53.i

bfs_dequeue.exit139.thread.sink.split.i:          ; preds = %bb.s, %bb.z, %bb.ad, %.thread.i
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.70) #20
  br label %ac_maketrans.exit

ac_maketrans.exit:                                ; preds = %.backedge.i, %bfs_dequeue.exit139.i, %bfs_dequeue.exit139.thread.sink.split.i, %.preheader54.i, %bb.a, %bb.c
  %.0 = phi i32 [ 4, %bb.a ], [ 0, %bb.c ], [ 20, %bfs_dequeue.exit139.thread.sink.split.i ], [ 0, %.preheader54.i ], [ 0, %bfs_dequeue.exit139.i ], [ 0, %.backedge.i ]
  ret i32 %.0
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_ac_init(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 648, ptr noundef nonnull @__PRETTY_FUNCTION__.cli_ac_init) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @mpool_calloc(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 24) #20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !42
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.6) #20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.f = tail call ptr @mpool_calloc(ptr noundef %i.e, i64 noundef 256, i64 noundef 8) #20 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !51
  %.not28 = icmp eq ptr %i.f, null
  br i1 %.not28, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.7) #20
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !42
  tail call void @mpool_free(ptr noundef %i.i, ptr noundef %i.j) #20
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %1, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %2, ptr %i.l, align 1, !tbaa !29
  %i.m = load i32, ptr %0, align 8, !tbaa !62
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 147, %i.n
  %i.p = trunc i64 %i.o to i1
  %i.q = icmp ne i8 %3, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.s = tail call ptr @mpool_malloc(ptr noundef %i.r, i64 noundef 131080) #20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.s, ptr %i.t, align 8, !tbaa !61
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.8) #20
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  tail call void @mpool_free(ptr noundef %i.u, ptr noundef %i.x) #20
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !42
  tail call void @mpool_free(ptr noundef %i.y, ptr noundef %i.z) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @filter_init(ptr noundef nonnull %i.s) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.f, %bb.d
  %.0 = phi i32 [ 20, %bb.d ], [ 20, %bb.i ], [ 20, %bb.f ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @mpool_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @mpool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mpool_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @filter_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @cli_ac_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %.not72 = icmp eq i32 %i.b, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 7 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %.not61 = icmp eq ptr %i.j, null
  br i1 %.not61, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  tail call void @mpool_free(ptr noundef %i.h, ptr noundef %i.l) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !59
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  tail call void @mpool_free(ptr noundef %i.p, ptr noundef %i.r) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.t = load i16, ptr %i.s, align 4, !tbaa !69
  %.not62 = icmp eq i16 %i.t, 0
  br i1 %.not62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !37
  tail call fastcc void @ac_free_special(ptr noundef %i.u, ptr noundef nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !37
  tail call void @mpool_free(ptr noundef %i.v, ptr noundef nonnull %i.g) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !36
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  tail call void @mpool_free(ptr noundef %i.ac, ptr noundef nonnull %i.aa) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  tail call void @mpool_free(ptr noundef %i.ag, ptr noundef nonnull %i.ae) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !47
  %.not73 = icmp eq i32 %i.ai, 0
  br i1 %.not73, label %._crit_edge67, label %.lr.ph66

end_hunk_0
