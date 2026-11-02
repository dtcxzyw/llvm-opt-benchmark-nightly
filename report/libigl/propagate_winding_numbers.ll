Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/propagate_winding_numbers?download=true
inline.NumInlined: 954
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE:bb.a

bb.w:                                             ; preds = %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !41
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit:     ; preds = %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge, %bb.v
  %i.gb = phi ptr [ %.pre, %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge ], [ %i.ga, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !41 ; 2 uses
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.gl = sext i32 %.3.i.i.i.i to i64             ; 3 uses
  %i.gm = add nsw i64 %i.gl, 1
  %min.iters.check430 = icmp ugt i32 %i.dy, 7
  %ident.check426.not = icmp eq i64 %7, 1
  %or.cond444 = and i1 %min.iters.check430, %ident.check426.not
  %n.vec434 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n441 = icmp eq i64 %n.vec434, %i.dz
  %xtraiter462 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  %min.iters.check410 = icmp ugt i32 %i.dy, 7
  %ident.check408.not = icmp eq i64 %7, 1
  %or.cond445 = and i1 %min.iters.check410, %ident.check408.not
  %n.vec412 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec412, %i.dz
  %i.gn = and i32 %.3.i.i.i.i, 1
  %lcmp.mod466.not.not = icmp eq i32 %i.gn, 0
  br label %bb.x

.loopexit.loopexit:                               ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.pre295 = load ptr, ptr %i.gc, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph271, %.loopexit.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.go = phi ptr [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ], [ %.pre295, %.loopexit.loopexit ], [ %storemerge.i.i, %.lr.ph271 ] ; 2 uses
  %i.gp = load ptr, ptr %i.fu, align 8, !tbaa !41
  %i.gq = icmp eq ptr %i.gp, %i.go
  br i1 %i.gq, label %._crit_edge276, label %bb.x, !llvm.loop !81

bb.x:                                             ; preds = %.lr.ph275, %.loopexit
  %i.gr = phi ptr [ %i.gd, %.lr.ph275 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !19 ; 4 uses
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !42
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %.not.i.i110 = icmp eq ptr %i.gr, %i.gu
  br i1 %.not.i.i110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.z:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !43
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef 512) #26
  %i.gx = load ptr, ptr %i.gh, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.gh, align 8, !tbaa !45
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !46 ; 3 uses
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !47
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 512
  store ptr %i.ha, ptr %i.gf, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi ptr [ %i.gv, %bb.y ], [ %i.gz, %bb.z ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.gc, align 8, !tbaa !49
  %i.hb = load ptr, ptr %11, align 8, !tbaa !52
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %i.gs ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !57 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.he, %i.hf
  br i1 %.not269, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.hg = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.gs ; 10 uses
  br i1 %i.ex, label %.preheader.i.preheader.us, label %.loopexit

.preheader.i.preheader.us:                        ; preds = %.lr.ph271, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.sroa.0174.0270.us = phi ptr [ %i.ne, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us ], [ %i.he, %.lr.ph271 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 44
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18
  %i.hk = sext i32 %i.hj to i64                   ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 40
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !23, !range !24, !noundef !25
  %i.hn = load i64, ptr %i.hh, align 8, !tbaa !19
  %i.ho = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.hk ; 11 uses
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.preheader.us, %.critedge.i.us
  %.01224.i.us = phi i64 [ %i.ii, %.critedge.i.us ], [ 0, %.preheader.i.preheader.us ] ; 2 uses
  %i.hp = mul nsw i64 %.01224.i.us, %7
  %i.hq = getelementptr [4 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  %i.hs = icmp eq i32 %i.hr, 2147483647
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %.critedge.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %.preheader.i.us
  br i1 %or.cond444, label %vector.memcheck431, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446

vector.memcheck431:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.ht = sub i64 %i.hk, %i.gs
  %i.hu = shl i64 %i.ht, 2
  %i.hv = add i64 %i.hu, -1
  %diff.check432 = icmp ult i64 %i.hv, 31
  br i1 %diff.check432, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck431, %vector.body435
  %index436 = phi i64 [ %index.next439, %vector.body435 ], [ 0, %vector.memcheck431 ] ; 3 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %index436 ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %index436 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load437 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !18
  %wide.load438 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <4 x i32> %wide.load437, ptr %i.hw, align 4, !tbaa !18
  store <4 x i32> %wide.load438, ptr %i.hz, align 4, !tbaa !18
  %index.next439 = add nuw i64 %index436, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.ia, label %middle.block440, label %vector.body435, !llvm.loop !82

middle.block440:                                  ; preds = %vector.body435
  br i1 %cmp.n441, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446:     ; preds = %vector.memcheck431, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block440
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck431 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ], [ %n.vec434, %middle.block440 ] ; 3 uses
  %i.ib = sub nsw i64 %i.gl, %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph
  br i1 %lcmp.mod463.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ] ; 2 uses
  %prol.iter464 = phi i64 [ %prol.iter464.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ]
  %i.ic = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %7 ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ic
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18
  store i32 %i.if, ptr %i.id, align 4, !tbaa !18
  %i.ig = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter464.next = add i64 %prol.iter464, 1   ; 2 uses
  %prol.iter464.cmp.not = icmp eq i64 %prol.iter464.next, %xtraiter462
  br i1 %prol.iter464.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !83

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.ih = icmp ult i64 %i.ib, 3
  br i1 %i.ih, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us

.critedge.i.us:                                   ; preds = %.preheader.i.us
  %i.ii = add nuw nsw i64 %.01224.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ii, %i.dz
  br i1 %exitcond.not.i.us, label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us, label %.preheader.i.us, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 5 uses
  %i.ij = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %7 ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ij
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ij
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !18
  %i.in = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 1
  %i.io = mul nsw i64 %i.in, %7                   ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.io
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.io
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !18
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !18
  %i.is = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 2
  %i.it = mul nsw i64 %i.is, %7                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !18
  %i.ix = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 3
  %i.iy = mul nsw i64 %i.ix, %7                   ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.iy
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.iy
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !18
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !18
  %i.jc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.jc, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !84

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %.060268.us = phi i64 [ %i.js, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ %.060268.us.unr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit ] ; 4 uses
  %i.jd = mul nsw i64 %.060268.us, %7             ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %i.hg, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !18
  %i.jg = getelementptr [4 x i8], ptr %i.ho, i64 %i.jd
  %i.jh = icmp eq i64 %.060268.us, %sext
  %i.ji = select i1 %i.jh, i32 %i.ni, i32 0
  %i.jj = add nsw i32 %i.ji, %i.jf
  store i32 %i.jj, ptr %i.jg, align 4, !tbaa !18
  %i.jk = add nuw i64 %.060268.us, 1              ; 2 uses
  %i.jl = mul nsw i64 %i.jk, %7                   ; 2 uses
  %i.jm = getelementptr [4 x i8], ptr %i.hg, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !18
  %i.jo = getelementptr [4 x i8], ptr %i.ho, i64 %i.jl
  %i.jp = icmp eq i64 %i.jk, %sext
  %i.jq = select i1 %i.jp, i32 %i.ni, i32 0
  %i.jr = add nsw i32 %i.jq, %i.jn
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !18
  %i.js = add nuw i64 %.060268.us, 2              ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %i.js, %i.dz
  br i1 %exitcond292.not.1, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, !llvm.loop !85

.loopexit443:                                     ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, %middle.block422
  %i.jt = load ptr, ptr %i.fu, align 8, !tbaa !39 ; 4 uses
  %i.ju = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -8
  %.not.i.i111.us = icmp eq ptr %i.jt, %i.jv
  br i1 %.not.i.i111.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit443
  store i64 %i.hk, ptr %i.jt, align 8, !tbaa !19
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

bb.ab:                                            ; preds = %.loopexit443
  %i.jx = load ptr, ptr %i.gi, align 8, !tbaa !45 ; 3 uses
  %i.jy = load ptr, ptr %i.gh, align 8, !tbaa !45 ; 6 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64               ; 3 uses
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = ashr exact i64 %i.kb, 3                 ; 3 uses
  %i.kd = icmp ne ptr %i.jx, null
  %.neg.i.i.i.us = sext i1 %i.kd to i64
  %i.ke = add nsw i64 %i.kc, %.neg.i.i.i.us
  %i.kf = shl nsw i64 %i.ke, 6
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !47
  %i.kh = ptrtoint ptr %i.jt to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = add nsw i64 %i.kf, %i.kk
  %i.km = load ptr, ptr %i.gf, align 8, !tbaa !48
  %i.kn = load ptr, ptr %i.gc, align 8, !tbaa !41
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = ashr exact i64 %i.kq, 3
  %i.ks = add nsw i64 %i.kl, %i.kr
  %i.kt = icmp eq i64 %i.ks, 1152921504606846975
  br i1 %i.kt, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ku = load i64, ptr %i.gk, align 8, !tbaa !58 ; 5 uses
  %i.kv = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.jz, %i.kw
  %i.ky = ashr exact i64 %i.kx, 3
  %i.kz = sub i64 %i.ku, %i.ky
  %i.la = icmp ult i64 %i.kz, 2
  br i1 %i.la, label %bb.ad, label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.lb = add nsw i64 %i.kc, 1                    ; 2 uses
  %i.lc = add nsw i64 %i.kc, 2                    ; 3 uses
  %i.ld = shl nsw i64 %i.lc, 1
  %i.le = icmp ugt i64 %i.ku, %i.ld
  br i1 %i.le, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated.i.us = call i64 @llvm.umax.i64(i64 %i.ku, i64 1)
  %i.lf = add i64 %i.ku, 2
  %i.lg = add i64 %i.lf, %.sroa.speculated.i.us   ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 1152921504606846975
  br i1 %i.lh, label %.split273.us, label %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, !prof !60

_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us: ; preds = %bb.ae
  %i.li = shl nuw nsw i64 %i.lg, 3
  %i.lj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #27
          to label %.noexc142.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142.us:                                     ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %i.lk = sub nsw i64 %i.lg, %i.lc
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.ll ; 3 uses
  %i.ln = load ptr, ptr %i.gh, align 8, !tbaa !44 ; 3 uses
  %i.lo = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr                    ; 3 uses
  %i.lt = icmp sgt i64 %i.ls, 8
  br i1 %i.lt, label %bb.ah, label %bb.af, !prof !62

bb.af:                                            ; preds = %.noexc142.us
  %i.lu = icmp eq i64 %i.ls, 8
  br i1 %i.lu, label %bb.ag, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ag:                                            ; preds = %bb.af
  %i.lv = load ptr, ptr %i.ln, align 8, !tbaa !46
  store ptr %i.lv, ptr %i.lm, align 8, !tbaa !46
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ah:                                            ; preds = %.noexc142.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr align 8 %i.ln, i64 %i.ls, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us:         ; preds = %bb.ah, %bb.ag, %bb.af
  %i.lw = load ptr, ptr %13, align 8, !tbaa !59
  %i.lx = load i64, ptr %i.gk, align 8, !tbaa !58
  %i.ly = shl i64 %i.lx, 3
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ly) #26
  store ptr %i.lj, ptr %13, align 8, !tbaa !59
  store i64 %i.lg, ptr %i.gk, align 8, !tbaa !58
  br label %.noexc138.us

bb.ai:                                            ; preds = %bb.ad
  %i.lz = sub i64 %i.ku, %i.lc
  %i.ma = lshr i64 %i.lz, 1
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ma ; 10 uses
  %i.mc = icmp ult ptr %i.mb, %i.jy
  %i.md = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  br i1 %i.mc, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lb ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.mf, %i.ka                    ; 3 uses
  %i.mh = ashr exact i64 %i.mg, 3                 ; 2 uses
  %i.mi = icmp sgt i64 %i.mh, 1
  br i1 %i.mi, label %bb.am, label %bb.ak, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.mj = icmp eq i64 %i.mg, 8
  br i1 %i.mj, label %bb.al, label %.noexc138.us

bb.al:                                            ; preds = %bb.ak
  %i.mk = getelementptr inbounds i8, ptr %i.me, i64 -8
  %i.ml = load ptr, ptr %i.jy, align 8, !tbaa !46
  store ptr %i.ml, ptr %i.mk, align 8, !tbaa !46
  br label %.noexc138.us

bb.am:                                            ; preds = %bb.aj
  %i.mm = sub nsw i64 0, %i.mh
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mm
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mn, ptr align 8 %i.jy, i64 %i.mg, i1 false)
  br label %.noexc138.us

