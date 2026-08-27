Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/propagate_winding_numbers?download=true
inline.NumInlined: 954
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE:bb.a
._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !50
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit:     ; preds = %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge, %bb.v
  %i.gb = phi ptr [ %.pre, %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge ], [ %i.ga, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !50 ; 2 uses
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
  %min.iters.check429 = icmp ugt i32 %i.dy, 7
  %ident.check425.not = icmp eq i64 %7, 1
  %or.cond441 = and i1 %min.iters.check429, %ident.check425.not
  %n.vec431 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n438 = icmp eq i64 %n.vec431, %i.dz
  %xtraiter459 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  %min.iters.check409 = icmp ugt i32 %i.dy, 7
  %ident.check407.not = icmp eq i64 %7, 1
  %or.cond442 = and i1 %min.iters.check409, %ident.check407.not
  %n.vec411 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n422 = icmp eq i64 %n.vec411, %i.dz
  %i.gn = and i32 %.3.i.i.i.i, 1
  %lcmp.mod463.not.not = icmp eq i32 %i.gn, 0
  br label %bb.x

.loopexit.loopexit:                               ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.pre295 = load ptr, ptr %i.gc, align 8, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph271, %.loopexit.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.go = phi ptr [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ], [ %.pre295, %.loopexit.loopexit ], [ %storemerge.i.i, %.lr.ph271 ] ; 2 uses
  %i.gp = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.gq = icmp eq ptr %i.gp, %i.go
  br i1 %i.gq, label %._crit_edge276, label %bb.x, !llvm.loop !51

bb.x:                                             ; preds = %.lr.ph275, %.loopexit
  %i.gr = phi ptr [ %i.gd, %.lr.ph275 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !15 ; 3 uses
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !52
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %.not.i.i110 = icmp eq ptr %i.gr, %i.gu
  br i1 %.not.i.i110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.z:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !53
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef 512) #26
  %i.gx = load ptr, ptr %i.gh, align 8, !tbaa !54
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.gh, align 8, !tbaa !55
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !56 ; 3 uses
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 512
  store ptr %i.ha, ptr %i.gf, align 8, !tbaa !58
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi ptr [ %i.gv, %bb.y ], [ %i.gz, %bb.z ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.gc, align 8, !tbaa !59
  %i.hb = load ptr, ptr %11, align 8, !tbaa !60
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %i.gs ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.he, %i.hf
  br i1 %.not269, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.hg = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.gs ; 10 uses
  br i1 %i.ex, label %.preheader.i.preheader.us.preheader, label %.loopexit

.preheader.i.preheader.us.preheader:              ; preds = %.lr.ph271
  %i.hh = mul i64 %i.gs, -4                       ; 2 uses
  %invariant.op = add i64 %i.hh, -1
  %invariant.op482 = add i64 %i.hh, -1
  br label %.preheader.i.preheader.us

.preheader.i.preheader.us:                        ; preds = %.preheader.i.preheader.us.preheader, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.sroa.0174.0270.us = phi ptr [ %i.nd, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us ], [ %i.he, %.preheader.i.preheader.us.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 44
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !14
  %i.hl = sext i32 %i.hk to i64                   ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 40
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !18, !range !20, !noundef !21
  %i.ho = load i64, ptr %i.hi, align 8, !tbaa !15
  %i.hp = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.hl ; 11 uses
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.preheader.us, %.critedge.i.us
  %.01224.i.us = phi i64 [ %i.ih, %.critedge.i.us ], [ 0, %.preheader.i.preheader.us ] ; 2 uses
  %i.hq = mul nsw i64 %.01224.i.us, %7
  %i.hr = getelementptr [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !14
  %i.ht = icmp eq i32 %i.hs, 2147483647
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %.critedge.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %.preheader.i.us
  br i1 %or.cond441, label %vector.memcheck426, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443

vector.memcheck426:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.hu = shl nsw i64 %i.hl, 2
  %.reass = add i64 %i.hu, %invariant.op
  %diff.check427 = icmp ult i64 %.reass, 31
  br i1 %diff.check427, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443, label %vector.body432

vector.body432:                                   ; preds = %vector.memcheck426, %vector.body432
  %index433 = phi i64 [ %index.next436, %vector.body432 ], [ 0, %vector.memcheck426 ] ; 3 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %index433 ; 2 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %index433 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load434 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !14
  %wide.load435 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !14
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <4 x i32> %wide.load434, ptr %i.hv, align 4, !tbaa !14
  store <4 x i32> %wide.load435, ptr %i.hy, align 4, !tbaa !14
  %index.next436 = add nuw i64 %index433, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next436, %n.vec431
  br i1 %i.hz, label %middle.block437, label %vector.body432, !llvm.loop !68

middle.block437:                                  ; preds = %vector.body432
  br i1 %cmp.n438, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443:     ; preds = %vector.memcheck426, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block437
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck426 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ], [ %n.vec431, %middle.block437 ] ; 3 uses
  %i.ia = sub nsw i64 %i.gl, %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph
  br i1 %lcmp.mod460.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443 ] ; 2 uses
  %prol.iter461 = phi i64 [ %prol.iter461.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443 ]
  %i.ib = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %7 ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !14
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !14
  %i.if = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter461.next = add i64 %prol.iter461, 1   ; 2 uses
  %prol.iter461.cmp.not = icmp eq i64 %prol.iter461.next, %xtraiter459
  br i1 %prol.iter461.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !69

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443 ], [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.ig = icmp ult i64 %i.ia, 3
  br i1 %i.ig, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us

.critedge.i.us:                                   ; preds = %.preheader.i.us
  %i.ih = add nuw nsw i64 %.01224.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ih, %i.dz
  br i1 %exitcond.not.i.us, label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us, label %.preheader.i.us, !llvm.loop !70

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 5 uses
  %i.ii = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %7 ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ii
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ii
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !14
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !14
  %i.im = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 1
  %i.in = mul nsw i64 %i.im, %7                   ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.in
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !14
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !14
  %i.ir = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 2
  %i.is = mul nsw i64 %i.ir, %7                   ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.is
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.is
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !14
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !14
  %i.iw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 3
  %i.ix = mul nsw i64 %i.iw, %7                   ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ix
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ix
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !14
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !14
  %i.jb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.jb, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !71

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %.060268.us = phi i64 [ %i.jr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ %.060268.us.unr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit ] ; 4 uses
  %i.jc = mul nsw i64 %.060268.us, %7             ; 2 uses
  %i.jd = getelementptr [4 x i8], ptr %i.hg, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !14
  %i.jf = getelementptr [4 x i8], ptr %i.hp, i64 %i.jc
  %14 = trunc i64 %.060268.us to i32
  %i.jg = icmp eq i32 %i.nf, %14
  %i.jh = select i1 %i.jg, i32 %i.nh, i32 0
  %i.ji = add nsw i32 %i.jh, %i.je
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !14
  %i.jj = add nuw i64 %.060268.us, 1              ; 2 uses
  %i.jk = mul nsw i64 %i.jj, %7                   ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.hg, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !14
  %i.jn = getelementptr [4 x i8], ptr %i.hp, i64 %i.jk
  %15 = trunc i64 %i.jj to i32
  %i.jo = icmp eq i32 %i.nf, %15
  %i.jp = select i1 %i.jo, i32 %i.nh, i32 0
  %i.jq = add nsw i32 %i.jp, %i.jm
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !14
  %i.jr = add nuw i64 %.060268.us, 2              ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %i.jr, %i.dz
  br i1 %exitcond292.not.1, label %.loopexit440, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, !llvm.loop !72

.loopexit440:                                     ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, %middle.block421
  %i.js = load ptr, ptr %i.fu, align 8, !tbaa !43 ; 4 uses
  %i.jt = load ptr, ptr %i.fw, align 8, !tbaa !49
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %.not.i.i111.us = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i.i111.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit440
  store i64 %i.hl, ptr %i.js, align 8, !tbaa !15
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

bb.ab:                                            ; preds = %.loopexit440
  %i.jw = load ptr, ptr %i.gi, align 8, !tbaa !55 ; 3 uses
  %i.jx = load ptr, ptr %i.gh, align 8, !tbaa !55 ; 6 uses
  %i.jy = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 3 uses
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = ashr exact i64 %i.ka, 3                 ; 3 uses
  %i.kc = icmp ne ptr %i.jw, null
  %.neg.i.i.i.us = sext i1 %i.kc to i64
  %i.kd = add nsw i64 %i.kb, %.neg.i.i.i.us
  %i.ke = shl nsw i64 %i.kd, 6
  %i.kf = load ptr, ptr %i.gj, align 8, !tbaa !57
  %i.kg = ptrtoint ptr %i.js to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 3
  %i.kk = add nsw i64 %i.ke, %i.kj
  %i.kl = load ptr, ptr %i.gf, align 8, !tbaa !58
  %i.km = load ptr, ptr %i.gc, align 8, !tbaa !50
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 3
  %i.kr = add nsw i64 %i.kk, %i.kq
  %i.ks = icmp eq i64 %i.kr, 1152921504606846975
  br i1 %i.ks, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kt = load i64, ptr %i.gk, align 8, !tbaa !73 ; 5 uses
  %i.ku = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = sub i64 %i.jy, %i.kv
  %i.kx = ashr exact i64 %i.kw, 3
  %i.ky = sub i64 %i.kt, %i.kx
  %i.kz = icmp ult i64 %i.ky, 2
  br i1 %i.kz, label %bb.ad, label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.la = add nsw i64 %i.kb, 1                    ; 2 uses
  %i.lb = add nsw i64 %i.kb, 2                    ; 3 uses
  %i.lc = shl nsw i64 %i.lb, 1
  %i.ld = icmp ugt i64 %i.kt, %i.lc
  br i1 %i.ld, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated.i.us = call i64 @llvm.umax.i64(i64 %i.kt, i64 1)
  %i.le = add i64 %i.kt, 2
  %i.lf = add i64 %i.le, %.sroa.speculated.i.us   ; 5 uses
  %i.lg = icmp ugt i64 %i.lf, 1152921504606846975
  br i1 %i.lg, label %.split273.us, label %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, !prof !75

_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us: ; preds = %bb.ae
  %i.lh = shl nuw nsw i64 %i.lf, 3
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #27
          to label %.noexc142.us unwind label %.loopexit261.split.us ; 2 uses

.noexc142.us:                                     ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %i.lj = sub nsw i64 %i.lf, %i.lb
  %i.lk = lshr i64 %i.lj, 1
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lk ; 3 uses
  %i.lm = load ptr, ptr %i.gh, align 8, !tbaa !54 ; 3 uses
  %i.ln = load ptr, ptr %i.gi, align 8, !tbaa !76
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.lm to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 3 uses
  %i.ls = icmp sgt i64 %i.lr, 8
  br i1 %i.ls, label %bb.ah, label %bb.af, !prof !77

bb.af:                                            ; preds = %.noexc142.us
  %i.lt = icmp eq i64 %i.lr, 8
  br i1 %i.lt, label %bb.ag, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ag:                                            ; preds = %bb.af
  %i.lu = load ptr, ptr %i.lm, align 8, !tbaa !56
  store ptr %i.lu, ptr %i.ll, align 8, !tbaa !56
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ah:                                            ; preds = %.noexc142.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr align 8 %i.lm, i64 %i.lr, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us:         ; preds = %bb.ah, %bb.ag, %bb.af
  %i.lv = load ptr, ptr %13, align 8, !tbaa !74
  %i.lw = load i64, ptr %i.gk, align 8, !tbaa !73
  %i.lx = shl i64 %i.lw, 3
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lx) #26
  store ptr %i.li, ptr %13, align 8, !tbaa !74
  store i64 %i.lf, ptr %i.gk, align 8, !tbaa !73
  br label %.noexc138.us

bb.ai:                                            ; preds = %bb.ad
  %i.ly = sub i64 %i.kt, %i.lb
  %i.lz = lshr i64 %i.ly, 1
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lz ; 10 uses
  %i.mb = icmp ult ptr %i.ma, %i.jx
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  br i1 %i.mb, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.la ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.me, %i.jz                    ; 3 uses
  %i.mg = ashr exact i64 %i.mf, 3                 ; 2 uses
  %i.mh = icmp sgt i64 %i.mg, 1
  br i1 %i.mh, label %bb.am, label %bb.ak, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.mi = icmp eq i64 %i.mf, 8
  br i1 %i.mi, label %bb.al, label %.noexc138.us

bb.al:                                            ; preds = %bb.ak
  %i.mj = getelementptr inbounds i8, ptr %i.md, i64 -8
  %i.mk = load ptr, ptr %i.jx, align 8, !tbaa !56
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !56
  br label %.noexc138.us

bb.am:                                            ; preds = %bb.aj
  %i.ml = sub nsw i64 0, %i.mg
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.ml
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mm, ptr align 8 %i.jx, i64 %i.mf, i1 false)
  br label %.noexc138.us

