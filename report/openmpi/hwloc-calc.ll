Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/hwloc-calc?download=true
inline.NumInlined: 51
inline.NumDeleted: 27
begin_hunk_0_@main:bb.a
bb.ev:                                            ; preds = %bb.eu, %bb.et
  store i1 true, ptr @logicalo, align 4
  br label %bb.fq

sub_1463:                                         ; preds = %bb.eu
  %i.lj = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.lk = load i8, ptr %i.lj, align 1
  %.not724 = icmp eq i8 %i.lk, 110
  br i1 %.not724, label %.tail461, label %.tail461.thread

.tail461:                                         ; preds = %sub_1463
  %i.ll = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = icmp eq i8 %i.lm, 0
  br i1 %i.ln, label %bb.ew, label %.tail461.thread

.tail461.thread:                                  ; preds = %sub_1463, %.tail461
  %i.lo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(10) @.str.92) #26
  %.not353 = icmp eq i32 %i.lo, 0
  br i1 %.not353, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.tail461.thread, %.tail461
  store i1 true, ptr @nodeseti, align 4
  store i1 true, ptr @nodeseto, align 4
  br label %bb.fq

bb.ex:                                            ; preds = %.tail461.thread
  %i.lp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(5) @.str.93) #26
  %.not354 = icmp eq i32 %i.lp, 0
  br i1 %.not354, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.lq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(16) @.str.94) #26
  %.not355 = icmp eq i32 %i.lq, 0
  br i1 %.not355, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  store i1 true, ptr @nodeseti, align 4
  br label %bb.fq

bb.fa:                                            ; preds = %bb.ey
  %i.lr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(5) @.str.95) #26
  %.not356 = icmp eq i32 %i.lr, 0
  br i1 %.not356, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ls = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(17) @.str.96) #26
  %.not357 = icmp eq i32 %i.ls, 0
  br i1 %.not357, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  store i1 true, ptr @nodeseto, align 4
  br label %bb.fq

bb.fd:                                            ; preds = %bb.fb
  %i.lt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(6) @.str.97) #26
  %.not358 = icmp eq i32 %i.lt, 0
  br i1 %.not358, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  %i.lu = icmp eq i32 %.1266669, 1
  br i1 %i.lu, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !15
  call void @usage(ptr nonnull poison, ptr noundef %i.lv)
  call void @exit(i32 noundef 1) #28
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.lw = getelementptr inbounds nuw i8, ptr %.1264671, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !12
  br label %bb.fq

bb.fh:                                            ; preds = %bb.fd
  %i.ly = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(9) @.str.98) #26
  %.not359 = icmp eq i32 %i.ly, 0
  br i1 %.not359, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i1 true, ptr @singlify, align 4
  br label %bb.fq

bb.fj:                                            ; preds = %bb.fh
  %i.lz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(10) @.str.99) #26
  %.not360 = icmp eq i32 %i.lz, 0
  br i1 %.not360, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  store i1 true, ptr @taskset, align 4
  br label %bb.fq

bb.fl:                                            ; preds = %bb.fj
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ma, ptr noundef nonnull @.str.100, ptr noundef nonnull %i.hj) #27 ; 0 uses
  %i.mc = load ptr, ptr @stderr, align 8, !tbaa !15
  call void @usage(ptr nonnull poison, ptr noundef %i.mc)
  br label %hwloc_utils_enable_input_format.exit

