inline.NumInlined: 102
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@make_map_internal:.preheader573
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abb, i64 40 ; 5 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !43
  br i1 %.not.i.i524, label %conn_comp.exit.i, label %.lr.ph42.preheader.i.i

.lr.ph42.preheader.i.i:                           ; preds = %bb.cj
  %wide.trip.count.i.i = zext nneg i32 %i.ye to i64
  %.pre.i.i = load i32, ptr %i.acq, align 4, !tbaa !21
  br label %.lr.ph42.i.i

.loopexit.i.i:                                    ; preds = %bb.cn, %.lr.ph42.i.i
  %i.act = phi i32 [ %i.acw, %.lr.ph42.i.i ], [ %i.adl, %bb.cn ]
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next45.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %conn_comp.exit.i, label %.lr.ph42.i.i, !llvm.loop !132

.lr.ph42.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph42.preheader.i.i
  %i.acu = phi i32 [ %.pre.i.i, %.lr.ph42.preheader.i.i ], [ %i.act, %.loopexit.i.i ] ; 2 uses
  %indvars.iv44.i.i = phi i64 [ 0, %.lr.ph42.preheader.i.i ], [ %indvars.iv.next45.i.i, %.loopexit.i.i ] ; 4 uses
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i, 1 ; 3 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv.next45.i.i ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !21 ; 3 uses
  %i.acx = icmp slt i32 %i.acu, %i.acw
  br i1 %i.acx, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph42.i.i
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv44.i.i
  %i.acz = sext i32 %i.acu to i64
  %i.ada = trunc nuw nsw i64 %indvars.iv44.i.i to i32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %.lr.ph.i.i
  %i.adb = phi i32 [ %i.acw, %.lr.ph.i.i ], [ %i.adl, %bb.cn ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.acz, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cn ] ; 2 uses
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.acs, i64 %indvars.iv.i.i
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !21 ; 3 uses
  %i.ade = zext i32 %i.add to i64
  %.not.i117.i = icmp eq i64 %indvars.iv44.i.i, %i.ade
  br i1 %.not.i117.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.adf = load i32, ptr %i.acy, align 4, !tbaa !21
  %i.adg = sext i32 %i.add to i64
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !21
  %i.adj = icmp eq i32 %i.adf, %i.adi
  br i1 %i.adj, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.adk = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aco, i32 noundef %i.ada, i32 noundef %i.add, ptr noundef nonnull %i.e, i32 noundef 4) #19 ; 0 uses
  %.pre47.i.i = load i32, ptr %i.acv, align 4, !tbaa !21
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.adl = phi i32 [ %i.adb, %bb.ck ], [ %i.adb, %bb.cl ], [ %.pre47.i.i, %bb.cm ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.adm = sext i32 %i.adl to i64
  %i.adn = icmp slt i64 %indvars.iv.next.i.i, %i.adm
  br i1 %i.adn, label %bb.ck, label %.loopexit.i.i, !llvm.loop !133

conn_comp.exit.i:                                 ; preds = %.loopexit.i.i, %bb.cj
  %i.ado = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %i.aco) #19 ; 2 uses
  %i.adp = call ptr @SparseMatrix_weakly_connected_components(ptr noundef %i.ado, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #19 ; 5 uses
  call void @SparseMatrix_delete(ptr noundef %i.aco) #19
  call void @SparseMatrix_delete(ptr noundef %i.ado) #19
  %i.adq = load i32, ptr %i.f, align 4, !tbaa !21
  %i.adr = call ptr @SparseMatrix_new(i32 noundef %i.adq, i32 noundef %i.ye, i64 noundef %i.abd, i32 noundef 8, i32 noundef 0) #19 ; 2 uses
  store ptr %i.adr, ptr %15, align 8, !tbaa !134
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !42
  call void @free(ptr noundef %i.adt) #19
  %i.adu = load ptr, ptr %15, align 8, !tbaa !134
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 40
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !43
  call void @free(ptr noundef %i.adw) #19
  %i.adx = load ptr, ptr %15, align 8, !tbaa !134 ; 4 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 32
  store ptr %i.adp, ptr %i.ady, align 8, !tbaa !42
  %i.adz = load ptr, ptr %i.g, align 8, !tbaa !31 ; 4 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 40
  store ptr %i.adz, ptr %i.aea, align 8, !tbaa !43
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  store i64 %i.abd, ptr %i.aeb, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.aec = load i32, ptr %i.adx, align 8, !tbaa !12 ; 4 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %i.aec, i32 0) ; 2 uses
  %i.aed = icmp sgt i32 %i.aec, 0
  br i1 %i.aed, label %.lr.ph, label %._crit_edge1102

