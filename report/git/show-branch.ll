Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/show-branch?download=true
inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cmd_show_branch:bb.a
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
  br i1 %i.acs, label %middle.block476, label %vector.body473, !llvm.loop !86

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
  br i1 %.not33.i.i.i92.i, label %._crit_edge.i.i.i93.i, label %.lr.ph.i.i.i90.i, !llvm.loop !87

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
  br i1 %i.adx, label %middle.block466, label %vector.body463, !llvm.loop !88

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
  br i1 %.not33.i.i14.i.i, label %._crit_edge.i.i15.i.i, label %.lr.ph.i.i12.i.i, !llvm.loop !89

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
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !114 ; 2 uses
  %.not51.i = icmp eq ptr %i.aep, null
  br i1 %.not51.i, label %._crit_edge23.i, label %.lr.ph22.i.backedge

.lr.ph22.i.backedge:                              ; preds = %.loopexit.i229, %._crit_edge23.i
  %.pre.i.i.i79.pre4162.i.be = phi ptr [ %.pre.i.i.i79.pre4163.i, %.loopexit.i229 ], [ %.pre.i.i.i61.pre71.i, %._crit_edge23.i ]
  %.pre.i.i.i61.i.be = phi ptr [ %.pre.i.i.i6150.i, %.loopexit.i229 ], [ %.pre.i.i.i61.pre71.i, %._crit_edge23.i ]
  %.220.i.be = phi i32 [ %.5.i, %.loopexit.i229 ], [ 0, %._crit_edge23.i ]
  %.24619.i.be = phi ptr [ %i.aep, %.loopexit.i229 ], [ %.0153328.pre376, %._crit_edge23.i ]
  br label %.lr.ph22.i, !llvm.loop !90

._crit_edge23.i:                                  ; preds = %.loopexit.i229
  %.not52.i = icmp eq i32 %.5.i, 0
  br i1 %.not52.i, label %name_commits.exit.loopexit, label %.lr.ph22.i.backedge

name_commits.exit.loopexit:                       ; preds = %._crit_edge23.i
  %.0153328.pre = load ptr, ptr %i.c, align 8, !tbaa !95
  br label %name_commits.exit

name_commits.exit:                                ; preds = %name_commits.exit.loopexit, %.thread255
  %.0153328 = phi ptr [ %.0153328.pre, %name_commits.exit.loopexit ], [ %.0153328.pre376, %.thread255 ] ; 2 uses
  %.not196329 = icmp eq ptr %.0153328, null
  br i1 %.not196329, label %show_merge_base.exit, label %.lr.ph332

.lr.ph332:                                        ; preds = %name_commits.exit
  %.neg = shl i32 -4, %.0164.lcssa433
  %i.aeq = or disjoint i32 %.neg, 3
  %i.aer = load i32, ptr @column_colors_ansi_max, align 4
  %umax = call i32 @llvm.umax.i32(i32 %.0164.lcssa433, i32 1)
  %min.iters.check510 = icmp ult i32 %.0164.lcssa433, 8
  %n.vec512 = and i32 %.0164.lcssa433, -8         ; 4 uses
  %i.aes = icmp eq i32 %n.vec512, 8
  %i.aet = icmp eq i32 %n.vec512, 16
  %cmp.n518 = icmp eq i32 %.0164.lcssa433, %n.vec512
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph332, %.thread261
  %.0153331 = phi ptr [ %.0153328, %.lr.ph332 ], [ %.0153, %.thread261 ] ; 2 uses
  %.0170330 = phi i32 [ 0, %.lr.ph332 ], [ %i.afc, %.thread261 ]
  %i.aeu = load ptr, ptr %.0153331, align 8, !tbaa !43 ; 4 uses
  %i.aev = load i64, ptr %i.aeu, align 8
  %i.aew = lshr i64 %i.aev, 32
  %i.aex = trunc nuw i64 %i.aew to i32            ; 3 uses
  %i.aey = and i32 %i.aex, 536870911              ; 2 uses
  %i.aez = or i32 %i.aey, %i.aeq
  %i.afa = icmp eq i32 %i.aez, -1                 ; 2 uses
  %i.afb = zext i1 %i.afa to i32
  %i.afc = or i32 %.0170330, %i.afb               ; 2 uses
  br i1 %i.tu, label %bb.dp, label %bb.dz

