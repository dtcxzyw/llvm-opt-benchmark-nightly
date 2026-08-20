loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inflate_table:.preheader237
  %i.gs = zext i16 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gs
  store i16 %i.gn, ptr %i.gt, align 2, !tbaa !10
  br label %.lr.ph257.1

.lr.ph257.1:                                      ; preds = %.lr.ph257, %bb.af
  %indvars.iv.next294 = or disjoint i64 %indvars.iv293, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next294
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !10 ; 2 uses
  %.not221.1 = icmp eq i16 %i.gv, 0
  br i1 %.not221.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph257.1
  %i.gw = trunc i64 %indvars.iv.next294 to i16
  %i.gx = zext i16 %i.gv to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gx ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !10 ; 2 uses
  %i.ha = add i16 %i.gz, 1
  store i16 %i.ha, ptr %i.gy, align 2, !tbaa !10
  %i.hb = zext i16 %i.gz to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hb
  store i16 %i.gw, ptr %i.hc, align 2, !tbaa !10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph257.1
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2 ; 2 uses
  %niter364.next.1 = add i64 %niter364, 2         ; 2 uses
  %niter364.ncmp.1 = icmp eq i64 %niter364.next.1, %unroll_iter363
  br i1 %niter364.ncmp.1, label %._crit_edge258.loopexit.unr-lcssa, label %.lr.ph257, !llvm.loop !21

._crit_edge258.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod361.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod361.not, label %._crit_edge258, label %.lr.ph257.epil.preheader

.lr.ph257.epil.preheader:                         ; preds = %._crit_edge258.loopexit.unr-lcssa, %.lr.ph257.preheader
  %indvars.iv293.epil.init = phi i64 [ 0, %.lr.ph257.preheader ], [ %indvars.iv.next294.1, %._crit_edge258.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod362 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod362)
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv293.epil.init
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !10 ; 2 uses
  %.not221.epil = icmp eq i16 %i.he, 0
  br i1 %.not221.epil, label %._crit_edge258, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph257.epil.preheader
  %i.hf = trunc i64 %indvars.iv293.epil.init to i16
  %i.hg = zext i16 %i.he to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.hg ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !10 ; 2 uses
  %i.hj = add i16 %i.hi, 1
  store i16 %i.hj, ptr %i.hh, align 2, !tbaa !10
  %i.hk = zext i16 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hk
  store i16 %i.hf, ptr %i.hl, align 2, !tbaa !10
  br label %._crit_edge258