bb.an:                                            ; preds = %bb.ai
  %i.mn = ptrtoint ptr %i.mc to i64
  %i.mo = sub i64 %i.mn, %i.jz                    ; 3 uses
  %i.mp = icmp sgt i64 %i.mo, 8
  br i1 %i.mp, label %bb.aq, label %bb.ao, !prof !77

bb.ao:                                            ; preds = %bb.an
  %i.mq = icmp eq i64 %i.mo, 8
  br i1 %i.mq, label %bb.ap, label %.noexc138.us

bb.ap:                                            ; preds = %bb.ao
  %i.mr = load ptr, ptr %i.jx, align 8, !tbaa !56
  store ptr %i.mr, ptr %i.ma, align 8, !tbaa !56
  br label %.noexc138.us

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ma, ptr nonnull align 8 %i.jx, i64 %i.mo, i1 false)
  br label %.noexc138.us

.noexc138.us:                                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us
  %.0.i.us = phi ptr [ %i.ll, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us ], [ %i.ma, %bb.ap ], [ %i.ma, %bb.aq ], [ %i.ma, %bb.ao ], [ %i.ma, %bb.am ], [ %i.ma, %bb.ak ], [ %i.ma, %bb.al ] ; 3 uses
  store ptr %.0.i.us, ptr %i.gh, align 8, !tbaa !55
  %i.ms = load ptr, ptr %.0.i.us, align 8, !tbaa !56 ; 2 uses
  store ptr %i.ms, ptr %i.gg, align 8, !tbaa !57
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 512
  store ptr %i.mt, ptr %i.gf, align 8, !tbaa !58
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.la
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -8 ; 2 uses
  store ptr %i.mv, ptr %i.gi, align 8, !tbaa !55
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !56 ; 2 uses
  store ptr %i.mw, ptr %i.gj, align 8, !tbaa !57
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 512
  store ptr %i.mx, ptr %i.fw, align 8, !tbaa !58
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us: ; preds = %.noexc138.us, %bb.ac
  %i.my = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc112.us unwind label %.loopexit261.split.us ; 4 uses

