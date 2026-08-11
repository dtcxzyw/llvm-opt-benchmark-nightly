inline.NumInlined: 30
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Fgetlag:bb.a

bb.bi:                                            ; preds = %bb.bh
  %i.afp = call float @G__align11(ptr noundef %i.afn, ptr noundef %i.afo, i32 noundef %6) #14 ; 0 uses
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bh
  %i.afq = call float @H__align(ptr noundef %i.afn, ptr noundef %i.afo, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #14 ; 0 uses
  br label %bb.bo

bb.bk:                                            ; preds = %._crit_edge467
  %i.afr = load ptr, ptr @Fgetlag.tmpres1, align 8, !tbaa !17 ; 2 uses
  %i.afs = load ptr, ptr @Fgetlag.tmpres2, align 8, !tbaa !17 ; 2 uses
  br i1 %or.cond19, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.aft = call float @G__align11(ptr noundef %i.afr, ptr noundef %i.afs, i32 noundef %6) #14 ; 0 uses
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.afu = call float @Q__align(ptr noundef %i.afr, ptr noundef %i.afs, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #14 ; 0 uses
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge467
  %i.afv = sext i8 %i.afc to i32
  %i.afw = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.afx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afw, ptr noundef nonnull @.str.7, i32 noundef %i.afv) #18 ; 0 uses
  call void @ErrorExit(ptr noundef nonnull @.str.8) #14
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bm, %bb.bi, %bb.bj, %bb.bf, %bb.bg, %bb.bn, %bb.bd, %bb.bc
  %i.afy = load ptr, ptr @Fgetlag.tmpres1, align 8, !tbaa !17
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !10
  %i.aga = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afz) #15
  %i.agb = trunc i64 %i.aga to i32
  %i.agc = add nsw i32 %.0475, %i.agb             ; 2 uses
  %i.agd = icmp sgt i32 %i.agc, %6
  br i1 %i.agd, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @ErrorExit(ptr noundef nonnull @.str.9) #14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %i.bq, label %.lr.ph470, label %.preheader369

.lr.ph470:                                        ; preds = %bb.bq
  %i.age = load ptr, ptr @Fgetlag.result1, align 8, !tbaa !17
  %i.agf = load ptr, ptr @Fgetlag.tmpres1, align 8, !tbaa !17
  br label %bb.br

.preheader369:                                    ; preds = %bb.br, %bb.bq
  br i1 %i.bs, label %.lr.ph472, label %._crit_edge473

.lr.ph472:                                        ; preds = %.preheader369
  %i.agg = load ptr, ptr @Fgetlag.result2, align 8, !tbaa !17
  %i.agh = load ptr, ptr @Fgetlag.tmpres2, align 8, !tbaa !17
  br label %bb.bs

bb.br:                                            ; preds = %.lr.ph470, %bb.br
  %indvars.iv605 = phi i64 [ 0, %.lr.ph470 ], [ %indvars.iv.next606, %bb.br ] ; 3 uses
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv605
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !10
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %indvars.iv605
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !10
  %i.agm = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.agj, ptr noundef nonnull dereferenceable(1) %i.agl) #14 ; 0 uses
  %indvars.iv.next606 = add nuw nsw i64 %indvars.iv605, 1 ; 2 uses
  %exitcond609.not = icmp eq i64 %indvars.iv.next606, %wide.trip.count608
  br i1 %exitcond609.not, label %.preheader369, label %bb.br, !llvm.loop !92

bb.bs:                                            ; preds = %.lr.ph472, %bb.bs
  %indvars.iv610 = phi i64 [ 0, %.lr.ph472 ], [ %indvars.iv.next611, %bb.bs ] ; 3 uses
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv610
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !10
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.agh, i64 %indvars.iv610
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !10
  %i.agr = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.ago, ptr noundef nonnull dereferenceable(1) %i.agq) #14 ; 0 uses
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %exitcond614.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count613
  br i1 %exitcond614.not, label %._crit_edge473, label %bb.bs, !llvm.loop !93

._crit_edge473:                                   ; preds = %bb.bs, %.preheader369
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %i.ags = load i32, ptr %i.a, align 4, !tbaa !4
  %i.agt = add nsw i32 %i.ags, -1
  %i.agu = sext i32 %i.agt to i64
  %i.agv = icmp slt i64 %indvars.iv.next616, %i.agu
  br i1 %i.agv, label %.preheader371, label %.preheader368, !llvm.loop !94

