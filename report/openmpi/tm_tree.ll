Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_tree?download=true
inline.NumInlined: 48
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 38
begin_hunk_0_@build_level_topology:bb.a
  %i.ajb = trunc nuw nsw i64 %.0125288.i.epil to i32
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %.0125288.i.epil
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !57
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 40
  store i32 %i.ajb, ptr %i.aje, align 8, !tbaa !58
  %i.ajf = add nuw nsw i64 %.0125288.i.epil, 1
  %epil.iter458.next = add i64 %epil.iter458, 1   ; 2 uses
  %epil.iter458.cmp.not = icmp eq i64 %epil.iter458.next, %xtraiter457
  br i1 %epil.iter458.cmp.not, label %._crit_edge.i116, label %.lr.ph.i114.epil, !llvm.loop !128

._crit_edge.i116:                                 ; preds = %._crit_edge.i116.loopexit.unr-lcssa, %.lr.ph.i114.epil, %bb.db
  %i.ajg = load double, ptr %i.g, align 8, !tbaa !39
  %i.ajh = call fastcc i32 @select_independent_groups(ptr noundef %i.yt, i32 noundef %i.yv, i32 noundef %2, i32 noundef %i.gm, ptr noundef %i.g, ptr noundef %i.yr, i32 noundef 10, double noundef 1.000000e-01)
  %i.aji = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ajj = icmp sgt i32 %i.aji, 4
  br i1 %i.ajj, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %._crit_edge.i116
  %.not145.i = icmp eq i32 %i.ajh, 0
  br i1 %.not145.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %puts146.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ajk = load double, ptr %i.g, align 8, !tbaa !39
  %i.ajl = fcmp ogt double %i.ajg, %i.ajk
  br i1 %i.ajl, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %puts147.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %._crit_edge.i116, %bb.cu
  %i.ajm = load i32, ptr @exhaustive_search_flag, align 4, !tbaa !15
  %.not148.i = icmp eq i32 %i.ajm, 0
  br i1 %.not148.i, label %bb.dz, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ajn = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ajo = icmp sgt i32 %i.ajn, 4
  br i1 %i.ajo, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ajp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.yk) ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.yv, ptr %i.b, align 4, !tbaa !15
  store i32 %2, ptr %i.c, align 4, !tbaa !15
  store i32 %i.gm, ptr %i.d, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  tail call void @tm_get_time() #23
  %i.ajq = call i32 @pthread_mutex_init(ptr noundef nonnull %7, ptr noundef null) #23 ; 0 uses
  %i.ajr = call i32 @tm_get_nb_threads() #23      ; 0 uses
  %i.ajs = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #28 ; 8 uses
  %i.ajt = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 4 uses
  %i.aju = call fastcc ptr @generate_work_units(ptr noundef %i.ajs, i32 noundef 0, i32 noundef 0, ptr noundef %i.ajt, i32 noundef 3, i32 noundef %i.yv)
  %i.ajv = call fastcc ptr @generate_work_units(ptr noundef %i.aju, i32 noundef 0, i32 noundef 1, ptr noundef %i.ajt, i32 noundef 2, i32 noundef %i.yv)
  %i.ajw = call fastcc ptr @generate_work_units(ptr noundef %i.ajv, i32 noundef 0, i32 noundef 2, ptr noundef %i.ajt, i32 noundef 2, i32 noundef %i.yv)
  %i.ajx = icmp sgt i32 %i.yv, 3
  br i1 %i.ajx, label %.lr.ph.i.i235.i, label %.preheader.i.i225.i

.preheader.i.i225.i:                              ; preds = %.lr.ph.i.i235.i, %bb.dj
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !67
  %.not28.i.i.i = icmp eq ptr %i.ajz, null
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 20 ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !68 ; 2 uses
  br i1 %.not28.i.i.i, label %create_tab_work.exit.i.i, label %.lr.ph30.i.i.i

