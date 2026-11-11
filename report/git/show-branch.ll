Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/show-branch?download=true
inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cmd_show_branch:bb.a

.lr.ph.i.i.i90.i.preheader:                       ; preds = %bb.dg
  %i.acl = add nuw nsw i32 %i.acd, 1
  %i.acm = sub nuw i32 %i.acl, %i.ack             ; 3 uses
  %min.iters.check470 = icmp samesign ult i32 %i.acm, 4
  br i1 %min.iters.check470, label %.lr.ph.i.i.i90.i.preheader523, label %vector.ph471

vector.ph471:                                     ; preds = %.lr.ph.i.i.i90.i.preheader
  %n.vec472 = and i32 %i.acm, 262140              ; 3 uses
  %i.acn = add i32 %i.ack, %n.vec472
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph471
  %index474 = phi i32 [ 0, %vector.ph471 ], [ %index.next475, %vector.body473 ] ; 2 uses
  %i.aco = add i32 %i.ack, %index474
  %i.acp = zext i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.acp ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.acq, align 8, !tbaa !46
  store <2 x ptr> splat (ptr null), ptr %i.acr, align 8, !tbaa !46
  %index.next475 = add nuw i32 %index474, 4       ; 2 uses
  %i.acs = icmp eq i32 %index.next475, %n.vec472
  br i1 %i.acs, label %middle.block476, label %vector.body473, !llvm.loop !84

middle.block476:                                  ; preds = %vector.body473
  %cmp.n477 = icmp eq i32 %i.acm, %n.vec472
  br i1 %cmp.n477, label %._crit_edge.i.i.i93.i, label %.lr.ph.i.i.i90.i.preheader523

.lr.ph.i.i.i90.i.preheader523:                    ; preds = %.lr.ph.i.i.i90.i.preheader, %middle.block476
  %.0302.i.i.i91.i.ph = phi i32 [ %i.ack, %.lr.ph.i.i.i90.i.preheader ], [ %i.acn, %middle.block476 ]
  br label %.lr.ph.i.i.i90.i

.lr.ph.i.i.i90.i:                                 ; preds = %.lr.ph.i.i.i90.i.preheader523, %.lr.ph.i.i.i90.i
  %.0302.i.i.i91.i = phi i32 [ %i.acv, %.lr.ph.i.i.i90.i ], [ %.0302.i.i.i91.i.ph, %.lr.ph.i.i.i90.i.preheader523 ] ; 2 uses
  %i.act = zext i32 %.0302.i.i.i91.i to i64
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.act
  store ptr null, ptr %i.acu, align 8, !tbaa !46
  %i.acv = add i32 %.0302.i.i.i91.i, 1            ; 2 uses
  %.not33.i.i.i92.i = icmp ugt i32 %i.acv, %i.acd
  br i1 %.not33.i.i.i92.i, label %._crit_edge.i.i.i93.i, label %.lr.ph.i.i.i90.i, !llvm.loop !85

._crit_edge.i.i.i93.i:                            ; preds = %.lr.ph.i.i.i90.i, %middle.block476, %bb.dg
  store i32 %i.acg, ptr @name_slab.2, align 8, !tbaa !25
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge.i.i.i93.i, %bb.df
  %i.acw = phi ptr [ %i.acj, %._crit_edge.i.i.i93.i ], [ %.pre.i.i.i88.i, %bb.df ]
  %i.acx = zext nneg i32 %i.acd to i64            ; 2 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %i.acx
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !46 ; 2 uses
  %.not34.i.i.i94.i = icmp eq ptr %i.acz, null
  br i1 %.not34.i.i.i94.i, label %bb.di, label %commit_name_slab_at.exit.i.i

bb.di:                                            ; preds = %bb.dh
  %i.ada = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.adb = load ptr, ptr @name_slab.3, align 8, !tbaa !26
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.acx
  store ptr %i.ada, ptr %i.adc, align 8, !tbaa !46
  br label %commit_name_slab_at.exit.i.i

commit_name_slab_at.exit.i.i:                     ; preds = %bb.di, %bb.dh
  %i.add = phi ptr [ %i.acz, %bb.dh ], [ %i.ada, %bb.di ]
  %i.ade = zext nneg i32 %i.ace to i64
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %i.ade
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 2 uses
  %.not.i95.i = icmp eq ptr %i.adg, null
  br i1 %.not.i95.i, label %bb.dj, label %name_commit.exit.i