.preheader:                                       ; preds = %bb.bt, %.preheader368
  br i1 %i.bs, label %.lr.ph479, label %._crit_edge480

.lr.ph479:                                        ; preds = %.preheader
  %i.agw = load ptr, ptr @Fgetlag.result2, align 8, !tbaa !17
  %wide.trip.count626 = zext nneg i32 %5 to i64
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph477, %bb.bt
  %indvars.iv618 = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next619, %bb.bt ] ; 3 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv618
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !10
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.adp, i64 %indvars.iv618
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !10
  %i.ahb = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.agy, ptr noundef nonnull dereferenceable(1) %i.aha) #14 ; 0 uses
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %wide.trip.count621
  br i1 %exitcond622.not, label %.preheader, label %bb.bt, !llvm.loop !95

bb.bu:                                            ; preds = %.lr.ph479, %bb.bu
  %indvars.iv623 = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next624, %bb.bu ] ; 3 uses
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv623
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !10
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv623
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !10
  %i.ahg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ahd, ptr noundef nonnull dereferenceable(1) %i.ahf) #14 ; 0 uses
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count626
  br i1 %exitcond627.not, label %._crit_edge480, label %bb.bu, !llvm.loop !96

._crit_edge480:                                   ; preds = %bb.bu, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret double 0.000000e+00
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #3

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @ErrorExit(ptr noundef) local_unnamed_addr #3

declare void @FreeFukusosuuMtx(ptr noundef) local_unnamed_addr #3

declare void @FreeFukusosuuVec(ptr noundef) local_unnamed_addr #3

declare void @FreeDoubleVec(ptr noundef) local_unnamed_addr #3

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #3

declare ptr @AllocateFukusosuuVec(i32 noundef) local_unnamed_addr #3