.lr.ph.i.i235.i:                                  ; preds = %bb.dj, %.lr.ph.i.i235.i
  %.027.i.i.i = phi ptr [ %i.aka, %.lr.ph.i.i235.i ], [ %i.ajw, %bb.dj ] ; 4 uses
  %.02426.i.i.i = phi i32 [ %i.akf, %.lr.ph.i.i235.i ], [ 3, %bb.dj ] ; 2 uses
  %i.aka = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #28, !inline_history !164 ; 2 uses
  %i.akb = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #27, !inline_history !164 ; 2 uses
  store i32 %.02426.i.i.i, ptr %i.akb, align 4
  %i.akc = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 8
  store ptr %i.akb, ptr %i.akc, align 8, !tbaa !67
  store i32 1, ptr %.027.i.i.i, align 8, !tbaa !69
  %i.akd = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 16
  store i32 0, ptr %i.akd, align 8, !tbaa !70
  %i.ake = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 24
  store ptr %i.aka, ptr %i.ake, align 8, !tbaa !71
  %i.akf = add nuw nsw i32 %.02426.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i236.i = icmp eq i32 %i.akf, %i.yv
  br i1 %exitcond.not.i.i236.i, label %.preheader.i.i225.i, label %.lr.ph.i.i235.i, !llvm.loop !129

.lr.ph30.i.i.i:                                   ; preds = %.preheader.i.i225.i, %.lr.ph30.i.i.i
  %i.akg = phi i32 [ %i.akh, %.lr.ph30.i.i.i ], [ %.pre.i.i.i, %.preheader.i.i225.i ]
  %.129.i.i.i = phi ptr [ %i.akj, %.lr.ph30.i.i.i ], [ %i.ajs, %.preheader.i.i225.i ]
  %i.akh = add nsw i32 %i.akg, 1                  ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.129.i.i.i, i64 24
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !71 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.akl, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph30.i.i.i, !llvm.loop !130

._crit_edge.i.i.i:                                ; preds = %.lr.ph30.i.i.i
  store i32 %i.akh, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !68
  br label %create_tab_work.exit.i.i

create_tab_work.exit.i.i:                         ; preds = %._crit_edge.i.i.i, %.preheader.i.i225.i
  %i.akm = phi i32 [ %i.akh, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %.preheader.i.i225.i ]
  %i.akn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %i.akm) ; 0 uses
  call void @free(ptr noundef %i.ajt) #23
  %i.ako = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.akp = icmp sgt i32 %i.ako, 5
  %or.cond.i.i = and i1 %i.yw, %i.akp
  br i1 %or.cond.i.i, label %.preheader79.lr.ph.i.i, label %.loopexit.i.i

.preheader79.lr.ph.i.i:                           ; preds = %create_tab_work.exit.i.i
  %wide.trip.count104.i.i = and i64 %i.yk, 2147483647 ; 2 uses
  br i1 %i.ks, label %.preheader79.us.preheader.i.i, label %.preheader79.i.i

.preheader79.us.preheader.i.i:                    ; preds = %.preheader79.lr.ph.i.i
  %wide.trip.count99.i.i = zext nneg i32 %2 to i64
  br label %.preheader79.us.i.i

.preheader79.us.i.i:                              ; preds = %._crit_edge.us.i234.i, %.preheader79.us.preheader.i.i
  %indvars.iv101.i.i = phi i64 [ 0, %.preheader79.us.preheader.i.i ], [ %indvars.iv.next102.i.i, %._crit_edge.us.i234.i ] ; 2 uses
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %indvars.iv101.i.i ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.preheader79.us.i.i
  %indvars.iv96.i.i = phi i64 [ 0, %.preheader79.us.i.i ], [ %indvars.iv.next97.i.i, %bb.dk ] ; 2 uses
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !57
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !62
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv96.i.i
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !29
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 48
  %i.akx = load i32, ptr %i.akw, align 8, !tbaa !33
  %i.aky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %i.akx) ; 0 uses
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond100.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, %wide.trip.count99.i.i
  br i1 %exitcond100.not.i.i, label %._crit_edge.us.i234.i, label %bb.dk, !llvm.loop !131

._crit_edge.us.i234.i:                            ; preds = %bb.dk
  %i.akz = load ptr, ptr %i.akq, align 8, !tbaa !57
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 16
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !56
  %i.alc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, double noundef %i.alb) ; 0 uses
  %indvars.iv.next102.i.i = add nuw nsw i64 %indvars.iv101.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next102.i.i, %wide.trip.count104.i.i
  br i1 %exitcond105.not.i.i, label %.loopexit.i.i, label %.preheader79.us.i.i, !llvm.loop !132