bb.dp:                                            ; preds = %bb.do
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aeu, i64 56
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !41 ; 2 uses
  %.not197 = icmp eq ptr %i.afe, null
  br i1 %.not197, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 8
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !114
  %i.afh = icmp ne ptr %i.afg, null
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.afi = phi i1 [ false, %bb.dp ], [ %i.afh, %bb.dq ] ; 2 uses
  %i.afj = load i32, ptr %i.n, align 4, !tbaa !15
  %i.afk = icmp eq i32 %i.afj, 0
  %or.cond19 = select i1 %i.afk, i1 true, i1 %i.afa
  %i.afl = and i32 %i.aex, 4
  %.not198 = icmp eq i32 %i.afl, 0
  %or.cond208 = select i1 %or.cond19, i1 true, i1 %.not198
  br i1 %or.cond208, label %bb.ds, label %.thread261

bb.ds:                                            ; preds = %bb.dr
  %i.afm = load i32, ptr %i.o, align 4, !tbaa !15
  %i.afn = icmp eq i32 %i.afm, 0
  %or.cond21 = select i1 %i.afn, i1 %i.afi, i1 false
  br i1 %or.cond21, label %.preheader, label %omit_in_dense.exit.thread.preheader

bb.dt:                                            ; preds = %.preheader
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next.i235, %.lcssa285434
  br i1 %exitcond.not.i236, label %bb.du, label %.preheader, !llvm.loop !91

.preheader:                                       ; preds = %bb.ds, %bb.dt
  %indvars.iv.i234 = phi i64 [ %indvars.iv.next.i235, %bb.dt ], [ 0, %bb.ds ] ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i234
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !107
  %i.afq = icmp eq ptr %i.afp, %i.aeu
  br i1 %i.afq, label %omit_in_dense.exit.thread.preheader, label %bb.dt

bb.du:                                            ; preds = %bb.dt
  %i.afr = and i32 %i.aex, 536870908              ; 2 uses
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %bb.du
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.afr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.afs = and <4 x i32> %broadcast.splat, <i32 4, i32 8, i32 16, i32 32>
  %i.aft = and <4 x i32> %broadcast.splat, <i32 64, i32 128, i32 256, i32 512>
  %i.afu = icmp ne <4 x i32> %i.afs, zeroinitializer
  %i.afv = icmp ne <4 x i32> %i.aft, zeroinitializer
  %i.afw = zext <4 x i1> %i.afu to <4 x i32>      ; 2 uses
  %i.afx = zext <4 x i1> %i.afv to <4 x i32>      ; 2 uses
  br i1 %i.aes, label %middle.block517, label %vector.body513.1

vector.body513.1:                                 ; preds = %vector.ph511
  %i.afy = and <4 x i32> %broadcast.splat, <i32 1024, i32 2048, i32 4096, i32 8192>
  %i.afz = and <4 x i32> %broadcast.splat, <i32 16384, i32 32768, i32 65536, i32 131072>
  %i.aga = icmp ne <4 x i32> %i.afy, zeroinitializer
  %i.agb = icmp ne <4 x i32> %i.afz, zeroinitializer
  %i.agc = zext <4 x i1> %i.aga to <4 x i32>
  %i.agd = zext <4 x i1> %i.agb to <4 x i32>
  %i.age = add nuw nsw <4 x i32> %i.afw, %i.agc   ; 2 uses
  %i.agf = add nuw nsw <4 x i32> %i.afx, %i.agd   ; 2 uses
  br i1 %i.aet, label %middle.block517, label %vector.body513.2

vector.body513.2:                                 ; preds = %vector.body513.1
  %i.agg = and <4 x i32> %broadcast.splat, <i32 262144, i32 524288, i32 1048576, i32 2097152>
  %i.agh = and <4 x i32> %broadcast.splat, <i32 4194304, i32 8388608, i32 16777216, i32 33554432>
  %i.agi = icmp ne <4 x i32> %i.agg, zeroinitializer
  %i.agj = icmp ne <4 x i32> %i.agh, zeroinitializer
  %i.agk = zext <4 x i1> %i.agi to <4 x i32>
  %i.agl = zext <4 x i1> %i.agj to <4 x i32>
  %i.agm = add nuw nsw <4 x i32> %i.age, %i.agk
  %i.agn = add nuw nsw <4 x i32> %i.agf, %i.agl
  br label %middle.block517