bb.an:                                            ; preds = %bb.ai
  %i.mo = ptrtoint ptr %i.md to i64
  %i.mp = sub i64 %i.mo, %i.ka                    ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, 8
  br i1 %i.mq, label %bb.aq, label %bb.ao, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.mr = icmp eq i64 %i.mp, 8
  br i1 %i.mr, label %bb.ap, label %.noexc138.us

bb.ap:                                            ; preds = %bb.ao
  %i.ms = load ptr, ptr %i.jy, align 8, !tbaa !46
  store ptr %i.ms, ptr %i.mb, align 8, !tbaa !46
  br label %.noexc138.us

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mb, ptr nonnull align 8 %i.jy, i64 %i.mp, i1 false)
  br label %.noexc138.us

.noexc138.us:                                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us
  %.0.i.us = phi ptr [ %i.lm, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us ], [ %i.mb, %bb.ap ], [ %i.mb, %bb.aq ], [ %i.mb, %bb.ao ], [ %i.mb, %bb.am ], [ %i.mb, %bb.ak ], [ %i.mb, %bb.al ] ; 3 uses
  store ptr %.0.i.us, ptr %i.gh, align 8, !tbaa !45
  %i.mt = load ptr, ptr %.0.i.us, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mt, ptr %i.gg, align 8, !tbaa !47
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 512
  store ptr %i.mu, ptr %i.gf, align 8, !tbaa !48
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.lb
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8 ; 2 uses
  store ptr %i.mw, ptr %i.gi, align 8, !tbaa !45
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mx, ptr %i.gj, align 8, !tbaa !47
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 512
  store ptr %i.my, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us: ; preds = %.noexc138.us, %bb.ac
  %i.mz = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc112.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc112.us:                                     ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us
  %i.na = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  store ptr %i.mz, ptr %i.nb, align 8, !tbaa !46
  %i.nc = load ptr, ptr %i.fu, align 8, !tbaa !39
  store i64 %i.hk, ptr %i.nc, align 8, !tbaa !19
  store ptr %i.nb, ptr %i.gi, align 8, !tbaa !45
  store ptr %i.mz, ptr %i.gj, align 8, !tbaa !47
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 512
  store ptr %i.nd, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split: ; preds = %bb.aa, %.noexc112.us
  %.sink = phi ptr [ %i.mz, %.noexc112.us ], [ %i.jw, %bb.aa ]
  store ptr %.sink, ptr %i.fu, align 8, !tbaa !39
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us: ; preds = %.critedge.i.us, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split
  %i.ne = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0174.0270.us) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.ne, %i.hf
  br i1 %.not.us, label %.loopexit.loopexit, label %.preheader.i.preheader.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block440
  %i.nf = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.hn
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !18
  %i.nh = trunc nuw i8 %i.hm to i1
  %i.ni = select i1 %i.nh, i32 -1, i32 1          ; 4 uses
  %sext = sext i32 %i.ng to i64                   ; 4 uses
  br i1 %or.cond445, label %vector.memcheck, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us
  %i.nj = sub i64 %i.hk, %i.gs
  %i.nk = shl i64 %i.nj, 2
  %i.nl = add i64 %i.nk, -1
  %diff.check = icmp ult i64 %i.nl, 31
  br i1 %diff.check, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert415 = insertelement <4 x i64> poison, i64 %sext, i64 0
  %broadcast.splat416 = shufflevector <4 x i64> %broadcast.splatinsert415, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next421, %vector.body417 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph411 ], [ %vec.ind.next, %vector.body417 ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.nm = getelementptr [4 x i8], ptr %i.hg, i64 %index418 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 16
  %wide.load419 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !18
  %wide.load420 = load <4 x i32>, ptr %i.nn, align 4, !tbaa !18
  %i.no = getelementptr [4 x i8], ptr %i.ho, i64 %index418 ; 2 uses
  %i.np = icmp eq <4 x i64> %vec.ind, %broadcast.splat416
  %i.nq = icmp eq <4 x i64> %step.add, %broadcast.splat416
  %i.nr = select <4 x i1> %i.np, <4 x i32> %broadcast.splat414, <4 x i32> zeroinitializer
  %i.ns = select <4 x i1> %i.nq, <4 x i32> %broadcast.splat414, <4 x i32> zeroinitializer
  %i.nt = add nsw <4 x i32> %i.nr, %wide.load419
  %i.nu = add nsw <4 x i32> %i.ns, %wide.load420
  %i.nv = getelementptr i8, ptr %i.no, i64 16
  store <4 x i32> %i.nt, ptr %i.no, align 4, !tbaa !18
  store <4 x i32> %i.nu, ptr %i.nv, align 4, !tbaa !18
  %index.next421 = add nuw i64 %index418, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.nw = icmp eq i64 %index.next421, %n.vec412
  br i1 %i.nw, label %middle.block422, label %vector.body417, !llvm.loop !86

middle.block422:                                  ; preds = %vector.body417
  br i1 %cmp.n423, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader: ; preds = %vector.memcheck, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, %middle.block422
  %.060268.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us ], [ %n.vec412, %middle.block422 ] ; 5 uses
  br i1 %lcmp.mod466.not.not, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %i.nx = mul nsw i64 %.060268.us.ph, %7          ; 2 uses
  %i.ny = getelementptr [4 x i8], ptr %i.hg, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !18
  %i.oa = getelementptr [4 x i8], ptr %i.ho, i64 %i.nx
  %i.ob = icmp eq i64 %.060268.us.ph, %sext
  %i.oc = select i1 %i.ob, i32 %i.ni, i32 0
  %i.od = add nsw i32 %i.oc, %i.nz
  store i32 %i.od, ptr %i.oa, align 4, !tbaa !18
  %i.oe = or disjoint i64 %.060268.us.ph, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %.060268.us.unr = phi i64 [ %.060268.us.ph, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader ], [ %i.oe, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol ]
  %i.of = icmp eq i64 %.060268.us.ph, %i.gl
  br i1 %i.of, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, %bb.w, %bb.at, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.noexc3.i.i, %.noexc.i.i, %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i118, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124, label %bb.ax