.preheader79.i.i:                                 ; preds = %.preheader79.lr.ph.i.i, %.preheader79.i.i
  %indvars.iv.i231.i = phi i64 [ %indvars.iv.next.i232.i, %.preheader79.i.i ], [ 0, %.preheader79.lr.ph.i.i ] ; 2 uses
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %indvars.iv.i231.i
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !57
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !56
  %i.alh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, double noundef %i.alg) ; 0 uses
  %indvars.iv.next.i232.i = add nuw nsw i64 %indvars.iv.i231.i, 1 ; 2 uses
  %exitcond.not.i233.i = icmp eq i64 %indvars.iv.next.i232.i, %wide.trip.count104.i.i
  br i1 %exitcond.not.i233.i, label %.loopexit.i.i, label %.preheader79.i.i, !llvm.loop !132

.loopexit.i.i:                                    ; preds = %.preheader79.i.i, %._crit_edge.us.i234.i, %create_tab_work.exit.i.i
  %i.ali = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.alj = call i32 @fflush(ptr noundef %i.ali)   ; 0 uses
  %sext.i = shl i64 %i.yk, 32                     ; 2 uses
  %i.alk = ashr exact i64 %sext.i, 32             ; 2 uses
  %i.all = ashr exact i64 %sext.i, 29             ; 2 uses
  %i.alm = call noalias ptr @malloc(i64 noundef %i.all) #27 ; 10 uses
  br i1 %i.yw, label %.lr.ph88.i.i, label %._crit_edge89.i.i

.lr.ph88.i.i:                                     ; preds = %.loopexit.i.i
  %i.aln = and i64 %i.yk, 2147483647
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dp, %.lr.ph88.i.i
  %indvar = phi i32 [ %indvar.next, %bb.dp ], [ 0, %.lr.ph88.i.i ] ; 3 uses
  %indvars.iv113.i.i = phi i64 [ %indvars.iv.next114.i.i, %bb.dp ], [ %i.alk, %.lr.ph88.i.i ] ; 3 uses
  %indvars.iv109.i.i = phi i32 [ %indvars.iv.next110.i.i, %bb.dp ], [ 1, %.lr.ph88.i.i ] ; 2 uses
  %i.alo = add i32 %indvar, 2
  %i.alp = zext i32 %i.alo to i64
  %i.alq = add nsw i64 %i.alp, -2                 ; 2 uses
  %indvars.iv.next114.i.i = add nsw i64 %indvars.iv113.i.i, -1 ; 5 uses
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %indvars.iv.next114.i.i ; 3 uses
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !57 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 16
  %i.alu = load double, ptr %i.alt, align 8, !tbaa !56
  %i.alv = trunc nuw nsw i64 %indvars.iv113.i.i to i32
  %i.alw = sub i32 %i.yv, %i.alv                  ; 2 uses
  %i.alx = sext i32 %i.alw to i64
  %i.aly = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %i.alx
  store double %i.alu, ptr %i.aly, align 8, !tbaa !39
  %i.alz = sub nsw i64 %i.alk, %indvars.iv.next114.i.i ; 7 uses
  %i.ama = icmp eq i64 %indvars.iv.next114.i.i, %i.aln
  br i1 %i.ama, label %build_bound_array.exit.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.amb = shl i64 %i.alz, 3
  %i.amc = add i64 %i.amb, 16
  %i.amd = call noalias ptr @malloc(i64 noundef %i.amc) #27 ; 8 uses
  call void @qsort(ptr noundef nonnull %i.alm, i64 noundef %i.alz, i64 noundef 8, ptr noundef nonnull @dbl_cmp_inc) #23
  %i.ame = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.amf = icmp sgt i32 %i.ame, 5
  br i1 %i.amf, label %.lr.ph.i70.i.preheader.i, label %bb.dn