.lr.ph:                                           ; preds = %conn_comp.exit.i
  %i.aee = zext nneg i32 %i.aec to i64
  br label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %i.aef = trunc nuw i64 %i.aei to i32            ; 2 uses
  %i.aeg = icmp sgt i32 %i.aef, 0
  br i1 %i.aeg, label %bb.cp, label %._crit_edge1102, !llvm.loop !136

bb.cp:                                            ; preds = %.lr.ph, %bb.co
  %i.aeh = phi i32 [ %i.aec, %.lr.ph ], [ %i.aef, %bb.co ]
  %indvars.iv200.i1099 = phi i64 [ %i.aee, %.lr.ph ], [ %i.aei, %bb.co ]
  %i.aei = add nsw i64 %indvars.iv200.i1099, -1   ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !21
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.adz, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !21
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.aeo
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !21 ; 2 uses
  %.not.i530 = icmp eq i32 %i.aeq, %i.abz
  %.not115.i = icmp eq i32 %i.aeq, %i.aca
  %or.cond.i = select i1 %.not.i530, i1 true, i1 %.not115.i
  br i1 %or.cond.i, label %bb.co, label %._crit_edge1100, !llvm.loop !136

._crit_edge1100:                                  ; preds = %bb.cp
  br label %._crit_edge1102, !llvm.loop !136

._crit_edge1102:                                  ; preds = %bb.co, %._crit_edge1100, %conn_comp.exit.i
  %.lcssa1092 = phi i1 [ true, %._crit_edge1100 ], [ false, %conn_comp.exit.i ], [ false, %bb.co ]
  %.3.in.lcssa.i = phi i32 [ %i.aeh, %._crit_edge1100 ], [ %smin.i, %conn_comp.exit.i ], [ %smin.i, %bb.co ] ; 8 uses
  %i.aer = load i8, ptr @Verbose, align 1, !tbaa !47
  %.not116.i = icmp eq i8 %i.aer, 0
  br i1 %.not116.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge1102
  %i.aes = load ptr, ptr @stderr, align 8, !tbaa !17
  call void @flockfile(ptr noundef %i.aes) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.aet = call i64 @time(ptr noundef null) #19
  store i64 %i.aet, ptr %i.h, align 8, !tbaa !48
  %i.aeu = call ptr @localtime(ptr noundef nonnull %i.h) #19 ; 6 uses
  %i.aev = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 20
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !49
  %i.aey = add nsw i32 %i.aex, 1900
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !52
  %i.afb = add nsw i32 %i.afa, 1
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aeu, i64 12
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !53
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !54
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !55
  %i.afi = load i32, ptr %i.aeu, align 8, !tbaa !56
  %i.afj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aev, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 915, i32 noundef %i.aey, i32 noundef %i.afb, i32 noundef %i.afd, i32 noundef %i.aff, i32 noundef %i.afh, i32 noundef %i.afi) #20 ; 0 uses
  %i.afk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.afl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afk, ptr noundef nonnull @.str.48, i32 noundef %.3.in.lcssa.i) #20 ; 0 uses
  %i.afm = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc.i = call i32 @fputc(i32 10, ptr %i.afm)  ; 0 uses
  %i.afn = load ptr, ptr @stderr, align 8, !tbaa !17
  call void @funlockfile(ptr noundef %i.afn) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %._crit_edge1102
  %i.afo = shl nsw i32 %i.abc, 1                  ; 2 uses
  %i.afp = sext i32 %i.afo to i64                 ; 3 uses
  %.not.i118.i = icmp eq i32 %i.abc, 0            ; 3 uses
  br i1 %.not.i118.i, label %.thread.i166.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %mul.ov.i120.i = icmp slt i32 %i.abc, 0
  br i1 %mul.ov.i120.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.afq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.afr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afq, ptr noundef nonnull @.str.28, i64 noundef %i.afp, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.afs = call noalias ptr @calloc(i64 noundef %i.afp, i64 noundef 8) #22 ; 5 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %bb.cv, label %.preheader.preheader.i