middle.block517:                                  ; preds = %vector.body513.2, %vector.body513.1, %vector.ph511
  %.lcssa520 = phi <4 x i32> [ %i.afw, %vector.ph511 ], [ %i.age, %vector.body513.1 ], [ %i.agm, %vector.body513.2 ]
  %.lcssa = phi <4 x i32> [ %i.afx, %vector.ph511 ], [ %i.agf, %vector.body513.1 ], [ %i.agn, %vector.body513.2 ]
  %bin.rdx = add nsw <4 x i32> %.lcssa, %.lcssa520
  %i.ago = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n518, label %omit_in_dense.exit, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %bb.du, %middle.block517
  %.020.i.ph = phi i32 [ 0, %bb.du ], [ %i.ago, %middle.block517 ]
  %.11519.i.ph = phi i32 [ 0, %bb.du ], [ %n.vec512, %middle.block517 ]
  br label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %scalar.ph509
  %.020.i = phi i32 [ %spec.select.i238, %scalar.ph509 ], [ %.020.i.ph, %scalar.ph509.preheader ]
  %.11519.i = phi i32 [ %i.ags, %scalar.ph509 ], [ %.11519.i.ph, %scalar.ph509.preheader ] ; 2 uses
  %i.agp = shl nuw i32 4, %.11519.i
  %i.agq = and i32 %i.afr, %i.agp
  %.not.i237 = icmp ne i32 %i.agq, 0
  %i.agr = zext i1 %.not.i237 to i32
  %spec.select.i238 = add nuw nsw i32 %.020.i, %i.agr ; 2 uses
  %i.ags = add nuw nsw i32 %.11519.i, 1           ; 2 uses
  %exitcond22.not.i = icmp eq i32 %i.ags, %.0164.lcssa433
  br i1 %exitcond22.not.i, label %omit_in_dense.exit, label %scalar.ph509, !llvm.loop !92

omit_in_dense.exit:                               ; preds = %scalar.ph509, %middle.block517
  %spec.select.i238.lcssa = phi i32 [ %i.ago, %middle.block517 ], [ %spec.select.i238, %scalar.ph509 ]
  %.not269 = icmp eq i32 %spec.select.i238.lcssa, 1
  br i1 %.not269, label %.thread261, label %omit_in_dense.exit.thread.preheader

omit_in_dense.exit.thread.preheader:              ; preds = %.preheader, %omit_in_dense.exit, %bb.ds
  br label %omit_in_dense.exit.thread

omit_in_dense.exit.thread:                        ; preds = %omit_in_dense.exit.thread.preheader, %bb.dx
  %.5326 = phi i32 [ %i.ahh, %bb.dx ], [ 0, %omit_in_dense.exit.thread.preheader ] ; 4 uses
  %i.agt = shl nuw i32 4, %.5326
  %i.agu = and i32 %i.agt, %i.aey
  %.not200 = icmp eq i32 %i.agu, 0
  br i1 %.not200, label %.critedge, label %bb.dv

bb.dv:                                            ; preds = %omit_in_dense.exit.thread
  %i.agv = icmp eq i32 %.5326, %.2169257
  %. = select i1 %i.agv, i32 42, i32 43
  %.0152 = select i1 %i.afi, i32 45, i32 %.
  %i.agw = load i32, ptr @showbranch_use_color, align 4, !tbaa !15
  %i.agx = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.agw) #16
  br i1 %i.agx, label %bb.dw, label %get_color_code.exit241

bb.dw:                                            ; preds = %bb.dv
  %i.agy = srem i32 %.5326, %i.aer
  %i.agz = zext nneg i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr @column_colors_ansi, i64 %i.agz
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !17
  br label %get_color_code.exit241

get_color_code.exit241:                           ; preds = %bb.dv, %bb.dw
  %.0.i240 = phi ptr [ %i.ahb, %bb.dw ], [ @.str.58, %bb.dv ]
  %i.ahc = load i32, ptr @showbranch_use_color, align 4, !tbaa !15
  %i.ahd = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.ahc) #16
  %.str.74..str.58.i242 = select i1 %i.ahd, ptr @.str.74, ptr @.str.58
  %i.ahe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %.0.i240, i32 noundef %.0152, ptr noundef nonnull %.str.74..str.58.i242) ; 0 uses
  br label %bb.dx