.lr.ph.i70.i.preheader.i:                         ; preds = %bb.dm
  %i.amg = trunc nuw nsw i64 %i.alz to i32
  %i.amh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %i.amg) ; 0 uses
  br label %.lr.ph.i70.i.i

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.preheader.i
  %indvars.iv.i.i229.i = phi i64 [ %indvars.iv.next.i.i230.i, %.lr.ph.i70.i.i ], [ 0, %.lr.ph.i70.i.preheader.i ] ; 2 uses
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.alm, i64 %indvars.iv.i.i229.i
  %i.amj = load double, ptr %i.ami, align 8, !tbaa !39
  %i.amk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, double noundef %i.amj) ; 0 uses
  %indvars.iv.next.i.i230.i = add nuw nsw i64 %indvars.iv.i.i229.i, 1 ; 2 uses
  %exitcond.not.i71.i.i = icmp eq i64 %indvars.iv.next.i.i230.i, %i.alz
  br i1 %exitcond.not.i71.i.i, label %._crit_edge.i69.i.loopexit.i, label %.lr.ph.i70.i.i, !llvm.loop !133

._crit_edge.i69.i.loopexit.i:                     ; preds = %.lr.ph.i70.i.i
  %putchar.i.i.i = call i32 @putchar(i32 10)      ; 0 uses
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge.i69.i.loopexit.i, %bb.dm
  %i.aml = load double, ptr %i.alm, align 8, !tbaa !39 ; 3 uses
  %i.amm = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aml, i64 1
  store <2 x double> %i.amm, ptr %i.amd, align 8, !tbaa !39
  %.not29.i.i.i = icmp slt i64 %i.alz, 2
  br i1 %.not29.i.i.i, label %._crit_edge33.i.i.i, label %.lr.ph32.preheader.i.i.i

.lr.ph32.preheader.i.i.i:                         ; preds = %bb.dn
  %xtraiter463 = and i64 %i.alq, 3                ; 3 uses
  %i.amn = add i32 %indvar, -1
  %i.amo = icmp ult i32 %i.amn, 3
  br i1 %i.amo, label %.lr.ph32.i.i.i.epil.preheader, label %.lr.ph32.preheader.i.i.i.new

.lr.ph32.preheader.i.i.i.new:                     ; preds = %.lr.ph32.preheader.i.i.i
  %unroll_iter467 = and i64 %i.alq, -4
  br label %.lr.ph32.i.i.i

.lr.ph32.i.i.i:                                   ; preds = %.lr.ph32.i.i.i, %.lr.ph32.preheader.i.i.i.new
  %i.amp = phi double [ %i.aml, %.lr.ph32.preheader.i.i.i.new ], [ %i.ani, %.lr.ph32.i.i.i ]
  %indvars.iv35.i.i.i = phi i64 [ 2, %.lr.ph32.preheader.i.i.i.new ], [ %indvars.iv.next36.i.i.i.3, %.lr.ph32.i.i.i ] ; 6 uses
  %niter468 = phi i64 [ 0, %.lr.ph32.preheader.i.i.i.new ], [ %niter468.next.3, %.lr.ph32.i.i.i ]
  %i.amq = getelementptr [8 x i8], ptr %i.alm, i64 %indvars.iv35.i.i.i
  %i.amr = getelementptr i8, ptr %i.amq, i64 -8
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !39
  %i.amt = fadd double %i.amp, %i.ams             ; 2 uses
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %indvars.iv35.i.i.i
  store double %i.amt, ptr %i.amu, align 8, !tbaa !39
  %indvars.iv.next36.i.i.i = or disjoint i64 %indvars.iv35.i.i.i, 1 ; 2 uses
  %i.amv = getelementptr [8 x i8], ptr %i.alm, i64 %indvars.iv.next36.i.i.i
  %i.amw = getelementptr i8, ptr %i.amv, i64 -8
  %i.amx = load double, ptr %i.amw, align 8, !tbaa !39
  %i.amy = fadd double %i.amt, %i.amx             ; 2 uses
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %indvars.iv.next36.i.i.i
  store double %i.amy, ptr %i.amz, align 8, !tbaa !39
  %indvars.iv.next36.i.i.i.1 = add nuw nsw i64 %indvars.iv35.i.i.i, 2 ; 2 uses
  %i.ana = getelementptr [8 x i8], ptr %i.alm, i64 %indvars.iv.next36.i.i.i.1
  %i.anb = getelementptr i8, ptr %i.ana, i64 -8
  %i.anc = load double, ptr %i.anb, align 8, !tbaa !39
  %i.and = fadd double %i.amy, %i.anc             ; 2 uses
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %indvars.iv.next36.i.i.i.1
  store double %i.and, ptr %i.ane, align 8, !tbaa !39
  %indvars.iv.next36.i.i.i.2 = add nuw nsw i64 %indvars.iv35.i.i.i, 3 ; 2 uses
  %i.anf = getelementptr [8 x i8], ptr %i.alm, i64 %indvars.iv.next36.i.i.i.2
  %i.ang = getelementptr i8, ptr %i.anf, i64 -8
  %i.anh = load double, ptr %i.ang, align 8, !tbaa !39
  %i.ani = fadd double %i.and, %i.anh             ; 3 uses
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %indvars.iv.next36.i.i.i.2
  store double %i.ani, ptr %i.anj, align 8, !tbaa !39
  %indvars.iv.next36.i.i.i.3 = add nuw nsw i64 %indvars.iv35.i.i.i, 4 ; 2 uses
  %niter468.next.3 = add nuw i64 %niter468, 4     ; 2 uses
  %niter468.ncmp.3 = icmp eq i64 %niter468.next.3, %unroll_iter467
  br i1 %niter468.ncmp.3, label %._crit_edge33.i.i.i.loopexit.unr-lcssa, label %.lr.ph32.i.i.i, !llvm.loop !134