._crit_edge258:                                   ; preds = %._crit_edge258.loopexit.unr-lcssa, %bb.ai, %.lr.ph257.epil.preheader, %.preheader235
  switch i32 %0, label %.thread226 [
    i32 0, label %.preheader
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %._crit_edge258
  %i.hm = icmp ugt i32 %spec.select326, 10
  br i1 %i.hm, label %.loopexit, label %.preheader

.thread226:                                       ; preds = %._crit_edge258
  %i.hn = icmp eq i32 %0, 2                       ; 2 uses
  %i.ho = icmp ugt i32 %spec.select326, 9
  %or.cond5 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aj, %._crit_edge258, %.thread226
  %i.hp = phi i1 [ %i.hn, %.thread226 ], [ false, %._crit_edge258 ], [ false, %bb.aj ]
  %.0178231335 = phi ptr [ @inflate_table.dbase, %.thread226 ], [ %5, %._crit_edge258 ], [ @inflate_table.lbase, %bb.aj ]
  %.0177232334 = phi ptr [ @inflate_table.dext, %.thread226 ], [ %5, %._crit_edge258 ], [ @inflate_table.lext, %bb.aj ]
  %.0233333 = phi i32 [ 0, %.thread226 ], [ 20, %._crit_edge258 ], [ 257, %bb.aj ] ; 3 uses
  %i.hq = phi i1 [ false, %.thread226 ], [ false, %._crit_edge258 ], [ true, %bb.aj ]
  %i.hr = shl nuw i32 1, %spec.select326          ; 2 uses
  %i.hs = add i32 %i.hr, -1
  %i.ht = load ptr, ptr %3, align 8, !tbaa !17
  %i.hu = trunc i32 %spec.select326 to i8
  br label %.outer

.outer:                                           ; preds = %bb.ay, %.preheader
  %.3.ph = phi i32 [ %.4, %bb.ay ], [ %.0198.lcssa, %.preheader ]
  %.2201.ph = phi i32 [ %i.ix, %bb.ay ], [ 0, %.preheader ]
  %.0192.ph = phi i32 [ %.1193.lcssa, %bb.ay ], [ %spec.select326, %.preheader ]
  %.0190.ph = phi i32 [ %spec.select223, %bb.ay ], [ 0, %.preheader ] ; 4 uses
  %.0186.ph = phi i32 [ %i.kb, %bb.ay ], [ %i.hr, %.preheader ] ; 2 uses
  %.0184.ph = phi i32 [ %.1185, %bb.ay ], [ 0, %.preheader ]
  %.0180.ph = phi i32 [ %i.jm, %bb.ay ], [ -1, %.preheader ]
  %.0179.ph = phi ptr [ %i.jp, %bb.ay ], [ %i.ht, %.preheader ] ; 3 uses
  %i.hv = shl nuw i32 1, %.0192.ph                ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.backedge, %.outer
  %.3 = phi i32 [ %.3.ph, %.outer ], [ %.4, %.backedge ] ; 5 uses
  %.2201 = phi i32 [ %.2201.ph, %.outer ], [ %i.ix, %.backedge ] ; 2 uses
  %.0184 = phi i32 [ %.0184.ph, %.outer ], [ %.1185, %.backedge ] ; 3 uses
  %i.hw = sub i32 %.3, %.0190.ph                  ; 2 uses
  %i.hx = trunc i32 %i.hw to i8                   ; 2 uses
  %i.hy = zext i32 %.2201 to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !10 ; 2 uses
  %i.ib = zext i16 %i.ia to i32                   ; 3 uses
  %i.ic = add nuw nsw i32 %i.ib, 1
  %i.id = icmp samesign ult i32 %i.ic, %.0233333
  br i1 %i.id, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not215 = icmp samesign ugt i32 %.0233333, %i.ib
  br i1 %.not215, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ie = sub nuw nsw i32 %i.ib, %.0233333
  %i.if = zext nneg i32 %i.ie to i64              ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %.0177232334, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !10
  %i.ii = trunc i16 %i.ih to i8
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.0178231335, i64 %i.if
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.am
  %.sroa.14.0 = phi i16 [ %i.ia, %bb.ak ], [ %i.ik, %bb.am ], [ 0, %bb.al ]
  %.sroa.0.0 = phi i8 [ 0, %bb.ak ], [ %i.ii, %bb.am ], [ 96, %bb.al ]
  %.neg = shl nsw i32 -1, %i.hw
  %i.il = lshr i32 %.0184, %.0190.ph
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.0182 = phi i32 [ %i.hv, %bb.an ], [ %i.im, %bb.ao ]
  %i.im = add i32 %.0182, %.neg                   ; 3 uses
  %i.in = add i32 %i.im, %i.il
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0179.ph, i64 %i.io ; 3 uses
  store i8 %.sroa.0.0, ptr %i.ip, align 2, !tbaa !19
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store i8 %i.hx, ptr %.sroa.11.0..sroa_idx23, align 1, !tbaa !19
  %.sroa.14.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx29, align 2, !tbaa !10
  %.not216 = icmp eq i32 %i.im, 0
  br i1 %.not216, label %bb.ap, label %bb.ao, !llvm.loop !22

bb.ap:                                            ; preds = %bb.ao
  %i.iq = add i32 %.3, -1
  %i.ir = shl nuw i32 1, %i.iq
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0183 = phi i32 [ %i.ir, %bb.ap ], [ %i.it, %bb.aq ] ; 5 uses
  %i.is = and i32 %.0183, %.0184
  %.not217 = icmp eq i32 %i.is, 0
  %i.it = lshr i32 %.0183, 1
  br i1 %.not217, label %bb.ar, label %bb.aq, !llvm.loop !23

bb.ar:                                            ; preds = %bb.aq
  %.not218 = icmp eq i32 %.0183, 0
  %i.iu = add i32 %.0183, -1
  %i.iv = and i32 %i.iu, %.0184
  %i.iw = add i32 %i.iv, %.0183
  %.1185 = select i1 %.not218, i32 0, i32 %i.iw   ; 5 uses
  %i.ix = add i32 %.2201, 1                       ; 3 uses
  %i.iy = zext i32 %.3 to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !10
  %i.jb = add i16 %i.ja, -1                       ; 2 uses
  store i16 %i.jb, ptr %i.iz, align 2, !tbaa !10
  %i.jc = icmp eq i16 %i.jb, 0
  br i1 %i.jc, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jd = icmp eq i32 %.3, %.0197246.lcssa324
  br i1 %i.jd, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = zext i32 %i.ix to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !10
  %i.jh = zext i16 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !10
  %i.jk = zext i16 %i.jj to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.4 = phi i32 [ %i.jk, %bb.at ], [ %.3, %bb.ar ] ; 6 uses
  %i.jl = icmp ugt i32 %.4, %spec.select326
  br i1 %i.jl, label %bb.av, label %.backedge

bb.av:                                            ; preds = %bb.au
  %i.jm = and i32 %.1185, %i.hs                   ; 3 uses
  %.not219 = icmp eq i32 %i.jm, %.0180.ph
  br i1 %.not219, label %.backedge, label %bb.aw

.backedge:                                        ; preds = %bb.av, %bb.au
  br label %bb.ak

bb.aw:                                            ; preds = %bb.av
  %i.jn = icmp eq i32 %.0190.ph, 0
  %spec.select223 = select i1 %i.jn, i32 %spec.select326, i32 %.0190.ph ; 4 uses
  %i.jo = zext i32 %i.hv to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0179.ph, i64 %i.jo ; 2 uses
  %i.jq = sub i32 %.4, %spec.select223            ; 3 uses
  %i.jr = shl nuw i32 1, %i.jq                    ; 2 uses
  %i.js = icmp ult i32 %.4, %.0197246.lcssa324
  br i1 %i.js, label %.lr.ph262.preheader, label %._crit_edge263

.lr.ph262.preheader:                              ; preds = %bb.aw
  %i.jt = sub i32 %.0197246.lcssa324, %spec.select223
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.ax
  %6 = phi i32 [ %8, %bb.ax ], [ %.4, %.lr.ph262.preheader ]
  %.1189260 = phi i32 [ %i.ka, %bb.ax ], [ %i.jr, %.lr.ph262.preheader ]
  %.1193259 = phi i32 [ %i.jz, %bb.ax ], [ %i.jq, %.lr.ph262.preheader ] ; 2 uses
  %7 = zext nneg i32 %6 to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %7
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !10
  %i.jw = zext i16 %i.jv to i32
  %i.jx = sub nsw i32 %.1189260, %i.jw            ; 2 uses
  %i.jy = icmp slt i32 %i.jx, 1
  br i1 %i.jy, label %._crit_edge263.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph262
  %i.jz = add i32 %.1193259, 1                    ; 2 uses
  %i.ka = shl nuw i32 %i.jx, 1
  %8 = add i32 %i.jz, %spec.select223             ; 2 uses
  %9 = icmp ult i32 %8, %.0197246.lcssa324
  br i1 %9, label %.lr.ph262, label %._crit_edge263.loopexit, !llvm.loop !24

._crit_edge263.loopexit:                          ; preds = %.lr.ph262, %bb.ax
  %.1193.lcssa.ph = phi i32 [ %i.jt, %bb.ax ], [ %.1193259, %.lr.ph262 ] ; 2 uses
  %.pre298 = shl nuw i32 1, %.1193.lcssa.ph
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %._crit_edge263.loopexit, %bb.aw
  %.pre-phi = phi i32 [ %.pre298, %._crit_edge263.loopexit ], [ %i.jr, %bb.aw ]
  %.1193.lcssa = phi i32 [ %.1193.lcssa.ph, %._crit_edge263.loopexit ], [ %i.jq, %bb.aw ] ; 2 uses
  %i.kb = add i32 %.pre-phi, %.0186.ph            ; 3 uses
  %i.kc = icmp ugt i32 %i.kb, 1332
  %or.cond7 = select i1 %i.hq, i1 %i.kc, i1 false
  %i.kd = icmp ugt i32 %i.kb, 592
  %or.cond9 = select i1 %i.hp, i1 %i.kd, i1 false
  %or.cond224 = select i1 %or.cond7, i1 true, i1 %or.cond9
  br i1 %or.cond224, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge263
  %i.ke = trunc i32 %.1193.lcssa to i8
  %i.kf = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.kg = zext nneg i32 %i.jm to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.kg ; 3 uses
  store i8 %i.ke, ptr %i.kh, align 2, !tbaa !25
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 %i.hu, ptr %i.ki, align 1, !tbaa !27
  %i.kj = ptrtoint ptr %i.jp to i64
  %i.kk = ptrtoint ptr %i.kf to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = lshr exact i64 %i.kl, 2
  %i.kn = trunc i64 %i.km to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !28
  br label %.outer

bb.az:                                            ; preds = %bb.as
  %.not220 = icmp eq i32 %.1185, 0
  br i1 %.not220, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kp = zext i32 %.1185 to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0179.ph, i64 %i.kp ; 3 uses
  store i8 64, ptr %i.kq, align 2, !tbaa !19
  %.sroa.11.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.hx, ptr %.sroa.11.0..sroa_idx25, align 1, !tbaa !19
  %.sroa.14.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx31, align 2, !tbaa !10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kr = load ptr, ptr %3, align 8, !tbaa !17
  %i.ks = zext i32 %.0186.ph to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ks
  store ptr %i.kt, ptr %3, align 8, !tbaa !17
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.o, %bb.bb
  %spec.select222.sink = phi i32 [ %spec.select326, %bb.bb ], [ 1, %bb.o ]
  store i32 %spec.select222.sink, ptr %4, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge263, %.loopexit.sink.split, %bb.ae, %._crit_edge250, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.aj, %.thread226
  %.0205 = phi i32 [ -1, %bb.q ], [ 1, %bb.aj ], [ -1, %._crit_edge250 ], [ -1, %bb.ae ], [ 0, %.loopexit.sink.split ], [ 1, %.thread226 ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ], [ 1, %._crit_edge263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0205
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!8, !8, i64 0}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = !{!26, !8, i64 0}
!26 = !{!"", !8, i64 0, !8, i64 1, !11, i64 2}
!27 = !{!26, !8, i64 1}
!28 = !{!26, !11, i64 2}
end_hunk_0