bb.fm:                                            ; preds = %bb.cw
  %i.md = add nsw i32 %.0256673, 1                ; 2 uses
  %i.me = load ptr, ptr %i.c, align 8, !tbaa !21
  store ptr %i.me, ptr %4, align 8, !tbaa !38
  store i32 0, ptr %i.hd, align 8, !tbaa !40
  store i32 -1, ptr %i.he, align 4, !tbaa !41
  %.b279 = load i1, ptr @logicali, align 4
  %not..b279 = xor i1 %.b279, true
  %i.mf = zext i1 %not..b279 to i32
  store i32 %i.mf, ptr %i.hf, align 8, !tbaa !42
  %i.mg = load i32, ptr @verbose, align 4, !tbaa !23
  store i32 %i.mg, ptr %i.hg, align 4, !tbaa !43
  store ptr %i.r, ptr %i.hh, align 8, !tbaa !44
  %.b281 = load i1, ptr @nodeseti, align 4
  %i.mh = zext i1 %.b281 to i32
  store i32 %i.mh, ptr %5, align 8, !tbaa !46
  %.b284 = load i1, ptr @nodeseto, align 4
  %i.mi = zext i1 %.b284 to i32
  store i32 %i.mi, ptr %i.hi, align 4, !tbaa !47
  %i.mj = call fastcc i32 @hwloc_calc_process_location_as_set(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.hj)
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ml = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mm = load ptr, ptr %.1264671, align 8, !tbaa !12
  %i.mn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.101, ptr noundef %i.mm) #27 ; 0 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.b = load i1, ptr @showobjs, align 4
  %.b282 = load i1, ptr @nodeseto, align 4
  %or.cond3 = select i1 %.b, i1 %.b282, i1 false
  br i1 %or.cond3, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.mo = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mp = call i64 @fwrite(ptr nonnull @.str.102, i64 59, i64 1, ptr %i.mo) #30 ; 0 uses
  store i1 false, ptr @nodeseto, align 4
  br label %bb.fq