bb.ar:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
          to label %.noexc137 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137:                                        ; preds = %.split.us
  unreachable

.split273.us:                                     ; preds = %bb.ae
  %i.oi = icmp ugt i64 %i.lg, 2305843009213693951
  br i1 %i.oi, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split273.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc140 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %.split273.us
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc141 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc3.i.i
  unreachable

._crit_edge276:                                   ; preds = %.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.oj = shl nsw i64 %i.dz, 1                    ; 3 uses
  %or.cond.i.i = or i1 %.not283, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge276
  %i.ok = sdiv i64 9223372036854775807, %i.oj
  %i.ol = icmp sgt i64 %i.h, %i.ok
  br i1 %i.ol, label %bb.at, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.om = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.om, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.om, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc114 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.at
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.as, %._crit_edge276
  %i.on = mul nsw i64 %i.oj, %i.h
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.on, i64 noundef %i.h, i64 noundef %i.oj)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  br i1 %.not283, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.oo = load ptr, ptr %6, align 8, !tbaa !21
  %i.op = load ptr, ptr %8, align 8, !tbaa !26
  %i.oq = load i64, ptr %i.s, align 8, !tbaa !17
  br i1 %i.eb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %i.or = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.os = load ptr, ptr %10, align 8, !tbaa !26
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !17 ; 6 uses
  %i.ou = icmp eq i32 %.3.i.i.i.i, 0
  %unroll_iter471 = and i64 %i.dz, -2
  %i.ov = and i32 %.3.i.i.i.i, 1
  %lcmp.mod469.not.not = icmp eq i32 %i.ov, 0
  %lcmp.mod470 = trunc i32 %i.dy to i1
  br label %.lr.ph279

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split: ; preds = %._crit_edge280, %.lr.ph282, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ow = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split
  %i.ox = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !44 ; 2 uses
  %i.pa = load ptr, ptr %i.ox, align 8, !tbaa !61 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = icmp ult ptr %i.oz, %i.pb
  br i1 %i.pc, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.au, %.lr.ph.i.i.i.i116
  %.06.i.i.i.i = phi ptr [ %i.pe, %.lr.ph.i.i.i.i116 ], [ %i.oz, %bb.au ] ; 3 uses
  %i.pd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef 512) #26
  %i.pe = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.pf = icmp ult ptr %.06.i.i.i.i, %i.pa
  br i1 %i.pf, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i116
  %.pre.i.i.i = load ptr, ptr %13, align 8, !tbaa !59
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.au
  %i.pg = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.ow, %bb.au ]
  %i.ph = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !58
  %i.pj = shl i64 %i.pi, 3
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  call void @free(ptr noundef %.sroa.0190.0244) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.pk = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.pk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.pl = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pl, %i.pn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ps, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i ], [ %i.pl, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.pp)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.pq = landingpad { ptr, i32 }
          catch ptr null
  %i.pr = extractvalue { ptr, i32 } %i.pq, 0
  call void @__clang_call_terminate(ptr %i.pr) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.ps, %i.pn
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  %i.pt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pl, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !65
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pt to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.py) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 %i.f