.critedge:                                        ; preds = %omit_in_dense.exit.thread
  %i.ahf = load ptr, ptr @stdout, align 8, !tbaa !35
  %i.ahg = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.ahf), !inline_history !0 ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %get_color_code.exit241, %.critedge
  %i.ahh = add nuw nsw i32 %.5326, 1              ; 2 uses
  %exitcond369.not = icmp eq i32 %i.ahh, %umax
  br i1 %exitcond369.not, label %bb.dy, label %omit_in_dense.exit.thread, !llvm.loop !93

bb.dy:                                            ; preds = %bb.dx
  %i.ahi = load ptr, ptr @stdout, align 8, !tbaa !35
  %i.ahj = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.ahi), !inline_history !0 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.do
  %i.ahk = load i32, ptr %i.k, align 4, !tbaa !15
  call fastcc void @show_one_commit(ptr noundef nonnull %i.aeu, i32 noundef %i.ahk)
  %.not201 = icmp eq i32 %i.afc, 0
  br i1 %.not201, label %.thread261, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahl = load i32, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  %i.ahm = add nsw i32 %i.ahl, -1
  store i32 %i.ahm, ptr %i.e, align 4, !tbaa !15
  %i.ahn = icmp slt i32 %i.ahl, 1
  br i1 %i.ahn, label %show_merge_base.exit, label %.thread261

.thread261:                                       ; preds = %bb.dz, %bb.ea, %omit_in_dense.exit, %bb.dr
  %i.aho = getelementptr inbounds nuw i8, ptr %.0153331, i64 8
  %.0153 = load ptr, ptr %i.aho, align 8, !tbaa !95 ; 2 uses
  %.not196 = icmp eq ptr %.0153, null
  br i1 %.not196, label %show_merge_base.exit, label %bb.do, !llvm.loop !94