.noexc112.us:                                     ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us
  %i.mz = load ptr, ptr %i.gi, align 8, !tbaa !76
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  store ptr %i.my, ptr %i.na, align 8, !tbaa !56
  %i.nb = load ptr, ptr %i.fu, align 8, !tbaa !43
  store i64 %i.hl, ptr %i.nb, align 8, !tbaa !15
  store ptr %i.na, ptr %i.gi, align 8, !tbaa !55
  store ptr %i.my, ptr %i.gj, align 8, !tbaa !57
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 512
  store ptr %i.nc, ptr %i.fw, align 8, !tbaa !58
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split: ; preds = %bb.aa, %.noexc112.us
  %.sink = phi ptr [ %i.my, %.noexc112.us ], [ %i.jv, %bb.aa ]
  store ptr %.sink, ptr %i.fu, align 8, !tbaa !43
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us: ; preds = %.critedge.i.us, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split
  %i.nd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0174.0270.us) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.nd, %i.hf
  br i1 %.not.us, label %.loopexit.loopexit, label %.preheader.i.preheader.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block437
  %i.ne = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.ho
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !14 ; 4 uses
  %i.ng = trunc nuw i8 %i.hn to i1
  %i.nh = select i1 %i.ng, i32 -1, i32 1          ; 4 uses
  br i1 %or.cond442, label %vector.memcheck, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us
  %i.ni = shl nsw i64 %i.hl, 2
  %.reass483 = add i64 %i.ni, %invariant.op482
  %diff.check = icmp ult i64 %.reass483, 31
  br i1 %diff.check, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.nf, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert414 = insertelement <4 x i32> poison, i32 %i.nh, i64 0
  %broadcast.splat415 = shufflevector <4 x i32> %broadcast.splatinsert414, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next420, %vector.body416 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph410 ], [ %vec.ind.next, %vector.body416 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nj = getelementptr [4 x i8], ptr %i.hg, i64 %index417 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 16
  %wide.load418 = load <4 x i32>, ptr %i.nj, align 4, !tbaa !14
  %wide.load419 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !14
  %i.nl = getelementptr [4 x i8], ptr %i.hp, i64 %index417 ; 2 uses
  %i.nm = icmp eq <4 x i32> %broadcast.splat413, %vec.ind
  %i.nn = icmp eq <4 x i32> %broadcast.splat413, %step.add
  %i.no = select <4 x i1> %i.nm, <4 x i32> %broadcast.splat415, <4 x i32> zeroinitializer
  %i.np = select <4 x i1> %i.nn, <4 x i32> %broadcast.splat415, <4 x i32> zeroinitializer
  %i.nq = add nsw <4 x i32> %i.no, %wide.load418
  %i.nr = add nsw <4 x i32> %i.np, %wide.load419
  %i.ns = getelementptr i8, ptr %i.nl, i64 16
  store <4 x i32> %i.nq, ptr %i.nl, align 4, !tbaa !14
  store <4 x i32> %i.nr, ptr %i.ns, align 4, !tbaa !14
  %index.next420 = add nuw i64 %index417, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.nt = icmp eq i64 %index.next420, %n.vec411
  br i1 %i.nt, label %middle.block421, label %vector.body416, !llvm.loop !78

middle.block421:                                  ; preds = %vector.body416
  br i1 %cmp.n422, label %.loopexit440, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader: ; preds = %vector.memcheck, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, %middle.block421
  %.060268.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us ], [ %n.vec411, %middle.block421 ] ; 5 uses
  br i1 %lcmp.mod463.not.not, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %i.nu = mul nsw i64 %.060268.us.ph, %7          ; 2 uses
  %i.nv = getelementptr [4 x i8], ptr %i.hg, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !14
  %i.nx = getelementptr [4 x i8], ptr %i.hp, i64 %i.nu
  %16 = trunc nuw nsw i64 %.060268.us.ph to i32
  %i.ny = icmp eq i32 %i.nf, %16
  %i.nz = select i1 %i.ny, i32 %i.nh, i32 0
  %i.oa = add nsw i32 %i.nz, %i.nw
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !14
  %i.ob = or disjoint i64 %.060268.us.ph, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %.060268.us.unr = phi i64 [ %.060268.us.ph, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader ], [ %i.ob, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol ]
  %i.oc = icmp eq i64 %.060268.us.ph, %i.gl
  br i1 %i.oc, label %.loopexit440, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.loopexit261.split.us:                            ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ar:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