bb.cv:                                            ; preds = %bb.cu
  %i.afu = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.afv = shl nuw nsw i64 %i.afp, 3
  %i.afw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afu, ptr noundef nonnull @.str.29, i64 noundef %i.afv) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.preheader.preheader.i:                           ; preds = %bb.cu
  store ptr %i.afs, ptr %11, align 8, !tbaa !9
  %wide.trip.count209.i = zext nneg i32 %i.abc to i64 ; 5 uses
  %xtraiter1391 = and i64 %wide.trip.count209.i, 1
  %i.afx = icmp eq i32 %i.abc, 1
  br i1 %i.afx, label %.preheader.i528.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter1394 = and i64 %wide.trip.count209.i, 2147483646
  br label %.preheader.i528

.preheader.i528:                                  ; preds = %.preheader.i528, %.preheader.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvar.next.i.1, %.preheader.i528 ] ; 4 uses
  %niter1395 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter1395.next.1, %.preheader.i528 ]
  %i.afy = shl nuw nsw i64 %indvar.i, 4
  %scevgep.i = getelementptr nuw i8, ptr %i.afs, i64 %i.afy
  %18 = shl nuw nsw i64 %indvar.i, 5
  %19 = getelementptr nuw i8, ptr %i.yr, i64 %18
  %scevgep204.i = getelementptr nuw i8, ptr %19, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %scevgep204.i, i64 16, i1 false), !tbaa !22
  %indvar.next.i = or disjoint i64 %indvar.i, 1   ; 2 uses
  %i.afz = shl nuw nsw i64 %indvar.next.i, 4
  %scevgep.i.1 = getelementptr nuw i8, ptr %i.afs, i64 %i.afz
  %20 = shl nuw nsw i64 %indvar.next.i, 5
  %21 = getelementptr nuw i8, ptr %i.yr, i64 %20
  %scevgep204.i.1 = getelementptr nuw i8, ptr %21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i.1, ptr noundef nonnull readonly align 8 dereferenceable(16) %scevgep204.i.1, i64 16, i1 false), !tbaa !22
  %indvar.next.i.1 = add nuw nsw i64 %indvar.i, 2 ; 2 uses
  %niter1395.next.1 = add i64 %niter1395, 2       ; 2 uses
  %niter1395.ncmp.1 = icmp eq i64 %niter1395.next.1, %unroll_iter1394
  br i1 %niter1395.ncmp.1, label %.unr-lcssa, label %.preheader.i528, !llvm.loop !137

.unr-lcssa:                                       ; preds = %.preheader.i528
  %lcmp.mod1392.not = icmp eq i64 %xtraiter1391, 0
  br i1 %lcmp.mod1392.not, label %bb.cw, label %.preheader.i528.epil.preheader

.preheader.i528.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvar.next.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod1393 = trunc i32 %i.abc to i1
  call void @llvm.assume(i1 %lcmp.mod1393)
  %i.aga = shl nuw nsw i64 %indvar.i.epil.init, 4
  %scevgep.i.epil = getelementptr nuw i8, ptr %i.afs, i64 %i.aga
  %22 = shl nuw nsw i64 %indvar.i.epil.init, 5
  %23 = getelementptr nuw i8, ptr %i.yr, i64 %22
  %scevgep204.i.epil = getelementptr nuw i8, ptr %23, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i.epil, ptr noundef nonnull readonly align 8 dereferenceable(16) %scevgep204.i.epil, i64 16, i1 false), !tbaa !22
  br label %bb.cw