._crit_edge33.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph32.i.i.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter463, 0
  br i1 %lcmp.mod465.not, label %._crit_edge33.i.i.i, label %.lr.ph32.i.i.i.epil.preheader

.lr.ph32.i.i.i.epil.preheader:                    ; preds = %._crit_edge33.i.i.i.loopexit.unr-lcssa, %.lr.ph32.preheader.i.i.i
  %.epil.init.a = phi double [ %i.aml, %.lr.ph32.preheader.i.i.i ], [ %i.ani, %._crit_edge33.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv35.i.i.i.epil.init = phi i64 [ 2, %.lr.ph32.preheader.i.i.i ], [ %indvars.iv.next36.i.i.i.3, %._crit_edge33.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod466 = icmp ne i64 %xtraiter463, 0
  call void @llvm.assume(i1 %lcmp.mod466)
  br label %.lr.ph32.i.i.i.epil

.lr.ph32.i.i.i.epil:                              ; preds = %.lr.ph32.i.i.i.epil, %.lr.ph32.i.i.i.epil.preheader
  %i.ank = phi double [ %.epil.init.a, %.lr.ph32.i.i.i.epil.preheader ], [ %i.ano, %.lr.ph32.i.i.i.epil ]
  %indvars.iv35.i.i.i.epil = phi i64 [ %indvars.iv35.i.i.i.epil.init, %.lr.ph32.i.i.i.epil.preheader ], [ %indvars.iv.next36.i.i.i.epil, %.lr.ph32.i.i.i.epil ] ; 3 uses
  %epil.iter464 = phi i64 [ 0, %.lr.ph32.i.i.i.epil.preheader ], [ %epil.iter464.next, %.lr.ph32.i.i.i.epil ]
  %i.anl = getelementptr [8 x i8], ptr %i.alm, i64 %indvars.iv35.i.i.i.epil
  %i.anm = getelementptr i8, ptr %i.anl, i64 -8
  %i.ann = load double, ptr %i.anm, align 8, !tbaa !39
  %i.ano = fadd double %i.ank, %i.ann             ; 2 uses
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %indvars.iv35.i.i.i.epil
  store double %i.ano, ptr %i.anp, align 8, !tbaa !39
  %indvars.iv.next36.i.i.i.epil = add nuw nsw i64 %indvars.iv35.i.i.i.epil, 1
  %epil.iter464.next = add i64 %epil.iter464, 1   ; 2 uses
  %epil.iter464.cmp.not = icmp eq i64 %epil.iter464.next, %xtraiter463
  br i1 %epil.iter464.cmp.not, label %._crit_edge33.i.i.i, label %.lr.ph32.i.i.i.epil, !llvm.loop !135

._crit_edge33.i.i.i:                              ; preds = %._crit_edge33.i.i.i.loopexit.unr-lcssa, %.lr.ph32.i.i.i.epil, %bb.dn
  %i.anq = getelementptr [8 x i8], ptr %i.amd, i64 %i.alz
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.anr, align 8, !tbaa !39
  %.pre.i.i = load ptr, ptr %i.alr, align 8, !tbaa !57
  br label %build_bound_array.exit.i.i

build_bound_array.exit.i.i:                       ; preds = %._crit_edge33.i.i.i, %bb.dl
  %i.ans = phi ptr [ %.pre.i.i, %._crit_edge33.i.i.i ], [ %i.als, %bb.dl ] ; 2 uses
  %.025.i.i.i = phi ptr [ %i.amd, %._crit_edge33.i.i.i ], [ null, %bb.dl ]
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 48
  store ptr %.025.i.i.i, ptr %i.ant, align 8, !tbaa !72
  %i.anu = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.anv = icmp sgt i32 %i.anu, 5
  br i1 %i.anv, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %build_bound_array.exit.i.i
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  %i.anx = load double, ptr %i.anw, align 8, !tbaa !56
  %i.any = trunc nuw nsw i64 %indvars.iv.next114.i.i to i32
  %i.anz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %i.any, i32 noundef %i.alw, double noundef %i.anx) ; 0 uses
  %i.aoa = icmp sgt i64 %i.alz, 1
  br i1 %i.aoa, label %.lr.ph.preheader.i227.i, label %._crit_edge.i226.i

.lr.ph.preheader.i227.i:                          ; preds = %bb.do
  %wide.trip.count111.i.i = zext i32 %indvars.iv109.i.i to i64
  br label %.lr.ph.i228.i

.lr.ph.i228.i:                                    ; preds = %.lr.ph.i228.i, %.lr.ph.preheader.i227.i
  %indvars.iv106.i.i = phi i64 [ 1, %.lr.ph.preheader.i227.i ], [ %indvars.iv.next107.i.i, %.lr.ph.i228.i ] ; 2 uses
  %i.aob = load ptr, ptr %i.alr, align 8, !tbaa !57
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 48
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !72
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %indvars.iv106.i.i
  %i.aof = load double, ptr %i.aoe, align 8, !tbaa !39
  %i.aog = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, double noundef %i.aof) ; 0 uses
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1 ; 2 uses
  %exitcond112.not.i.i = icmp eq i64 %indvars.iv.next107.i.i, %wide.trip.count111.i.i
  br i1 %exitcond112.not.i.i, label %._crit_edge.i226.i, label %.lr.ph.i228.i, !llvm.loop !136