bb.dj:                                            ; preds = %commit_name_slab_at.exit.i.i
  %i.adh = call ptr @xmalloc(i64 noundef 16) #16  ; 2 uses
  %.val.i.i = load i32, ptr %i.aam, align 8, !tbaa !44 ; 2 uses
  %i.adi = udiv i32 %.val.i.i, 65532              ; 6 uses
  %i.adj = urem i32 %.val.i.i, 65532
  %i.adk = load i32, ptr @name_slab.2, align 8, !tbaa !25
  %.not.i.i9.i.i = icmp ugt i32 %i.adk, %i.adi
  %.pre.i.i10.i.i = load ptr, ptr @name_slab.3, align 8, !tbaa !26 ; 2 uses
  br i1 %.not.i.i9.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.adl = add nuw nsw i32 %i.adi, 1              ; 2 uses
  %i.adm = shl nuw nsw i32 %i.adl, 3
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = call ptr @xrealloc(ptr noundef %.pre.i.i10.i.i, i64 noundef %i.adn) #16 ; 4 uses
  store ptr %i.ado, ptr @name_slab.3, align 8, !tbaa !26
  %i.adp = load i32, ptr @name_slab.2, align 8, !tbaa !25 ; 5 uses
  %.not331.i.i11.i.i = icmp ugt i32 %i.adp, %i.adi
  br i1 %.not331.i.i11.i.i, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i.preheader

.lr.ph.i.i12.i.i.preheader:                       ; preds = %bb.dk
  %i.adq = add nuw nsw i32 %i.adi, 1
  %i.adr = sub nuw i32 %i.adq, %i.adp             ; 3 uses
  %min.iters.check460 = icmp samesign ult i32 %i.adr, 4
  br i1 %min.iters.check460, label %.lr.ph.i.i12.i.i.preheader522, label %vector.ph461

vector.ph461:                                     ; preds = %.lr.ph.i.i12.i.i.preheader
  %n.vec462 = and i32 %i.adr, 262140              ; 3 uses
  %i.ads = add i32 %i.adp, %n.vec462
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph461
  %index464 = phi i32 [ 0, %vector.ph461 ], [ %index.next465, %vector.body463 ] ; 2 uses
  %i.adt = add i32 %i.adp, %index464
  %i.adu = zext i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %i.adu ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.adv, align 8, !tbaa !46
  store <2 x ptr> splat (ptr null), ptr %i.adw, align 8, !tbaa !46
  %index.next465 = add nuw i32 %index464, 4       ; 2 uses
  %i.adx = icmp eq i32 %index.next465, %n.vec462
  br i1 %i.adx, label %middle.block466, label %vector.body463, !llvm.loop !86

middle.block466:                                  ; preds = %vector.body463
  %cmp.n467 = icmp eq i32 %i.adr, %n.vec462
  br i1 %cmp.n467, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i.preheader522

.lr.ph.i.i12.i.i.preheader522:                    ; preds = %.lr.ph.i.i12.i.i.preheader, %middle.block466
  %.0302.i.i13.i.i.ph = phi i32 [ %i.adp, %.lr.ph.i.i12.i.i.preheader ], [ %i.ads, %middle.block466 ]
  br label %.lr.ph.i.i12.i.i

.lr.ph.i.i12.i.i:                                 ; preds = %.lr.ph.i.i12.i.i.preheader522, %.lr.ph.i.i12.i.i
  %.0302.i.i13.i.i = phi i32 [ %i.aea, %.lr.ph.i.i12.i.i ], [ %.0302.i.i13.i.i.ph, %.lr.ph.i.i12.i.i.preheader522 ] ; 2 uses
  %i.ady = zext i32 %.0302.i.i13.i.i to i64
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %i.ady
  store ptr null, ptr %i.adz, align 8, !tbaa !46
  %i.aea = add i32 %.0302.i.i13.i.i, 1            ; 2 uses
  %.not33.i.i14.i.i = icmp ugt i32 %i.aea, %i.adi
  br i1 %.not33.i.i14.i.i, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i, !llvm.loop !87