.lr.ph279:                                        ; preds = %.lr.ph282.split, %._crit_edge280
  %.059281 = phi i64 [ 0, %.lr.ph282.split ], [ %i.qw, %._crit_edge280 ] ; 3 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %.059281
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !18
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr [4 x i8], ptr %i.op, i64 %i.qb ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !18
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr [4 x i8], ptr %i.qc, i64 %i.oq
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !18
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qe ; 3 uses
  %i.qj = getelementptr [4 x i8], ptr %i.os, i64 %.059281 ; 6 uses
  %i.qk = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qh ; 3 uses
  br i1 %i.ou, label %.epil.preheader, label %.lr.ph279.new

._crit_edge280.unr-lcssa:                         ; preds = %.lr.ph279.new
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE:bb.a

bb.w:                                             ; preds = %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !41
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit:     ; preds = %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge, %bb.v
  %i.gb = phi ptr [ %.pre, %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge ], [ %i.ga, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !41 ; 2 uses
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.gl = sext i32 %.3.i.i.i.i to i64             ; 3 uses
  %i.gm = add nsw i64 %i.gl, 1
  %min.iters.check430 = icmp ugt i32 %i.dy, 7
  %ident.check426.not = icmp eq i64 %7, 1
  %or.cond444 = and i1 %min.iters.check430, %ident.check426.not
  %n.vec434 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n441 = icmp eq i64 %n.vec434, %i.dz
  %xtraiter462 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  %min.iters.check410 = icmp ugt i32 %i.dy, 7
  %ident.check408.not = icmp eq i64 %7, 1
  %or.cond445 = and i1 %min.iters.check410, %ident.check408.not
  %n.vec412 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec412, %i.dz
  %i.gn = and i32 %.3.i.i.i.i, 1
  %lcmp.mod466.not.not = icmp eq i32 %i.gn, 0
  br label %bb.x

.loopexit.loopexit:                               ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.pre295 = load ptr, ptr %i.gc, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph271, %.loopexit.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.go = phi ptr [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ], [ %.pre295, %.loopexit.loopexit ], [ %storemerge.i.i, %.lr.ph271 ] ; 2 uses
  %i.gp = load ptr, ptr %i.fu, align 8, !tbaa !41
  %i.gq = icmp eq ptr %i.gp, %i.go
  br i1 %i.gq, label %._crit_edge276, label %bb.x, !llvm.loop !111

bb.x:                                             ; preds = %.lr.ph275, %.loopexit
  %i.gr = phi ptr [ %i.gd, %.lr.ph275 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !19 ; 4 uses
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !42
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %.not.i.i110 = icmp eq ptr %i.gr, %i.gu
  br i1 %.not.i.i110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.z:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !43
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef 512) #26
  %i.gx = load ptr, ptr %i.gh, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.gh, align 8, !tbaa !45
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !46 ; 3 uses
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !47
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 512
  store ptr %i.ha, ptr %i.gf, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi ptr [ %i.gv, %bb.y ], [ %i.gz, %bb.z ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.gc, align 8, !tbaa !49
  %i.hb = load ptr, ptr %11, align 8, !tbaa !52
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %i.gs ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !57 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.he, %i.hf
  br i1 %.not269, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.hg = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.gs ; 10 uses
  br i1 %i.ex, label %.preheader.i.preheader.us, label %.loopexit

.preheader.i.preheader.us:                        ; preds = %.lr.ph271, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.sroa.0174.0270.us = phi ptr [ %i.ne, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us ], [ %i.he, %.lr.ph271 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 44
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18
  %i.hk = sext i32 %i.hj to i64                   ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 40
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !23, !range !24, !noundef !25
  %i.hn = load i64, ptr %i.hh, align 8, !tbaa !19
  %i.ho = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.hk ; 11 uses
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.preheader.us, %.critedge.i.us
  %.01224.i.us = phi i64 [ %i.ii, %.critedge.i.us ], [ 0, %.preheader.i.preheader.us ] ; 2 uses
  %i.hp = mul nsw i64 %.01224.i.us, %7
  %i.hq = getelementptr [4 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  %i.hs = icmp eq i32 %i.hr, 2147483647
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %.critedge.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %.preheader.i.us
  br i1 %or.cond444, label %vector.memcheck431, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446

vector.memcheck431:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.ht = sub i64 %i.hk, %i.gs
  %i.hu = shl i64 %i.ht, 2
  %i.hv = add i64 %i.hu, -1
  %diff.check432 = icmp ult i64 %i.hv, 31
  br i1 %diff.check432, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck431, %vector.body435
  %index436 = phi i64 [ %index.next439, %vector.body435 ], [ 0, %vector.memcheck431 ] ; 3 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %index436 ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %index436 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load437 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !18
  %wide.load438 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <4 x i32> %wide.load437, ptr %i.hw, align 4, !tbaa !18
  store <4 x i32> %wide.load438, ptr %i.hz, align 4, !tbaa !18
  %index.next439 = add nuw i64 %index436, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.ia, label %middle.block440, label %vector.body435, !llvm.loop !112

middle.block440:                                  ; preds = %vector.body435
  br i1 %cmp.n441, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446:     ; preds = %vector.memcheck431, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block440
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck431 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ], [ %n.vec434, %middle.block440 ] ; 3 uses
  %i.ib = sub nsw i64 %i.gl, %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph
  br i1 %lcmp.mod463.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ] ; 2 uses
  %prol.iter464 = phi i64 [ %prol.iter464.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ]
  %i.ic = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %7 ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ic
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18
  store i32 %i.if, ptr %i.id, align 4, !tbaa !18
  %i.ig = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter464.next = add i64 %prol.iter464, 1   ; 2 uses
  %prol.iter464.cmp.not = icmp eq i64 %prol.iter464.next, %xtraiter462
  br i1 %prol.iter464.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !113

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.ih = icmp ult i64 %i.ib, 3
  br i1 %i.ih, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us

.critedge.i.us:                                   ; preds = %.preheader.i.us
  %i.ii = add nuw nsw i64 %.01224.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ii, %i.dz
  br i1 %exitcond.not.i.us, label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us, label %.preheader.i.us, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 5 uses
  %i.ij = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %7 ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ij
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ij
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !18
  %i.in = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 1
  %i.io = mul nsw i64 %i.in, %7                   ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.io
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.io
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !18
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !18
  %i.is = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 2
  %i.it = mul nsw i64 %i.is, %7                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !18
  %i.ix = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 3
  %i.iy = mul nsw i64 %i.ix, %7                   ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.iy
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.iy
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !18
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !18
  %i.jc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.jc, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !114

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %.060268.us = phi i64 [ %i.js, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ %.060268.us.unr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit ] ; 4 uses
  %i.jd = mul nsw i64 %.060268.us, %7             ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %i.hg, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !18
  %i.jg = getelementptr [4 x i8], ptr %i.ho, i64 %i.jd
  %i.jh = icmp eq i64 %.060268.us, %sext
  %i.ji = select i1 %i.jh, i32 %i.ni, i32 0
  %i.jj = add nsw i32 %i.ji, %i.jf
  store i32 %i.jj, ptr %i.jg, align 4, !tbaa !18
  %i.jk = add nuw i64 %.060268.us, 1              ; 2 uses
  %i.jl = mul nsw i64 %i.jk, %7                   ; 2 uses
  %i.jm = getelementptr [4 x i8], ptr %i.hg, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !18
  %i.jo = getelementptr [4 x i8], ptr %i.ho, i64 %i.jl
  %i.jp = icmp eq i64 %i.jk, %sext
  %i.jq = select i1 %i.jp, i32 %i.ni, i32 0
  %i.jr = add nsw i32 %i.jq, %i.jn
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !18
  %i.js = add nuw i64 %.060268.us, 2              ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %i.js, %i.dz
  br i1 %exitcond292.not.1, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, !llvm.loop !115

.loopexit443:                                     ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, %middle.block422
  %i.jt = load ptr, ptr %i.fu, align 8, !tbaa !39 ; 4 uses
  %i.ju = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -8
  %.not.i.i111.us = icmp eq ptr %i.jt, %i.jv
  br i1 %.not.i.i111.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit443
  store i64 %i.hk, ptr %i.jt, align 8, !tbaa !19
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

bb.ab:                                            ; preds = %.loopexit443
  %i.jx = load ptr, ptr %i.gi, align 8, !tbaa !45 ; 3 uses
  %i.jy = load ptr, ptr %i.gh, align 8, !tbaa !45 ; 6 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64               ; 3 uses
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = ashr exact i64 %i.kb, 3                 ; 3 uses
  %i.kd = icmp ne ptr %i.jx, null
  %.neg.i.i.i.us = sext i1 %i.kd to i64
  %i.ke = add nsw i64 %i.kc, %.neg.i.i.i.us
  %i.kf = shl nsw i64 %i.ke, 6
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !47
  %i.kh = ptrtoint ptr %i.jt to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = add nsw i64 %i.kf, %i.kk
  %i.km = load ptr, ptr %i.gf, align 8, !tbaa !48
  %i.kn = load ptr, ptr %i.gc, align 8, !tbaa !41
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = ashr exact i64 %i.kq, 3
  %i.ks = add nsw i64 %i.kl, %i.kr
  %i.kt = icmp eq i64 %i.ks, 1152921504606846975
  br i1 %i.kt, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ku = load i64, ptr %i.gk, align 8, !tbaa !58 ; 5 uses
  %i.kv = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.jz, %i.kw
  %i.ky = ashr exact i64 %i.kx, 3
  %i.kz = sub i64 %i.ku, %i.ky
  %i.la = icmp ult i64 %i.kz, 2
  br i1 %i.la, label %bb.ad, label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.lb = add nsw i64 %i.kc, 1                    ; 2 uses
  %i.lc = add nsw i64 %i.kc, 2                    ; 3 uses
  %i.ld = shl nsw i64 %i.lc, 1
  %i.le = icmp ugt i64 %i.ku, %i.ld
  br i1 %i.le, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated.i.us = call i64 @llvm.umax.i64(i64 %i.ku, i64 1)
  %i.lf = add i64 %i.ku, 2
  %i.lg = add i64 %i.lf, %.sroa.speculated.i.us   ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 1152921504606846975
  br i1 %i.lh, label %.split273.us, label %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, !prof !60

_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us: ; preds = %bb.ae
  %i.li = shl nuw nsw i64 %i.lg, 3
  %i.lj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #27
          to label %.noexc142.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142.us:                                     ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %i.lk = sub nsw i64 %i.lg, %i.lc
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.ll ; 3 uses
  %i.ln = load ptr, ptr %i.gh, align 8, !tbaa !44 ; 3 uses
  %i.lo = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr                    ; 3 uses
  %i.lt = icmp sgt i64 %i.ls, 8
  br i1 %i.lt, label %bb.ah, label %bb.af, !prof !62

bb.af:                                            ; preds = %.noexc142.us
  %i.lu = icmp eq i64 %i.ls, 8
  br i1 %i.lu, label %bb.ag, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ag:                                            ; preds = %bb.af
  %i.lv = load ptr, ptr %i.ln, align 8, !tbaa !46
  store ptr %i.lv, ptr %i.lm, align 8, !tbaa !46
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ah:                                            ; preds = %.noexc142.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr align 8 %i.ln, i64 %i.ls, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us:         ; preds = %bb.ah, %bb.ag, %bb.af
  %i.lw = load ptr, ptr %13, align 8, !tbaa !59
  %i.lx = load i64, ptr %i.gk, align 8, !tbaa !58
  %i.ly = shl i64 %i.lx, 3
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ly) #26
  store ptr %i.lj, ptr %13, align 8, !tbaa !59
  store i64 %i.lg, ptr %i.gk, align 8, !tbaa !58
  br label %.noexc138.us

bb.ai:                                            ; preds = %bb.ad
  %i.lz = sub i64 %i.ku, %i.lc
  %i.ma = lshr i64 %i.lz, 1
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ma ; 10 uses
  %i.mc = icmp ult ptr %i.mb, %i.jy
  %i.md = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  br i1 %i.mc, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lb ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.mf, %i.ka                    ; 3 uses
  %i.mh = ashr exact i64 %i.mg, 3                 ; 2 uses
  %i.mi = icmp sgt i64 %i.mh, 1
  br i1 %i.mi, label %bb.am, label %bb.ak, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.mj = icmp eq i64 %i.mg, 8
  br i1 %i.mj, label %bb.al, label %.noexc138.us

bb.al:                                            ; preds = %bb.ak
  %i.mk = getelementptr inbounds i8, ptr %i.me, i64 -8
  %i.ml = load ptr, ptr %i.jy, align 8, !tbaa !46
  store ptr %i.ml, ptr %i.mk, align 8, !tbaa !46
  br label %.noexc138.us

bb.am:                                            ; preds = %bb.aj
  %i.mm = sub nsw i64 0, %i.mh
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mm
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mn, ptr align 8 %i.jy, i64 %i.mg, i1 false)
  br label %.noexc138.us