._crit_edge.i226.i:                               ; preds = %.lr.ph.i228.i, %bb.do
  %putchar.i.i = call i32 @putchar(i32 10)        ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.i226.i, %build_bound_array.exit.i.i
  %i.aoh = icmp samesign ugt i64 %indvars.iv113.i.i, 1
  %indvars.iv.next110.i.i = add i32 %indvars.iv109.i.i, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.aoh, label %bb.dl, label %._crit_edge89.i.i, !llvm.loop !137

._crit_edge89.i.i:                                ; preds = %bb.dp, %.loopexit.i.i
  call void @free(ptr noundef %i.alm) #23
  %i.aoi = call noalias ptr @malloc(i64 noundef %i.all) #27 ; 6 uses
  br i1 %i.yw, label %.lr.ph.i73.i.i, label %init_independent_group_mat.exit.i.i

.lr.ph.i73.i.i:                                   ; preds = %._crit_edge89.i.i
  %wide.trip.count65.i.i.i = and i64 %i.yk, 2147483647 ; 2 uses
  br i1 %i.ks, label %.split.us.us.preheader.i.i.i, label %.split.i.i.i

.split.us.us.preheader.i.i.i:                     ; preds = %.lr.ph.i73.i.i
  %wide.trip.count49.i.i.i = zext nneg i32 %2 to i64 ; 2 uses
  br label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.loopexit.split.us.us.i.i.i, %.split.us.us.preheader.i.i.i
  %indvars.iv60.i.i.i = phi i64 [ 0, %.split.us.us.preheader.i.i.i ], [ %indvars.iv.next61.i.i.i, %.loopexit.split.us.us.i.i.i ] ; 3 uses
  %indvars.iv58.i.i.i = phi i64 [ 1, %.split.us.us.preheader.i.i.i ], [ %indvars.iv.next59.i.i.i, %.loopexit.split.us.us.i.i.i ] ; 2 uses
  %indvars.iv.next61.i.i.i = add nuw nsw i64 %indvars.iv60.i.i.i, 1 ; 3 uses
  %i.aoj = call noalias ptr @malloc(i64 noundef %indvars.iv.next61.i.i.i) #27 ; 2 uses
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %indvars.iv60.i.i.i
  store ptr %i.aoj, ptr %i.aok, align 8, !tbaa !74
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %indvars.iv60.i.i.i
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !57
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  br label %.preheader.lr.ph.us.us.i.i.i

