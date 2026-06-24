inline.NumInlined: 6448
inline.NumDeleted: 2427
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48 ; 3 uses
  store ptr %i.af, ptr %.015.i, align 8, !tbaa !85
  %i.ag = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.ag, ptr %.015.i, align 8, !tbaa !21
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !29
  store i64 %i.an, ptr %i.af, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !25
  store ptr %i.ah, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.ao, align 8, !tbaa !25
  store i8 0, ptr %i.ah, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.i, !llvm.loop !421

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !28
  %i.at = load i8, ptr %i.d, align 8, !tbaa !29
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au ; 4 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !85
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !21
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !29
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !25
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !21
  store i64 0, ptr %i.bh, align 8, !tbaa !25
  store i8 0, ptr %i.ba, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29  ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = sub nsw i32 %i.bm, %i.x
  %i.bo = sext i32 %i.bn to i64
  %i.bp = zext i8 %1 to i64                       ; 3 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.bp ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.bl, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55
  %.015.i52 = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55 ], [ %i.aa, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47 ] ; 5 uses
  %.01214.i53 = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55 ], [ %i.bq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47 ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16 ; 3 uses
  store ptr %i.bs, ptr %.015.i52, align 8, !tbaa !85
  %i.bt = load ptr, ptr %.01214.i53, align 8, !tbaa !21 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.bt, ptr %.015.i52, align 8, !tbaa !21
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !29
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.bu, ptr %.01214.i53, align 8, !tbaa !21
  store i64 0, ptr %i.cb, align 8, !tbaa !25
  store i8 0, ptr %i.bu, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i52, i64 32
  %.not.i56 = icmp eq ptr %i.ce, %i.br
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57, label %.lr.ph.i51, !llvm.loop !421

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %.not.i58 = icmp eq i8 %i.ch, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %xtraiter = and i64 %i.bp, 1
  %i.ck = icmp eq i32 %i.y, 0
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bp, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cl = load i8, ptr %i.a, align 2, !tbaa !29
  %i.cm = trunc i64 %indvars.iv.epil.init to i8
  %i.cn = add i8 %i.cm, 1
  %i.co = add i8 %i.cl, %i.cn                     ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28 ; 3 uses
  %i.cr = zext i8 %i.co to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %i.co, ptr %i.ct, align 1, !tbaa !29
  store ptr %0, ptr %i.cq, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.cu = load i8, ptr %i.bk, align 1, !tbaa !29
  %.not61 = icmp ult i8 %i.cu, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.cw = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv.next to i8
  %i.cy = add i8 %i.cw, %i.cx                     ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !28 ; 3 uses
  %i.db = zext i8 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !29
  store ptr %0, ptr %i.da, align 8, !tbaa !28
  %i.de = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.df = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.dg = add i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28 ; 3 uses
  %i.dj = zext i8 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !28
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.dg, ptr %i.dl, align 1, !tbaa !29
  store ptr %0, ptr %i.di, align 8, !tbaa !28
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !429

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.dt, %bb.g ] ; 4 uses
  %i.dm = add i8 %.062, %1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !28 ; 3 uses
  %i.dq = zext i8 %.062 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dq
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i8 %.062, ptr %i.ds, align 1, !tbaa !29
  store ptr %2, ptr %i.dp, align 8, !tbaa !28
  %i.dt = add i8 %.062, 1                         ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.dw, %i.x
  %.not = icmp slt i32 %i.dx, %i.du
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !430

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %i.dy = load i8, ptr %i.a, align 2, !tbaa !29
  %i.dz = add i8 %i.dy, %1
  store i8 %i.dz, ptr %i.a, align 2, !tbaa !29
  %i.ea = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.eb = sub i8 %i.ea, %1
  store i8 %i.eb, ptr %i.bk, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [32 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !85
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !21
  %i.t = load i64, ptr %i.n, align 8, !tbaa !29
  store i64 %i.t, ptr %i.l, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !25
  store ptr %i.n, ptr %i.k, align 8, !tbaa !21
  store i64 0, ptr %i.u, align 8, !tbaa !25
  store i8 0, ptr %i.n, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit, label %.lr.ph.i, !llvm.loop !422

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.y ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ab ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !85
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !29
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !25
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !21
  store i64 0, ptr %i.ap, align 8, !tbaa !25
  store i8 0, ptr %i.ai, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.at = load i8, ptr %i.as, align 2, !tbaa !29
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = sub nsw i32 %i.au, %i.x
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.y, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52
  %.015.i = phi ptr [ %i.bn, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ] ; 5 uses
  %.01214.i = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52 ], [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.015.i, align 8, !tbaa !85
  %i.bb = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bb, ptr %.015.i, align 8, !tbaa !21
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !29
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !25
  store ptr %i.bc, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.bj, align 8, !tbaa !25
  store i8 0, ptr %i.bc, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i53 = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !421

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52
  %.pre = load i8, ptr %i.as, align 2, !tbaa !29
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit ], [ %i.au, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !28
  %i.bp = load i8, ptr %i.z, align 8, !tbaa !29
  %i.bq = zext i8 %i.bp to i64
  %i.br = sub nsw i32 %.pre-phi, %i.c
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bq ; 4 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.bs ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !85
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 16
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !21
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !29
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !25
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !21
  store i64 0, ptr %i.cf, align 8, !tbaa !25
  store i8 0, ptr %i.by, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  %.not.i57 = icmp eq i8 %i.cj, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56
  %i.ck = load i8, ptr %i.a, align 1, !tbaa !29   ; 5 uses
  %i.cl = add i8 %i.ck, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.cl, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 6 uses
  %i.cn = zext i8 %i.cl to i64                    ; 2 uses
  %i.co = and i8 %i.ck, 1
  %lcmp.mod.not.not = icmp eq i8 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cp = add i8 %i.ck, %1                        ; 2 uses
  %i.cq = zext i8 %i.ck to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !28 ; 3 uses
  %i.ct = zext i8 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.cp, ptr %i.cv, align 1, !tbaa !29
  store ptr %2, ptr %i.cs, align 8, !tbaa !28
  %indvars.iv.next.prol = add nsw i64 %i.cn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cw = icmp eq i8 %i.ck, 0
  br i1 %i.cw, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.cz = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cz, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.da = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.da, 1
  %i.db = icmp ult i8 %i.cz, 3
  br i1 %i.db, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.da, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.dc = trunc nuw i64 %indvars.iv to i8
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  %i.de = add i8 %i.dd, %1                        ; 2 uses
  %i.df = zext i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !28 ; 3 uses
  %i.di = zext i8 %i.de to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %i.de, ptr %i.dk, align 1, !tbaa !29
  store ptr %2, ptr %i.dh, align 8, !tbaa !28
  %i.dl = trunc i64 %indvars.iv to i8
  %i.dm = add i8 %i.dl, -2                        ; 2 uses
  %i.dn = add i8 %i.dm, %1                        ; 2 uses
  %i.do = zext i8 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !28 ; 3 uses
  %i.dr = zext i8 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !29
  store ptr %2, ptr %i.dq, align 8, !tbaa !28
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.du = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.du, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !431

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.dv = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.dw = load i8, ptr %i.as, align 2, !tbaa !29
  %i.dx = trunc nuw i64 %indvars.iv65 to i8
  %i.dy = sub i8 %i.dx, %1
  %i.dz = add i8 %i.dy, %i.dw
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !28 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dv
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !28
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.dv to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !29
  store ptr %2, ptr %i.ec, align 8, !tbaa !28
  %i.eg = load i8, ptr %i.as, align 2, !tbaa !29
  %i.eh = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.eh, %invariant.op
  %i.ei = add i8 %.reass, %i.eg
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv65
  store ptr %i.el, ptr %i.em, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !29
  store ptr %2, ptr %i.el, align 8, !tbaa !28
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !432

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ep = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.eq = load i8, ptr %i.as, align 2, !tbaa !29
  %i.er = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.es = sub i8 %i.er, %1
  %i.et = add i8 %i.es, %i.eq
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ep
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !28
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = trunc nuw i64 %i.ep to i8
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !29
  store ptr %2, ptr %i.ew, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56
  %i.fa = load i8, ptr %i.as, align 2, !tbaa !29
  %i.fb = sub i8 %i.fa, %1
  store i8 %i.fb, ptr %i.as, align 2, !tbaa !29
  %i.fc = load i8, ptr %i.a, align 1, !tbaa !29
  %i.fd = add i8 %i.fc, %1
  store i8 %i.fd, ptr %i.a, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.m, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.af, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 5 uses
  %.01214.i = phi ptr [ %i.ae, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.015.i, align 8, !tbaa !85
  %i.t = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.t, ptr %.015.i, align 8, !tbaa !21
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !25
  store ptr %i.u, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.ab, align 8, !tbaa !25
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i = icmp eq ptr %i.ae, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !421

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, %bb.d
  %i.ag = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !29
  %i.ai = load ptr, ptr %0, align 8, !tbaa !28    ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !29  ; 4 uses
  %i.al = zext i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.al ; 5 uses
  %i.an = zext i8 %i.ak to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29  ; 2 uses
  %i.aq = icmp ult i8 %i.ak, %i.ap
  %i.ar = zext i8 %i.ak to i64                    ; 2 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = getelementptr [32 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %narrow.i = sub nuw i8 %i.ap, %i.ak
  %i.au = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.au, 5
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %i.aw = getelementptr [32 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.at, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.aw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01416.i.i = phi ptr [ %i.az, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.ax, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.017.i.i, i64 -16 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !85
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !21
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !29
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.bj = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bl = getelementptr inbounds i8, ptr %.017.i.i, i64 -24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !25
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !21
  store i64 0, ptr %i.bj, align 8, !tbaa !25
  store i8 0, ptr %i.bc, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !422

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.ar ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !85
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE23rebalance_right_to_leftEhPSM_PSK_:bb.a
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.aj, ptr %.015.i, align 8, !tbaa !21
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !29
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !25
  store ptr %i.ak, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.ar, align 8, !tbaa !25
  store i8 0, ptr %i.ak, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !450
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !450
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.i, !llvm.loop !501

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !115
  %i.az = load i8, ptr %i.d, align 8, !tbaa !29
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.ba ; 5 uses
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.ac ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !85
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !25 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !21
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !29
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !25
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !21
  store i64 0, ptr %i.bn, align 8, !tbaa !25
  store i8 0, ptr %i.bg, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !450
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !450
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29  ; 2 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.aa
  %i.bx = zext i8 %1 to i64                       ; 3 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.bx ; 2 uses
  %narrow = mul nsw i32 %i.bw, 40
  %.idx.i48 = sext i32 %narrow to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.bu, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55
  %.015.i52 = phi ptr [ %i.cq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55 ], [ %i.ad, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47 ] ; 6 uses
  %.01214.i53 = phi ptr [ %i.cp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55 ], [ %i.by, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47 ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16 ; 3 uses
  store ptr %i.ca, ptr %.015.i52, align 8, !tbaa !85
  %i.cb = load ptr, ptr %.01214.i53, align 8, !tbaa !21 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 16
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.cb, ptr %.015.i52, align 8, !tbaa !21
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !29
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54, %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !25
  store ptr %i.cc, ptr %.01214.i53, align 8, !tbaa !21
  store i64 0, ptr %i.cj, align 8, !tbaa !25
  store i8 0, ptr %i.cc, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %.015.i52, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !450
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !450
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.i52, i64 40
  %.not.i56 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit57, label %.lr.ph.i51, !llvm.loop !501

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit47
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %.not.i58 = icmp eq i8 %i.cs, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bx, 1
  %i.cv = icmp eq i32 %i.ab, 0
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bx, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cw = load i8, ptr %i.a, align 2, !tbaa !29
  %i.cx = trunc i64 %indvars.iv.epil.init to i8
  %i.cy = add i8 %i.cx, 1
  %i.cz = add i8 %i.cw, %i.cy                     ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.epil.init
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !115 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !115
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !29
  store ptr %0, ptr %i.db, align 8, !tbaa !115
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.df = load i8, ptr %i.bt, align 1, !tbaa !29
  %.not61 = icmp ult i8 %i.df, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.dh = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.di = trunc nuw i64 %indvars.iv.next to i8
  %i.dj = add i8 %i.dh, %i.di                     ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !115 ; 3 uses
  %i.dm = zext i8 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dm
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !115
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i8 %i.dj, ptr %i.do, align 1, !tbaa !29
  store ptr %0, ptr %i.dl, align 8, !tbaa !115
  %i.dp = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dq = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.dr = add i8 %i.dp, %i.dq                     ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !115 ; 3 uses
  %i.du = zext i8 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !115
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 %i.dr, ptr %i.dw, align 1, !tbaa !29
  store ptr %0, ptr %i.dt, align 8, !tbaa !115
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !504

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.ee, %bb.g ] ; 4 uses
  %i.dx = add i8 %.062, %1
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !115 ; 3 uses
  %i.eb = zext i8 %.062 to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !115
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 %.062, ptr %i.ed, align 1, !tbaa !29
  store ptr %2, ptr %i.ea, align 8, !tbaa !115
  %i.ee = add i8 %.062, 1                         ; 2 uses
  %i.ef = zext i8 %i.ee to i32
  %i.eg = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.eh = zext i8 %i.eg to i32
  %i.ei = sub nsw i32 %i.eh, %i.aa
  %.not = icmp slt i32 %i.ei, %i.ef
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !505

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit57
  %i.ej = load i8, ptr %i.a, align 2, !tbaa !29
  %i.ek = add i8 %i.ej, %1
  store i8 %i.ek, ptr %i.a, align 2, !tbaa !29
  %i.el = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.em = sub i8 %i.el, %1
  store i8 %i.em, ptr %i.bt, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE23rebalance_left_to_rightEhPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 40
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [40 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [40 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 4 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -24 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !85
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !21
  %i.t = load i64, ptr %i.n, align 8, !tbaa !29
  store i64 %i.t, ptr %i.l, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds i8, ptr %.017.i, i64 -32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !25
  store ptr %i.n, ptr %i.k, align 8, !tbaa !21
  store i64 0, ptr %i.u, align 8, !tbaa !25
  store i8 0, ptr %i.n, align 8, !tbaa !29
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -8
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !450
  store ptr %i.z, ptr %i.x, align 8, !tbaa !450
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit, label %.lr.ph.i, !llvm.loop !502

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i, %bb.a
  %i.aa = add nsw i32 %i.c, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.ab ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ae ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !85
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !21
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !29
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !25
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !21
  store i64 0, ptr %i.as, align 8, !tbaa !25
  store i8 0, ptr %i.al, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !450
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !450
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = sub nsw i32 %i.ba, %i.aa
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %.idx.i48 = mul nuw nsw i64 %i.ab, 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52
  %.015.i = phi ptr [ %i.bw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit ] ; 6 uses
  %.01214.i = phi ptr [ %i.bv, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52 ], [ %i.be, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.bg, ptr %.015.i, align 8, !tbaa !85
  %i.bh = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.bk = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bh, ptr %.015.i, align 8, !tbaa !21
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !29
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51, %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !25
  store ptr %i.bi, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.bp, align 8, !tbaa !25
  store i8 0, ptr %i.bi, align 8, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !450
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !450
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i53 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !501

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i52
  %.pre = load i8, ptr %i.ay, align 2, !tbaa !29
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit ], [ %i.ba, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !115
  %i.by = load i8, ptr %i.ac, align 8, !tbaa !29
  %i.bz = zext i8 %i.by to i64
  %i.ca = sub nsw i32 %.pre-phi, %i.c
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.bz ; 5 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.cb ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !85
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !25 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 16
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !21
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !29
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !25
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !21
  store i64 0, ptr %i.co, align 8, !tbaa !25
  store i8 0, ptr %i.ch, align 8, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !450
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !450
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %.not.i57 = icmp eq i8 %i.cv, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit56
  %i.cw = load i8, ptr %i.a, align 1, !tbaa !29   ; 5 uses
  %i.cx = add i8 %i.cw, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.cx, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cz = zext i8 %i.cx to i64                    ; 2 uses
  %i.da = and i8 %i.cw, 1
  %lcmp.mod.not.not = icmp eq i8 %i.da, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.db = add i8 %i.cw, %1                        ; 2 uses
  %i.dc = zext i8 %i.cw to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !115 ; 3 uses
  %i.df = zext i8 %i.db to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.df
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !115
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.db, ptr %i.dh, align 1, !tbaa !29
  store ptr %2, ptr %i.de, align 8, !tbaa !115
  %indvars.iv.next.prol = add nsw i64 %i.cz, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cz, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.di = icmp eq i8 %i.cw, 0
  br i1 %i.di, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dl = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dl, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dm = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.dm, 1
  %i.dn = icmp ult i8 %i.dl, 3
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.dm, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.do = trunc nuw i64 %indvars.iv to i8
  %i.dp = add i8 %i.do, -1                        ; 2 uses
  %i.dq = add i8 %i.dp, %1                        ; 2 uses
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !115 ; 3 uses
  %i.du = zext i8 %i.dq to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !115
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 %i.dq, ptr %i.dw, align 1, !tbaa !29
  store ptr %2, ptr %i.dt, align 8, !tbaa !115
  %i.dx = trunc i64 %indvars.iv to i8
  %i.dy = add i8 %i.dx, -2                        ; 2 uses
  %i.dz = add i8 %i.dy, %1                        ; 2 uses
  %i.ea = zext i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !115 ; 3 uses
  %i.ed = zext i8 %i.dz to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ed
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !115
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 %i.dz, ptr %i.ef, align 1, !tbaa !29
  store ptr %2, ptr %i.ec, align 8, !tbaa !115
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.eg = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.eg, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !506

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.eh = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.ei = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.ej = trunc nuw i64 %indvars.iv65 to i8
  %i.ek = sub i8 %i.ej, %1
  %i.el = add i8 %i.ek, %i.ei
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !115 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eh
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !115
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = trunc nuw i64 %i.eh to i8
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !29
  store ptr %2, ptr %i.eo, align 8, !tbaa !115
  %i.es = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.et = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.et, %invariant.op
  %i.eu = add i8 %.reass, %i.es
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !115 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv65
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !115
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.fa, ptr %i.ez, align 1, !tbaa !29
  store ptr %2, ptr %i.ex, align 8, !tbaa !115
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !507

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.fb = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.fc = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.fd = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.fe = sub i8 %i.fd, %1
  %i.ff = add i8 %i.fe, %i.fc
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !115 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.fb
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !115
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = trunc nuw i64 %i.fb to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !29
  store ptr %2, ptr %i.fi, align 8, !tbaa !115
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEmmPSM_PSK_.exit56
  %i.fm = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.fn = sub i8 %i.fm, %1
  store i8 %i.fn, ptr %i.ay, align 2, !tbaa !29
  %i.fo = load i8, ptr %i.a, align 1, !tbaa !29
  %i.fp = add i8 %i.fo, %1
  store i8 %i.fp, ptr %i.a, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE5splitEiPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 6 uses
  %.01214.i = phi ptr [ %i.ah, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.015.i, align 8, !tbaa !85
  %i.t = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.t, ptr %.015.i, align 8, !tbaa !21
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !25
  store ptr %i.u, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.ab, align 8, !tbaa !25
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !450
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !450
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, label %.lr.ph.i, !llvm.loop !501

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, %bb.d
  %i.aj = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ak = add i8 %i.aj, -1                        ; 2 uses
  store i8 %i.ak, ptr %i.h, align 1, !tbaa !29
  %i.al = load ptr, ptr %0, align 8, !tbaa !115   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !29  ; 4 uses
  %i.ao = zext i8 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ao ; 6 uses
  %i.aq = zext i8 %i.an to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 10 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29  ; 2 uses
  %i.at = icmp ult i8 %i.an, %i.as
  %i.au = zext i8 %i.an to i64                    ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = getelementptr [40 x i8], ptr %i.av, i64 %i.au ; 3 uses
  %narrow.i = sub nuw i8 %i.as, %i.an
  %i.ax = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ax, 40
  %i.ay = getelementptr i8, ptr %i.aw, i64 40
  %i.az = getelementptr [40 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.bb, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i ], [ %i.az, %.lr.ph.preheader.i.i ] ; 4 uses
  %.01416.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.bb = getelementptr inbounds i8, ptr %.017.i.i, i64 -40 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.01416.i.i, i64 -40 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.017.i.i, i64 -24 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !85
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !25 ; 2 uses
  %i.bj = icmp ult i64 %i.bi, 16
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !21
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !29
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.bm = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !25
  %i.bo = getelementptr inbounds i8, ptr %.017.i.i, i64 -32
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !25
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !21
  store i64 0, ptr %i.bm, align 8, !tbaa !25
  store i8 0, ptr %i.bf, align 8, !tbaa !29
  %i.bp = getelementptr inbounds i8, ptr %.017.i.i, i64 -8
  %i.bq = getelementptr inbounds i8, ptr %.01416.i.i, i64 -8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !450
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !450
  %.not.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i, label %.lr.ph.i.i, !llvm.loop !502

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SE_EESP_PSK_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.au ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !85
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE23rebalance_right_to_leftEhPSN_PSL_:bb.a
  %i.av = load i64, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !25
  store ptr %i.an, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.au, align 8, !tbaa !25
  store i8 0, ptr %i.an, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !124
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !488
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !488
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ah
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit, label %.lr.ph.i, !llvm.loop !529

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !126
  %i.bf = load i8, ptr %i.d, align 8, !tbaa !29
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bg ; 6 uses
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %i.af ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !85
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !25 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 16
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !21
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !29
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !25
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !21
  store i64 0, ptr %i.bt, align 8, !tbaa !25
  store i8 0, ptr %i.bm, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !124
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !488
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !488
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = sub nsw i32 %i.ce, %i.ad
  %i.cg = zext i8 %1 to i64                       ; 3 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %i.cg ; 2 uses
  %narrow = mul nsw i32 %i.cf, 48
  %.idx.i48 = sext i32 %narrow to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.cd, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55
  %.015.i52 = phi ptr [ %i.dc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55 ], [ %i.ag, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47 ] ; 7 uses
  %.01214.i53 = phi ptr [ %i.db, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55 ], [ %i.ch, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47 ] ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16 ; 3 uses
  store ptr %i.cj, ptr %.015.i52, align 8, !tbaa !85
  %i.ck = load ptr, ptr %.01214.i53, align 8, !tbaa !21 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 5 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.cn = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !25 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 16
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.cq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.ck, ptr %.015.i52, align 8, !tbaa !21
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !29
  store i64 %i.cr, ptr %i.cj, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54, %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !25
  store ptr %i.cl, ptr %.01214.i53, align 8, !tbaa !21
  store i64 0, ptr %i.cs, align 8, !tbaa !25
  store i8 0, ptr %i.cl, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %.015.i52, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !124
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !124
  %i.cy = getelementptr inbounds nuw i8, ptr %.015.i52, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !488
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !488
  %i.db = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.015.i52, i64 48
  %.not.i56 = icmp eq ptr %i.db, %i.ci
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit57, label %.lr.ph.i51, !llvm.loop !529

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit47
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !29
  %.not.i58 = icmp eq i8 %i.de, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.cg, 1
  %i.dh = icmp eq i32 %i.ae, 0
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cg, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.di = load i8, ptr %i.a, align 2, !tbaa !29
  %i.dj = trunc i64 %indvars.iv.epil.init to i8
  %i.dk = add i8 %i.dj, 1
  %i.dl = add i8 %i.di, %i.dk                     ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.epil.init
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !126 ; 3 uses
  %i.do = zext i8 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.do
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !126
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i8 %i.dl, ptr %i.dq, align 1, !tbaa !29
  store ptr %0, ptr %i.dn, align 8, !tbaa !126
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.dr = load i8, ptr %i.cc, align 1, !tbaa !29
  %.not61 = icmp ult i8 %i.dr, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.dt = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.du = trunc nuw i64 %indvars.iv.next to i8
  %i.dv = add i8 %i.dt, %i.du                     ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !126 ; 3 uses
  %i.dy = zext i8 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dy
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !126
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %i.dv, ptr %i.ea, align 1, !tbaa !29
  store ptr %0, ptr %i.dx, align 8, !tbaa !126
  %i.eb = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ec = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ed = add i8 %i.eb, %i.ec                     ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !126 ; 3 uses
  %i.eg = zext i8 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !126
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ed, ptr %i.ei, align 1, !tbaa !29
  store ptr %0, ptr %i.ef, align 8, !tbaa !126
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !532

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.eq, %bb.g ] ; 4 uses
  %i.ej = add i8 %.062, %1
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !126 ; 3 uses
  %i.en = zext i8 %.062 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.en
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !126
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %.062, ptr %i.ep, align 1, !tbaa !29
  store ptr %2, ptr %i.em, align 8, !tbaa !126
  %i.eq = add i8 %.062, 1                         ; 2 uses
  %i.er = zext i8 %i.eq to i32
  %i.es = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.et, %i.ad
  %.not = icmp slt i32 %i.eu, %i.er
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !533

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit57
  %i.ev = load i8, ptr %i.a, align 2, !tbaa !29
  %i.ew = add i8 %i.ev, %1
  store i8 %i.ew, ptr %i.a, align 2, !tbaa !29
  %i.ex = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ey = sub i8 %i.ex, %1
  store i8 %i.ey, ptr %i.cc, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE23rebalance_left_to_rightEhPSN_PSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE19transfer_n_backwardEmmmPSN_PSL_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [48 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [48 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 5 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !85
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !21
  %i.t = load i64, ptr %i.n, align 8, !tbaa !29
  store i64 %i.t, ptr %i.l, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds i8, ptr %.017.i, i64 -40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !25
  store ptr %i.n, ptr %i.k, align 8, !tbaa !21
  store i64 0, ptr %i.u, align 8, !tbaa !25
  store i8 0, ptr %i.n, align 8, !tbaa !29
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -16
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !124
  store i32 %i.z, ptr %i.x, align 8, !tbaa !124
  %i.aa = getelementptr inbounds i8, ptr %.017.i, i64 -8
  %i.ab = getelementptr inbounds i8, ptr %.01416.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !488
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !488
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE19transfer_n_backwardEmmmPSN_PSL_.exit, label %.lr.ph.i, !llvm.loop !530

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE19transfer_n_backwardEmmmPSN_PSL_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i, %bb.a
  %i.ad = add nsw i32 %i.c, -1                    ; 3 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !126
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.ae ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %i.ah ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !85
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE19transfer_n_backwardEmmmPSN_PSL_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE19transfer_n_backwardEmmmPSN_PSL_.exit
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !21
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !29
  store i64 %i.au, ptr %i.am, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !21
  store i64 0, ptr %i.av, align 8, !tbaa !25
  store i8 0, ptr %i.ao, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !124
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !488
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !488
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !29
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = sub nsw i32 %i.bg, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  %.idx.i48 = mul nuw nsw i64 %i.ae, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.ad, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52
  %.015.i = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit ] ; 7 uses
  %.01214.i = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52 ], [ %i.bk, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit ] ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.bm, ptr %.015.i, align 8, !tbaa !85
  %i.bn = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 16
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bn, ptr %.015.i, align 8, !tbaa !21
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !29
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51, %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !25
  store ptr %i.bo, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.bv, align 8, !tbaa !25
  store i8 0, ptr %i.bo, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !124
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !124
  %i.cb = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !488
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !488
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %.not.i53 = icmp eq ptr %i.ce, %i.bl
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !529

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i52
  %.pre = load i8, ptr %i.be, align 2, !tbaa !29
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit ], [ %i.bg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !126
  %i.ch = load i8, ptr %i.af, align 8, !tbaa !29
  %i.ci = zext i8 %i.ch to i64
  %i.cj = sub nsw i32 %.pre-phi, %i.c
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.ci ; 6 uses
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.ck ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !85
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 5 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 16
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.cv, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !21
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !29
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !25
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !21
  store i64 0, ptr %i.cx, align 8, !tbaa !25
  store i8 0, ptr %i.cq, align 8, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !124
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !124
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !488
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !488
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %.not.i57 = icmp eq i8 %i.dh, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit56
  %i.di = load i8, ptr %i.a, align 1, !tbaa !29   ; 5 uses
  %i.dj = add i8 %i.di, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.dj, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dl = zext i8 %i.dj to i64                    ; 2 uses
  %i.dm = and i8 %i.di, 1
  %lcmp.mod.not.not = icmp eq i8 %i.dm, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.dn = add i8 %i.di, %1                        ; 2 uses
  %i.do = zext i8 %i.di to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !126 ; 3 uses
  %i.dr = zext i8 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !126
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !29
  store ptr %2, ptr %i.dq, align 8, !tbaa !126
  %indvars.iv.next.prol = add nsw i64 %i.dl, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dl, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.du = icmp eq i8 %i.di, 0
  br i1 %i.du, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dx = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dx, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dy = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.dy, 1
  %i.dz = icmp ult i8 %i.dx, 3
  br i1 %i.dz, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.dy, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ea = trunc nuw i64 %indvars.iv to i8
  %i.eb = add i8 %i.ea, -1                        ; 2 uses
  %i.ec = add i8 %i.eb, %1                        ; 2 uses
  %i.ed = zext i8 %i.eb to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !126 ; 3 uses
  %i.eg = zext i8 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !126
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ec, ptr %i.ei, align 1, !tbaa !29
  store ptr %2, ptr %i.ef, align 8, !tbaa !126
  %i.ej = trunc i64 %indvars.iv to i8
  %i.ek = add i8 %i.ej, -2                        ; 2 uses
  %i.el = add i8 %i.ek, %1                        ; 2 uses
  %i.em = zext i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !126 ; 3 uses
  %i.ep = zext i8 %i.el to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ep
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !126
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i8 %i.el, ptr %i.er, align 1, !tbaa !29
  store ptr %2, ptr %i.eo, align 8, !tbaa !126
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.es = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.es, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !534

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.et = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.eu = load i8, ptr %i.be, align 2, !tbaa !29
  %i.ev = trunc nuw i64 %indvars.iv65 to i8
  %i.ew = sub i8 %i.ev, %1
  %i.ex = add i8 %i.ew, %i.eu
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !126 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.et
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !126
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = trunc nuw i64 %i.et to i8
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !29
  store ptr %2, ptr %i.fa, align 8, !tbaa !126
  %i.fe = load i8, ptr %i.be, align 2, !tbaa !29
  %i.ff = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.ff, %invariant.op
  %i.fg = add i8 %.reass, %i.fe
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !126 ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv65
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !126
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !29
  store ptr %2, ptr %i.fj, align 8, !tbaa !126
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !535

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.fn = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.fo = load i8, ptr %i.be, align 2, !tbaa !29
  %i.fp = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.fq = sub i8 %i.fp, %1
  %i.fr = add i8 %i.fq, %i.fo
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !126 ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fn
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !126
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = trunc nuw i64 %i.fn to i8
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !29
  store ptr %2, ptr %i.fu, align 8, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEmmPSN_PSL_.exit56
  %i.fy = load i8, ptr %i.be, align 2, !tbaa !29
  %i.fz = sub i8 %i.fy, %1
  store i8 %i.fz, ptr %i.be, align 2, !tbaa !29
  %i.ga = load i8, ptr %i.a, align 1, !tbaa !29
  %i.gb = add i8 %i.ga, %1
  store i8 %i.gb, ptr %i.a, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE5splitEiPSN_PSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 7 uses
  %.01214.i = phi ptr [ %i.ak, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.015.i, align 8, !tbaa !85
  %i.t = load ptr, ptr %.01214.i, align 8, !tbaa !21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.t, ptr %.015.i, align 8, !tbaa !21
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !25
  store ptr %i.u, ptr %.01214.i, align 8, !tbaa !21
  store i64 0, ptr %i.ab, align 8, !tbaa !25
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !124
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !488
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !488
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %.not.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit, label %.lr.ph.i, !llvm.loop !529

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit, %bb.d
  %i.am = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.h, align 1, !tbaa !29
  %i.ao = load ptr, ptr %0, align 8, !tbaa !126   ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !29  ; 4 uses
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.ar ; 7 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 10 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29  ; 2 uses
  %i.aw = icmp ult i8 %i.aq, %i.av
  %i.ax = zext i8 %i.aq to i64                    ; 2 uses
  br i1 %i.aw, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE19transfer_n_backwardEmmmPSN_PSL_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE10transfer_nEmmmPSN_PSL_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = getelementptr [48 x i8], ptr %i.ay, i64 %i.ax ; 3 uses
  %narrow.i = sub nuw i8 %i.av, %i.aq
  %i.ba = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ba, 48
  %i.bb = getelementptr i8, ptr %i.az, i64 48
  %i.bc = getelementptr [48 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.az, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.be, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i.i ], [ %i.bc, %.lr.ph.preheader.i.i ] ; 5 uses
  %.01416.i.i = phi ptr [ %i.bf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 6 uses
  %i.be = getelementptr inbounds i8, ptr %.017.i.i, i64 -48 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i.i, i64 -48 ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !85
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds i8, ptr %.01416.i.i, i64 -40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !21
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !29
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeISB_SG_EESQ_PSL_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.bp = getelementptr inbounds i8, ptr %.01416.i.i, i64 -40 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.br = getelementptr inbounds i8, ptr %.017.i.i, i64 -40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !25
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !21
  store i64 0, ptr %i.bp, align 8, !tbaa !25
  store i8 0, ptr %i.bi, align 8, !tbaa !29
  %i.bs = getelementptr inbounds i8, ptr %.017.i.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !124
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !124
  %i.bv = getelementptr inbounds i8, ptr %.017.i.i, i64 -8
  %i.bw = getelementptr inbounds i8, ptr %.01416.i.i, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !488
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !488
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE23rebalance_right_to_leftEhPSC_PSA_:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !21
  %i.at = load i64, ptr %i.an, align 8, !tbaa !29
  store i64 %i.at, ptr %i.al, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !25
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !21
  store i64 0, ptr %i.au, align 8, !tbaa !25
  store i8 0, ptr %i.an, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.i, !llvm.loop !571

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !277
  %i.az = load i8, ptr %i.d, align 8, !tbaa !29
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.ba ; 4 uses
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.ac ; 5 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !159
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !85
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !21 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !21
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !29
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !25
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !21
  store i64 0, ptr %i.bq, align 8, !tbaa !25
  store i8 0, ptr %i.bj, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29  ; 2 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.aa
  %i.bx = zext i8 %1 to i64                       ; 3 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.bx ; 2 uses
  %narrow = mul nsw i32 %i.bw, 40
  %.idx.i48 = sext i32 %narrow to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.bu, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55
  %.015.i52 = phi ptr [ %i.cq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55 ], [ %i.ad, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47 ] ; 5 uses
  %.01214.i53 = phi ptr [ %i.cp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55 ], [ %i.by, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47 ] ; 6 uses
  %i.ca = load i32, ptr %.01214.i53, align 8, !tbaa !159
  store i32 %i.ca, ptr %.015.i52, align 8, !tbaa !159
  %i.cb = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i52, i64 24 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !85
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 24 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.ch = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !21
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !29
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54, %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !25
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !21
  store i64 0, ptr %i.cm, align 8, !tbaa !25
  store i8 0, ptr %i.cf, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.i52, i64 40
  %.not.i56 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57, label %.lr.ph.i51, !llvm.loop !571

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %.not.i58 = icmp eq i8 %i.cs, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bx, 1
  %i.cv = icmp eq i32 %i.ab, 0
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bx, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cw = load i8, ptr %i.a, align 2, !tbaa !29
  %i.cx = trunc i64 %indvars.iv.epil.init to i8
  %i.cy = add i8 %i.cx, 1
  %i.cz = add i8 %i.cw, %i.cy                     ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.epil.init
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !277 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !277
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !29
  store ptr %0, ptr %i.db, align 8, !tbaa !277
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.df = load i8, ptr %i.bt, align 1, !tbaa !29
  %.not61 = icmp ult i8 %i.df, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.dh = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.di = trunc nuw i64 %indvars.iv.next to i8
  %i.dj = add i8 %i.dh, %i.di                     ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !277 ; 3 uses
  %i.dm = zext i8 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dm
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !277
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i8 %i.dj, ptr %i.do, align 1, !tbaa !29
  store ptr %0, ptr %i.dl, align 8, !tbaa !277
  %i.dp = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dq = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.dr = add i8 %i.dp, %i.dq                     ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !277 ; 3 uses
  %i.du = zext i8 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !277
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 %i.dr, ptr %i.dw, align 1, !tbaa !29
  store ptr %0, ptr %i.dt, align 8, !tbaa !277
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !574

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.ee, %bb.g ] ; 4 uses
  %i.dx = add i8 %.062, %1
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !277 ; 3 uses
  %i.eb = zext i8 %.062 to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !277
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 %.062, ptr %i.ed, align 1, !tbaa !29
  store ptr %2, ptr %i.ea, align 8, !tbaa !277
  %i.ee = add i8 %.062, 1                         ; 2 uses
  %i.ef = zext i8 %i.ee to i32
  %i.eg = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.eh = zext i8 %i.eg to i32
  %i.ei = sub nsw i32 %i.eh, %i.aa
  %.not = icmp slt i32 %i.ei, %i.ef
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !575

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57
  %i.ej = load i8, ptr %i.a, align 2, !tbaa !29
  %i.ek = add i8 %i.ej, %1
  store i8 %i.ek, ptr %i.a, align 2, !tbaa !29
  %i.el = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.em = sub i8 %i.el, %1
  store i8 %i.em, ptr %i.bt, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE23rebalance_left_to_rightEhPSC_PSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 40
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [40 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [40 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 4 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !159
  store i32 %i.l, ptr %i.j, align 8, !tbaa !159
  %i.m = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !85
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !21
  %i.w = load i64, ptr %i.q, align 8, !tbaa !29
  store i64 %i.w, ptr %i.o, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  store ptr %i.q, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.x, align 8, !tbaa !25
  store i8 0, ptr %i.q, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit, label %.lr.ph.i, !llvm.loop !572

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %bb.a
  %i.aa = add nsw i32 %i.c, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !277
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.ab ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ae ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !159
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !85
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !21
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !29
  store i64 %i.au, ptr %i.am, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !21
  store i64 0, ptr %i.av, align 8, !tbaa !25
  store i8 0, ptr %i.ao, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = sub nsw i32 %i.ba, %i.aa
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %.idx.i48 = mul nuw nsw i64 %i.ab, 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52
  %.015.i = phi ptr [ %i.bw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ] ; 5 uses
  %.01214.i = phi ptr [ %i.bv, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52 ], [ %i.be, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ] ; 6 uses
  %i.bg = load i32, ptr %.01214.i, align 8, !tbaa !159
  store i32 %i.bg, ptr %.015.i, align 8, !tbaa !159
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !85
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !21
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !29
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51, %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !25
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !21
  store i64 0, ptr %i.bs, align 8, !tbaa !25
  store i8 0, ptr %i.bl, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i53 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !571

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52
  %.pre = load i8, ptr %i.ay, align 2, !tbaa !29
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit ], [ %i.ba, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !277
  %i.by = load i8, ptr %i.ac, align 8, !tbaa !29
  %i.bz = zext i8 %i.by to i64
  %i.ca = sub nsw i32 %.pre-phi, %i.c
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.bz ; 4 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.cb ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !159
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !85
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !21 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !21
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !29
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !21
  store i64 0, ptr %i.cr, align 8, !tbaa !25
  store i8 0, ptr %i.ck, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %.not.i57 = icmp eq i8 %i.cv, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56
  %i.cw = load i8, ptr %i.a, align 1, !tbaa !29   ; 5 uses
  %i.cx = add i8 %i.cw, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.cx, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cz = zext i8 %i.cx to i64                    ; 2 uses
  %i.da = and i8 %i.cw, 1
  %lcmp.mod.not.not = icmp eq i8 %i.da, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.db = add i8 %i.cw, %1                        ; 2 uses
  %i.dc = zext i8 %i.cw to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !277 ; 3 uses
  %i.df = zext i8 %i.db to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.df
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !277
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.db, ptr %i.dh, align 1, !tbaa !29
  store ptr %2, ptr %i.de, align 8, !tbaa !277
  %indvars.iv.next.prol = add nsw i64 %i.cz, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cz, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.di = icmp eq i8 %i.cw, 0
  br i1 %i.di, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dl = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dl, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dm = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.dm, 1
  %i.dn = icmp ult i8 %i.dl, 3
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.dm, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.do = trunc nuw i64 %indvars.iv to i8
  %i.dp = add i8 %i.do, -1                        ; 2 uses
  %i.dq = add i8 %i.dp, %1                        ; 2 uses
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !277 ; 3 uses
  %i.du = zext i8 %i.dq to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !277
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 %i.dq, ptr %i.dw, align 1, !tbaa !29
  store ptr %2, ptr %i.dt, align 8, !tbaa !277
  %i.dx = trunc i64 %indvars.iv to i8
  %i.dy = add i8 %i.dx, -2                        ; 2 uses
  %i.dz = add i8 %i.dy, %1                        ; 2 uses
  %i.ea = zext i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 3 uses
  %i.ed = zext i8 %i.dz to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ed
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !277
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 %i.dz, ptr %i.ef, align 1, !tbaa !29
  store ptr %2, ptr %i.ec, align 8, !tbaa !277
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.eg = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.eg, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !576

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.eh = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.ei = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.ej = trunc nuw i64 %indvars.iv65 to i8
  %i.ek = sub i8 %i.ej, %1
  %i.el = add i8 %i.ek, %i.ei
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !277 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eh
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !277
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = trunc nuw i64 %i.eh to i8
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !29
  store ptr %2, ptr %i.eo, align 8, !tbaa !277
  %i.es = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.et = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.et, %invariant.op
  %i.eu = add i8 %.reass, %i.es
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !277 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv65
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !277
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.fa, ptr %i.ez, align 1, !tbaa !29
  store ptr %2, ptr %i.ex, align 8, !tbaa !277
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !577

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.fb = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.fc = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.fd = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.fe = sub i8 %i.fd, %1
  %i.ff = add i8 %i.fe, %i.fc
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !277 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.fb
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !277
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = trunc nuw i64 %i.fb to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !29
  store ptr %2, ptr %i.fi, align 8, !tbaa !277
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56
  %i.fm = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.fn = sub i8 %i.fm, %1
  store i8 %i.fn, ptr %i.ay, align 2, !tbaa !29
  %i.fo = load i8, ptr %i.a, align 1, !tbaa !29
  %i.fp = add i8 %i.fo, %1
  store i8 %i.fp, ptr %i.a, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE5splitEiPSC_PSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 5 uses
  %.01214.i = phi ptr [ %i.ah, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 6 uses
  %i.s = load i32, ptr %.01214.i, align 8, !tbaa !159
  store i32 %i.s, ptr %.015.i, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !85
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !21
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !29
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !25
  store ptr %i.x, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.ae, align 8, !tbaa !25
  store i8 0, ptr %i.x, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, label %.lr.ph.i, !llvm.loop !571

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, %bb.d
  %i.aj = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ak = add i8 %i.aj, -1                        ; 2 uses
  store i8 %i.ak, ptr %i.h, align 1, !tbaa !29
  %i.al = load ptr, ptr %0, align 8, !tbaa !277   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !29  ; 4 uses
  %i.ao = zext i8 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ao ; 5 uses
  %i.aq = zext i8 %i.an to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 10 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29  ; 2 uses
  %i.at = icmp ult i8 %i.an, %i.as
  %i.au = zext i8 %i.an to i64                    ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = getelementptr [40 x i8], ptr %i.av, i64 %i.au ; 3 uses
  %narrow.i = sub nuw i8 %i.as, %i.an
  %i.ax = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ax, 40
  %i.ay = getelementptr i8, ptr %i.aw, i64 40
  %i.az = getelementptr [40 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.bb, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i ], [ %i.az, %.lr.ph.preheader.i.i ] ; 4 uses
  %.01416.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.bb = getelementptr inbounds i8, ptr %.017.i.i, i64 -40 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.01416.i.i, i64 -40 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !159
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !159
  %i.be = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.017.i.i, i64 -16 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !85
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !21
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !29
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.bp = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.br = getelementptr inbounds i8, ptr %.017.i.i, i64 -24
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !25
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !21
  store i64 0, ptr %i.bp, align 8, !tbaa !25
  store i8 0, ptr %i.bi, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !572

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.au ; 4 uses
  %i.bu = load i32, ptr %i.ap, align 8, !tbaa !159
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !159
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE23rebalance_right_to_leftEhPSC_PSA_:bb.a
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !25
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !21
  store i64 0, ptr %i.ax, align 8, !tbaa !25
  store i8 0, ptr %i.aq, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !199
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !199
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ah
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.i, !llvm.loop !591

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !304
  %i.bf = load i8, ptr %i.d, align 8, !tbaa !29
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bg ; 5 uses
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %i.af ; 6 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !201
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !201
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !85
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !25 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !21
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !29
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !25
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !21
  store i64 0, ptr %i.bw, align 8, !tbaa !25
  store i8 0, ptr %i.bp, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !199
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !199
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = sub nsw i32 %i.ce, %i.ad
  %i.cg = zext i8 %1 to i64                       ; 3 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %i.cg ; 2 uses
  %narrow = mul nsw i32 %i.cf, 48
  %.idx.i48 = sext i32 %narrow to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.cd, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55
  %.015.i52 = phi ptr [ %i.dc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55 ], [ %i.ag, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47 ] ; 6 uses
  %.01214.i53 = phi ptr [ %i.db, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55 ], [ %i.ch, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47 ] ; 7 uses
  %i.cj = load i32, ptr %.01214.i53, align 8, !tbaa !201
  store i32 %i.cj, ptr %.015.i52, align 8, !tbaa !201
  %i.ck = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.015.i52, i64 24 ; 3 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !85
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !21 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 24 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.cq = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 16
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !21
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !29
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54, %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !25
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !21
  store i64 0, ptr %i.cv, align 8, !tbaa !25
  store i8 0, ptr %i.co, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %.015.i52, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !199
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !199
  %i.db = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.015.i52, i64 48
  %.not.i56 = icmp eq ptr %i.db, %i.ci
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57, label %.lr.ph.i51, !llvm.loop !591

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !29
  %.not.i58 = icmp eq i8 %i.de, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.cg, 1
  %i.dh = icmp eq i32 %i.ae, 0
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cg, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.di = load i8, ptr %i.a, align 2, !tbaa !29
  %i.dj = trunc i64 %indvars.iv.epil.init to i8
  %i.dk = add i8 %i.dj, 1
  %i.dl = add i8 %i.di, %i.dk                     ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.epil.init
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !304 ; 3 uses
  %i.do = zext i8 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.do
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !304
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i8 %i.dl, ptr %i.dq, align 1, !tbaa !29
  store ptr %0, ptr %i.dn, align 8, !tbaa !304
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.dr = load i8, ptr %i.cc, align 1, !tbaa !29
  %.not61 = icmp ult i8 %i.dr, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.dt = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.du = trunc nuw i64 %indvars.iv.next to i8
  %i.dv = add i8 %i.dt, %i.du                     ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !304 ; 3 uses
  %i.dy = zext i8 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dy
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !304
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %i.dv, ptr %i.ea, align 1, !tbaa !29
  store ptr %0, ptr %i.dx, align 8, !tbaa !304
  %i.eb = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ec = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ed = add i8 %i.eb, %i.ec                     ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !304 ; 3 uses
  %i.eg = zext i8 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !304
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ed, ptr %i.ei, align 1, !tbaa !29
  store ptr %0, ptr %i.ef, align 8, !tbaa !304
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !605

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.eq, %bb.g ] ; 4 uses
  %i.ej = add i8 %.062, %1
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !304 ; 3 uses
  %i.en = zext i8 %.062 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.en
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !304
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %.062, ptr %i.ep, align 1, !tbaa !29
  store ptr %2, ptr %i.em, align 8, !tbaa !304
  %i.eq = add i8 %.062, 1                         ; 2 uses
  %i.er = zext i8 %i.eq to i32
  %i.es = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.et, %i.ad
  %.not = icmp slt i32 %i.eu, %i.er
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !606

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57
  %i.ev = load i8, ptr %i.a, align 2, !tbaa !29
  %i.ew = add i8 %i.ev, %1
  store i8 %i.ew, ptr %i.a, align 2, !tbaa !29
  %i.ex = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ey = sub i8 %i.ex, %1
  store i8 %i.ey, ptr %i.cc, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE23rebalance_left_to_rightEhPSC_PSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [48 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [48 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 5 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !201
  store i32 %i.l, ptr %i.j, align 8, !tbaa !201
  %i.m = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -24 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !85
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !21
  %i.w = load i64, ptr %i.q, align 8, !tbaa !29
  store i64 %i.w, ptr %i.o, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -32
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  store ptr %i.q, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.x, align 8, !tbaa !25
  store i8 0, ptr %i.q, align 8, !tbaa !29
  %i.aa = getelementptr inbounds i8, ptr %.017.i, i64 -8
  %i.ab = getelementptr inbounds i8, ptr %.01416.i, i64 -8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !199
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !199
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit, label %.lr.ph.i, !llvm.loop !592

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %bb.a
  %i.ad = add nsw i32 %i.c, -1                    ; 3 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !304
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.ae ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %i.ah ; 6 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !201
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !201
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !85
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = icmp ult i64 %i.au, 16
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !21
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !29
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !25
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !21
  store i64 0, ptr %i.ay, align 8, !tbaa !25
  store i8 0, ptr %i.ar, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !199
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !199
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !29
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = sub nsw i32 %i.bg, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  %.idx.i48 = mul nuw nsw i64 %i.ae, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.ad, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52
  %.015.i = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ] ; 6 uses
  %.01214.i = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52 ], [ %i.bk, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ] ; 7 uses
  %i.bm = load i32, ptr %.01214.i, align 8, !tbaa !201
  store i32 %i.bm, ptr %.015.i, align 8, !tbaa !201
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !85
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.bt = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !21
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !29
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51, %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !25
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !21
  store i64 0, ptr %i.by, align 8, !tbaa !25
  store i8 0, ptr %i.br, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !199
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !199
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %.not.i53 = icmp eq ptr %i.ce, %i.bl
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !591

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52
  %.pre = load i8, ptr %i.be, align 2, !tbaa !29
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit ], [ %i.bg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !304
  %i.ch = load i8, ptr %i.af, align 8, !tbaa !29
  %i.ci = zext i8 %i.ch to i64
  %i.cj = sub nsw i32 %.pre-phi, %i.c
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.ci ; 5 uses
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.ck ; 6 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !201
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !201
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !85
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 5 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !25 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 16
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.ct, i64 %i.cy, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !21
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !29
  store i64 %i.cz, ptr %i.cr, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !25
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !21
  store i64 0, ptr %i.da, align 8, !tbaa !25
  store i8 0, ptr %i.ct, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.df = load i32, ptr %i.de, align 8, !tbaa !199
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !199
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %.not.i57 = icmp eq i8 %i.dh, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56
  %i.di = load i8, ptr %i.a, align 1, !tbaa !29   ; 5 uses
  %i.dj = add i8 %i.di, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.dj, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dl = zext i8 %i.dj to i64                    ; 2 uses
  %i.dm = and i8 %i.di, 1
  %lcmp.mod.not.not = icmp eq i8 %i.dm, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.dn = add i8 %i.di, %1                        ; 2 uses
  %i.do = zext i8 %i.di to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !304 ; 3 uses
  %i.dr = zext i8 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !304
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !29
  store ptr %2, ptr %i.dq, align 8, !tbaa !304
  %indvars.iv.next.prol = add nsw i64 %i.dl, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dl, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.du = icmp eq i8 %i.di, 0
  br i1 %i.du, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dx = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dx, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dy = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.dy, 1
  %i.dz = icmp ult i8 %i.dx, 3
  br i1 %i.dz, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.dy, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ea = trunc nuw i64 %indvars.iv to i8
  %i.eb = add i8 %i.ea, -1                        ; 2 uses
  %i.ec = add i8 %i.eb, %1                        ; 2 uses
  %i.ed = zext i8 %i.eb to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !304 ; 3 uses
  %i.eg = zext i8 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !304
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ec, ptr %i.ei, align 1, !tbaa !29
  store ptr %2, ptr %i.ef, align 8, !tbaa !304
  %i.ej = trunc i64 %indvars.iv to i8
  %i.ek = add i8 %i.ej, -2                        ; 2 uses
  %i.el = add i8 %i.ek, %1                        ; 2 uses
  %i.em = zext i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !304 ; 3 uses
  %i.ep = zext i8 %i.el to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ep
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !304
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i8 %i.el, ptr %i.er, align 1, !tbaa !29
  store ptr %2, ptr %i.eo, align 8, !tbaa !304
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.es = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.es, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !607

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.et = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.eu = load i8, ptr %i.be, align 2, !tbaa !29
  %i.ev = trunc nuw i64 %indvars.iv65 to i8
  %i.ew = sub i8 %i.ev, %1
  %i.ex = add i8 %i.ew, %i.eu
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !304 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.et
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !304
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = trunc nuw i64 %i.et to i8
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !29
  store ptr %2, ptr %i.fa, align 8, !tbaa !304
  %i.fe = load i8, ptr %i.be, align 2, !tbaa !29
  %i.ff = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.ff, %invariant.op
  %i.fg = add i8 %.reass, %i.fe
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !304 ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv65
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !304
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !29
  store ptr %2, ptr %i.fj, align 8, !tbaa !304
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !608

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.fn = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.fo = load i8, ptr %i.be, align 2, !tbaa !29
  %i.fp = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.fq = sub i8 %i.fp, %1
  %i.fr = add i8 %i.fq, %i.fo
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !304 ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fn
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !304
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = trunc nuw i64 %i.fn to i8
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !29
  store ptr %2, ptr %i.fu, align 8, !tbaa !304
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56
  %i.fy = load i8, ptr %i.be, align 2, !tbaa !29
  %i.fz = sub i8 %i.fy, %1
  store i8 %i.fz, ptr %i.be, align 2, !tbaa !29
  %i.ga = load i8, ptr %i.a, align 1, !tbaa !29
  %i.gb = add i8 %i.ga, %1
  store i8 %i.gb, ptr %i.a, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE5splitEiPSC_PSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 6 uses
  %.01214.i = phi ptr [ %i.ak, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 7 uses
  %i.s = load i32, ptr %.01214.i, align 8, !tbaa !201
  store i32 %i.s, ptr %.015.i, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !85
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !21
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !29
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !25
  store ptr %i.x, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.ae, align 8, !tbaa !25
  store i8 0, ptr %i.x, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !199
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !199
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %.not.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, label %.lr.ph.i, !llvm.loop !591

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, %bb.d
  %i.am = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.h, align 1, !tbaa !29
  %i.ao = load ptr, ptr %0, align 8, !tbaa !304   ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !29  ; 4 uses
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.ar ; 6 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 10 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29  ; 2 uses
  %i.aw = icmp ult i8 %i.aq, %i.av
  %i.ax = zext i8 %i.aq to i64                    ; 2 uses
  br i1 %i.aw, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = getelementptr [48 x i8], ptr %i.ay, i64 %i.ax ; 3 uses
  %narrow.i = sub nuw i8 %i.av, %i.aq
  %i.ba = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ba, 48
  %i.bb = getelementptr i8, ptr %i.az, i64 48
  %i.bc = getelementptr [48 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.az, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.be, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i ], [ %i.bc, %.lr.ph.preheader.i.i ] ; 5 uses
  %.01416.i.i = phi ptr [ %i.bf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 6 uses
  %i.be = getelementptr inbounds i8, ptr %.017.i.i, i64 -48 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i.i, i64 -48 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !201
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !201
  %i.bh = getelementptr inbounds i8, ptr %.017.i.i, i64 -40 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.01416.i.i, i64 -40 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.017.i.i, i64 -24 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !85
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bn = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !21
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !29
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.bs = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr inbounds i8, ptr %.017.i.i, i64 -32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !25
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !21
  store i64 0, ptr %i.bs, align 8, !tbaa !25
  store i8 0, ptr %i.bl, align 8, !tbaa !29
  %i.bv = getelementptr inbounds i8, ptr %.017.i.i, i64 -8
  %i.bw = getelementptr inbounds i8, ptr %.01416.i.i, i64 -8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !199
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !199
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE23rebalance_right_to_leftEhPSC_PSA_:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !21
  %i.at = load i64, ptr %i.an, align 8, !tbaa !29
  store i64 %i.at, ptr %i.al, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !25
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !21
  store i64 0, ptr %i.au, align 8, !tbaa !25
  store i8 0, ptr %i.an, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.i, !llvm.loop !642

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !215
  %i.az = load i8, ptr %i.d, align 8, !tbaa !29
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.ba ; 4 uses
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.ac ; 5 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !207
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !85
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !21 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !21
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !29
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !25
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !21
  store i64 0, ptr %i.bq, align 8, !tbaa !25
  store i8 0, ptr %i.bj, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29  ; 2 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.aa
  %i.bx = zext i8 %1 to i64                       ; 3 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.bx ; 2 uses
  %narrow = mul nsw i32 %i.bw, 40
  %.idx.i48 = sext i32 %narrow to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.bu, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55
  %.015.i52 = phi ptr [ %i.cq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55 ], [ %i.ad, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47 ] ; 5 uses
  %.01214.i53 = phi ptr [ %i.cp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55 ], [ %i.by, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47 ] ; 6 uses
  %i.ca = load i32, ptr %.01214.i53, align 8, !tbaa !207
  store i32 %i.ca, ptr %.015.i52, align 8, !tbaa !207
  %i.cb = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i52, i64 24 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !85
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 24 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.ch = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !21
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !29
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54, %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !25
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !21
  store i64 0, ptr %i.cm, align 8, !tbaa !25
  store i8 0, ptr %i.cf, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.i52, i64 40
  %.not.i56 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57, label %.lr.ph.i51, !llvm.loop !642

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit47
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %.not.i58 = icmp eq i8 %i.cs, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bx, 1
  %i.cv = icmp eq i32 %i.ab, 0
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bx, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cw = load i8, ptr %i.a, align 2, !tbaa !29
  %i.cx = trunc i64 %indvars.iv.epil.init to i8
  %i.cy = add i8 %i.cx, 1
  %i.cz = add i8 %i.cw, %i.cy                     ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.epil.init
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !215 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !215
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !29
  store ptr %0, ptr %i.db, align 8, !tbaa !215
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.df = load i8, ptr %i.bt, align 1, !tbaa !29
  %.not61 = icmp ult i8 %i.df, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.dh = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.di = trunc nuw i64 %indvars.iv.next to i8
  %i.dj = add i8 %i.dh, %i.di                     ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !215 ; 3 uses
  %i.dm = zext i8 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dm
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !215
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i8 %i.dj, ptr %i.do, align 1, !tbaa !29
  store ptr %0, ptr %i.dl, align 8, !tbaa !215
  %i.dp = load i8, ptr %i.a, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dq = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.dr = add i8 %i.dp, %i.dq                     ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !215 ; 3 uses
  %i.du = zext i8 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !215
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 %i.dr, ptr %i.dw, align 1, !tbaa !29
  store ptr %0, ptr %i.dt, align 8, !tbaa !215
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !646

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.ee, %bb.g ] ; 4 uses
  %i.dx = add i8 %.062, %1
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !215 ; 3 uses
  %i.eb = zext i8 %.062 to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !215
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 %.062, ptr %i.ed, align 1, !tbaa !29
  store ptr %2, ptr %i.ea, align 8, !tbaa !215
  %i.ee = add i8 %.062, 1                         ; 2 uses
  %i.ef = zext i8 %i.ee to i32
  %i.eg = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.eh = zext i8 %i.eg to i32
  %i.ei = sub nsw i32 %i.eh, %i.aa
  %.not = icmp slt i32 %i.ei, %i.ef
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !647

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit57
  %i.ej = load i8, ptr %i.a, align 2, !tbaa !29
  %i.ek = add i8 %i.ej, %1
  store i8 %i.ek, ptr %i.a, align 2, !tbaa !29
  %i.el = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.em = sub i8 %i.el, %1
  store i8 %i.em, ptr %i.bt, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE23rebalance_left_to_rightEhPSC_PSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 40
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [40 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [40 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 4 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !207
  store i32 %i.l, ptr %i.j, align 8, !tbaa !207
  %i.m = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !85
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !21
  %i.w = load i64, ptr %i.q, align 8, !tbaa !29
  store i64 %i.w, ptr %i.o, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  store ptr %i.q, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.x, align 8, !tbaa !25
  store i8 0, ptr %i.q, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit, label %.lr.ph.i, !llvm.loop !644

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %bb.a
  %i.aa = add nsw i32 %i.c, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !215
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.ab ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ae ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !207
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !85
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !21
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !29
  store i64 %i.au, ptr %i.am, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !21
  store i64 0, ptr %i.av, align 8, !tbaa !25
  store i8 0, ptr %i.ao, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = sub nsw i32 %i.ba, %i.aa
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %.idx.i48 = mul nuw nsw i64 %i.ab, 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52
  %.015.i = phi ptr [ %i.bw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ] ; 5 uses
  %.01214.i = phi ptr [ %i.bv, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52 ], [ %i.be, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ] ; 6 uses
  %i.bg = load i32, ptr %.01214.i, align 8, !tbaa !207
  store i32 %i.bg, ptr %.015.i, align 8, !tbaa !207
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !85
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !21
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !29
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i51, %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !25
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !21
  store i64 0, ptr %i.bs, align 8, !tbaa !25
  store i8 0, ptr %i.bl, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i53 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !642

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i52
  %.pre = load i8, ptr %i.ay, align 2, !tbaa !29
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit ], [ %i.ba, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !215
  %i.by = load i8, ptr %i.ac, align 8, !tbaa !29
  %i.bz = zext i8 %i.by to i64
  %i.ca = sub nsw i32 %.pre-phi, %i.c
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.bz ; 4 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.cb ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !207
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !207
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !85
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !21 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !21
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !29
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i54
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !21
  store i64 0, ptr %i.cr, align 8, !tbaa !25
  store i8 0, ptr %i.ck, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %.not.i57 = icmp eq i8 %i.cv, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56
  %i.cw = load i8, ptr %i.a, align 1, !tbaa !29   ; 5 uses
  %i.cx = add i8 %i.cw, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.cx, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cz = zext i8 %i.cx to i64                    ; 2 uses
  %i.da = and i8 %i.cw, 1
  %lcmp.mod.not.not = icmp eq i8 %i.da, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.db = add i8 %i.cw, %1                        ; 2 uses
  %i.dc = zext i8 %i.cw to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !215 ; 3 uses
  %i.df = zext i8 %i.db to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.df
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !215
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.db, ptr %i.dh, align 1, !tbaa !29
  store ptr %2, ptr %i.de, align 8, !tbaa !215
  %indvars.iv.next.prol = add nsw i64 %i.cz, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cz, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.di = icmp eq i8 %i.cw, 0
  br i1 %i.di, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dl = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dl, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dm = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.dm, 1
  %i.dn = icmp ult i8 %i.dl, 3
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.dm, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.do = trunc nuw i64 %indvars.iv to i8
  %i.dp = add i8 %i.do, -1                        ; 2 uses
  %i.dq = add i8 %i.dp, %1                        ; 2 uses
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !215 ; 3 uses
  %i.du = zext i8 %i.dq to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !215
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 %i.dq, ptr %i.dw, align 1, !tbaa !29
  store ptr %2, ptr %i.dt, align 8, !tbaa !215
  %i.dx = trunc i64 %indvars.iv to i8
  %i.dy = add i8 %i.dx, -2                        ; 2 uses
  %i.dz = add i8 %i.dy, %1                        ; 2 uses
  %i.ea = zext i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !215 ; 3 uses
  %i.ed = zext i8 %i.dz to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ed
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !215
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 %i.dz, ptr %i.ef, align 1, !tbaa !29
  store ptr %2, ptr %i.ec, align 8, !tbaa !215
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.eg = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.eg, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !648

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.eh = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.ei = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.ej = trunc nuw i64 %indvars.iv65 to i8
  %i.ek = sub i8 %i.ej, %1
  %i.el = add i8 %i.ek, %i.ei
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !215 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eh
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !215
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = trunc nuw i64 %i.eh to i8
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !29
  store ptr %2, ptr %i.eo, align 8, !tbaa !215
  %i.es = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.et = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.et, %invariant.op
  %i.eu = add i8 %.reass, %i.es
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !215 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv65
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !215
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.fa, ptr %i.ez, align 1, !tbaa !29
  store ptr %2, ptr %i.ex, align 8, !tbaa !215
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !649

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.fb = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.fc = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.fd = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.fe = sub i8 %i.fd, %1
  %i.ff = add i8 %i.fe, %i.fc
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !215 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.fb
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !215
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = trunc nuw i64 %i.fb to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !29
  store ptr %2, ptr %i.fi, align 8, !tbaa !215
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEmmPSC_PSA_.exit56
  %i.fm = load i8, ptr %i.ay, align 2, !tbaa !29
  %i.fn = sub i8 %i.fm, %1
  store i8 %i.fn, ptr %i.ay, align 2, !tbaa !29
  %i.fo = load i8, ptr %i.a, align 1, !tbaa !29
  %i.fp = add i8 %i.fo, %1
  store i8 %i.fp, ptr %i.a, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE5splitEiPSC_PSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 5 uses
  %.01214.i = phi ptr [ %i.ah, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 6 uses
  %i.s = load i32, ptr %.01214.i, align 8, !tbaa !207
  store i32 %i.s, ptr %.015.i, align 8, !tbaa !207
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !85
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !21
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !29
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !25
  store ptr %i.x, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.ae, align 8, !tbaa !25
  store i8 0, ptr %i.x, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, label %.lr.ph.i, !llvm.loop !642

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit, %bb.d
  %i.aj = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ak = add i8 %i.aj, -1                        ; 2 uses
  store i8 %i.ak, ptr %i.h, align 1, !tbaa !29
  %i.al = load ptr, ptr %0, align 8, !tbaa !215   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !29  ; 4 uses
  %i.ao = zext i8 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ao ; 5 uses
  %i.aq = zext i8 %i.an to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 10 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29  ; 2 uses
  %i.at = icmp ult i8 %i.an, %i.as
  %i.au = zext i8 %i.an to i64                    ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = getelementptr [40 x i8], ptr %i.av, i64 %i.au ; 3 uses
  %narrow.i = sub nuw i8 %i.as, %i.an
  %i.ax = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ax, 40
  %i.ay = getelementptr i8, ptr %i.aw, i64 40
  %i.az = getelementptr [40 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.bb, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i ], [ %i.az, %.lr.ph.preheader.i.i ] ; 4 uses
  %.01416.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.bb = getelementptr inbounds i8, ptr %.017.i.i, i64 -40 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.01416.i.i, i64 -40 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !207
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !207
  %i.be = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.017.i.i, i64 -16 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !85
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !21
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !29
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.bp = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.br = getelementptr inbounds i8, ptr %.017.i.i, i64 -24
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !25
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !21
  store i64 0, ptr %i.bp, align 8, !tbaa !25
  store i8 0, ptr %i.bi, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !644

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE19transfer_n_backwardEmmmPSC_PSA_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE8transferEPS8_SD_PSA_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE10transfer_nEmmmPSC_PSA_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.au ; 4 uses
  %i.bu = load i32, ptr %i.ap, align 8, !tbaa !207
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !207
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEhPS8_PS6_:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ag = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4
  %wide.load63 = load <4 x i32>, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.af, align 1
  store <4 x i32> %wide.load63, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader82 ]
  %.01214.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4 ; 2 uses
  %i.aj = load i32, ptr %.01214.i, align 4
  store i32 %i.aj, ptr %.015.i, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !682

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !363
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !29
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ay = zext i8 %i.ar to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = add nsw i64 %i.az, -4
  %i.bb = shl nuw nsw i64 %i.av, 2
  %i.bc = sub nsw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.be, 9223372036854775800   ; 3 uses
  %i.bf = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.bi ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4
  %wide.load75 = load <4 x i32>, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 1
  store <4 x i32> %wide.load75, ptr %i.bk, align 1
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bl, label %middle.block77, label %vector.body70, !llvm.loop !683

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.be, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bg, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bh, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bo, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bn, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bm = load i32, ptr %.01214.i49, align 4
  store i32 %i.bm, ptr %.015.i48, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bn, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47, !llvm.loop !684

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %.not.i52 = icmp eq i8 %i.bq, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bt = icmp eq i32 %i.p, 0
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !29
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !363 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !363
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !29
  store ptr %0, ptr %i.bz, align 8, !tbaa !363
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !29
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !363 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !363
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !29
  store ptr %0, ptr %i.cj, align 8, !tbaa !363
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !363 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !363
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !29
  store ptr %0, ptr %i.cr, align 8, !tbaa !363
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !685

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !363 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !363
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !29
  store ptr %2, ptr %i.cy, align 8, !tbaa !363
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !686

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !29
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !29
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 3 uses
  %i.l = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.u, align 1
  store <4 x i32> %wide.load66, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.017.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  %.01416.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -4 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %i.x, align 1
  %.not.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i, !llvm.loop !688

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !363
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !29  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %i.as = zext i8 %1 to i64
  %i.at = add nuw nsw i64 %i.as, 4611686018427387902
  %i.au = and i64 %i.at, 4611686018427387903      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check69 = icmp samesign ult i64 %i.au, 27
  br i1 %min.iters.check69, label %.lr.ph.i48.preheader84, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.aw = zext i8 %1 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add i64 %i.ax, %i.b
  %i.az = add i64 %i.ay, -4
  %i.ba = zext i8 %i.al to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = add i64 %i.bb, %i.a
  %i.bd = sub i64 %i.az, %i.bc
  %diff.check = icmp ult i64 %i.bd, 32
  br i1 %diff.check, label %.lr.ph.i48.preheader84, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck
  %n.vec72 = and i64 %i.av, 9223372036854775800   ; 3 uses
  %i.be = shl i64 %n.vec72, 2                     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.f, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.aq, i64 %i.be
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body73 ] ; 2 uses
  %i.bh = shl i64 %index74, 2                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.f, i64 %i.bh ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.aq, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep76, i64 16
  %wide.load77 = load <4 x i32>, ptr %next.gep76, align 4
  %wide.load78 = load <4 x i32>, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %wide.load77, ptr %next.gep75, align 1
  store <4 x i32> %wide.load78, ptr %i.bj, align 1
  %index.next79 = add nuw i64 %index74, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.bk, label %middle.block80, label %vector.body73, !llvm.loop !689

middle.block80:                                   ; preds = %vector.body73
  %cmp.n81 = icmp eq i64 %i.av, %n.vec72
  br i1 %cmp.n81, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48.preheader84

.lr.ph.i48.preheader84:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block80
  %.015.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bf, %middle.block80 ]
  %.01214.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i48.preheader ], [ %i.bg, %middle.block80 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader84, %.lr.ph.i48
  %.015.i = phi ptr [ %i.bn, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader84 ] ; 2 uses
  %.01214.i = phi ptr [ %i.bm, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader84 ] ; 2 uses
  %i.bl = load i32, ptr %.01214.i, align 4
  store i32 %i.bl, ptr %.015.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i49 = icmp eq ptr %i.bm, %i.ar
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !690

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block80
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !29
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !363
  %i.bp = load i8, ptr %i.ac, align 8, !tbaa !29
  %i.bq = zext i8 %i.bp to i64
  %i.br = sub nsw i32 %.pre-phi, %i.e
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4
  store i32 %i.bw, ptr %i.bu, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !29
  %.not.i50 = icmp eq i8 %i.by, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bz = load i8, ptr %i.c, align 1, !tbaa !29   ; 5 uses
  %i.ca = add i8 %i.bz, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.ca, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cc = zext i8 %i.ca to i64                    ; 2 uses
  %i.cd = and i8 %i.bz, 1
  %lcmp.mod.not.not = icmp eq i8 %i.cd, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ce = add i8 %i.bz, %1                        ; 2 uses
  %i.cf = zext i8 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !363 ; 3 uses
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !363
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !29
  store ptr %2, ptr %i.ch, align 8, !tbaa !363
  %indvars.iv.next.prol = add nsw i64 %i.cc, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cc, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cl = icmp eq i8 %i.bz, 0
  br i1 %i.cl, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.co = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.co, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cp = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.cp, 1
  %i.cq = icmp ult i8 %i.co, 3
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.cp, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cr = trunc nuw i64 %indvars.iv to i8
  %i.cs = add i8 %i.cr, -1                        ; 2 uses
  %i.ct = add i8 %i.cs, %1                        ; 2 uses
  %i.cu = zext i8 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !363 ; 3 uses
  %i.cx = zext i8 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cx
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !363
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.ct, ptr %i.cz, align 1, !tbaa !29
  store ptr %2, ptr %i.cw, align 8, !tbaa !363
  %i.da = trunc i64 %indvars.iv to i8
  %i.db = add i8 %i.da, -2                        ; 2 uses
  %i.dc = add i8 %i.db, %1                        ; 2 uses
  %i.dd = zext i8 %i.db to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !363 ; 3 uses
  %i.dg = zext i8 %i.dc to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !363
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i8 %i.dc, ptr %i.di, align 1, !tbaa !29
  store ptr %2, ptr %i.df, align 8, !tbaa !363
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dj = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dj, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !691

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.dk = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dl = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.dm = trunc nuw i64 %indvars.iv58 to i8
  %i.dn = sub i8 %i.dm, %1
  %i.do = add i8 %i.dn, %i.dl
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !363 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dk
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !363
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = trunc nuw i64 %i.dk to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !29
  store ptr %2, ptr %i.dr, align 8, !tbaa !363
  %i.dv = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.dw = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.dw, %invariant.op
  %i.dx = add i8 %.reass, %i.dv
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !363 ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv58
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !363
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !29
  store ptr %2, ptr %i.ea, align 8, !tbaa !363
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !692

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.cp to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ee = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ef = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.eg = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.eh = sub i8 %i.eg, %1
  %i.ei = add i8 %i.eh, %i.ef
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !363 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ee
  store ptr %i.el, ptr %i.em, align 8, !tbaa !363
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %i.ee to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !29
  store ptr %2, ptr %i.el, align 8, !tbaa !363
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ep = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.eq = sub i8 %i.ep, %1
  store i8 %i.eq, ptr %i.ak, align 2, !tbaa !29
  %i.er = load i8, ptr %i.c, align 1, !tbaa !29
  %i.es = add i8 %i.er, %1
  store i8 %i.es, ptr %i.c, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 61, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !29
  %i.n = load i8, ptr %i.l, align 1, !tbaa !29    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 2               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = shl nuw nsw i64 %i.p, 2
  %i.y = add i64 %i.x, %i.a
  %i.z = sub i64 %i.b, %i.y
  %diff.check = icmp ult i64 %i.z, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep35, align 4
  %wide.load36 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load36, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !693

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = load i32, ptr %.01214.i, align 4
  store i32 %i.ah, ptr %.015.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !694

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.d
  %i.ak = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.j, align 1, !tbaa !29
  %i.am = load ptr, ptr %0, align 8, !tbaa !363   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !29  ; 4 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = zext i8 %i.ao to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29  ; 3 uses
  %i.au = icmp ult i8 %i.ao, %i.at
  %i.av = zext i8 %i.ao to i64                    ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %narrow.i = sub nuw i8 %i.at, %i.ao
  %i.ay = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %i.ax, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ba = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !3
  %i.be = add i8 %i.ba, 1                         ; 3 uses
  store i8 %i.be, ptr %i.as, align 1, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %.not.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.be, %.lr.ph.i27 ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bl = add i8 %.019.i, -1                      ; 3 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !363 ; 2 uses
  %i.bp = zext i8 %.019.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !363
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !29
  %i.bs = zext i8 %i.bl to i32
end_hunk_6