bb.fq:                                            ; preds = %bb.ec, %bb.ea, %bb.eb, %bb.fo, %bb.fp, %bb.fk, %bb.fi, %bb.fg, %bb.fc, %bb.ez, %bb.ew, %bb.ev, %bb.es, %bb.ep, %bb.eo, %bb.el, %bb.ei, %bb.ef, %bb.dz, %bb.dv, %bb.dr, %bb.dq, %bb.dn, %bb.dk, %bb.dg, %bb.de, %bb.cz, %bb.cy
  %.2375 = phi i32 [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.de ], [ 1, %bb.dg ], [ 2, %bb.dk ], [ 2, %bb.dn ], [ 2, %bb.dq ], [ 1, %bb.dr ], [ 2, %bb.dv ], [ 2, %bb.dz ], [ 1, %bb.ea ], [ 1, %bb.eb ], [ 1, %bb.ec ], [ 1, %bb.ef ], [ 1, %bb.ei ], [ 1, %bb.el ], [ 1, %bb.eo ], [ 1, %bb.ep ], [ 1, %bb.es ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 1, %bb.ez ], [ 1, %bb.fc ], [ 2, %bb.fg ], [ 1, %bb.fi ], [ 1, %bb.fk ], [ 1, %bb.fp ], [ 1, %bb.fo ] ; 2 uses
  %.1257 = phi i32 [ %.0256673, %bb.cy ], [ %.0256673, %bb.cz ], [ %.0256673, %bb.de ], [ %.0256673, %bb.dg ], [ %.0256673, %bb.dk ], [ %.0256673, %bb.dn ], [ %.0256673, %bb.dq ], [ %.0256673, %bb.dr ], [ %.0256673, %bb.dv ], [ %.0256673, %bb.dz ], [ %.0256673, %bb.ea ], [ %.0256673, %bb.eb ], [ %.0256673, %bb.ec ], [ %.0256673, %bb.ef ], [ %.0256673, %bb.ei ], [ %.0256673, %bb.el ], [ %.0256673, %bb.eo ], [ %.0256673, %bb.ep ], [ %.0256673, %bb.es ], [ %.0256673, %bb.ev ], [ %.0256673, %bb.ew ], [ %.0256673, %bb.ez ], [ %.0256673, %bb.fc ], [ %.0256673, %bb.fg ], [ %.0256673, %bb.fi ], [ %.0256673, %bb.fk ], [ %i.md, %bb.fp ], [ %i.md, %bb.fo ] ; 2 uses
  %.1255 = phi ptr [ %.0254674, %bb.cy ], [ %.0254674, %bb.cz ], [ %.0254674, %bb.de ], [ %.0254674, %bb.dg ], [ %i.jb, %bb.dk ], [ %.0254674, %bb.dn ], [ %.0254674, %bb.dq ], [ %.0254674, %bb.dr ], [ %.0254674, %bb.dv ], [ %.0254674, %bb.dz ], [ %.0254674, %bb.ea ], [ %.0254674, %bb.eb ], [ %.0254674, %bb.ec ], [ %.0254674, %bb.ef ], [ %.0254674, %bb.ei ], [ %.0254674, %bb.el ], [ %.0254674, %bb.eo ], [ %.0254674, %bb.ep ], [ %.0254674, %bb.es ], [ %.0254674, %bb.ev ], [ %.0254674, %bb.ew ], [ %.0254674, %bb.ez ], [ %.0254674, %bb.fc ], [ %.0254674, %bb.fg ], [ %.0254674, %bb.fi ], [ %.0254674, %bb.fk ], [ %.0254674, %bb.fp ], [ %.0254674, %bb.fo ] ; 3 uses
  %.1253 = phi ptr [ %.0252675, %bb.cy ], [ %.0252675, %bb.cz ], [ %.0252675, %bb.de ], [ %.0252675, %bb.dg ], [ %.0252675, %bb.dk ], [ %i.jl, %bb.dn ], [ %.0252675, %bb.dq ], [ %.0252675, %bb.dr ], [ %.0252675, %bb.dv ], [ %.0252675, %bb.dz ], [ @.str.71, %bb.ea ], [ @.str.71, %bb.eb ], [ @.str.73, %bb.ec ], [ %.0252675, %bb.ef ], [ %.0252675, %bb.ei ], [ %.0252675, %bb.el ], [ %.0252675, %bb.eo ], [ %.0252675, %bb.ep ], [ %.0252675, %bb.es ], [ %.0252675, %bb.ev ], [ %.0252675, %bb.ew ], [ %.0252675, %bb.ez ], [ %.0252675, %bb.fc ], [ %.0252675, %bb.fg ], [ %.0252675, %bb.fi ], [ %.0252675, %bb.fk ], [ %.0252675, %bb.fp ], [ %.0252675, %bb.fo ] ; 3 uses
  %.1248 = phi ptr [ %.0247676, %bb.cy ], [ %.0247676, %bb.cz ], [ %.0247676, %bb.de ], [ %.0247676, %bb.dg ], [ %.0247676, %bb.dk ], [ %.0247676, %bb.dn ], [ %i.jv, %bb.dq ], [ %.0247676, %bb.dr ], [ %.0247676, %bb.dv ], [ %.0247676, %bb.dz ], [ %.0247676, %bb.ea ], [ %.0247676, %bb.eb ], [ %.0247676, %bb.ec ], [ %.0247676, %bb.ef ], [ %.0247676, %bb.ei ], [ %.0247676, %bb.el ], [ %.0247676, %bb.eo ], [ %.0247676, %bb.ep ], [ %.0247676, %bb.es ], [ %.0247676, %bb.ev ], [ %.0247676, %bb.ew ], [ %.0247676, %bb.ez ], [ %.0247676, %bb.fc ], [ %.0247676, %bb.fg ], [ %.0247676, %bb.fi ], [ %.0247676, %bb.fk ], [ %.0247676, %bb.fp ], [ %.0247676, %bb.fo ] ; 4 uses
  %.1246 = phi ptr [ %.0245677, %bb.cy ], [ %.0245677, %bb.cz ], [ %.0245677, %bb.de ], [ %.0245677, %bb.dg ], [ %.0245677, %bb.dk ], [ %.0245677, %bb.dn ], [ %.0245677, %bb.dq ], [ %.0245677, %bb.dr ], [ %.0245677, %bb.dv ], [ %i.kh, %bb.dz ], [ %.0245677, %bb.ea ], [ %.0245677, %bb.eb ], [ %.0245677, %bb.ec ], [ %.0245677, %bb.ef ], [ %.0245677, %bb.ei ], [ %.0245677, %bb.el ], [ %.0245677, %bb.eo ], [ %.0245677, %bb.ep ], [ %.0245677, %bb.es ], [ %.0245677, %bb.ev ], [ %.0245677, %bb.ew ], [ %.0245677, %bb.ez ], [ %.0245677, %bb.fc ], [ %.0245677, %bb.fg ], [ %.0245677, %bb.fi ], [ %.0245677, %bb.fk ], [ %.0245677, %bb.fp ], [ %.0245677, %bb.fo ] ; 6 uses
  %.1243 = phi ptr [ %.0242678, %bb.cy ], [ %.0242678, %bb.cz ], [ %.0242678, %bb.de ], [ %.0242678, %bb.dg ], [ %.0242678, %bb.dk ], [ %.0242678, %bb.dn ], [ %.0242678, %bb.dq ], [ %.0242678, %bb.dr ], [ %.0242678, %bb.dv ], [ %.0242678, %bb.dz ], [ %.0242678, %bb.ea ], [ %.0242678, %bb.eb ], [ %.0242678, %bb.ec ], [ %.0242678, %bb.ef ], [ %.0242678, %bb.ei ], [ %.0242678, %bb.el ], [ %.0242678, %bb.eo ], [ %.0242678, %bb.ep ], [ %.0242678, %bb.es ], [ %.0242678, %bb.ev ], [ %.0242678, %bb.ew ], [ %.0242678, %bb.ez ], [ %.0242678, %bb.fc ], [ %i.lx, %bb.fg ], [ %.0242678, %bb.fi ], [ %.0242678, %bb.fk ], [ %.0242678, %bb.fp ], [ %.0242678, %bb.fo ] ; 3 uses
  %i.mq = sub nsw i32 %.1266669, %.2375           ; 2 uses
  %i.mr = zext nneg i32 %.2375 to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.1264671, i64 %i.mr
  %i.mt = icmp sgt i32 %i.mq, 0
  br i1 %i.mt, label %bb.cw, label %._crit_edge681, !llvm.loop !48