.preheader.lr.ph.us.us.i.i.i:                     ; preds = %._crit_edge37.us.us.i.i.i, %.split.us.us.i.i.i
  %indvars.iv51.i.i.i = phi i64 [ %indvars.iv.next52.i.i.i, %._crit_edge37.us.us.i.i.i ], [ 0, %.split.us.us.i.i.i ] ; 3 uses
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %indvars.iv51.i.i.i
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !57
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  %i.aor = load ptr, ptr %i.aon, align 8, !tbaa !62
  %i.aos = load ptr, ptr %i.aoq, align 8, !tbaa !62
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %._crit_edge.us.us.i.i.i, %.preheader.lr.ph.us.us.i.i.i
  %indvars.iv46.i.i.i = phi i64 [ %indvars.iv.next47.i.i.i, %._crit_edge.us.us.i.i.i ], [ 0, %.preheader.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.aor, i64 %indvars.iv46.i.i.i
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !29
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 48
  %i.aow = load i32, ptr %i.aov, align 8, !tbaa !33
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %.preheader.us.us.i.i.i
  %indvars.iv.i75.i.i = phi i64 [ %indvars.iv.next.i76.i.i, %bb.dr ], [ 0, %.preheader.us.us.i.i.i ] ; 2 uses
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aos, i64 %indvars.iv.i75.i.i
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !29
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 48
  %i.apa = load i32, ptr %i.aoz, align 8, !tbaa !33
  %i.apb = icmp eq i32 %i.aow, %i.apa
  br i1 %i.apb, label %._crit_edge37.us.us.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %indvars.iv.next.i76.i.i = add nuw nsw i64 %indvars.iv.i75.i.i, 1 ; 2 uses
  %exitcond45.not.i.i.i = icmp eq i64 %indvars.iv.next.i76.i.i, %wide.trip.count49.i.i.i
  br i1 %exitcond45.not.i.i.i, label %._crit_edge.us.us.i.i.i, label %bb.dq, !llvm.loop !138

._crit_edge.us.us.i.i.i:                          ; preds = %bb.dr
  %indvars.iv.next47.i.i.i = add nuw nsw i64 %indvars.iv46.i.i.i, 1 ; 2 uses
  %exitcond50.not.i.i.i = icmp eq i64 %indvars.iv.next47.i.i.i, %wide.trip.count49.i.i.i
  br i1 %exitcond50.not.i.i.i, label %._crit_edge37.us.us.i.i.i, label %.preheader.us.us.i.i.i, !llvm.loop !139

._crit_edge37.us.us.i.i.i:                        ; preds = %._crit_edge.us.us.i.i.i, %bb.dq
  %.sink.i.i.i = phi i8 [ 0, %bb.dq ], [ 1, %._crit_edge.us.us.i.i.i ]
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %indvars.iv51.i.i.i
  store i8 %.sink.i.i.i, ptr %i.apc, align 1, !tbaa !75
  %indvars.iv.next52.i.i.i = add nuw nsw i64 %indvars.iv51.i.i.i, 1 ; 2 uses
  %exitcond57.not.i.i.i = icmp eq i64 %indvars.iv.next52.i.i.i, %indvars.iv58.i.i.i
  br i1 %exitcond57.not.i.i.i, label %.loopexit.split.us.us.i.i.i, label %.preheader.lr.ph.us.us.i.i.i, !llvm.loop !140

.loopexit.split.us.us.i.i.i:                      ; preds = %._crit_edge37.us.us.i.i.i
  %indvars.iv.next59.i.i.i = add nuw nsw i64 %indvars.iv58.i.i.i, 1
  %exitcond66.not.i.i.i = icmp eq i64 %indvars.iv.next61.i.i.i, %wide.trip.count65.i.i.i
  br i1 %exitcond66.not.i.i.i, label %init_independent_group_mat.exit.i.i, label %.split.us.us.i.i.i, !llvm.loop !141

.split.i.i.i:                                     ; preds = %.lr.ph.i73.i.i, %.split.i.i.i
  %indvar.i.i.i = phi i64 [ %i.apd, %.split.i.i.i ], [ 0, %.lr.ph.i73.i.i ] ; 2 uses
  %i.apd = add nuw nsw i64 %indvar.i.i.i, 1       ; 4 uses
  %i.ape = call noalias ptr @malloc(i64 noundef %i.apd) #27 ; 2 uses
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %indvar.i.i.i
  store ptr %i.ape, ptr %i.apf, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ape, i8 1, i64 %i.apd, i1 false), !tbaa !75
  %exitcond.not.i74.i.i = icmp eq i64 %i.apd, %wide.trip.count65.i.i.i
  br i1 %exitcond.not.i74.i.i, label %init_independent_group_mat.exit.i.i, label %.split.i.i.i, !llvm.loop !141