bb.an:                                            ; preds = %bb.ai
  %i.mo = ptrtoint ptr %i.md to i64
  %i.mp = sub i64 %i.mo, %i.ka                    ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, 8
  br i1 %i.mq, label %bb.aq, label %bb.ao, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.mr = icmp eq i64 %i.mp, 8
  br i1 %i.mr, label %bb.ap, label %.noexc138.us

bb.ap:                                            ; preds = %bb.ao
  %i.ms = load ptr, ptr %i.jy, align 8, !tbaa !46
  store ptr %i.ms, ptr %i.mb, align 8, !tbaa !46
  br label %.noexc138.us

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mb, ptr nonnull align 8 %i.jy, i64 %i.mp, i1 false)
  br label %.noexc138.us

.noexc138.us:                                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us
  %.0.i.us = phi ptr [ %i.lm, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us ], [ %i.mb, %bb.ap ], [ %i.mb, %bb.aq ], [ %i.mb, %bb.ao ], [ %i.mb, %bb.am ], [ %i.mb, %bb.ak ], [ %i.mb, %bb.al ] ; 3 uses
  store ptr %.0.i.us, ptr %i.gh, align 8, !tbaa !45
  %i.mt = load ptr, ptr %.0.i.us, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mt, ptr %i.gg, align 8, !tbaa !47
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 512
  store ptr %i.mu, ptr %i.gf, align 8, !tbaa !48
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.lb
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8 ; 2 uses
  store ptr %i.mw, ptr %i.gi, align 8, !tbaa !45
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mx, ptr %i.gj, align 8, !tbaa !47
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 512
  store ptr %i.my, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us: ; preds = %.noexc138.us, %bb.ac
  %i.mz = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc112.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc112.us:                                     ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us
  %i.na = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  store ptr %i.mz, ptr %i.nb, align 8, !tbaa !46
  %i.nc = load ptr, ptr %i.fu, align 8, !tbaa !39
  store i64 %i.hk, ptr %i.nc, align 8, !tbaa !19
  store ptr %i.nb, ptr %i.gi, align 8, !tbaa !45
  store ptr %i.mz, ptr %i.gj, align 8, !tbaa !47
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 512
  store ptr %i.nd, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split: ; preds = %bb.aa, %.noexc112.us
  %.sink = phi ptr [ %i.mz, %.noexc112.us ], [ %i.jw, %bb.aa ]
  store ptr %.sink, ptr %i.fu, align 8, !tbaa !39
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us: ; preds = %.critedge.i.us, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split
  %i.ne = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0174.0270.us) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.ne, %i.hf
  br i1 %.not.us, label %.loopexit.loopexit, label %.preheader.i.preheader.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block440
  %i.nf = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.hn
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !18
  %i.nh = trunc nuw i8 %i.hm to i1
  %i.ni = select i1 %i.nh, i32 -1, i32 1          ; 4 uses
  %sext = sext i32 %i.ng to i64                   ; 4 uses
  br i1 %or.cond445, label %vector.memcheck, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us
  %i.nj = sub i64 %i.hk, %i.gs
  %i.nk = shl i64 %i.nj, 2
  %i.nl = add i64 %i.nk, -1
  %diff.check = icmp ult i64 %i.nl, 31
  br i1 %diff.check, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert415 = insertelement <4 x i64> poison, i64 %sext, i64 0
  %broadcast.splat416 = shufflevector <4 x i64> %broadcast.splatinsert415, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next421, %vector.body417 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph411 ], [ %vec.ind.next, %vector.body417 ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.nm = getelementptr [4 x i8], ptr %i.hg, i64 %index418 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 16
  %wide.load419 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !18
  %wide.load420 = load <4 x i32>, ptr %i.nn, align 4, !tbaa !18
  %i.no = getelementptr [4 x i8], ptr %i.ho, i64 %index418 ; 2 uses
  %i.np = icmp eq <4 x i64> %vec.ind, %broadcast.splat416
  %i.nq = icmp eq <4 x i64> %step.add, %broadcast.splat416
  %i.nr = select <4 x i1> %i.np, <4 x i32> %broadcast.splat414, <4 x i32> zeroinitializer
  %i.ns = select <4 x i1> %i.nq, <4 x i32> %broadcast.splat414, <4 x i32> zeroinitializer
  %i.nt = add nsw <4 x i32> %i.nr, %wide.load419
  %i.nu = add nsw <4 x i32> %i.ns, %wide.load420
  %i.nv = getelementptr i8, ptr %i.no, i64 16
  store <4 x i32> %i.nt, ptr %i.no, align 4, !tbaa !18
  store <4 x i32> %i.nu, ptr %i.nv, align 4, !tbaa !18
  %index.next421 = add nuw i64 %index418, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.nw = icmp eq i64 %index.next421, %n.vec412
  br i1 %i.nw, label %middle.block422, label %vector.body417, !llvm.loop !116

middle.block422:                                  ; preds = %vector.body417
  br i1 %cmp.n423, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader: ; preds = %vector.memcheck, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, %middle.block422
  %.060268.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us ], [ %n.vec412, %middle.block422 ] ; 5 uses
  br i1 %lcmp.mod466.not.not, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %i.nx = mul nsw i64 %.060268.us.ph, %7          ; 2 uses
  %i.ny = getelementptr [4 x i8], ptr %i.hg, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !18
  %i.oa = getelementptr [4 x i8], ptr %i.ho, i64 %i.nx
  %i.ob = icmp eq i64 %.060268.us.ph, %sext
  %i.oc = select i1 %i.ob, i32 %i.ni, i32 0
  %i.od = add nsw i32 %i.oc, %i.nz
  store i32 %i.od, ptr %i.oa, align 4, !tbaa !18
  %i.oe = or disjoint i64 %.060268.us.ph, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %.060268.us.unr = phi i64 [ %.060268.us.ph, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader ], [ %i.oe, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol ]
  %i.of = icmp eq i64 %.060268.us.ph, %i.gl
  br i1 %i.of, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, %bb.w, %bb.at, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.noexc3.i.i, %.noexc.i.i, %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i118, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124, label %bb.ax