._crit_edge681:                                   ; preds = %bb.fq
  %i.mu = icmp eq i32 %.1257, 0
  %.not303 = icmp eq ptr %.1255, null
  br i1 %.not303, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %._crit_edge681
  %i.mv = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.mw = call fastcc i32 @hwloc_calc_type_depth(ptr noundef %i.mv, ptr noundef nonnull %.1255, ptr noundef nonnull @numberofdepth, ptr noundef nonnull @.str.60)
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %.thread400, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %._crit_edge681
  %.not304 = icmp eq ptr %.1253, null
  br i1 %.not304, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.my = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.mz = call fastcc i32 @hwloc_calc_type_depth(ptr noundef %i.my, ptr noundef nonnull %.1253, ptr noundef nonnull @intersectdepth, ptr noundef nonnull @.str.62)
  %i.na = icmp slt i32 %i.mz, 0
  br i1 %i.na, label %.thread400, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.not305 = icmp eq ptr %.1248, null
  br i1 %.not305, label %.loopexit, label %.preheader466

.preheader466:                                    ; preds = %bb.fu
  store i32 1, ptr @hiernblevels, align 4, !tbaa !23
  %i.nb = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1248, i32 noundef 46) #26 ; 2 uses
  %.not306688 = icmp eq ptr %i.nb, null
  br i1 %.not306688, label %bb.fv, label %.lr.ph690

.lr.ph690:                                        ; preds = %.preheader466, %.lr.ph690
  %i.nc = phi ptr [ %i.nf, %.lr.ph690 ], [ %i.nb, %.preheader466 ]
  %storemerge689 = phi i32 [ %i.ne, %.lr.ph690 ], [ 1, %.preheader466 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  %i.ne = add nuw nsw i32 %storemerge689, 1       ; 3 uses
  %i.nf = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.nd, i32 noundef 46) #26 ; 2 uses
  %.not306 = icmp eq ptr %i.nf, null
  br i1 %.not306, label %._crit_edge691, label %.lr.ph690

._crit_edge691:                                   ; preds = %.lr.ph690
  store i32 %i.ne, ptr @hiernblevels, align 4, !tbaa !23
  %i.ng = zext nneg i32 %i.ne to i64
  %i.nh = shl nuw nsw i64 %i.ng, 2
  br label %bb.fv

bb.fv:                                            ; preds = %.preheader466, %._crit_edge691
  %storemerge.lcssa = phi i64 [ %i.nh, %._crit_edge691 ], [ 4, %.preheader466 ]
  %i.ni = call noalias ptr @malloc(i64 noundef %storemerge.lcssa) #29 ; 2 uses
  store ptr %i.ni, ptr @hierdepth, align 8, !tbaa !49
  br label %.lr.ph697