bb.as:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.au, %bb.w
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
          to label %.noexc137 unwind label %.loopexit.split-lp

.noexc137:                                        ; preds = %.split.us
  unreachable

.split273.us:                                     ; preds = %bb.ae
  %i.of = icmp ugt i64 %i.lf, 2305843009213693951
  br i1 %i.of, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split273.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %.split273.us
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc141 unwind label %.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc3.i.i
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us, %.noexc.i.i, %.noexc3.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge276:                                   ; preds = %.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.og = shl nsw i64 %i.dz, 1                    ; 3 uses
  %or.cond.i.i = or i1 %.not283, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge276
  %i.oh = sdiv i64 9223372036854775807, %i.og
  %i.oi = icmp sgt i64 %i.h, %i.oh
  br i1 %i.oi, label %bb.au, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.au:                                            ; preds = %bb.at
  %i.oj = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.oj, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.oj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc114 unwind label %bb.as

.noexc114:                                        ; preds = %bb.au
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.at, %._crit_edge276
  %i.ok = mul nsw i64 %i.og, %i.h
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.ok, i64 noundef %i.h, i64 noundef %i.og)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.as

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  br i1 %.not283, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ol = load ptr, ptr %6, align 8, !tbaa !16
  %i.om = load ptr, ptr %8, align 8, !tbaa !22
  %i.on = load i64, ptr %i.s, align 8, !tbaa !9
  br i1 %i.eb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %i.oo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.op = load ptr, ptr %10, align 8, !tbaa !22
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !9  ; 6 uses
  %i.or = icmp eq i32 %.3.i.i.i.i, 0
  %unroll_iter468 = and i64 %i.dz, -2
  %i.os = and i32 %.3.i.i.i.i, 1
  %lcmp.mod466.not.not = icmp eq i32 %i.os, 0
  %lcmp.mod467 = trunc i32 %i.dy to i1
  br label %.lr.ph279

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split: ; preds = %._crit_edge280, %.lr.ph282, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ot = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split
  %i.ou = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ov = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !54 ; 2 uses
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !76 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = icmp ult ptr %i.ow, %i.oy
  br i1 %i.oz, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.av, %.lr.ph.i.i.i.i116
  %.06.i.i.i.i = phi ptr [ %i.pb, %.lr.ph.i.i.i.i116 ], [ %i.ow, %bb.av ] ; 3 uses
  %i.pa = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !56
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef 512) #26
  %i.pb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.pc = icmp ult ptr %.06.i.i.i.i, %i.ox
  br i1 %i.pc, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !79

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i116
  %.pre.i.i.i = load ptr, ptr %13, align 8, !tbaa !74
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.av
  %i.pd = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.ot, %bb.av ]
  %i.pe = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !73
  %i.pg = shl i64 %i.pf, 3
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  call void @free(ptr noundef %.sroa.0190.0244) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.ph = load ptr, ptr %12, align 8, !tbaa !16
  call void @free(ptr noundef %i.ph) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.pi = load ptr, ptr %11, align 8, !tbaa !60   ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pi, %i.pk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pp, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i ], [ %i.pi, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !81
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.pm)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.pp, %i.pk
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !82

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  %i.pq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pi, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !83
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pv) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 %i.f