bb.cw:                                            ; preds = %.unr-lcssa, %.preheader.i528.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.agb = load ptr, ptr %i.acp, align 8, !tbaa !42
  %i.agc = load ptr, ptr %i.acr, align 8, !tbaa !43
  %i.agd = getelementptr inbounds nuw i8, ptr %i.abb, i64 48 ; 2 uses
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !44
  %i.agf = call noalias ptr @calloc(i64 noundef %wide.trip.count209.i, i64 noundef 4) #22 ; 3 uses
  %i.agg = icmp eq ptr %i.agf, null
  br i1 %i.agg, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.agh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.agi = shl nuw nsw i64 %wide.trip.count209.i, 2
  %i.agj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agh, ptr noundef nonnull @.str.29, i64 noundef %i.agi) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.agk = shl nuw nsw i64 %wide.trip.count209.i, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.agf, i8 -1, i64 %i.agk, i1 false), !tbaa !21
  %i.agl = mul nuw nsw i32 %i.abc, 3
  %i.agm = zext nneg i32 %i.agl to i64            ; 2 uses
  %i.agn = call noalias ptr @calloc(i64 noundef %i.agm, i64 noundef 4) #22 ; 2 uses
  %i.ago = icmp eq ptr %i.agn, null
  br i1 %i.ago, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.agp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.agq = shl nuw nsw i64 %i.agm, 2
  %i.agr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agp, ptr noundef nonnull @.str.29, i64 noundef %i.agq) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.thread.i166.i.i:                                 ; preds = %bb.cr
  %i.ags = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  store ptr %i.ags, ptr %11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.agt = load ptr, ptr %i.acp, align 8, !tbaa !42
  %i.agu = load ptr, ptr %i.acr, align 8, !tbaa !43
  %i.agv = getelementptr inbounds nuw i8, ptr %i.abb, i64 48 ; 2 uses
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !44
  %i.agx = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  %i.agy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  %i.agz = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit167.i.i

bb.da:                                            ; preds = %bb.cy
  %i.aha = zext nneg i32 %i.afo to i64            ; 2 uses
  %i.ahb = call noalias ptr @calloc(i64 noundef %i.aha, i64 noundef 4) #22 ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, null
  br i1 %i.ahc, label %bb.db, label %gv_calloc.exit167.i.i