._crit_edge.i.i15.i.i:                            ; preds = %.lr.ph.i.i12.i.i, %middle.block466, %bb.dk
  store i32 %i.adl, ptr @name_slab.2, align 8, !tbaa !25
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge.i.i15.i.i, %bb.dj
  %i.aeb = phi ptr [ %i.ado, %._crit_edge.i.i15.i.i ], [ %.pre.i.i10.i.i, %bb.dj ]
  %i.aec = zext nneg i32 %i.adi to i64            ; 2 uses
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %i.aec
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !46 ; 2 uses
  %.not34.i.i16.i.i = icmp eq ptr %i.aee, null
  br i1 %.not34.i.i16.i.i, label %bb.dm, label %commit_name_slab_at.exit17.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.aef = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #16 ; 2 uses
  %i.aeg = load ptr, ptr @name_slab.3, align 8, !tbaa !26
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %i.aec
  store ptr %i.aef, ptr %i.aeh, align 8, !tbaa !46
  br label %commit_name_slab_at.exit17.i.i

commit_name_slab_at.exit17.i.i:                   ; preds = %bb.dm, %bb.dl
  %i.aei = phi ptr [ %i.aee, %bb.dl ], [ %i.aef, %bb.dm ]
  %i.aej = zext nneg i32 %i.adj to i64
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %i.aej
  store ptr %i.adh, ptr %i.aek, align 8, !tbaa !50
  br label %name_commit.exit.i

name_commit.exit.i:                               ; preds = %commit_name_slab_at.exit17.i.i, %commit_name_slab_at.exit.i.i
  %.0.i.i230 = phi ptr [ %i.adg, %commit_name_slab_at.exit.i.i ], [ %i.adh, %commit_name_slab_at.exit17.i.i ] ; 2 uses
  store ptr %i.acc, ptr %.0.i.i230, align 8, !tbaa !53
  %i.ael = getelementptr inbounds nuw i8, ptr %.0.i.i230, i64 8
  store i32 0, ptr %i.ael, align 8, !tbaa !52
  %i.aem = add nsw i32 %.313.i, 1
  %i.aen = call fastcc i32 @name_first_parent_chain(ptr noundef nonnull %i.aai) ; 0 uses
  %.pre.i.i.i79.pre.i = load ptr, ptr @name_slab.3, align 8, !tbaa !26 ; 3 uses
  br label %bb.dn