.lr.ph279:                                        ; preds = %.lr.ph282.split, %._crit_edge280
  %.059281 = phi i64 [ 0, %.lr.ph282.split ], [ %i.qt, %._crit_edge280 ] ; 3 uses
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %.059281
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !14
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr [4 x i8], ptr %i.om, i64 %i.py ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !14
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr [4 x i8], ptr %i.pz, i64 %i.on
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE:bb.a
._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !50
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit:     ; preds = %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge, %bb.v
  %i.gb = phi ptr [ %.pre, %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge ], [ %i.ga, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !50 ; 2 uses
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
  %min.iters.check429 = icmp ugt i32 %i.dy, 7
  %ident.check425.not = icmp eq i64 %7, 1
  %or.cond441 = and i1 %min.iters.check429, %ident.check425.not
  %n.vec431 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n438 = icmp eq i64 %n.vec431, %i.dz
  %xtraiter459 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  %min.iters.check409 = icmp ugt i32 %i.dy, 7
  %ident.check407.not = icmp eq i64 %7, 1
  %or.cond442 = and i1 %min.iters.check409, %ident.check407.not
  %n.vec411 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n422 = icmp eq i64 %n.vec411, %i.dz
  %i.gn = and i32 %.3.i.i.i.i, 1
  %lcmp.mod463.not.not = icmp eq i32 %i.gn, 0
  br label %bb.x

.loopexit.loopexit:                               ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.pre295 = load ptr, ptr %i.gc, align 8, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph271, %.loopexit.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.go = phi ptr [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ], [ %.pre295, %.loopexit.loopexit ], [ %storemerge.i.i, %.lr.ph271 ] ; 2 uses
  %i.gp = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.gq = icmp eq ptr %i.gp, %i.go
  br i1 %i.gq, label %._crit_edge276, label %bb.x, !llvm.loop !107

bb.x:                                             ; preds = %.lr.ph275, %.loopexit
  %i.gr = phi ptr [ %i.gd, %.lr.ph275 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !15 ; 3 uses
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !52
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %.not.i.i110 = icmp eq ptr %i.gr, %i.gu
  br i1 %.not.i.i110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.z:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !53
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef 512) #26
  %i.gx = load ptr, ptr %i.gh, align 8, !tbaa !54
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.gh, align 8, !tbaa !55
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !56 ; 3 uses
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 512
  store ptr %i.ha, ptr %i.gf, align 8, !tbaa !58
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi ptr [ %i.gv, %bb.y ], [ %i.gz, %bb.z ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.gc, align 8, !tbaa !59
  %i.hb = load ptr, ptr %11, align 8, !tbaa !60
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %i.gs ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.he, %i.hf
  br i1 %.not269, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.hg = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.gs ; 10 uses
  br i1 %i.ex, label %.preheader.i.preheader.us.preheader, label %.loopexit

.preheader.i.preheader.us.preheader:              ; preds = %.lr.ph271
  %i.hh = mul i64 %i.gs, -4                       ; 2 uses
  %invariant.op = add i64 %i.hh, -1
  %invariant.op482 = add i64 %i.hh, -1
  br label %.preheader.i.preheader.us

.preheader.i.preheader.us:                        ; preds = %.preheader.i.preheader.us.preheader, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.sroa.0174.0270.us = phi ptr [ %i.nd, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us ], [ %i.he, %.preheader.i.preheader.us.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 44
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !14
  %i.hl = sext i32 %i.hk to i64                   ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 40
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !18, !range !20, !noundef !21
  %i.ho = load i64, ptr %i.hi, align 8, !tbaa !15
  %i.hp = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.hl ; 11 uses
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.preheader.us, %.critedge.i.us
  %.01224.i.us = phi i64 [ %i.ih, %.critedge.i.us ], [ 0, %.preheader.i.preheader.us ] ; 2 uses
  %i.hq = mul nsw i64 %.01224.i.us, %7
  %i.hr = getelementptr [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !14
  %i.ht = icmp eq i32 %i.hs, 2147483647
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %.critedge.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %.preheader.i.us
  br i1 %or.cond441, label %vector.memcheck426, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443

vector.memcheck426:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.hu = shl nsw i64 %i.hl, 2
  %.reass = add i64 %i.hu, %invariant.op
  %diff.check427 = icmp ult i64 %.reass, 31
  br i1 %diff.check427, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443, label %vector.body432

vector.body432:                                   ; preds = %vector.memcheck426, %vector.body432
  %index433 = phi i64 [ %index.next436, %vector.body432 ], [ 0, %vector.memcheck426 ] ; 3 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %index433 ; 2 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %index433 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load434 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !14
  %wide.load435 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !14
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <4 x i32> %wide.load434, ptr %i.hv, align 4, !tbaa !14
  store <4 x i32> %wide.load435, ptr %i.hy, align 4, !tbaa !14
  %index.next436 = add nuw i64 %index433, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next436, %n.vec431
  br i1 %i.hz, label %middle.block437, label %vector.body432, !llvm.loop !108

middle.block437:                                  ; preds = %vector.body432
  br i1 %cmp.n438, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443:     ; preds = %vector.memcheck426, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block437
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck426 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ], [ %n.vec431, %middle.block437 ] ; 3 uses
  %i.ia = sub nsw i64 %i.gl, %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph
  br i1 %lcmp.mod460.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443 ] ; 2 uses
  %prol.iter461 = phi i64 [ %prol.iter461.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443 ]
  %i.ib = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %7 ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !14
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !14
  %i.if = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter461.next = add i64 %prol.iter461, 1   ; 2 uses
  %prol.iter461.cmp.not = icmp eq i64 %prol.iter461.next, %xtraiter459
  br i1 %prol.iter461.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !109

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader443 ], [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.ig = icmp ult i64 %i.ia, 3
  br i1 %i.ig, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us

.critedge.i.us:                                   ; preds = %.preheader.i.us
  %i.ih = add nuw nsw i64 %.01224.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ih, %i.dz
  br i1 %exitcond.not.i.us, label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us, label %.preheader.i.us, !llvm.loop !70

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 5 uses
  %i.ii = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %7 ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ii
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ii
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !14
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !14
  %i.im = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 1
  %i.in = mul nsw i64 %i.im, %7                   ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.in
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !14
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !14
  %i.ir = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 2
  %i.is = mul nsw i64 %i.ir, %7                   ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.is
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.is
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !14
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !14
  %i.iw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 3
  %i.ix = mul nsw i64 %i.iw, %7                   ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ix
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ix
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !14
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !14
  %i.jb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.jb, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !110

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %.060268.us = phi i64 [ %i.jr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ %.060268.us.unr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit ] ; 4 uses
  %i.jc = mul nsw i64 %.060268.us, %7             ; 2 uses
  %i.jd = getelementptr [4 x i8], ptr %i.hg, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !14
  %i.jf = getelementptr [4 x i8], ptr %i.hp, i64 %i.jc
  %14 = trunc i64 %.060268.us to i32
  %i.jg = icmp eq i32 %i.nf, %14
  %i.jh = select i1 %i.jg, i32 %i.nh, i32 0
  %i.ji = add nsw i32 %i.jh, %i.je
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !14
  %i.jj = add nuw i64 %.060268.us, 1              ; 2 uses
  %i.jk = mul nsw i64 %i.jj, %7                   ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.hg, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !14
  %i.jn = getelementptr [4 x i8], ptr %i.hp, i64 %i.jk
  %15 = trunc i64 %i.jj to i32
  %i.jo = icmp eq i32 %i.nf, %15
  %i.jp = select i1 %i.jo, i32 %i.nh, i32 0
  %i.jq = add nsw i32 %i.jp, %i.jm
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !14
  %i.jr = add nuw i64 %.060268.us, 2              ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %i.jr, %i.dz
  br i1 %exitcond292.not.1, label %.loopexit440, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, !llvm.loop !111

.loopexit440:                                     ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, %middle.block421
  %i.js = load ptr, ptr %i.fu, align 8, !tbaa !43 ; 4 uses
  %i.jt = load ptr, ptr %i.fw, align 8, !tbaa !49
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %.not.i.i111.us = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i.i111.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit440
  store i64 %i.hl, ptr %i.js, align 8, !tbaa !15
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

bb.ab:                                            ; preds = %.loopexit440
  %i.jw = load ptr, ptr %i.gi, align 8, !tbaa !55 ; 3 uses
  %i.jx = load ptr, ptr %i.gh, align 8, !tbaa !55 ; 6 uses
  %i.jy = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 3 uses
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = ashr exact i64 %i.ka, 3                 ; 3 uses
  %i.kc = icmp ne ptr %i.jw, null
  %.neg.i.i.i.us = sext i1 %i.kc to i64
  %i.kd = add nsw i64 %i.kb, %.neg.i.i.i.us
  %i.ke = shl nsw i64 %i.kd, 6
  %i.kf = load ptr, ptr %i.gj, align 8, !tbaa !57
  %i.kg = ptrtoint ptr %i.js to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 3
  %i.kk = add nsw i64 %i.ke, %i.kj
  %i.kl = load ptr, ptr %i.gf, align 8, !tbaa !58
  %i.km = load ptr, ptr %i.gc, align 8, !tbaa !50
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 3
  %i.kr = add nsw i64 %i.kk, %i.kq
  %i.ks = icmp eq i64 %i.kr, 1152921504606846975
  br i1 %i.ks, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kt = load i64, ptr %i.gk, align 8, !tbaa !73 ; 5 uses
  %i.ku = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = sub i64 %i.jy, %i.kv
  %i.kx = ashr exact i64 %i.kw, 3
  %i.ky = sub i64 %i.kt, %i.kx
  %i.kz = icmp ult i64 %i.ky, 2
  br i1 %i.kz, label %bb.ad, label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.la = add nsw i64 %i.kb, 1                    ; 2 uses
  %i.lb = add nsw i64 %i.kb, 2                    ; 3 uses
  %i.lc = shl nsw i64 %i.lb, 1
  %i.ld = icmp ugt i64 %i.kt, %i.lc
  br i1 %i.ld, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated.i.us = call i64 @llvm.umax.i64(i64 %i.kt, i64 1)
  %i.le = add i64 %i.kt, 2
  %i.lf = add i64 %i.le, %.sroa.speculated.i.us   ; 5 uses
  %i.lg = icmp ugt i64 %i.lf, 1152921504606846975
  br i1 %i.lg, label %.split273.us, label %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, !prof !75

_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us: ; preds = %bb.ae
  %i.lh = shl nuw nsw i64 %i.lf, 3
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #27
          to label %.noexc142.us unwind label %.loopexit261.split.us ; 2 uses

.noexc142.us:                                     ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %i.lj = sub nsw i64 %i.lf, %i.lb
  %i.lk = lshr i64 %i.lj, 1
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lk ; 3 uses
  %i.lm = load ptr, ptr %i.gh, align 8, !tbaa !54 ; 3 uses
  %i.ln = load ptr, ptr %i.gi, align 8, !tbaa !76
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.lm to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 3 uses
  %i.ls = icmp sgt i64 %i.lr, 8
  br i1 %i.ls, label %bb.ah, label %bb.af, !prof !77

bb.af:                                            ; preds = %.noexc142.us
  %i.lt = icmp eq i64 %i.lr, 8
  br i1 %i.lt, label %bb.ag, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ag:                                            ; preds = %bb.af
  %i.lu = load ptr, ptr %i.lm, align 8, !tbaa !56
  store ptr %i.lu, ptr %i.ll, align 8, !tbaa !56
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ah:                                            ; preds = %.noexc142.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr align 8 %i.lm, i64 %i.lr, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us:         ; preds = %bb.ah, %bb.ag, %bb.af
  %i.lv = load ptr, ptr %13, align 8, !tbaa !74
  %i.lw = load i64, ptr %i.gk, align 8, !tbaa !73
  %i.lx = shl i64 %i.lw, 3
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lx) #26
  store ptr %i.li, ptr %13, align 8, !tbaa !74
  store i64 %i.lf, ptr %i.gk, align 8, !tbaa !73
  br label %.noexc138.us

bb.ai:                                            ; preds = %bb.ad
  %i.ly = sub i64 %i.kt, %i.lb
  %i.lz = lshr i64 %i.ly, 1
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lz ; 10 uses
  %i.mb = icmp ult ptr %i.ma, %i.jx
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  br i1 %i.mb, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.la ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.me, %i.jz                    ; 3 uses
  %i.mg = ashr exact i64 %i.mf, 3                 ; 2 uses
  %i.mh = icmp sgt i64 %i.mg, 1
  br i1 %i.mh, label %bb.am, label %bb.ak, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.mi = icmp eq i64 %i.mf, 8
  br i1 %i.mi, label %bb.al, label %.noexc138.us

bb.al:                                            ; preds = %bb.ak
  %i.mj = getelementptr inbounds i8, ptr %i.md, i64 -8
  %i.mk = load ptr, ptr %i.jx, align 8, !tbaa !56
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !56
  br label %.noexc138.us

bb.am:                                            ; preds = %bb.aj
  %i.ml = sub nsw i64 0, %i.mg
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.ml
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mm, ptr align 8 %i.jx, i64 %i.mf, i1 false)
  br label %.noexc138.us