init_independent_group_mat.exit.i.i:              ; preds = %.split.i.i.i, %.loopexit.split.us.us.i.i.i, %._crit_edge89.i.i
  %i.apg = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #27 ; 10 uses
  store ptr %i.yt, ptr %i.apg, align 8, !tbaa !76
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  store ptr %i.b, ptr %i.aph, align 8, !tbaa !76
  %i.api = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  store ptr %i.c, ptr %i.api, align 8, !tbaa !76
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 24
  store ptr %i.d, ptr %i.apj, align 8, !tbaa !76
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apg, i64 32
  store ptr %i.g, ptr %i.apk, align 8, !tbaa !76
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apg, i64 40
  store ptr %i.yr, ptr %i.apl, align 8, !tbaa !76
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apg, i64 48
  store ptr %i.aoi, ptr %i.apm, align 8, !tbaa !76
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apg, i64 56
  store ptr %i.ajs, ptr %i.apn, align 8, !tbaa !76
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apg, i64 64
  store ptr %7, ptr %i.apo, align 8, !tbaa !76
  %i.app = call ptr @tm_create_work(i32 noundef 9, ptr noundef nonnull %i.apg, ptr noundef nonnull @partial_exhaustive_search) #23 ; 5 uses
  %i.apq = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.apr = icmp sgt i32 %i.apq, 5
  br i1 %i.apr, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %init_independent_group_mat.exit.i.i
  %i.aps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef %i.app) ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %init_independent_group_mat.exit.i.i
  %i.apt = call i32 @tm_submit_work(ptr noundef %i.app, i32 noundef 0) #23 ; 0 uses
  %i.apu = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #27 ; 10 uses
  store ptr %i.yt, ptr %i.apu, align 8, !tbaa !76
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 8
  store ptr %i.b, ptr %i.apv, align 8, !tbaa !76
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  store ptr %i.c, ptr %i.apw, align 8, !tbaa !76
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apu, i64 24
  store ptr %i.d, ptr %i.apx, align 8, !tbaa !76
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apu, i64 32
  store ptr %i.g, ptr %i.apy, align 8, !tbaa !76
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apu, i64 40
  store ptr %i.yr, ptr %i.apz, align 8, !tbaa !76
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apu, i64 48
  store ptr %i.aoi, ptr %i.aqa, align 8, !tbaa !76
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apu, i64 56
  store ptr %i.ajs, ptr %i.aqb, align 8, !tbaa !76
end_hunk_0