.lr.ph697:                                        ; preds = %bb.fv, %bb.ga
  %i.nj = phi ptr [ %i.ni, %bb.fv ], [ %i.np, %bb.ga ]
  %indvars.iv744 = phi i64 [ 0, %bb.fv ], [ %indvars.iv.next745, %bb.ga ] ; 3 uses
  %.1220695 = phi ptr [ %.1248, %bb.fv ], [ %i.nv, %bb.ga ] ; 3 uses
  %i.nk = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1220695, i32 noundef 46) #26 ; 3 uses
  %.not307 = icmp eq ptr %i.nk, null
  br i1 %.not307, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph697
  store i8 0, ptr %i.nk, align 1, !tbaa !17
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.lr.ph697
  %i.nl = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv744
  %i.nn = call fastcc i32 @hwloc_calc_type_depth(ptr noundef %i.nl, ptr noundef nonnull %.1220695, ptr noundef %i.nm, ptr noundef nonnull @.str.64)
  %i.no = icmp slt i32 %i.nn, 0
  br i1 %i.no, label %.thread400, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.np = load ptr, ptr @hierdepth, align 8, !tbaa !49 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv744
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !23
  %i.ns = icmp slt i32 %i.nr, 0
  br i1 %i.ns, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.nt = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.nu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nt, ptr noundef nonnull @.str.103, ptr noundef nonnull %.1220695) #27 ; 0 uses
  br label %.thread400

bb.ga:                                            ; preds = %bb.fy
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nk, i64 1
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %i.nw = load i32, ptr @hiernblevels, align 4, !tbaa !23
  %i.nx = sext i32 %i.nw to i64
  %i.ny = icmp slt i64 %indvars.iv.next745, %i.nx
  br i1 %i.ny, label %.lr.ph697, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %bb.ga, %bb.fu
  %.not308 = icmp eq ptr %.1246, null
  br i1 %.not308, label %bb.gf, label %bb.gb

bb.gb:                                            ; preds = %.loopexit
  %i.nz = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.oa = call i32 @hwloc_memattr_get_name(ptr noundef %i.nz, i32 noundef 0, ptr noundef nonnull %i.a) #25
  %i.ob = icmp slt i32 %i.oa, 0
  br i1 %i.ob, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gb, %bb.gc
  %.016.i = phi i32 [ %i.oe, %bb.gc ], [ 0, %bb.gb ] ; 2 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.od = call i32 @strcasecmp(ptr noundef %i.oc, ptr noundef nonnull %.1246) #26
  %.not.i369 = icmp eq i32 %i.od, 0
  br i1 %.not.i369, label %hwloc_utils_parse_memattr_name.exit, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i
  %i.oe = add i32 %.016.i, 1                      ; 2 uses
  %i.of = call i32 @hwloc_memattr_get_name(ptr noundef %i.nz, i32 noundef %i.oe, ptr noundef nonnull %i.a) #25
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.gc, %bb.gb
  %i.oh = load i8, ptr %.1246, align 1, !tbaa !17
  %i.oi = add i8 %i.oh, -58
  %or.cond.i = icmp ult i8 %i.oi, -10
  br i1 %or.cond.i, label %hwloc_utils_parse_memattr_name.exit.thread, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge.i
  %i.oj = call i64 @__isoc23_strtol(ptr noundef nonnull %.1246, ptr noundef null, i32 noundef 10) #25, !inline_history !18
  %i.ok = trunc i64 %i.oj to i32                  ; 2 uses
  %i.ol = call i32 @hwloc_memattr_get_name(ptr noundef %i.nz, i32 noundef %i.ok, ptr noundef nonnull %i.a) #25
  %.inv.i = icmp sgt i32 %i.ol, -1
  br i1 %.inv.i, label %hwloc_utils_parse_memattr_name.exit, label %hwloc_utils_parse_memattr_name.exit.thread

hwloc_utils_parse_memattr_name.exit.thread:       ; preds = %._crit_edge.i, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 -1, ptr @best_memattr_id, align 4, !tbaa !23
  br label %bb.ge