bb.dn:                                            ; preds = %name_commit.exit.i, %commit_to_name.exit86.i
  %.pre.i.i.i61.pre65.i = phi ptr [ %.pre.i.i.i79.pre.i, %name_commit.exit.i ], [ %.pre.i.i.i61.pre66.i, %commit_to_name.exit86.i ] ; 2 uses
  %.pre.i.i.i79.pre4155.i = phi ptr [ %.pre.i.i.i79.pre.i, %name_commit.exit.i ], [ %.pre.i.i.i79.pre4156.i, %commit_to_name.exit86.i ] ; 2 uses
  %.pre.i.i.i7942.i = phi ptr [ %.pre.i.i.i79.pre.i, %name_commit.exit.i ], [ %.pre.i.i.i7943.i, %commit_to_name.exit86.i ] ; 2 uses
  %.4.i = phi i32 [ %i.aem, %name_commit.exit.i ], [ %.313.i, %commit_to_name.exit86.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not54.i = icmp eq ptr %i.aak, null
  br i1 %.not54.i, label %.loopexit.i229, label %bb.cu

.loopexit.i229:                                   ; preds = %bb.dn, %commit_to_name.exit77.i, %commit_to_name.exit68.i
  %.pre.i.i.i61.pre71.i = phi ptr [ %.pre.i.i.i61.pre72.i, %commit_to_name.exit68.i ], [ %.pre.i.i.i61.pre69.i, %commit_to_name.exit77.i ], [ %.pre.i.i.i61.pre65.i, %bb.dn ] ; 3 uses
  %.pre.i.i.i79.pre4163.i = phi ptr [ %.pre.i.i.i79.pre4160.i, %commit_to_name.exit68.i ], [ %.pre.i.i.i79.pre41.i, %commit_to_name.exit77.i ], [ %.pre.i.i.i79.pre4155.i, %bb.dn ]
  %.pre.i.i.i6150.i = phi ptr [ %.pre.i.i.i6151.i, %commit_to_name.exit68.i ], [ %.pre.i.i.i6148.i, %commit_to_name.exit77.i ], [ %.pre.i.i.i7942.i, %bb.dn ]
  %.5.i = phi i32 [ %.220.i, %commit_to_name.exit68.i ], [ %.220.i, %commit_to_name.exit77.i ], [ %.4.i, %bb.dn ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.24619.i, i64 8
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !111 ; 2 uses
  %.not51.i = icmp eq ptr %i.aep, null
  br i1 %.not51.i, label %._crit_edge23.i, label %.lr.ph22.i.backedge

.lr.ph22.i.backedge:                              ; preds = %.loopexit.i229, %._crit_edge23.i
  %.pre.i.i.i79.pre4162.i.be = phi ptr [ %.pre.i.i.i79.pre4163.i, %.loopexit.i229 ], [ %.pre.i.i.i61.pre71.i, %._crit_edge23.i ]
  %.pre.i.i.i61.i.be = phi ptr [ %.pre.i.i.i6150.i, %.loopexit.i229 ], [ %.pre.i.i.i61.pre71.i, %._crit_edge23.i ]
  %.220.i.be = phi i32 [ %.5.i, %.loopexit.i229 ], [ 0, %._crit_edge23.i ]
  %.24619.i.be = phi ptr [ %i.aep, %.loopexit.i229 ], [ %.0153328.pre376, %._crit_edge23.i ]
  br label %.lr.ph22.i

._crit_edge23.i:                                  ; preds = %.loopexit.i229
  %.not52.i = icmp eq i32 %.5.i, 0
  br i1 %.not52.i, label %name_commits.exit.loopexit, label %.lr.ph22.i.backedge

name_commits.exit.loopexit:                       ; preds = %._crit_edge23.i
  %.0153328.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %name_commits.exit

name_commits.exit:                                ; preds = %name_commits.exit.loopexit, %.thread255
  %.0153328 = phi ptr [ %.0153328.pre, %name_commits.exit.loopexit ], [ %.0153328.pre376, %.thread255 ] ; 2 uses
  %.not196329 = icmp eq ptr %.0153328, null
  br i1 %.not196329, label %show_merge_base.exit, label %.lr.ph332

.lr.ph332:                                        ; preds = %name_commits.exit
  %.neg = shl i32 -4, %.0164.lcssa433
  %10 = or disjoint i32 %.neg, 3
  %i.aeq = load i32, ptr @column_colors_ansi_max, align 4
  %umax = call i32 @llvm.umax.i32(i32 %.0164.lcssa433, i32 1)
  %min.iters.check510 = icmp ult i32 %.0164.lcssa433, 8
  %n.vec512 = and i32 %.0164.lcssa433, -8         ; 4 uses
  %i.aer = icmp eq i32 %n.vec512, 8
  %i.aes = icmp eq i32 %n.vec512, 16
  %cmp.n518 = icmp eq i32 %.0164.lcssa433, %n.vec512
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph332, %.thread261
  %.0153331 = phi ptr [ %.0153328, %.lr.ph332 ], [ %.0153, %.thread261 ] ; 2 uses
  %.0170330 = phi i32 [ 0, %.lr.ph332 ], [ %i.afb, %.thread261 ]
  %i.aet = load ptr, ptr %.0153331, align 8, !tbaa !43 ; 4 uses
  %i.aeu = load i64, ptr %i.aet, align 8
  %i.aev = lshr i64 %i.aeu, 32
  %i.aew = trunc nuw i64 %i.aev to i32            ; 3 uses
  %i.aex = and i32 %i.aew, 536870911              ; 2 uses
  %i.aey = or i32 %i.aex, %10
  %i.aez = icmp eq i32 %i.aey, -1                 ; 2 uses
  %i.afa = zext i1 %i.aez to i32
  %i.afb = or i32 %.0170330, %i.afa               ; 2 uses
  br i1 %i.tu, label %bb.dp, label %bb.dz

bb.dp:                                            ; preds = %bb.do
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aet, i64 56
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !41 ; 2 uses
  %.not197 = icmp eq ptr %i.afd, null
  br i1 %.not197, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !111
  %i.afg = icmp ne ptr %i.aff, null
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.afh = phi i1 [ false, %bb.dp ], [ %i.afg, %bb.dq ] ; 2 uses
  %i.afi = load i32, ptr %i.n, align 4, !tbaa !15
  %i.afj = icmp eq i32 %i.afi, 0
  %or.cond19 = select i1 %i.afj, i1 true, i1 %i.aez
  %i.afk = and i32 %i.aew, 4
  %.not198 = icmp eq i32 %i.afk, 0
  %or.cond208 = select i1 %or.cond19, i1 true, i1 %.not198
  br i1 %or.cond208, label %bb.ds, label %.thread261

bb.ds:                                            ; preds = %bb.dr
  %i.afl = load i32, ptr %i.o, align 4, !tbaa !15
  %i.afm = icmp eq i32 %i.afl, 0
  %or.cond21 = select i1 %i.afm, i1 %i.afh, i1 false
  br i1 %or.cond21, label %.preheader, label %omit_in_dense.exit.thread.preheader

bb.dt:                                            ; preds = %.preheader
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next.i235, %.lcssa285434
  br i1 %exitcond.not.i236, label %bb.du, label %.preheader, !llvm.loop !88

.preheader:                                       ; preds = %bb.ds, %bb.dt
  %indvars.iv.i234 = phi i64 [ %indvars.iv.next.i235, %bb.dt ], [ 0, %bb.ds ] ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i234
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq ptr %12, %i.aet
  br i1 %13, label %omit_in_dense.exit.thread.preheader, label %bb.dt

bb.du:                                            ; preds = %bb.dt
  %14 = and i32 %i.aew, 536870908                 ; 2 uses
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %bb.du
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.afn = and <4 x i32> %broadcast.splat, <i32 4, i32 8, i32 16, i32 32>
  %i.afo = and <4 x i32> %broadcast.splat, <i32 64, i32 128, i32 256, i32 512>
  %i.afp = icmp ne <4 x i32> %i.afn, zeroinitializer
  %i.afq = icmp ne <4 x i32> %i.afo, zeroinitializer
  %i.afr = zext <4 x i1> %i.afp to <4 x i32>      ; 2 uses
  %i.afs = zext <4 x i1> %i.afq to <4 x i32>      ; 2 uses
  br i1 %i.aer, label %middle.block517, label %vector.body513.1

vector.body513.1:                                 ; preds = %vector.ph511
  %i.aft = and <4 x i32> %broadcast.splat, <i32 1024, i32 2048, i32 4096, i32 8192>
  %i.afu = and <4 x i32> %broadcast.splat, <i32 16384, i32 32768, i32 65536, i32 131072>
  %i.afv = icmp ne <4 x i32> %i.aft, zeroinitializer
  %i.afw = icmp ne <4 x i32> %i.afu, zeroinitializer
  %i.afx = zext <4 x i1> %i.afv to <4 x i32>
  %i.afy = zext <4 x i1> %i.afw to <4 x i32>
  %i.afz = add nuw nsw <4 x i32> %i.afr, %i.afx   ; 2 uses
  %i.aga = add nuw nsw <4 x i32> %i.afs, %i.afy   ; 2 uses
  br i1 %i.aes, label %middle.block517, label %vector.body513.2

vector.body513.2:                                 ; preds = %vector.body513.1
  %i.agb = and <4 x i32> %broadcast.splat, <i32 262144, i32 524288, i32 1048576, i32 2097152>
  %i.agc = and <4 x i32> %broadcast.splat, <i32 4194304, i32 8388608, i32 16777216, i32 33554432>
  %i.agd = icmp ne <4 x i32> %i.agb, zeroinitializer
  %i.age = icmp ne <4 x i32> %i.agc, zeroinitializer
  %i.agf = zext <4 x i1> %i.agd to <4 x i32>
  %i.agg = zext <4 x i1> %i.age to <4 x i32>
  %i.agh = add nuw nsw <4 x i32> %i.afz, %i.agf
  %i.agi = add nuw nsw <4 x i32> %i.aga, %i.agg
  br label %middle.block517

middle.block517:                                  ; preds = %vector.body513.2, %vector.body513.1, %vector.ph511
  %.lcssa520 = phi <4 x i32> [ %i.afr, %vector.ph511 ], [ %i.afz, %vector.body513.1 ], [ %i.agh, %vector.body513.2 ]
  %.lcssa = phi <4 x i32> [ %i.afs, %vector.ph511 ], [ %i.aga, %vector.body513.1 ], [ %i.agi, %vector.body513.2 ]
  %bin.rdx = add nsw <4 x i32> %.lcssa, %.lcssa520
  %i.agj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n518, label %omit_in_dense.exit, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %bb.du, %middle.block517
  %.020.i.ph = phi i32 [ 0, %bb.du ], [ %i.agj, %middle.block517 ]
  %.11519.i.ph = phi i32 [ 0, %bb.du ], [ %n.vec512, %middle.block517 ]
  br label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %scalar.ph509
  %.020.i = phi i32 [ %spec.select.i238, %scalar.ph509 ], [ %.020.i.ph, %scalar.ph509.preheader ]
  %.11519.i = phi i32 [ %i.agn, %scalar.ph509 ], [ %.11519.i.ph, %scalar.ph509.preheader ] ; 2 uses
  %i.agk = shl nuw i32 4, %.11519.i
  %i.agl = and i32 %14, %i.agk
  %.not.i237 = icmp ne i32 %i.agl, 0
  %i.agm = zext i1 %.not.i237 to i32
  %spec.select.i238 = add nuw nsw i32 %.020.i, %i.agm ; 2 uses
  %i.agn = add nuw nsw i32 %.11519.i, 1           ; 2 uses
  %exitcond22.not.i = icmp eq i32 %i.agn, %.0164.lcssa433
  br i1 %exitcond22.not.i, label %omit_in_dense.exit, label %scalar.ph509, !llvm.loop !89

omit_in_dense.exit:                               ; preds = %scalar.ph509, %middle.block517
  %spec.select.i238.lcssa = phi i32 [ %i.agj, %middle.block517 ], [ %spec.select.i238, %scalar.ph509 ]
  %.not269 = icmp eq i32 %spec.select.i238.lcssa, 1
  br i1 %.not269, label %.thread261, label %omit_in_dense.exit.thread.preheader

omit_in_dense.exit.thread.preheader:              ; preds = %.preheader, %omit_in_dense.exit, %bb.ds
  br label %omit_in_dense.exit.thread

omit_in_dense.exit.thread:                        ; preds = %omit_in_dense.exit.thread.preheader, %bb.dx
  %.5326 = phi i32 [ %i.ahc, %bb.dx ], [ 0, %omit_in_dense.exit.thread.preheader ] ; 4 uses
  %i.ago = shl nuw i32 4, %.5326
  %i.agp = and i32 %i.ago, %i.aex
  %.not200 = icmp eq i32 %i.agp, 0
  br i1 %.not200, label %.critedge, label %bb.dv

bb.dv:                                            ; preds = %omit_in_dense.exit.thread
  %i.agq = icmp eq i32 %.5326, %.2169257
  %. = select i1 %i.agq, i32 42, i32 43
  %.0152 = select i1 %i.afh, i32 45, i32 %.
  %i.agr = load i32, ptr @showbranch_use_color, align 4, !tbaa !15
  %i.ags = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.agr) #16
  br i1 %i.ags, label %bb.dw, label %get_color_code.exit241

bb.dw:                                            ; preds = %bb.dv
  %i.agt = srem i32 %.5326, %i.aeq
  %i.agu = zext nneg i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr @column_colors_ansi, i64 %i.agu
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !17
  br label %get_color_code.exit241

get_color_code.exit241:                           ; preds = %bb.dv, %bb.dw
  %.0.i240 = phi ptr [ %i.agw, %bb.dw ], [ @.str.58, %bb.dv ]
  %i.agx = load i32, ptr @showbranch_use_color, align 4, !tbaa !15
  %i.agy = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.agx) #16
  %.str.74..str.58.i242 = select i1 %i.agy, ptr @.str.74, ptr @.str.58
  %i.agz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %.0.i240, i32 noundef %.0152, ptr noundef nonnull %.str.74..str.58.i242) ; 0 uses
  br label %bb.dx