show_merge_base.exit:                             ; preds = %bb.br, %bb.bv, %.thread261, %bb.ea, %bb.cg, %._crit_edge321.thread, %name_commits.exit, %._crit_edge321, %bb.bt, %bb.bn, %._crit_edge325, %bb.aq
  %.0165 = phi i32 [ 0, %.thread261 ], [ 0, %name_commits.exit ], [ 0, %bb.aq ], [ 0, %._crit_edge325 ], [ 0, %._crit_edge321 ], [ 1, %bb.bn ], [ 0, %bb.bt ], [ 0, %bb.cg ], [ 0, %bb.bv ], [ 0, %._crit_edge321.thread ], [ 0, %bb.ea ], [ %.1.i, %bb.br ]
  %i.ahp = load ptr, ptr %i.b, align 16, !tbaa !17
  call void @free(ptr noundef %i.ahp) #16
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahr) #16
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aht = load ptr, ptr %i.ahs, align 16, !tbaa !17
  call void @free(ptr noundef %i.aht) #16
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahv) #16
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ahx = load ptr, ptr %i.ahw, align 16, !tbaa !17
  call void @free(ptr noundef %i.ahx) #16
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !17
  call void @free(ptr noundef %i.ahz) #16
  %i.aia = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aib = load ptr, ptr %i.aia, align 16, !tbaa !17
  call void @free(ptr noundef %i.aib) #16
  %i.aic = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !17
  call void @free(ptr noundef %i.aid) #16
  %i.aie = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aif = load ptr, ptr %i.aie, align 16, !tbaa !17
  call void @free(ptr noundef %i.aif) #16
  %i.aig = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !17
  call void @free(ptr noundef %i.aih) #16
  %i.aii = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aij = load ptr, ptr %i.aii, align 16, !tbaa !17
  call void @free(ptr noundef %i.aij) #16
  %i.aik = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !17
  call void @free(ptr noundef %i.ail) #16
  %i.aim = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ain = load ptr, ptr %i.aim, align 16, !tbaa !17
  call void @free(ptr noundef %i.ain) #16
  %i.aio = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !17
  call void @free(ptr noundef %i.aip) #16
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.air = load ptr, ptr %i.aiq, align 16, !tbaa !17
  call void @free(ptr noundef %i.air) #16
  %i.ais = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !17
  call void @free(ptr noundef %i.ait) #16
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aiv = load ptr, ptr %i.aiu, align 16, !tbaa !17
  call void @free(ptr noundef %i.aiv) #16
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !17
  call void @free(ptr noundef %i.aix) #16
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.aiz = load ptr, ptr %i.aiy, align 16, !tbaa !17
  call void @free(ptr noundef %i.aiz) #16
  %i.aja = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !17
  call void @free(ptr noundef %i.ajb) #16
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ajd = load ptr, ptr %i.ajc, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajd) #16
  %i.aje = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !17
  call void @free(ptr noundef %i.ajf) #16
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ajh = load ptr, ptr %i.ajg, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajh) #16
  %i.aji = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !17
  call void @free(ptr noundef %i.ajj) #16
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ajl = load ptr, ptr %i.ajk, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajl) #16
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !17
  call void @free(ptr noundef %i.ajn) #16
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ajp = load ptr, ptr %i.ajo, align 16, !tbaa !17
  call void @free(ptr noundef %i.ajp) #16
  %i.ajq = load ptr, ptr %i.c, align 8, !tbaa !95
  call void @commit_list_free(ptr noundef %i.ajq) #16
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
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not7, ptr @.str.58, ptr %1 ; 2 uses
  %i.d = call i64 @__isoc23_strtoul(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  store i32 %i.e, ptr @reflog, align 4, !tbaa !15
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32
  switch i8 %i.g, label %bb.e [
    i8 44, label %bb.d
    i8 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.59, ptr noundef nonnull %spec.store.select) #16 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ]
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !17
  %i.j = icmp slt i32 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr @reflog, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
begin_hunk_1_@name_first_parent_chain:bb.a
  %cmp.n91 = icmp eq i32 %i.cn, %n.vec86
  br i1 %cmp.n91, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader121

.lr.ph.i.i.i.i.preheader121:                      ; preds = %vector.scevcheck81, %.lr.ph.i.i.i.i.preheader, %middle.block90
  %.0302.i.i.i.i.ph = phi i32 [ %i.ck, %vector.scevcheck81 ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.cr, %middle.block90 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader121, %.lr.ph.i.i.i.i
  %.0302.i.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i.i.i ], [ %.0302.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader121 ] ; 2 uses
  %i.cx = zext i32 %.0302.i.i.i.i to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cx
  store ptr null, ptr %i.cy, align 8, !tbaa !46
  %i.cz = add i32 %.0302.i.i.i.i, 1               ; 2 uses
  %.not33.i.i.i.i = icmp ugt i32 %i.cz, %i.cd
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !132

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block90, %bb.k
  store i32 %i.cg, ptr @name_slab.2, align 8, !tbaa !25
  %.pre1.pre.i.b = load i1, ptr @name_slab.0, align 8
  %.pre1.pre.i = select i1 %.pre1.pre.i.b, i32 65532, i32 0
  %.pre56.pre.b = load i1, ptr @name_slab.1, align 4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.pre56.in = phi i1 [ %.pre56.pre.b, %._crit_edge.i.i.i.i ], [ %.in117, %bb.j ] ; 2 uses
  %.pre.i.i.i.i53 = phi ptr [ %i.cj, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.j ] ; 2 uses
  %.pre1.i = phi i32 [ %.pre1.pre.i, %._crit_edge.i.i.i.i ], [ 65532, %bb.j ] ; 2 uses
  %i.da = phi i32 [ %i.cg, %._crit_edge.i.i.i.i ], [ %i.cf, %bb.j ]
  %i.db = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i53, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46 ; 2 uses
  %.not34.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not34.i.i.i.i, label %bb.m, label %commit_to_name.exit.i

bb.m:                                             ; preds = %bb.l
  %i.de = zext nneg i32 %.pre1.i to i64
  %i.df = select i1 %.pre56.in, i64 8, i64 0
  %i.dg = tail call ptr @xcalloc(i64 noundef %i.de, i64 noundef %i.df) #16 ; 2 uses
  %i.dh = load ptr, ptr @name_slab.3, align 8, !tbaa !26 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.db
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !46
  %.pre.i.b = load i1, ptr @name_slab.0, align 8
  %.pre.i = select i1 %.pre.i.b, i32 65532, i32 0
  %.pre2.i = load i32, ptr @name_slab.2, align 8, !tbaa !25
  %.pre55.b = load i1, ptr @name_slab.1, align 4
  br label %commit_to_name.exit.i

commit_to_name.exit.i:                            ; preds = %bb.m, %bb.l
  %.in118 = phi i1 [ %.pre56.in, %bb.l ], [ %.pre55.b, %bb.m ] ; 2 uses
  %.pre.i.i.i.i52 = phi ptr [ %.pre.i.i.i.i53, %bb.l ], [ %i.dh, %bb.m ] ; 2 uses
  %i.dj = phi i32 [ %i.da, %bb.l ], [ %.pre2.i, %bb.m ]
  %i.dk = phi i32 [ %.pre1.i, %bb.l ], [ %.pre.i, %bb.m ] ; 2 uses
  %i.dl = phi ptr [ %i.dd, %bb.l ], [ %i.dg, %bb.m ]
  %i.dm = zext nneg i32 %i.ce to i64
  %i.dn = select i1 %.in118, i64 %i.dm, i64 0
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !50 ; 3 uses
  %.val.i = load i32, ptr %i.aq, align 8, !tbaa !44 ; 2 uses
  %i.dq = udiv i32 %.val.i, %i.dk                 ; 7 uses
  %i.dr = urem i32 %.val.i, %i.dk
  %.not.i.i.i12.i = icmp ugt i32 %i.dj, %i.dq
  br i1 %.not.i.i.i12.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %commit_to_name.exit.i
  %i.ds = add i32 %i.dq, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = tail call ptr @xrealloc(ptr noundef nonnull %.pre.i.i.i.i52, i64 noundef %i.du) #16 ; 4 uses
  store ptr %i.dv, ptr @name_slab.3, align 8, !tbaa !26
  %i.dw = load i32, ptr @name_slab.2, align 8, !tbaa !25 ; 9 uses
  %.not331.i.i.i14.i = icmp ugt i32 %i.dw, %i.dq
  br i1 %.not331.i.i.i14.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i15.i.preheader

.lr.ph.i.i.i15.i.preheader:                       ; preds = %bb.n
  %i.dx = add i32 %i.dw, 1
  %i.dy = add i32 %i.dq, 1
  %i.dz = tail call i32 @llvm.umax.i32(i32 %i.dx, i32 %i.dy)
  %i.ea = sub i32 %i.dz, %i.dw                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.ea, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.i15.i.preheader120, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i15.i.preheader
  %i.eb = add i32 %i.dw, 1
  %i.ec = add i32 %i.dq, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.eb, i32 %i.ec)
  %i.ed = add i32 %umax, -1
  %i.ee = icmp ult i32 %i.ed, %i.dw
  br i1 %i.ee, label %.lr.ph.i.i.i15.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.ea, -4                      ; 3 uses
  %i.ef = add i32 %i.dw, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = add i32 %i.dw, %index
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ei, align 8, !tbaa !46
  store <2 x ptr> splat (ptr null), ptr %i.ej, align 8, !tbaa !46
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.ea, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i15.i.preheader120