hwloc_utils_parse_memattr_name.exit:              ; preds = %.lr.ph.i, %bb.gd
  %.013.i = phi i32 [ %i.ok, %bb.gd ], [ %.016.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 %.013.i, ptr @best_memattr_id, align 4, !tbaa !23
  %i.om = icmp eq i32 %.013.i, -1
  br i1 %i.om, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %hwloc_utils_parse_memattr_name.exit.thread, %hwloc_utils_parse_memattr_name.exit
  %i.on = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.oo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.on, ptr noundef nonnull @.str.104, ptr noundef nonnull %.1246) #27 ; 0 uses
  br label %hwloc_utils_enable_input_format.exit

bb.gf:                                            ; preds = %hwloc_utils_parse_memattr_name.exit, %.loopexit
  br i1 %i.mu, label %.thread810, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.op = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.oq = call fastcc i32 @hwloc_calc_output(ptr noundef %i.op, ptr noundef %.1243, ptr noundef %i.r)
  br label %.thread400

.thread810:                                       ; preds = %bb.cv, %bb.gf
  %.0242.lcssa783791803808813 = phi ptr [ %.1243, %bb.gf ], [ null, %bb.cv ]
  %i.or = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29 ; 4 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.os = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.ot = call ptr @fgets(ptr noundef %i.or, i32 noundef 64, ptr noundef %i.os)
  %.not310701 = icmp eq ptr %i.ot, null
  br i1 %.not310701, label %._crit_edge704, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread810
  %i.ou = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ox = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %bb.gi, %.preheader.lr.ph
  %.1215.ph = phi i64 [ 64, %.preheader.lr.ph ], [ %i.pa, %bb.gi ] ; 4 uses
  %.1213.ph = phi ptr [ %i.or, %.preheader.lr.ph ], [ %i.pf, %bb.gi ]
  %.0.ph = phi ptr [ %i.or, %.preheader.lr.ph ], [ %i.pj, %bb.gi ]
  %i.pa = shl i64 %.1215.ph, 1                    ; 2 uses
  %i.pb = trunc i64 %.1215.ph to i32
  %i.pc = or disjoint i32 %i.pb, 1
  %i.pd = trunc i64 %.1215.ph to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %._crit_edge700
  %.1213 = phi ptr [ %.3, %._crit_edge700 ], [ %.1213.ph, %.preheader.outer ] ; 3 uses
  %.0 = phi ptr [ %.3, %._crit_edge700 ], [ %.0.ph, %.preheader.outer ]
  %i.pe = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0, i32 noundef 10) #26
  %.not311 = icmp eq ptr %i.pe, null
  br i1 %.not311, label %bb.gh, label %.thread409

bb.gh:                                            ; preds = %.preheader
  %i.pf = call ptr @realloc(ptr noundef %.1213, i64 noundef %i.pa) #32 ; 4 uses
  %.not312 = icmp eq ptr %i.pf, null
  br i1 %.not312, label %.thread417, label %bb.gi

.thread417:                                       ; preds = %bb.gh
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ph = call i64 @fwrite(ptr nonnull @.str.106, i64 46, i64 1, ptr %i.pg) #30 ; 0 uses
  call void @free(ptr noundef %.1213) #25
  br label %.thread400

bb.gi:                                            ; preds = %bb.gh
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.1215.ph
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 -1 ; 2 uses
  %i.pk = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.pl = call ptr @fgets(ptr noundef nonnull %i.pj, i32 noundef %i.pc, ptr noundef %i.pk)
  %.not313 = icmp eq ptr %i.pl, null
  br i1 %.not313, label %.thread409, label %.preheader.outer

.thread409:                                       ; preds = %bb.gi, %.preheader
  %.3 = phi ptr [ %.1213, %.preheader ], [ %i.pf, %bb.gi ] ; 5 uses
  call void @hwloc_bitmap_zero(ptr noundef %i.r) #25
  %i.pm = call ptr @strtok(ptr noundef %.3, ptr noundef nonnull @.str.107) #25 ; 2 uses
  %.not314698 = icmp eq ptr %i.pm, null
  br i1 %.not314698, label %._crit_edge700, label %.lr.ph699