bb.an:                                            ; preds = %bb.ai
  %i.mn = ptrtoint ptr %i.mc to i64
  %i.mo = sub i64 %i.mn, %i.jz                    ; 3 uses
  %i.mp = icmp sgt i64 %i.mo, 8
  br i1 %i.mp, label %bb.aq, label %bb.ao, !prof !77

bb.ao:                                            ; preds = %bb.an
  %i.mq = icmp eq i64 %i.mo, 8
  br i1 %i.mq, label %bb.ap, label %.noexc138.us

bb.ap:                                            ; preds = %bb.ao
  %i.mr = load ptr, ptr %i.jx, align 8, !tbaa !56
  store ptr %i.mr, ptr %i.ma, align 8, !tbaa !56
  br label %.noexc138.us

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ma, ptr nonnull align 8 %i.jx, i64 %i.mo, i1 false)
  br label %.noexc138.us

.noexc138.us:                                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us
  %.0.i.us = phi ptr [ %i.ll, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us ], [ %i.ma, %bb.ap ], [ %i.ma, %bb.aq ], [ %i.ma, %bb.ao ], [ %i.ma, %bb.am ], [ %i.ma, %bb.ak ], [ %i.ma, %bb.al ] ; 3 uses
  store ptr %.0.i.us, ptr %i.gh, align 8, !tbaa !55
  %i.ms = load ptr, ptr %.0.i.us, align 8, !tbaa !56 ; 2 uses
  store ptr %i.ms, ptr %i.gg, align 8, !tbaa !57
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 512
  store ptr %i.mt, ptr %i.gf, align 8, !tbaa !58
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.la
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -8 ; 2 uses
  store ptr %i.mv, ptr %i.gi, align 8, !tbaa !55
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !56 ; 2 uses
  store ptr %i.mw, ptr %i.gj, align 8, !tbaa !57
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 512
  store ptr %i.mx, ptr %i.fw, align 8, !tbaa !58
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us: ; preds = %.noexc138.us, %bb.ac
  %i.my = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc112.us unwind label %.loopexit261.split.us ; 4 uses