declare ptr @AllocateFukusosuuMtx(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @fft(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @calcNaiseki(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @getKouho(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @zurasu2(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @alignableReagion(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @mymergesort(i32 noundef range(i32 0, 1073741825) %0, i32 noundef range(i32 -2147483648, 2147483647) %1, ptr noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = load i32, ptr @mymergesort.allo, align 4, !tbaa !4
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr @mymergesort.allo, align 4, !tbaa !4
  %i.d = load ptr, ptr @mymergesort.work, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = lshr i32 %1, 1
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 8) #16
  store ptr %i.h, ptr @mymergesort.work, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.i = icmp slt i32 %0, %1
  br i1 %i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw nsw i32 %1, %0                   ; 3 uses
  %i.k = lshr i32 %i.j, 1                         ; 4 uses
  tail call fastcc void @mymergesort(i32 noundef %0, i32 noundef %i.k, ptr noundef %2)
  %i.l = add nuw nsw i32 %i.k, 1                  ; 3 uses
  tail call fastcc void @mymergesort(i32 noundef %i.l, i32 noundef %1, ptr noundef %2)
  %.not2830 = icmp samesign ugt i32 %0, %i.k
  br i1 %.not2830, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.m = load ptr, ptr @mymergesort.work, align 8, !tbaa !22 ; 7 uses
  %i.n = zext nneg i32 %0 to i64                  ; 7 uses
  %wide.trip.count = zext nneg i32 %i.l to i64
  %i.o = lshr i32 %i.j, 1
  %3 = zext nneg i32 %i.o to i64                  ; 3 uses
  %4 = sub nsw i64 %3, %i.n
  %5 = add nsw i64 %4, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %5, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = ptrtoaddr ptr %i.m to i64
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add i64 %i.q, %i.a
  %i.s = sub i64 %i.r, %i.p
  %diff.check = icmp ugt i64 %i.s, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, -4                         ; 6 uses
  %i.t = add nsw i64 %n.vec, %i.n
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x ptr>, ptr %gep, align 8, !tbaa !20
  %wide.load73 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.load, ptr %i.v, align 8, !tbaa !20
  store <2 x ptr> %wide.load73, ptr %i.w, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit90, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.t, %middle.block ] ; 4 uses
  %i.y = add nuw nsw i64 %3, 1
  %i.z = sub nsw i64 %i.y, %indvars.iv.ph
  %i.aa = sub nsw i64 %3, %indvars.iv.ph
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv44.prol = phi i64 [ %indvars.iv.next45.prol, %scalar.ph.prol ], [ %indvars.iv44.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %indvars.iv.next45.prol = add nuw nsw i64 %indvars.iv44.prol, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv44.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !98

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv44.lcssa93.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv44.prol, %scalar.ph.prol ]
  %indvars.iv.next45.lcssa92.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next45.prol, %scalar.ph.prol ]
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %scalar.ph.preheader ], [ %indvars.iv.next45.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ae = icmp ult i64 %i.aa, 3
  br i1 %i.ae, label %.loopexit90, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.3, %scalar.ph ], [ %indvars.iv44.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv44
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %indvars.iv.next45.2 = add nuw nsw i64 %indvars.iv44, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next45.2
  store ptr %i.au, ptr %i.av, align 8, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit90, label %scalar.ph, !llvm.loop !99

.loopexit90:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv44.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv44.lcssa93.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next45.2, %scalar.ph ] ; 3 uses
  %indvars.iv.next45.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next45.lcssa92.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next45.3, %scalar.ph ]
  %i.aw = trunc nsw i64 %indvars.iv.next45.lcssa to i32 ; 2 uses
  %i.ax = icmp samesign ult i32 %i.k, %1
  br i1 %i.ax, label %.lr.ph34, label %.preheader

.lr.ph34:                                         ; preds = %.loopexit90
  %i.ay = load ptr, ptr @mymergesort.work, align 8, !tbaa !22
  br label %bb.g

.preheader:                                       ; preds = %bb.g, %.loopexit90
  %mymergesort.k.promoted37 = phi i32 [ %0, %.loopexit90 ], [ %i.cm, %bb.g ]
  %mymergesort.j.promoted36 = phi i32 [ 0, %.loopexit90 ], [ %i.cq, %bb.g ] ; 2 uses
  %i.az = icmp slt i32 %mymergesort.j.promoted36, %i.aw
  br i1 %i.az, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %.preheader
  %i.ba = load ptr, ptr @mymergesort.work, align 8, !tbaa !22 ; 7 uses
  %i.bb = sext i32 %mymergesort.j.promoted36 to i64 ; 6 uses
  %i.bc = sext i32 %mymergesort.k.promoted37 to i64 ; 5 uses
  %i.bd = lshr i32 %i.j, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add nsw i64 %i.bb, %i.n
  %i.bg = sub nsw i64 %i.be, %i.bf
  %6 = add nsw i64 %i.bg, 1                       ; 3 uses
  %min.iters.check78 = icmp ult i64 %6, 14
  br i1 %min.iters.check78, label %scalar.ph77.preheader, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph38
  %i.bh = ptrtoaddr ptr %i.ba to i64
  %i.bi = shl nsw i64 %i.bc, 3
  %i.bj = add i64 %i.bi, %i.a
  %i.bk = shl nsw i64 %i.bb, 3
  %i.bl = add i64 %i.bk, %i.bh
  %i.bm = sub i64 %i.bl, %i.bj
  %diff.check76 = icmp ugt i64 %i.bm, -32
  br i1 %diff.check76, label %scalar.ph77.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck75
  %n.vec80 = and i64 %6, -4                       ; 4 uses
  %i.bn = add nsw i64 %n.vec80, %i.bc
  %i.bo = add nsw i64 %n.vec80, %i.bb
  %invariant.gep98 = getelementptr [8 x i8], ptr %i.ba, i64 %i.bb
  %invariant.gep100 = getelementptr [8 x i8], ptr %2, i64 %i.bc
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body81 ] ; 3 uses
  %gep99 = getelementptr [8 x i8], ptr %invariant.gep98, i64 %index82 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %gep99, i64 16
  %wide.load83 = load <2 x ptr>, ptr %gep99, align 8, !tbaa !20
  %wide.load84 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !20
  %gep101 = getelementptr [8 x i8], ptr %invariant.gep100, i64 %index82 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %gep101, i64 16
  store <2 x ptr> %wide.load83, ptr %gep101, align 8, !tbaa !20
  store <2 x ptr> %wide.load84, ptr %i.bq, align 8, !tbaa !20
  %index.next85 = add nuw i64 %index82, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next85, %n.vec80
  br i1 %i.br, label %middle.block86, label %vector.body81, !llvm.loop !100

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %6, %n.vec80
  br i1 %cmp.n87, label %.loopexit, label %scalar.ph77.preheader

scalar.ph77.preheader:                            ; preds = %vector.memcheck75, %.lr.ph38, %middle.block86
  %indvars.iv52.ph = phi i64 [ %i.bc, %vector.memcheck75 ], [ %i.bc, %.lr.ph38 ], [ %i.bn, %middle.block86 ] ; 2 uses
  %indvars.iv50.ph = phi i64 [ %i.bb, %vector.memcheck75 ], [ %i.bb, %.lr.ph38 ], [ %i.bo, %middle.block86 ] ; 4 uses
  %i.bs = add i64 %indvars.iv44.lcssa, 1
  %i.bt = sub i64 %i.bs, %indvars.iv50.ph
  %i.bu = sub i64 %indvars.iv44.lcssa, %indvars.iv50.ph
  %xtraiter94 = and i64 %i.bt, 3                  ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %scalar.ph77.prol.loopexit, label %scalar.ph77.prol

scalar.ph77.prol:                                 ; preds = %scalar.ph77.preheader, %scalar.ph77.prol
  %indvars.iv52.prol = phi i64 [ %indvars.iv.next53.prol, %scalar.ph77.prol ], [ %indvars.iv52.ph, %scalar.ph77.preheader ] ; 2 uses
  %indvars.iv50.prol = phi i64 [ %indvars.iv.next51.prol, %scalar.ph77.prol ], [ %indvars.iv50.ph, %scalar.ph77.preheader ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %scalar.ph77.prol ], [ 0, %scalar.ph77.preheader ]
  %indvars.iv.next51.prol = add nsw i64 %indvars.iv50.prol, 1 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv50.prol
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv52.prol
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !20
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %scalar.ph77.prol.loopexit, label %scalar.ph77.prol, !llvm.loop !101

scalar.ph77.prol.loopexit:                        ; preds = %scalar.ph77.prol, %scalar.ph77.preheader
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %scalar.ph77.preheader ], [ %indvars.iv.next53.prol, %scalar.ph77.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %scalar.ph77.preheader ], [ %indvars.iv.next51.prol, %scalar.ph77.prol ]
  %i.by = icmp ult i64 %i.bu, 3
  br i1 %i.by, label %.loopexit, label %scalar.ph77