bb.db:                                            ; preds = %bb.da
  %i.ahd = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ahe = shl nuw nsw i64 %i.aha, 2
  %i.ahf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahd, ptr noundef nonnull @.str.29, i64 noundef %i.ahe) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit167.i.i:                            ; preds = %bb.da, %.thread.i166.i.i
  %i.ahg = phi ptr [ %i.agw, %.thread.i166.i.i ], [ %i.age, %bb.da ] ; 2 uses
  %i.ahh = phi ptr [ %i.agv, %.thread.i166.i.i ], [ %i.agd, %bb.da ]
  %i.ahi = phi ptr [ %i.agu, %.thread.i166.i.i ], [ %i.agc, %bb.da ] ; 2 uses
  %i.ahj = phi ptr [ %i.agt, %.thread.i166.i.i ], [ %i.agb, %bb.da ] ; 3 uses
  %i.ahk = phi ptr [ %i.agy, %.thread.i166.i.i ], [ %i.agn, %bb.da ] ; 16 uses
  %i.ahl = phi ptr [ %i.agx, %.thread.i166.i.i ], [ %i.agf, %bb.da ] ; 3 uses
  %i.ahm = phi ptr [ %i.agz, %.thread.i166.i.i ], [ %i.ahb, %bb.da ] ; 3 uses
  %i.ahn = call ptr @SparseMatrix_new(i32 noundef range(i32 -2147483647, -2147483648) %.3.in.lcssa.i, i32 noundef %i.abc, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 2 uses
  store ptr %i.ahn, ptr %12, align 8, !tbaa !134
  %i.aho = sext i32 %.3.in.lcssa.i to i64         ; 3 uses
  %.not.i168.i.i = icmp eq i32 %.3.in.lcssa.i, 0  ; 2 uses
  br i1 %.not.i168.i.i, label %.thread.i171.i.i, label %bb.dc

.thread.i171.i.i:                                 ; preds = %gv_calloc.exit167.i.i
  %i.ahp = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit172.i.i

bb.dc:                                            ; preds = %gv_calloc.exit167.i.i
  %mul.ov.i170.i.i = icmp slt i32 %.3.in.lcssa.i, 0
  br i1 %mul.ov.i170.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ahq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ahr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahq, ptr noundef nonnull @.str.28, i64 noundef %i.aho, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.ahs = call noalias ptr @calloc(i64 noundef %i.aho, i64 noundef 4) #22 ; 2 uses
  %i.aht = icmp eq ptr %i.ahs, null
  br i1 %i.aht, label %bb.df, label %gv_calloc.exit172.i.i

bb.df:                                            ; preds = %bb.de
  %i.ahu = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ahv = shl nuw nsw i64 %i.aho, 2
  %i.ahw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahu, ptr noundef nonnull @.str.29, i64 noundef %i.ahv) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit172.i.i:                            ; preds = %bb.de, %.thread.i171.i.i
  %i.ahx = phi ptr [ %i.ahp, %.thread.i171.i.i ], [ %i.ahs, %bb.de ]
  store ptr %i.ahx, ptr %14, align 8, !tbaa !31
  br i1 %.not.i118.i, label %._crit_edge177.i.i, label %.lr.ph176.preheader.i.i

.lr.ph176.preheader.i.i:                          ; preds = %gv_calloc.exit172.i.i
  %wide.trip.count.i123.i = zext nneg i32 %i.abc to i64 ; 2 uses
  %xtraiter1396 = and i64 %wide.trip.count.i123.i, 7 ; 3 uses
  %i.ahy = icmp ult i32 %i.abc, 8
  br i1 %i.ahy, label %.lr.ph176.i.i.epil.preheader, label %.lr.ph176.preheader.i.i.new

.lr.ph176.preheader.i.i.new:                      ; preds = %.lr.ph176.preheader.i.i
  %unroll_iter1399 = and i64 %wide.trip.count.i123.i, 2147483640
  br label %.lr.ph176.i.i

.lr.ph176.i.i:                                    ; preds = %.lr.ph176.i.i, %.lr.ph176.preheader.i.i.new
  %indvars.iv.i124.i = phi i64 [ 0, %.lr.ph176.preheader.i.i.new ], [ %indvars.iv.next.i125.i.7, %.lr.ph176.i.i ] ; 9 uses
  %niter1400 = phi i64 [ 0, %.lr.ph176.preheader.i.i.new ], [ %niter1400.next.7, %.lr.ph176.i.i ]
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i124.i, 12
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %.idx.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store i32 0, ptr %i.aia, align 4, !tbaa !21
  %i.aib = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.aib
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 20
  store i32 0, ptr %i.aid, align 4, !tbaa !21
  %i.aie = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 32
  store i32 0, ptr %i.aig, align 4, !tbaa !21
  %i.aih = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.aih
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 44
  store i32 0, ptr %i.aij, align 4, !tbaa !21
  %i.aik = mul nuw i64 %indvars.iv.i124.i, 12
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.aik
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 56
  store i32 0, ptr %i.aim, align 4, !tbaa !21
  %i.ain = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ain
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 68
  store i32 0, ptr %i.aip, align 4, !tbaa !21
  %i.aiq = mul nuw i64 %indvars.iv.i124.i, 12
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.aiq
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 80
  store i32 0, ptr %i.ais, align 4, !tbaa !21
  %i.ait = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ait
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 92
  store i32 0, ptr %i.aiv, align 4, !tbaa !21
  %indvars.iv.next.i125.i.7 = add nuw nsw i64 %indvars.iv.i124.i, 8 ; 2 uses
  %niter1400.next.7 = add i64 %niter1400, 8       ; 2 uses
  %niter1400.ncmp.7 = icmp eq i64 %niter1400.next.7, %unroll_iter1399
  br i1 %niter1400.ncmp.7, label %._crit_edge177.i.i.loopexit.unr-lcssa, label %.lr.ph176.i.i, !llvm.loop !138