bb.ar:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
          to label %.noexc137 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137:                                        ; preds = %.split.us
  unreachable

.split273.us:                                     ; preds = %bb.ae
  %i.oi = icmp ugt i64 %i.lg, 2305843009213693951
  br i1 %i.oi, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split273.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc140 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %.split273.us
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc141 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc3.i.i
  unreachable

._crit_edge276:                                   ; preds = %.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.oj = shl nsw i64 %i.dz, 1                    ; 3 uses
  %or.cond.i.i = or i1 %.not283, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge276
  %i.ok = sdiv i64 9223372036854775807, %i.oj
  %i.ol = icmp sgt i64 %i.h, %i.ok
  br i1 %i.ol, label %bb.at, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.om = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.om, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.om, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc114 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.at
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.as, %._crit_edge276
  %i.on = mul nsw i64 %i.oj, %i.h
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.on, i64 noundef %i.h, i64 noundef %i.oj)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  br i1 %.not283, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.oo = load ptr, ptr %6, align 8, !tbaa !21
  %i.op = load ptr, ptr %8, align 8, !tbaa !26
  %i.oq = load i64, ptr %i.s, align 8, !tbaa !17
  br i1 %i.eb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %i.or = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.os = load ptr, ptr %10, align 8, !tbaa !26
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !17 ; 6 uses
  %i.ou = icmp eq i32 %.3.i.i.i.i, 0
  %unroll_iter471 = and i64 %i.dz, -2
  %i.ov = and i32 %.3.i.i.i.i, 1
  %lcmp.mod469.not.not = icmp eq i32 %i.ov, 0
  %lcmp.mod470 = trunc i32 %i.dy to i1
  br label %.lr.ph279

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split: ; preds = %._crit_edge280, %.lr.ph282, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ow = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split
  %i.ox = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !44 ; 2 uses
  %i.pa = load ptr, ptr %i.ox, align 8, !tbaa !61 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = icmp ult ptr %i.oz, %i.pb
  br i1 %i.pc, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.au, %.lr.ph.i.i.i.i116
  %.06.i.i.i.i = phi ptr [ %i.pe, %.lr.ph.i.i.i.i116 ], [ %i.oz, %bb.au ] ; 3 uses
  %i.pd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef 512) #26
  %i.pe = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.pf = icmp ult ptr %.06.i.i.i.i, %i.pa
  br i1 %i.pf, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i116
  %.pre.i.i.i = load ptr, ptr %13, align 8, !tbaa !59
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.au
  %i.pg = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.ow, %bb.au ]
  %i.ph = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !58
  %i.pj = shl i64 %i.pi, 3
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  call void @free(ptr noundef %.sroa.0190.0244) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.pk = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.pk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.pl = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pl, %i.pn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ps, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i ], [ %i.pl, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.pp)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.pq = landingpad { ptr, i32 }
          catch ptr null
  %i.pr = extractvalue { ptr, i32 } %i.pq, 0
  call void @__clang_call_terminate(ptr %i.pr) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.ps, %i.pn
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  %i.pt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pl, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !65
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pt to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.py) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 %i.f

.lr.ph279:                                        ; preds = %.lr.ph282.split, %._crit_edge280
  %.059281 = phi i64 [ 0, %.lr.ph282.split ], [ %i.qw, %._crit_edge280 ] ; 3 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %.059281
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !18
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr [4 x i8], ptr %i.op, i64 %i.qb ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !18
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr [4 x i8], ptr %i.qc, i64 %i.oq
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !18
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qe ; 3 uses
  %i.qj = getelementptr [4 x i8], ptr %i.os, i64 %.059281 ; 6 uses
  %i.qk = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qh ; 3 uses
  br i1 %i.ou, label %.epil.preheader, label %.lr.ph279.new

._crit_edge280.unr-lcssa:                         ; preds = %.lr.ph279.new
end_hunk_1