bb.g:                                             ; preds = %.lr.ph34, %bb.g
  %i.bz = phi i32 [ %i.l, %.lr.ph34 ], [ %i.cs, %bb.g ] ; 2 uses
  %i.ca = phi i32 [ 0, %.lr.ph34 ], [ %i.cq, %bb.g ] ; 2 uses
  %i.cb = phi i32 [ %0, %.lr.ph34 ], [ %i.cm, %bb.g ] ; 2 uses
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !69
  %i.ch = zext nneg i32 %i.bz to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !69
  %.not29 = icmp sle i32 %i.cg, %i.cl             ; 3 uses
  %i.cm = add nuw nsw i32 %i.cb, 1                ; 2 uses
  %i.cn = zext nneg i32 %i.cb to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cn
  %.sink = select i1 %.not29, ptr %i.ce, ptr %i.cj
  %i.cp = zext i1 %.not29 to i32
  %i.cq = add nuw nsw i32 %i.ca, %i.cp            ; 3 uses
  %not..not29 = xor i1 %.not29, true
  %i.cr = zext i1 %not..not29 to i32
  %i.cs = add nuw nsw i32 %i.bz, %i.cr            ; 2 uses
  store ptr %.sink, ptr %i.co, align 8, !tbaa !20
  %i.ct = icmp sle i32 %i.cs, %1
  %i.cu = icmp slt i32 %i.cq, %i.aw
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %bb.g, label %.preheader, !llvm.loop !102