._crit_edge177.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph176.i.i
  %lcmp.mod1397.not = icmp eq i64 %xtraiter1396, 0
  br i1 %lcmp.mod1397.not, label %._crit_edge177.i.i, label %.lr.ph176.i.i.epil.preheader

.lr.ph176.i.i.epil.preheader:                     ; preds = %._crit_edge177.i.i.loopexit.unr-lcssa, %.lr.ph176.preheader.i.i
  %indvars.iv.i124.i.epil.init = phi i64 [ 0, %.lr.ph176.preheader.i.i ], [ %indvars.iv.next.i125.i.7, %._crit_edge177.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1398 = icmp ne i64 %xtraiter1396, 0
  call void @llvm.assume(i1 %lcmp.mod1398)
  br label %.lr.ph176.i.i.epil

.lr.ph176.i.i.epil:                               ; preds = %.lr.ph176.i.i.epil, %.lr.ph176.i.i.epil.preheader
  %indvars.iv.i124.i.epil = phi i64 [ %indvars.iv.i124.i.epil.init, %.lr.ph176.i.i.epil.preheader ], [ %indvars.iv.next.i125.i.epil, %.lr.ph176.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph176.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph176.i.i.epil ]
  %.idx.i.i.epil = mul nuw nsw i64 %indvars.iv.i124.i.epil, 12
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %.idx.i.i.epil
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  store i32 0, ptr %i.aix, align 4, !tbaa !21
  %indvars.iv.next.i125.i.epil = add nuw nsw i64 %indvars.iv.i124.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1396
  br i1 %epil.iter.cmp.not, label %._crit_edge177.i.i, label %.lr.ph176.i.i.epil, !llvm.loop !139

._crit_edge177.i.i:                               ; preds = %._crit_edge177.i.i.loopexit.unr-lcssa, %.lr.ph176.i.i.epil, %gv_calloc.exit172.i.i
  %i.aiy = load i32, ptr %i.abb, align 8, !tbaa !12
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [4 x i8], ptr %i.ahj, i64 %i.aiz
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !21
  %i.ajc = load i32, ptr %i.ahj, align 4, !tbaa !21
  store i32 1, ptr %i.d, align 4, !tbaa !21
  br i1 %.not.i168.i.i, label %get_poly_lines.exit.i, label %.lr.ph198.i.i

.lr.ph198.i.i:                                    ; preds = %._crit_edge177.i.i
  %i.ajd = xor i32 %i.ajc, -1
  %i.aje = add i32 %i.ajb, %i.ajd
  %wide.trip.count214.i.i = zext nneg i32 %.3.in.lcssa.i to i64
  br label %bb.dg

.loopexit173.i.i:                                 ; preds = %bb.dp, %.preheader.i.i, %bb.dg
  %exitcond215.not.i.i = icmp eq i64 %indvars.iv.next212.i.i, %wide.trip.count214.i.i
  br i1 %exitcond215.not.i.i, label %._crit_edge199.loopexit.i.i, label %bb.dg, !llvm.loop !140

bb.dg:                                            ; preds = %.loopexit173.i.i, %.lr.ph198.i.i
  %indvars.iv211.i.i = phi i64 [ 0, %.lr.ph198.i.i ], [ %indvars.iv.next212.i.i, %.loopexit173.i.i ] ; 5 uses
end_hunk_0