.noexc112.us:                                     ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us
  %i.mz = load ptr, ptr %i.gi, align 8, !tbaa !76
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  store ptr %i.my, ptr %i.na, align 8, !tbaa !56
  %i.nb = load ptr, ptr %i.fu, align 8, !tbaa !43
  store i64 %i.hl, ptr %i.nb, align 8, !tbaa !15
  store ptr %i.na, ptr %i.gi, align 8, !tbaa !55
  store ptr %i.my, ptr %i.gj, align 8, !tbaa !57
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 512
  store ptr %i.nc, ptr %i.fw, align 8, !tbaa !58
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split: ; preds = %bb.aa, %.noexc112.us
  %.sink = phi ptr [ %i.my, %.noexc112.us ], [ %i.jv, %bb.aa ]
  store ptr %.sink, ptr %i.fu, align 8, !tbaa !43
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us: ; preds = %.critedge.i.us, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split
  %i.nd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0174.0270.us) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.nd, %i.hf
  br i1 %.not.us, label %.loopexit.loopexit, label %.preheader.i.preheader.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block437
  %i.ne = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.ho
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !14 ; 4 uses
  %i.ng = trunc nuw i8 %i.hn to i1
  %i.nh = select i1 %i.ng, i32 -1, i32 1          ; 4 uses
  br i1 %or.cond442, label %vector.memcheck, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us
  %i.ni = shl nsw i64 %i.hl, 2
  %.reass483 = add i64 %i.ni, %invariant.op482
  %diff.check = icmp ult i64 %.reass483, 31
  br i1 %diff.check, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.nf, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert414 = insertelement <4 x i32> poison, i32 %i.nh, i64 0
  %broadcast.splat415 = shufflevector <4 x i32> %broadcast.splatinsert414, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next420, %vector.body416 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph410 ], [ %vec.ind.next, %vector.body416 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nj = getelementptr [4 x i8], ptr %i.hg, i64 %index417 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 16
  %wide.load418 = load <4 x i32>, ptr %i.nj, align 4, !tbaa !14
  %wide.load419 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !14
  %i.nl = getelementptr [4 x i8], ptr %i.hp, i64 %index417 ; 2 uses
  %i.nm = icmp eq <4 x i32> %broadcast.splat413, %vec.ind
  %i.nn = icmp eq <4 x i32> %broadcast.splat413, %step.add
  %i.no = select <4 x i1> %i.nm, <4 x i32> %broadcast.splat415, <4 x i32> zeroinitializer
  %i.np = select <4 x i1> %i.nn, <4 x i32> %broadcast.splat415, <4 x i32> zeroinitializer
  %i.nq = add nsw <4 x i32> %i.no, %wide.load418
  %i.nr = add nsw <4 x i32> %i.np, %wide.load419
  %i.ns = getelementptr i8, ptr %i.nl, i64 16
  store <4 x i32> %i.nq, ptr %i.nl, align 4, !tbaa !14
  store <4 x i32> %i.nr, ptr %i.ns, align 4, !tbaa !14
  %index.next420 = add nuw i64 %index417, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.nt = icmp eq i64 %index.next420, %n.vec411
  br i1 %i.nt, label %middle.block421, label %vector.body416, !llvm.loop !112

middle.block421:                                  ; preds = %vector.body416
  br i1 %cmp.n422, label %.loopexit440, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader: ; preds = %vector.memcheck, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, %middle.block421
  %.060268.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us ], [ %n.vec411, %middle.block421 ] ; 5 uses
  br i1 %lcmp.mod463.not.not, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %i.nu = mul nsw i64 %.060268.us.ph, %7          ; 2 uses
  %i.nv = getelementptr [4 x i8], ptr %i.hg, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !14
  %i.nx = getelementptr [4 x i8], ptr %i.hp, i64 %i.nu
  %16 = trunc nuw nsw i64 %.060268.us.ph to i32
  %i.ny = icmp eq i32 %i.nf, %16
  %i.nz = select i1 %i.ny, i32 %i.nh, i32 0
  %i.oa = add nsw i32 %i.nz, %i.nw
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !14
  %i.ob = or disjoint i64 %.060268.us.ph, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %.060268.us.unr = phi i64 [ %.060268.us.ph, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader ], [ %i.ob, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol ]
  %i.oc = icmp eq i64 %.060268.us.ph, %i.gl
  br i1 %i.oc, label %.loopexit440, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.loopexit261.split.us:                            ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ar:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