.critedge:                                        ; preds = %omit_in_dense.exit.thread
  %i.aha = load ptr, ptr @stdout, align 8, !tbaa !35
  %i.ahb = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.aha), !inline_history !0 ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %get_color_code.exit241, %.critedge
  %i.ahc = add nuw nsw i32 %.5326, 1              ; 2 uses
  %exitcond369.not = icmp eq i32 %i.ahc, %umax
  br i1 %exitcond369.not, label %bb.dy, label %omit_in_dense.exit.thread, !llvm.loop !90

bb.dy:                                            ; preds = %bb.dx
  %i.ahd = load ptr, ptr @stdout, align 8, !tbaa !35
  %i.ahe = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.ahd), !inline_history !0 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.do
  %i.ahf = load i32, ptr %i.k, align 4, !tbaa !15
  call fastcc void @show_one_commit(ptr noundef nonnull %i.aet, i32 noundef %i.ahf)
  %.not201 = icmp eq i32 %i.afb, 0
  br i1 %.not201, label %.thread261, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahg = load i32, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  %i.ahh = add nsw i32 %i.ahg, -1
  store i32 %i.ahh, ptr %i.e, align 4, !tbaa !15
  %i.ahi = icmp slt i32 %i.ahg, 1
  br i1 %i.ahi, label %show_merge_base.exit, label %.thread261