.lr.ph.i.i.i15.i.preheader120:                    ; preds = %vector.scevcheck, %.lr.ph.i.i.i15.i.preheader, %middle.block
  %.0302.i.i.i16.i.ph = phi i32 [ %i.dw, %vector.scevcheck ], [ %i.dw, %.lr.ph.i.i.i15.i.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i.i.i15.i

.lr.ph.i.i.i15.i:                                 ; preds = %.lr.ph.i.i.i15.i.preheader120, %.lr.ph.i.i.i15.i
  %.0302.i.i.i16.i = phi i32 [ %i.en, %.lr.ph.i.i.i15.i ], [ %.0302.i.i.i16.i.ph, %.lr.ph.i.i.i15.i.preheader120 ] ; 2 uses
  %i.el = zext i32 %.0302.i.i.i16.i to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.el
  store ptr null, ptr %i.em, align 8, !tbaa !46
  %i.en = add i32 %.0302.i.i.i16.i, 1             ; 2 uses
  %.not33.i.i.i17.i = icmp ugt i32 %i.en, %i.dq
  br i1 %.not33.i.i.i17.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i15.i, !llvm.loop !134

._crit_edge.i.i.i18.i:                            ; preds = %.lr.ph.i.i.i15.i, %middle.block, %bb.n
  store i32 %i.ds, ptr @name_slab.2, align 8, !tbaa !25
  %.pre5.pre.i.b = load i1, ptr @name_slab.1, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i18.i, %commit_to_name.exit.i
  %.pre.i.i.i.i51 = phi ptr [ %i.dv, %._crit_edge.i.i.i18.i ], [ %.pre.i.i.i.i52, %commit_to_name.exit.i ] ; 2 uses
  %.pre5.i.in = phi i1 [ %.pre5.pre.i.b, %._crit_edge.i.i.i18.i ], [ %.in118, %commit_to_name.exit.i ] ; 2 uses
  %i.eo = zext i32 %i.dq to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i51, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !46 ; 2 uses
  %.not34.i.i.i19.i = icmp eq ptr %i.eq, null
  br i1 %.not34.i.i.i19.i, label %bb.p, label %commit_to_name.exit20.i

bb.p:                                             ; preds = %bb.o
  %.b = load i1, ptr @name_slab.0, align 8
  %i.er = select i1 %.b, i64 65532, i64 0
  %i.es = select i1 %.pre5.i.in, i64 8, i64 0
  %i.et = tail call ptr @xcalloc(i64 noundef %i.er, i64 noundef %i.es) #16 ; 2 uses
  %i.eu = load ptr, ptr @name_slab.3, align 8, !tbaa !26 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eo
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !46
  %.pre4.i.b = load i1, ptr @name_slab.1, align 4
  br label %commit_to_name.exit20.i

commit_to_name.exit20.i:                          ; preds = %bb.p, %bb.o
  %.pre.i.i.i.i50 = phi ptr [ %.pre.i.i.i.i51, %bb.o ], [ %i.eu, %bb.p ] ; 2 uses
  %.in119 = phi i1 [ %.pre5.i.in, %bb.o ], [ %.pre4.i.b, %bb.p ]
  %i.ew = phi ptr [ %i.eq, %bb.o ], [ %i.et, %bb.p ]
  %i.ex = zext i32 %i.dr to i64
  %i.ey = select i1 %.in119, i64 %i.ex, i64 0
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %commit_to_name.exit20.i
  %.not10.i = icmp eq ptr %i.fa, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.pre6.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !52
  %.pre9.i = add nsw i32 %.pre6.i, 1              ; 2 uses
  br i1 %.not10.i, label %._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !52
  %i.fd = icmp slt i32 %.pre9.i, %i.fc
  br i1 %i.fd, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.r, %bb.q
  %i.fe = load ptr, ptr %i.dp, align 8, !tbaa !53
  tail call fastcc void @name_commit(ptr noundef nonnull readonly %i.ap, ptr noundef %i.fe, i32 noundef %.pre9.i)
  %.pre.i.i.i.pre = load ptr, ptr @name_slab.3, align 8, !tbaa !26
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %bb.r, %commit_to_name.exit20.i
  %.pre.i.i.i.i49 = phi ptr [ %.pre.i.i.i.pre, %._crit_edge.i ], [ %.pre.i.i.i.i50, %bb.r ], [ %.pre.i.i.i.i50, %commit_to_name.exit20.i ]
  %i.ff = add nuw nsw i32 %.01032, 1
  br label %.lr.ph

.thread:                                          ; preds = %bb.e, %commit_to_name.exit, %commit_to_name.exit26, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %.01032, %commit_to_name.exit26 ], [ %.01032, %commit_to_name.exit ], [ %.01032, %bb.e ]
  ret i32 %.010.lcssa
}

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS11commit_list", !13, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!"option", !10, i64 0, !10, i64 4, !16, i64 8, !13, i64 16, !18, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !13, i64 56, !18, i64 64, !13, i64 72, !18, i64 80, !13, i64 88}
!20 = !{!19, !13, i64 16}
!21 = !{!"any p2 pointer", !13, i64 0}
!22 = !{!"any p3 pointer", !21, i64 0}
!23 = !{!"p3 _ZTS11commit_name", !22, i64 0}
!24 = !{!"commit_name_slab", !10, i64 0, !10, i64 4, !10, i64 8, !23, i64 16}
!25 = !{!24, !10, i64 8}
!26 = !{!24, !23, i64 16}
!27 = !{!"p1 _ZTS10repository", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p2 omnipotent char", !21, i64 0}
!30 = !{!"strvec", !29, i64 0, !18, i64 8, !18, i64 16}
!31 = !{!30, !18, i64 8}
!32 = !{!9, !9, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 _ZTS6commit", !13, i64 0}
!37 = !{!"object_id", !9, i64 0, !10, i64 32}
!38 = !{!"object", !10, i64 0, !10, i64 0, !10, i64 4, !37, i64 8}
!39 = !{!"p1 _ZTS4tree", !13, i64 0}
!40 = !{!"commit", !38, i64 0, !18, i64 48, !14, i64 56, !39, i64 64, !10, i64 72}
!41 = !{!40, !14, i64 56}
!42 = !{!"commit_list", !36, i64 0, !14, i64 8}
!43 = !{!42, !36, i64 0}
!44 = !{!40, !10, i64 72}
!45 = !{!"p2 _ZTS11commit_name", !21, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"p1 _ZTS11commit_name", !13, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"commit_name", !16, i64 0, !10, i64 8}
!52 = !{!51, !10, i64 8}
!53 = !{!51, !16, i64 0}
!54 = !{!"strbuf", !18, i64 0, !18, i64 8, !16, i64 16}
!55 = !{!54, !16, i64 16}
!56 = !{!"p1 _ZTS9object_id", !13, i64 0}
!57 = !{!"reference", !16, i64 0, !16, i64 8, !56, i64 16, !56, i64 24, !10, i64 32}
!58 = !{!57, !16, i64 0}
!59 = !{!57, !56, i64 16}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !115}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33, !47, !48}
!75 = distinct !{!75, !33, !48, !47}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33, !47, !48}
!80 = distinct !{!80, !33, !48, !47}
!81 = distinct !{!81, !33, !47, !48}
!82 = distinct !{!82, !33, !48, !47}
!83 = distinct !{!83, !33, !47, !48}
!84 = distinct !{!84, !33, !48, !47}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33, !47, !48}
!87 = distinct !{!87, !33, !48, !47}
!88 = distinct !{!88, !33, !47, !48}
!89 = distinct !{!89, !33, !48, !47}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33, !48, !47}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = !{!14, !14, i64 0}
!96 = !{!19, !10, i64 0}
!97 = !{!19, !10, i64 4}
!98 = !{!19, !16, i64 8}
!99 = !{!19, !18, i64 24}
!100 = !{!19, !16, i64 32}
!101 = !{!19, !16, i64 40}
!102 = !{!19, !10, i64 48}
!103 = !{!19, !13, i64 56}
!104 = !{!19, !18, i64 64}
!105 = !{!30, !29, i64 0}
!106 = !{!18, !18, i64 0}
!107 = !{!36, !36, i64 0}
!108 = !{!"p1 _ZTS16prio_queue_entry", !13, i64 0}
!109 = !{!"prio_queue", !13, i64 0, !18, i64 8, !13, i64 16, !18, i64 24, !18, i64 32, !108, i64 40}
!110 = !{!109, !18, i64 32}
!111 = !{!109, !108, i64 40}
!112 = !{!"prio_queue_entry", !18, i64 0, !13, i64 8}
!113 = !{!112, !13, i64 8}
!114 = !{!42, !14, i64 8}
!115 = !{!"llvm.loop.unswitch.partial.disable"}
!116 = !{!54, !18, i64 0}
!117 = !{!54, !18, i64 8}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33, !47, !48}
!120 = distinct !{!120, !33, !47}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33, !47, !48}
!124 = distinct !{!124, !33, !47}
!125 = distinct !{!125, !33, !47, !48}
!126 = distinct !{!126, !33, !47}
!127 = distinct !{!127, !33, !47, !48}
!128 = distinct !{!128, !33, !47}
!129 = distinct !{!129, !33, !47, !48}
!130 = distinct !{!130, !33, !47}
!131 = distinct !{!131, !33, !47, !48}
!132 = distinct !{!132, !33, !47}
!133 = distinct !{!133, !33, !47, !48}
!134 = distinct !{!134, !33, !47}
end_hunk_1
