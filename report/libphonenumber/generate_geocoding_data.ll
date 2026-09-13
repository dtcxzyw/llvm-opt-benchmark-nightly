Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE23rebalance_left_to_rightEiPSH_PSF_:bb.a
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !26
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !29
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !25
  store i64 0, ptr %i.az, align 8, !tbaa !29
  store i8 0, ptr %i.as, align 8, !tbaa !26
  %i.bc = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = sub nsw i32 %i.be, %i.ae
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %.idx.i49 = mul nuw nsw i64 %i.af, 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i49
  %.not14.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53
  %.016.i = phi ptr [ %i.ca, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53 ], [ %i.d, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit ] ; 5 uses
  %.01215.i = phi ptr [ %i.bz, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53 ], [ %i.bi, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit ] ; 6 uses
  %i.bk = load i32, ptr %.01215.i, align 8, !tbaa !123
  store i32 %i.bk, ptr %.016.i, align 8, !tbaa !123
  %i.bl = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01215.i, i64 24 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i52

bb.d:                                             ; preds = %.lr.ph.i51
  %i.br = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !29 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i52: ; preds = %.lr.ph.i51
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !25
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !26
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i52, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !29
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !25
  store i64 0, ptr %i.bw, align 8, !tbaa !29
  store i8 0, ptr %i.bp, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.016.i, i64 40
  %.not.i54 = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i54, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i51, !llvm.loop !3

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i53
  %.pre = load i8, ptr %i.bc, align 2, !tbaa !26
  %.pre68 = zext i8 %.pre to i32
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %.pre-phi = phi i32 [ %.pre68, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ %i.be, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit ]
  %i.cb = load ptr, ptr %0, align 8, !tbaa !56
  %i.cc = load i8, ptr %i.ag, align 8, !tbaa !26
  %i.cd = zext i8 %i.cc to i64
  %i.ce = sub nsw i32 %.pre-phi, %1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cd ; 4 uses
  %i.ci = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.cf ; 5 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !123
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !123
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !30
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !25 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !29 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 16
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !25
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !26
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit59

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit59: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !29
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !25
  store i64 0, ptr %i.cv, align 8, !tbaa !29
  store i8 0, ptr %i.co, align 8, !tbaa !26
  %i.cy = getelementptr i8, ptr %0, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !26
  %.not.i60 = icmp eq i8 %i.cz, 0
  br i1 %.not.i60, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit59
  %i.da = load i8, ptr %i.a, align 1, !tbaa !26   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 9 uses
  %i.dc = zext i8 %i.da to i64                    ; 5 uses
  %i.dd = sext i32 %1 to i64                      ; 3 uses
  %i.de = and i64 %i.dc, 1
  %lcmp.mod.not.not = icmp eq i64 %i.de, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.f
  %i.df = add nsw i64 %i.dc, %i.dd                ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !56 ; 3 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.df
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !56
  %i.dj = trunc i64 %i.df to i8
  %i.dk = getelementptr i8, ptr %i.dh, i64 8
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !26
  store ptr %2, ptr %i.dh, align 8, !tbaa !56
  %indvars.iv.next.prol = add nsw i64 %i.dc, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.f
  %indvars.iv.unr = phi i64 [ %i.dc, %bb.f ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dl = icmp eq i8 %i.da, 0
  br i1 %i.dl, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4462 = icmp slt i32 %1, 1
  br i1 %.not4462, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dn = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter82 = and i64 %i.dn, 1
  %i.do = icmp eq i32 %1, 1
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.dn, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.g

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.dp = add nsw i64 %indvars.iv, %i.dd          ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !56 ; 3 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dp
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !56
  %i.dt = trunc i64 %i.dp to i8
  %i.du = getelementptr i8, ptr %i.dr, i64 8
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !26
  store ptr %2, ptr %i.dr, align 8, !tbaa !56
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dv = add nsw i64 %indvars.iv.next, %i.dd     ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !56 ; 3 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dv
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !56
  %i.dz = trunc i64 %i.dv to i8
  %i.ea = getelementptr i8, ptr %i.dx, i64 8
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !26
  store ptr %2, ptr %i.dx, align 8, !tbaa !56
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !358

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.eb = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.ec = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.ed = zext i8 %i.ec to i32
  %i.ee = trunc i64 %indvars.iv65 to i32
  %i.ef = sub i32 %i.ee, %1
  %i.eg = add i32 %i.ef, %i.ed
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56 ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.eb
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !56
  %i.el = trunc i64 %i.eb to i8
  %i.em = getelementptr i8, ptr %i.ej, i64 8
  store i8 %i.el, ptr %i.em, align 1, !tbaa !26
  store ptr %2, ptr %i.ej, align 8, !tbaa !56
  %i.en = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.eo = zext i8 %i.en to i32
  %i.ep = trunc i64 %indvars.iv65 to i32
  %.reass = add i32 %i.ep, %invariant.op
  %i.eq = add i32 %.reass, %i.eo
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !56 ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv65
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !56
  %i.ev = trunc i64 %indvars.iv65 to i8
  %i.ew = getelementptr i8, ptr %i.et, i64 8
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !26
  store ptr %2, ptr %i.et, align 8, !tbaa !56
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !359

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.ex = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.ey = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.ez = zext i8 %i.ey to i32
  %i.fa = trunc i64 %indvars.iv65.epil.init to i32
  %i.fb = sub i32 %i.fa, %1
  %i.fc = add i32 %i.fb, %i.ez
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56 ; 3 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.ex
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !56
  %i.fh = trunc i64 %i.ex to i8
  %i.fi = getelementptr i8, ptr %i.ff, i64 8
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !26
  store ptr %2, ptr %i.ff, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit59
  %i.fj = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.fk = trunc i32 %1 to i8                      ; 2 uses
  %i.fl = sub i8 %i.fj, %i.fk
  store i8 %i.fl, ptr %i.bc, align 2, !tbaa !26
  %i.fm = load i8, ptr %i.a, align 1, !tbaa !26
  %i.fn = add i8 %i.fm, %i.fk
  store i8 %i.fn, ptr %i.a, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE5splitEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !26
  %i.h = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !26
  %i.j = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !26
  %i.l = load i8, ptr %i.j, align 1, !tbaa !26    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not14.i = icmp eq i8 %i.l, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.016.i = phi ptr [ %i.ai, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 5 uses
  %.01215.i = phi ptr [ %i.ah, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 6 uses
  %i.s = load i32, ptr %.01215.i, align 8, !tbaa !123
  store i32 %i.s, ptr %.016.i, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !30
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 24 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !25
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !26
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !29
  store ptr %i.x, ptr %i.u, align 8, !tbaa !25
  store i64 0, ptr %i.ae, align 8, !tbaa !29
  store i8 0, ptr %i.x, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i, i64 40
  %.not.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %bb.d
  %i.aj = phi i8 [ %.pre, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ak = add i8 %i.aj, -1                        ; 2 uses
  store i8 %i.ak, ptr %i.h, align 1, !tbaa !26
  %i.al = load ptr, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.am = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !26  ; 2 uses
  %i.ao = zext i8 %i.an to i64                    ; 3 uses
  %i.ap = zext i8 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ap ; 5 uses
  %i.ar = getelementptr i8, ptr %i.al, i64 10     ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26  ; 2 uses
  %i.at = icmp ult i8 %i.an, %i.as
  br i1 %i.at, label %.lr.ph.preheader.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.au = zext i8 %i.as to i64                    ; 3 uses
  %i.av = sub nuw nsw i64 %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ax = add nuw nsw i64 %i.au, 4294967295
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %.idx.i.i = mul nsw i64 %i.av, -40
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx.i.i
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.au
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i, %.lr.ph.preheader.i.i
  %.018.i.i = phi ptr [ %i.bs, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 5 uses
  %.01417.i.i = phi ptr [ %i.br, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i ], [ %i.az, %.lr.ph.preheader.i.i ] ; 6 uses
  %i.bc = load i32, ptr %.01417.i.i, align 8, !tbaa !123
  store i32 %i.bc, ptr %.018.i.i, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !30
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 24 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !29 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !25
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !26
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !29
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !25
  store i64 0, ptr %i.bo, align 8, !tbaa !29
  store i8 0, ptr %i.bh, align 8, !tbaa !26
  %i.br = getelementptr inbounds i8, ptr %.01417.i.i, i64 -40 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.018.i.i, i64 -40
  %.not.i.i = icmp eq ptr %i.br, %i.ba
  br i1 %.not.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.ao ; 4 uses
  %i.bv = load i32, ptr %i.aq, align 8, !tbaa !123
  store i32 %i.bv, ptr %i.bu, align 8, !tbaa !123
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 5 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

bb.g:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 16
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cf, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIiS9_EEEEEvhPSF_DpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i
end_hunk_0
begin_hunk_1_@_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEiPS8_PS6_:bb.a
.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.018.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader.i ], [ %i.v, %middle.block ]
  %.01417.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.018.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01417.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01417.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ad = load i32, ptr %.01417.i, align 4, !tbaa !28
  store i32 %i.ad, ptr %.018.i, align 4, !tbaa !28
  %i.ae = getelementptr inbounds i8, ptr %.01417.i, i64 -4 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.018.i, i64 -4
  %.not.i = icmp eq ptr %i.ae, %i.j
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i, !llvm.loop !375

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.ag = add nsw i32 %1, -1                      ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !26
  %i.ak = zext i8 %i.aj to i64
  %i.al = load ptr, ptr %0, align 8, !tbaa !83
  %i.am = shl nsw i64 %i.ah, 2                    ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %sext4.i = shl nuw nsw i64 %i.ak, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %sext4.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !28
  %i.ar = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !26  ; 2 uses
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = sub nsw i32 %i.at, %i.ag
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ax = shl nsw i64 %i.av, 2
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.am
  %.not14.i = icmp eq i32 %i.ag, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %i.ba = add nsw i64 %i.am, -4                   ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check67, label %.lr.ph.i48.preheader81, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.i48.preheader
  %i.bd = add i64 %i.am, %i.b
  %i.be = zext i8 %i.as to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = add i64 %i.bf, %i.a
  %i.bh = sub i64 %i.bg, %i.bd
  %diff.check65 = icmp ugt i64 %i.bh, -32
  br i1 %diff.check65, label %.lr.ph.i48.preheader81, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck64
  %n.vec69 = and i64 %i.bc, 9223372036854775800   ; 3 uses
  %i.bi = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.f, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bi
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bl = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.f, i64 %i.bl ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.ay, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !28
  %wide.load75 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !28
  %i.bn = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 4, !tbaa !28
  store <4 x i32> %wide.load75, ptr %i.bn, align 4, !tbaa !28
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bo, label %middle.block77, label %vector.body70, !llvm.loop !376

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.bc, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48.preheader81

.lr.ph.i48.preheader81:                           ; preds = %vector.memcheck64, %.lr.ph.i48.preheader, %middle.block77
  %.016.i.ph = phi ptr [ %i.f, %vector.memcheck64 ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bj, %middle.block77 ]
  %.01215.i.ph = phi ptr [ %i.ay, %vector.memcheck64 ], [ %i.ay, %.lr.ph.i48.preheader ], [ %i.bk, %middle.block77 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader81, %.lr.ph.i48
  %.016.i = phi ptr [ %i.br, %.lr.ph.i48 ], [ %.016.i.ph, %.lr.ph.i48.preheader81 ] ; 2 uses
  %.01215.i = phi ptr [ %i.bq, %.lr.ph.i48 ], [ %.01215.i.ph, %.lr.ph.i48.preheader81 ] ; 2 uses
  %i.bp = load i32, ptr %.01215.i, align 4, !tbaa !28
  store i32 %i.bp, ptr %.016.i, align 4, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %.not.i49 = icmp eq ptr %i.bq, %i.az
  br i1 %.not.i49, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !377

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block77
  %.pre = load i8, ptr %i.ar, align 2, !tbaa !26
  %.pre60 = zext i8 %.pre to i32
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %.pre-phi = phi i32 [ %.pre60, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.at, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit ]
  %i.bs = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.bt = zext i8 %i.bs to i64
  %i.bu = sub nsw i32 %.pre-phi, %1
  %i.bv = sext i32 %i.bu to i64
  %sext.i50 = shl nuw nsw i64 %i.bt, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %sext.i50
  %i.bx = shl nsw i64 %i.bv, 2
  %i.by = getelementptr inbounds i8, ptr %i.aw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !28
  %i.ca = getelementptr i8, ptr %0, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !26
  %.not.i52 = icmp eq i8 %i.cb, 0
  br i1 %.not.i52, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !26   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 9 uses
  %i.ce = zext i8 %i.cc to i64                    ; 5 uses
  %i.cf = sext i32 %1 to i64                      ; 3 uses
  %i.cg = and i64 %i.ce, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cg, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b
  %i.ch = add nsw i64 %i.ce, %i.cf                ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !83 ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ch
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !83
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = getelementptr i8, ptr %i.cj, i64 8
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !26
  store ptr %2, ptr %i.cj, align 8, !tbaa !83
  %indvars.iv.next.prol = add nsw i64 %i.ce, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.b
  %indvars.iv.unr = phi i64 [ %i.ce, %bb.b ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cn = icmp eq i8 %i.cc, 0
  br i1 %i.cn, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4454 = icmp slt i32 %1, 1
  br i1 %.not4454, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cp = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter82 = and i64 %i.cp, 1
  %i.cq = icmp eq i32 %1, 1
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cp, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.c

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.cr = add nsw i64 %indvars.iv, %i.cf          ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !83 ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cr
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !83
  %i.cv = trunc i64 %i.cr to i8
  %i.cw = getelementptr i8, ptr %i.ct, i64 8
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !26
  store ptr %2, ptr %i.ct, align 8, !tbaa !83
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cx = add nsw i64 %indvars.iv.next, %i.cf     ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !83 ; 3 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cx
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !83
  %i.db = trunc i64 %i.cx to i8
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !26
  store ptr %2, ptr %i.cz, align 8, !tbaa !83
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !378

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv57 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next58.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.dd = add nsw i64 %indvars.iv57, -1           ; 2 uses
  %i.de = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.df = zext i8 %i.de to i32
  %i.dg = trunc i64 %indvars.iv57 to i32
  %i.dh = sub i32 %i.dg, %1
  %i.di = add i32 %i.dh, %i.df
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !83 ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.dd
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !83
  %i.dn = trunc i64 %i.dd to i8
  %i.do = getelementptr i8, ptr %i.dl, i64 8
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !26
  store ptr %2, ptr %i.dl, align 8, !tbaa !83
  %i.dp = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.dq = zext i8 %i.dp to i32
  %i.dr = trunc i64 %indvars.iv57 to i32
  %.reass = add i32 %i.dr, %invariant.op
  %i.ds = add i32 %.reass, %i.dq
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !83 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv57
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !83
  %i.dx = trunc i64 %indvars.iv57 to i8
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !26
  store ptr %2, ptr %i.dv, align 8, !tbaa !83
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !379

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv57.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next58.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.dz = add nsw i64 %indvars.iv57.epil.init, -1 ; 2 uses
  %i.ea = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.eb = zext i8 %i.ea to i32
  %i.ec = trunc i64 %indvars.iv57.epil.init to i32
  %i.ed = sub i32 %i.ec, %1
  %i.ee = add i32 %i.ed, %i.eb
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !83 ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.dz
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !83
  %i.ej = trunc i64 %i.dz to i8
  %i.ek = getelementptr i8, ptr %i.eh, i64 8
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !26
  store ptr %2, ptr %i.eh, align 8, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.el = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.em = trunc i32 %1 to i8                      ; 2 uses
  %i.en = sub i8 %i.el, %i.em
  store i8 %i.en, ptr %i.ar, align 2, !tbaa !26
  %i.eo = load i8, ptr %i.c, align 1, !tbaa !26
  %i.ep = add i8 %i.eo, %i.em
  store i8 %i.ep, ptr %i.c, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 61, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !26
  %i.j = getelementptr i8, ptr %0, i64 10         ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !26
  %i.n = load i8, ptr %i.l, align 1, !tbaa !26    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %sext.i = shl nuw nsw i64 %i.p, 2               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %sext.i ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 2               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not14.i = icmp eq i8 %i.n, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = add i64 %sext.i, %i.a
  %i.y = sub i64 %i.x, %i.b
  %diff.check = icmp ugt i64 %i.y, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ac ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !28
  %wide.load45 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !28
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !28
  store <4 x i32> %wide.load45, ptr %i.ae, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.016.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  %.01215.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01215.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.01215.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = load i32, ptr %.01215.i, align 4, !tbaa !28
  store i32 %i.ag, ptr %.016.i, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %.not.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !381

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.d
  %i.aj = phi i8 [ %.pre, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.ak = add i8 %i.aj, -1                        ; 2 uses
  store i8 %i.ak, ptr %i.j, align 1, !tbaa !26
  %i.al = load ptr, ptr %0, align 8, !tbaa !83    ; 5 uses
  %i.am = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !26  ; 2 uses
  %i.ao = zext i8 %i.an to i64                    ; 4 uses
  %i.ap = zext i8 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.al, i64 10     ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26  ; 3 uses
  %i.at = icmp ult i8 %i.an, %i.as
  br i1 %i.at, label %.lr.ph.preheader.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.au = zext i8 %i.as to i64                    ; 3 uses
  %.neg.i = sub nsw i64 %i.ao, %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.aw = shl nuw nsw i64 %i.au, 32
  %sext.i.i = add nsw i64 %i.aw, -4294967296
  %i.ax = lshr exact i64 %sext.i.i, 30            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax ; 4 uses
  %.neg.i.i = shl nsw i64 %.neg.i, 2
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.neg.i.i
  %i.ba = shl nuw nsw i64 %i.au, 2                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 3 uses
  %i.bc = shl nuw nsw i64 %i.ao, 2
  %i.bd = add nsw i64 %i.ba, -4
  %i.be = sub nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.be, 44
  %i.bh = sub nsw i64 %i.ba, %i.ax
  %diff.check48 = icmp ugt i64 %i.bh, -32
  %or.cond = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec52 = and i64 %i.bg, 9223372036854775800   ; 3 uses
  %i.bi = mul i64 %n.vec52, -4                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bi
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body53 ] ; 2 uses
  %i.bl = mul i64 %index54, -4                    ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ay, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep56, i64 -12
  %i.bn = getelementptr i8, ptr %next.gep56, i64 -28
  %wide.load57 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !28
  %wide.load58 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !28
  %i.bo = getelementptr i8, ptr %next.gep55, i64 -12
  %i.bp = getelementptr i8, ptr %next.gep55, i64 -28
  store <4 x i32> %wide.load57, ptr %i.bo, align 4, !tbaa !28
  store <4 x i32> %wide.load58, ptr %i.bp, align 4, !tbaa !28
  %index.next59 = add nuw i64 %index54, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next59, %n.vec52
  br i1 %i.bq, label %middle.block60, label %vector.body53, !llvm.loop !382

middle.block60:                                   ; preds = %vector.body53
  %cmp.n61 = icmp eq i64 %i.bg, %n.vec52
  br i1 %cmp.n61, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block60
  %.018.i.i.ph = phi ptr [ %i.bb, %.lr.ph.preheader.i.i ], [ %i.bj, %middle.block60 ]
  %.01417.i.i.ph = phi ptr [ %i.ay, %.lr.ph.preheader.i.i ], [ %i.bk, %middle.block60 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01417.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.01417.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.br = load i32, ptr %.01417.i.i, align 4, !tbaa !28
  store i32 %i.br, ptr %.018.i.i, align 4, !tbaa !28
  %i.bs = getelementptr inbounds i8, ptr %.01417.i.i, i64 -4 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.018.i.i, i64 -4
  %.not.i.i = icmp eq ptr %i.bs, %i.az
  br i1 %.not.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !383

end_hunk_1
begin_hunk_2_@_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_left_to_rightEiPSH_PSF_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i58, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %.016.i, i64 40
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !29
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !25
  store i64 0, ptr %i.dn, align 8, !tbaa !29
  store i8 0, ptr %i.dg, align 8, !tbaa !26
  %i.dq = load ptr, ptr %.01215.i, align 8, !tbaa !25 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cs
  br i1 %i.dr, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i59
  %i.ds = load i64, ptr %i.cs, align 8, !tbaa !26
  %i.dt = add i64 %i.ds, 1
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i60
  %i.du = getelementptr inbounds nuw i8, ptr %.01215.i, i64 64 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.016.i, i64 64
  %.not.i62 = icmp eq ptr %i.du, %i.cp
  br i1 %.not.i62, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i55, !llvm.loop !5

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61
  %.pre = load i8, ptr %i.ch, align 2, !tbaa !26
  %.pre82 = zext i8 %.pre to i32
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %.pre-phi = phi i32 [ %.pre82, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ %i.cj, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !90
  %i.dx = load i8, ptr %i.av, align 8, !tbaa !26
  %i.dy = zext i8 %i.dx to i64
  %i.dz = sub nsw i32 %.pre-phi, %1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %sext.i64 = shl nuw nsw i64 %i.dy, 6
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %sext.i64 ; 7 uses
  %i.ed = shl nsw i64 %i.ea, 6
  %i.ee = getelementptr inbounds i8, ptr %i.cm, i64 %i.ed ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !30
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 7 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66

bb.h:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !29 ; 2 uses
  %i.el = icmp ult i64 %i.ek, 16
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ef, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.em, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !25
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !26
  store i64 %i.en, ptr %i.ef, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66, %bb.h
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !29
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !29
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !25
  store i64 0, ptr %i.eo, align 8, !tbaa !29
  store i8 0, ptr %i.eh, align 8, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 3 uses
  store ptr %i.et, ptr %i.er, align 8, !tbaa !30
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !25 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ee, i64 48 ; 5 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i68

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i67
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !29 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 16
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i67
  store ptr %i.eu, ptr %i.er, align 8, !tbaa !25
  %i.fb = load i64, ptr %i.ev, align 8, !tbaa !26
  store i64 %i.fb, ptr %i.et, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i68, %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !29
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !29
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !25
  store i64 0, ptr %i.fc, align 8, !tbaa !29
  store i8 0, ptr %i.ev, align 8, !tbaa !26
  %i.ff = load ptr, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i69
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !26
  %i.fi = add i64 %i.fh, 1
  tail call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit73

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i70
  %i.fj = getelementptr i8, ptr %0, i64 11
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %.not.i74 = icmp eq i8 %i.fk, 0
  br i1 %.not.i74, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit73
  %i.fl = load i8, ptr %i.a, align 1, !tbaa !26   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 9 uses
  %i.fn = zext i8 %i.fl to i64                    ; 5 uses
  %i.fo = sext i32 %1 to i64                      ; 3 uses
  %i.fp = and i64 %i.fn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fp, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.j
  %i.fq = add nsw i64 %i.fn, %i.fo                ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !90 ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fq
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !90
  %i.fu = trunc i64 %i.fq to i8
  %i.fv = getelementptr i8, ptr %i.fs, i64 8
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !26
  store ptr %2, ptr %i.fs, align 8, !tbaa !90
  %indvars.iv.next.prol = add nsw i64 %i.fn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.j
  %indvars.iv.unr = phi i64 [ %i.fn, %bb.j ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.fw = icmp eq i8 %i.fl, 0
  br i1 %i.fw, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4476 = icmp slt i32 %1, 1
  br i1 %.not4476, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.fy = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter115 = and i64 %i.fy, 1
  %i.fz = icmp eq i32 %1, 1
  br i1 %i.fz, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.fy, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.k

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ga = add nsw i64 %indvars.iv, %i.fo          ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !90 ; 3 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.ga
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !90
  %i.ge = trunc i64 %i.ga to i8
  %i.gf = getelementptr i8, ptr %i.gc, i64 8
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !26
  store ptr %2, ptr %i.gc, align 8, !tbaa !90
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.gg = add nsw i64 %indvars.iv.next, %i.fo     ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !90 ; 3 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gg
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !90
  %i.gk = trunc i64 %i.gg to i8
  %i.gl = getelementptr i8, ptr %i.gi, i64 8
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !26
  store ptr %2, ptr %i.gi, align 8, !tbaa !90
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !408

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv79 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next80.1, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.gm = add nsw i64 %indvars.iv79, -1           ; 2 uses
  %i.gn = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.go = zext i8 %i.gn to i32
  %i.gp = trunc i64 %indvars.iv79 to i32
  %i.gq = sub i32 %i.gp, %1
  %i.gr = add i32 %i.gq, %i.go
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !90 ; 3 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gm
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !90
  %i.gw = trunc i64 %i.gm to i8
  %i.gx = getelementptr i8, ptr %i.gu, i64 8
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !26
  store ptr %2, ptr %i.gu, align 8, !tbaa !90
  %i.gy = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.gz = zext i8 %i.gy to i32
  %i.ha = trunc i64 %indvars.iv79 to i32
  %.reass = add i32 %i.ha, %invariant.op
  %i.hb = add i32 %.reass, %i.gz
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.hc
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !90 ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv79
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !90
  %i.hg = trunc i64 %indvars.iv79 to i8
  %i.hh = getelementptr i8, ptr %i.he, i64 8
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !26
  store ptr %2, ptr %i.he, align 8, !tbaa !90
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !409

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv79.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next80.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.hi = add nsw i64 %indvars.iv79.epil.init, -1 ; 2 uses
  %i.hj = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.hk = zext i8 %i.hj to i32
  %i.hl = trunc i64 %indvars.iv79.epil.init to i32
  %i.hm = sub i32 %i.hl, %1
  %i.hn = add i32 %i.hm, %i.hk
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !90 ; 3 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.hi
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !90
  %i.hs = trunc i64 %i.hi to i8
  %i.ht = getelementptr i8, ptr %i.hq, i64 8
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !26
  store ptr %2, ptr %i.hq, align 8, !tbaa !90
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit73
  %i.hu = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.hv = trunc i32 %1 to i8                      ; 2 uses
  %i.hw = sub i8 %i.hu, %i.hv
  store i8 %i.hw, ptr %i.ch, align 2, !tbaa !26
  %i.hx = load i8, ptr %i.a, align 1, !tbaa !26
  %i.hy = add i8 %i.hx, %i.hv
  store i8 %i.hy, ptr %i.a, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE5splitEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 10
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26
  %i.d = add i8 %i.c, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 10
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %i.g = lshr i8 %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.h, align 1, !tbaa !26
  %i.i = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.l = sub i8 %i.j, %.sink                      ; 3 uses
  store i8 %i.l, ptr %i.i, align 1, !tbaa !26
  %i.m = load i8, ptr %i.k, align 1, !tbaa !26    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %sext.i = shl nuw nsw i64 %i.o, 6
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %sext.i ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.n, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  %.not14.i = icmp eq i8 %i.m, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.016.i = phi ptr [ %i.ay, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.s, %.lr.ph.preheader.i ] ; 8 uses
  %.01215.i = phi ptr [ %i.ax, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.q, %.lr.ph.preheader.i ] ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i, i64 16 ; 3 uses
  store ptr %i.t, ptr %.016.i, align 8, !tbaa !30
  %i.u = load ptr, ptr %.01215.i, align 8, !tbaa !25 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16 ; 7 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.u, ptr %.016.i, align 8, !tbaa !25
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !26
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !29
  store ptr %i.v, ptr %.01215.i, align 8, !tbaa !25
  store i64 0, ptr %i.ac, align 8, !tbaa !29
  store i8 0, ptr %i.v, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.016.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01215.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.016.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !30
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01215.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !25
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !26
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %.016.i, i64 40
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !29
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !25
  store i64 0, ptr %i.aq, align 8, !tbaa !29
  store i8 0, ptr %i.aj, align 8, !tbaa !26
  %i.at = load ptr, ptr %.01215.i, align 8, !tbaa !25 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.av = load i64, ptr %i.v, align 8, !tbaa !26
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.01215.i, i64 64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.016.i, i64 64
  %.not.i = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !5

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i
  %.pre = load i8, ptr %i.i, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %bb.d
  %i.az = phi i8 [ %.pre, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ %i.l, %bb.d ]
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.i, align 1, !tbaa !26
  %i.bb = load ptr, ptr %0, align 8, !tbaa !90
  %i.bc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !26
  %i.be = zext i8 %i.bd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bf = zext i8 %i.ba to i64
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.bf
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !128
  call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_S9_EEEEEvmPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i64 noundef %i.be, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bh = load i8, ptr %i.i, align 2, !tbaa !26
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.bi ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13value_destroyEhPSF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13value_destroyEhPSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13value_destroyEhPSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.bv = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.bw = load i8, ptr %i.bc, align 8, !tbaa !26
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  store ptr %2, ptr %i.cb, align 8, !tbaa !90
  %i.cc = trunc i32 %i.by to i8
  %i.cd = getelementptr i8, ptr %2, i64 8
end_hunk_2