.thread261:                                       ; preds = %bb.dz, %bb.ea, %omit_in_dense.exit, %bb.dr
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0153331, i64 8
  %.0153 = load ptr, ptr %i.ahj, align 8, !tbaa !92 ; 2 uses
  %.not196 = icmp eq ptr %.0153, null
  br i1 %.not196, label %show_merge_base.exit, label %bb.do, !llvm.loop !91

show_merge_base.exit:                             ; preds = %bb.br, %bb.bv, %.thread261, %bb.ea, %bb.cg, %._crit_edge321.thread, %name_commits.exit, %._crit_edge321, %bb.bt, %bb.bn, %._crit_edge325, %bb.aq
  %.0165 = phi i32 [ 0, %.thread261 ], [ 0, %name_commits.exit ], [ 0, %bb.aq ], [ 0, %._crit_edge325 ], [ 0, %._crit_edge321 ], [ 1, %bb.bn ], [ 0, %bb.bt ], [ 0, %bb.cg ], [ 0, %bb.bv ], [ 0, %._crit_edge321.thread ], [ 0, %bb.ea ], [ %.1.i, %bb.br ]
  %i.ahk = load ptr, ptr %i.b, align 16, !tbaa !17
  call void @free(ptr noundef %i.ahk) #16
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahm) #16
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aho = load ptr, ptr %i.ahn, align 16, !tbaa !17
  call void @free(ptr noundef %i.aho) #16
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahq) #16
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ahs = load ptr, ptr %i.ahr, align 16, !tbaa !17
  call void @free(ptr noundef %i.ahs) #16
  %i.aht = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahu) #16
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ahw = load ptr, ptr %i.ahv, align 16, !tbaa !17
  call void @free(ptr noundef %i.ahw) #16
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahy) #16
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aia = load ptr, ptr %i.ahz, align 16, !tbaa !17
  call void @free(ptr noundef %i.aia) #16
  %i.aib = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !17
  call void @free(ptr noundef %i.aic) #16
  %i.aid = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aie = load ptr, ptr %i.aid, align 16, !tbaa !17
  call void @free(ptr noundef %i.aie) #16
  %i.aif = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !17
  call void @free(ptr noundef %i.aig) #16
  %i.aih = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aii = load ptr, ptr %i.aih, align 16, !tbaa !17
  call void @free(ptr noundef %i.aii) #16
  %i.aij = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !17
  call void @free(ptr noundef %i.aik) #16
  %i.ail = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aim = load ptr, ptr %i.ail, align 16, !tbaa !17
  call void @free(ptr noundef %i.aim) #16
  %i.ain = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !17
  call void @free(ptr noundef %i.aio) #16
  %i.aip = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aiq = load ptr, ptr %i.aip, align 16, !tbaa !17
  call void @free(ptr noundef %i.aiq) #16
  %i.air = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !17
  call void @free(ptr noundef %i.ais) #16
  %i.ait = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.aiu = load ptr, ptr %i.ait, align 16, !tbaa !17
  call void @free(ptr noundef %i.aiu) #16
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !17
  call void @free(ptr noundef %i.aiw) #16
  %i.aix = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.aiy = load ptr, ptr %i.aix, align 16, !tbaa !17
  call void @free(ptr noundef %i.aiy) #16
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !17
  call void @free(ptr noundef %i.aja) #16
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ajc = load ptr, ptr %i.ajb, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajc) #16
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !17
  call void @free(ptr noundef %i.aje) #16
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ajg = load ptr, ptr %i.ajf, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajg) #16
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !17
  call void @free(ptr noundef %i.aji) #16
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ajk = load ptr, ptr %i.ajj, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajk) #16
  %i.ajl = load ptr, ptr %i.c, align 8, !tbaa !92
  call void @commit_list_free(ptr noundef %i.ajl) #16
  call void @clear_prio_queue(ptr noundef nonnull %5) #16
  call void @free(ptr noundef %.0166) #16
  call void @free(ptr noundef %i.lr) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0165
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @compare_commits_by_commit_date(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @parse_opt_color_flag_cb(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @parse_reflog_param(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.56, i32 noundef 627, ptr noundef nonnull @.str.57) #17
end_hunk_0