scalar.ph77:                                      ; preds = %scalar.ph77.prol.loopexit, %scalar.ph77
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.3, %scalar.ph77 ], [ %indvars.iv52.unr, %scalar.ph77.prol.loopexit ] ; 5 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.3, %scalar.ph77 ], [ %indvars.iv50.unr, %scalar.ph77.prol.loopexit ] ; 5 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv50
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !20
  %i.cy = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv52
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !20
  %i.cz = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv50
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20
  %i.dc = getelementptr [8 x i8], ptr %2, i64 %indvars.iv52
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !20
  %indvars.iv.next51.2 = add nsw i64 %indvars.iv50, 3 ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv50
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !20
  %i.dh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv52
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !20
  %indvars.iv.next51.3 = add nsw i64 %indvars.iv50, 4
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv.next51.2
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !20
  %indvars.iv.next53.3 = add nsw i64 %indvars.iv52, 4
  %i.dl = getelementptr [8 x i8], ptr %2, i64 %indvars.iv52
  %i.dm = getelementptr i8, ptr %i.dl, i64 24
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !20
  %exitcond58.not.3 = icmp eq i64 %indvars.iv.next51.2, %indvars.iv44.lcssa
  br i1 %exitcond58.not.3, label %.loopexit, label %scalar.ph77, !llvm.loop !103

.loopexit:                                        ; preds = %scalar.ph77.prol.loopexit, %scalar.ph77, %bb.f, %middle.block86, %.preheader, %bb.e
  ret void
}

declare void @FreeDoubleMtx(ptr noundef) local_unnamed_addr #3

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @blockAlign2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

declare float @Aalign(...) local_unnamed_addr #3

declare float @MSalignmm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @G__align11(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @A__align(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @H__align(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @Q__align(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local float @Falign(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 35 uses
  %i.b = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.e = trunc i64 %i.d to i32                    ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !10
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #15
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.h)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0371 = phi i32 [ 1, %bb.a ], [ %i.j, %bb.b ]  ; 28 uses
  %.not = icmp slt i32 %i.i, %.0371
  %i.j = shl i32 %.0371, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !104

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv i32 %.0371, 2                       ; 6 uses
  %i.l = load i32, ptr @Falign.prevalloclen, align 4, !tbaa !4 ; 2 uses
  %.not388 = icmp eq i32 %i.l, %6
  br i1 %.not388, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not389 = icmp eq i32 %i.l, 0
  br i1 %.not389, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @Falign.result1, align 8, !tbaa !17
  tail call void @FreeCharMtx(ptr noundef %i.m) #14
  %i.n = load ptr, ptr @Falign.result2, align 8, !tbaa !17
  tail call void @FreeCharMtx(ptr noundef %i.n) #14
  %i.o = load ptr, ptr @Falign.tmpres1, align 8, !tbaa !17
  tail call void @FreeCharMtx(ptr noundef %i.o) #14
  %i.p = load ptr, ptr @Falign.tmpres2, align 8, !tbaa !17
  tail call void @FreeCharMtx(ptr noundef %i.p) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load i32, ptr @njob, align 4, !tbaa !4
  %i.r = tail call ptr @AllocateCharMtx(i32 noundef %i.q, i32 noundef %6) #14
  store ptr %i.r, ptr @Falign.result1, align 8, !tbaa !17
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = tail call ptr @AllocateCharMtx(i32 noundef %i.s, i32 noundef %6) #14
  store ptr %i.t, ptr @Falign.result2, align 8, !tbaa !17
  %i.u = load i32, ptr @njob, align 4, !tbaa !4
  %i.v = tail call ptr @AllocateCharMtx(i32 noundef %i.u, i32 noundef %6) #14
  store ptr %i.v, ptr @Falign.tmpres1, align 8, !tbaa !17
  %i.w = load i32, ptr @njob, align 4, !tbaa !4
  %i.x = tail call ptr @AllocateCharMtx(i32 noundef %i.w, i32 noundef %6) #14
  store ptr %i.x, ptr @Falign.tmpres2, align 8, !tbaa !17
  store i32 %6, ptr @Falign.prevalloclen, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.y = load i32, ptr @Falign.localalloclen, align 4, !tbaa !4 ; 2 uses
  %.not390 = icmp eq i32 %i.y, 0
  br i1 %.not390, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr @njob, align 4, !tbaa !4
  %i.aa = tail call ptr @AllocateCharVec(i32 noundef %i.z) #14
  store ptr %i.aa, ptr @Falign.sgap1, align 8, !tbaa !10
  %i.ab = load i32, ptr @njob, align 4, !tbaa !4
  %i.ac = tail call ptr @AllocateCharVec(i32 noundef %i.ab) #14
  store ptr %i.ac, ptr @Falign.egap1, align 8, !tbaa !10
  %i.ad = load i32, ptr @njob, align 4, !tbaa !4
  %i.ae = tail call ptr @AllocateCharVec(i32 noundef %i.ad) #14
end_hunk_0