bb.as:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.au, %bb.w
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
          to label %.noexc137 unwind label %.loopexit.split-lp

.noexc137:                                        ; preds = %.split.us
  unreachable

.split273.us:                                     ; preds = %bb.ae
  %i.of = icmp ugt i64 %i.lf, 2305843009213693951
  br i1 %i.of, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split273.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %.split273.us
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc141 unwind label %.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc3.i.i
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us, %.noexc.i.i, %.noexc3.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge276:                                   ; preds = %.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.og = shl nsw i64 %i.dz, 1                    ; 3 uses
  %or.cond.i.i = or i1 %.not283, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge276
  %i.oh = sdiv i64 9223372036854775807, %i.og
  %i.oi = icmp sgt i64 %i.h, %i.oh
  br i1 %i.oi, label %bb.au, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.au:                                            ; preds = %bb.at
  %i.oj = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.oj, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.oj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc114 unwind label %bb.as

.noexc114:                                        ; preds = %bb.au
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.at, %._crit_edge276
  %i.ok = mul nsw i64 %i.og, %i.h
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.ok, i64 noundef %i.h, i64 noundef %i.og)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.as

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  br i1 %.not283, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ol = load ptr, ptr %6, align 8, !tbaa !16
  %i.om = load ptr, ptr %8, align 8, !tbaa !22
  %i.on = load i64, ptr %i.s, align 8, !tbaa !9
  br i1 %i.eb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %i.oo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.op = load ptr, ptr %10, align 8, !tbaa !22
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !9  ; 6 uses
  %i.or = icmp eq i32 %.3.i.i.i.i, 0
  %unroll_iter468 = and i64 %i.dz, -2
  %i.os = and i32 %.3.i.i.i.i, 1
  %lcmp.mod466.not.not = icmp eq i32 %i.os, 0
  %lcmp.mod467 = trunc i32 %i.dy to i1
  br label %.lr.ph279

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split: ; preds = %._crit_edge280, %.lr.ph282, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ot = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split
  %i.ou = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ov = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !54 ; 2 uses
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !76 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = icmp ult ptr %i.ow, %i.oy
  br i1 %i.oz, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.av, %.lr.ph.i.i.i.i116
  %.06.i.i.i.i = phi ptr [ %i.pb, %.lr.ph.i.i.i.i116 ], [ %i.ow, %bb.av ] ; 3 uses
  %i.pa = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !56
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef 512) #26
  %i.pb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.pc = icmp ult ptr %.06.i.i.i.i, %i.ox
  br i1 %i.pc, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !79

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i116
  %.pre.i.i.i = load ptr, ptr %13, align 8, !tbaa !74
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.av
  %i.pd = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.ot, %bb.av ]
  %i.pe = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !73
  %i.pg = shl i64 %i.pf, 3
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  call void @free(ptr noundef %.sroa.0190.0244) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.ph = load ptr, ptr %12, align 8, !tbaa !16
  call void @free(ptr noundef %i.ph) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.pi = load ptr, ptr %11, align 8, !tbaa !60   ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pi, %i.pk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pp, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i ], [ %i.pi, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !81
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.pm)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.pp, %i.pk
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !82

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  %i.pq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pi, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !83
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pv) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 %i.f

.lr.ph279:                                        ; preds = %.lr.ph282.split, %._crit_edge280
  %.059281 = phi i64 [ 0, %.lr.ph282.split ], [ %i.qt, %._crit_edge280 ] ; 3 uses
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %.059281
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !14
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr [4 x i8], ptr %i.om, i64 %i.py ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !14
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr [4 x i8], ptr %i.pz, i64 %i.on
end_hunk_1