.lr.ph699:                                        ; preds = %.thread409, %bb.gk
  %i.pn = phi ptr [ %i.px, %bb.gk ], [ %i.pm, %.thread409 ] ; 2 uses
  %i.po = load ptr, ptr %i.c, align 8, !tbaa !21
  store ptr %i.po, ptr %4, align 8, !tbaa !38
  store i32 0, ptr %i.ou, align 8, !tbaa !40
  store i32 -1, ptr %i.ov, align 4, !tbaa !41
  %.b278 = load i1, ptr @logicali, align 4
  %not..b278 = xor i1 %.b278, true
  %i.pp = zext i1 %not..b278 to i32
  store i32 %i.pp, ptr %i.ow, align 8, !tbaa !42
  %i.pq = load i32, ptr @verbose, align 4, !tbaa !23
  store i32 %i.pq, ptr %i.ox, align 4, !tbaa !43
  store ptr %i.r, ptr %i.oy, align 8, !tbaa !44
  %.b280 = load i1, ptr @nodeseti, align 4
  %i.pr = zext i1 %.b280 to i32
  store i32 %i.pr, ptr %5, align 8, !tbaa !46
  %.b283 = load i1, ptr @nodeseto, align 4
  %i.ps = zext i1 %.b283 to i32
  store i32 %i.ps, ptr %i.oz, align 4, !tbaa !47
  %i.pt = call fastcc i32 @hwloc_calc_process_location_as_set(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.pn)
  %i.pu = icmp slt i32 %i.pt, 0
  br i1 %i.pu, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.lr.ph699
  %i.pv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.pw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pv, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.pn) #27 ; 0 uses
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph699, %bb.gj
  %i.px = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.107) #25 ; 2 uses
  %.not314 = icmp eq ptr %i.px, null
  br i1 %.not314, label %._crit_edge700, label %.lr.ph699

._crit_edge700:                                   ; preds = %bb.gk, %.thread409
  %i.py = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.pz = call fastcc i32 @hwloc_calc_output(ptr noundef %i.py, ptr noundef %.0242.lcssa783791803808813, ptr noundef %i.r) ; 0 uses
  %i.qa = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.qb = call ptr @fgets(ptr noundef %.3, i32 noundef %i.pd, ptr noundef %i.qa)
  %.not310 = icmp eq ptr %i.qb, null
  br i1 %.not310, label %._crit_edge704, label %.preheader

._crit_edge704:                                   ; preds = %._crit_edge700, %.thread810
  %.0212.lcssa = phi ptr [ %i.or, %.thread810 ], [ %.3, %._crit_edge700 ]
  call void @free(ptr noundef %.0212.lcssa) #25
  br label %.thread400

.thread400:                                       ; preds = %bb.fx, %bb.fz, %._crit_edge704, %.thread417, %bb.gg, %bb.ft, %bb.fr
  %.0227 = phi i32 [ 0, %bb.fr ], [ 0, %bb.ft ], [ %i.oq, %bb.gg ], [ 0, %._crit_edge704 ], [ 0, %.thread417 ], [ 0, %bb.fz ], [ 0, %bb.fx ]
  %i.qc = load ptr, ptr %i.c, align 8, !tbaa !21
  call void @hwloc_topology_destroy(ptr noundef %i.qc) #25
  call void @hwloc_bitmap_free(ptr noundef %i.r) #25
  %i.qd = load ptr, ptr @cpukind_cpuset, align 8, !tbaa !28
  call void @hwloc_bitmap_free(ptr noundef %i.qd) #25
  %i.qe = load ptr, ptr @hierdepth, align 8, !tbaa !49
  call void @free(ptr noundef %i.qe) #25
  br label %hwloc_utils_enable_input_format.exit

hwloc_utils_enable_input_format.exit:             ; preds = %bb.ch, %bb.bs, %bb.br, %bb.w, %.thread400, %bb.ge, %bb.fl, %bb.dy, %bb.du, %bb.dp, %bb.dm, %bb.dj
  %.3270 = phi i32 [ 1, %bb.w ], [ 1, %bb.fl ], [ 1, %bb.dy ], [ 1, %bb.du ], [ 1, %bb.dp ], [ 1, %bb.dm ], [ 1, %bb.dj ], [ %.0227, %.thread400 ], [ 1, %bb.ch ], [ 1, %bb.ge ], [ 1, %bb.br ], [ 1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  ret i32 %.3270
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #6

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #7
end_hunk_0
